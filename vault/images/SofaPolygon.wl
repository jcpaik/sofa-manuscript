(* ::Package:: *)

BeginPackage["SofaPolygon`",{"MaTeX`","MovingSofas`"}]

(* Package for producing figures and executing numerical experiments *)
(* Not a part of SofaDesigner nor a part of a rigorous proof *)

Sofa::usage = "Expression representing a numerical sofa (rotation angle, angles, x coordinates)";
ValidSofaQ::usage = "Checks if an expression is a valid Sofa expression";
SofaN::usage = "Number of intervals involved in a sofa";
SofaAngles::usage = "A list of all angles used in a sofa";
SofaAngle::usage = "i'th angle used in a sofa";
SofaU::usage = "Vector u";
SofaV::usage = "Vector v";
SofaX::usage = "Coordinate x";
SofaY::usage = "Coordinate y";
SofaLineA::usage = "Tangent line a";
SofaLineB::usage = "Tangent line b";
SofaLineC::usage = "Tangent line c";
SofaLineD::usage = "Tangent line d";
SofaA::usage = "Vertex A";
SofaC::usage = "Vertex B";

NicheIndices::usage = "Niche of sofa as an integer array of indices of edges in order";
NicheLines::usage = "Lines of the niche of sofa";
NicheVertices::usage = "Vertices of the niche of sofa";

CapVertices::usage = "Vertices of the cap of sofa";

Monotonize::usage = "Monotonize a sofa";

Begin["`Private`"]

(******** Sofa primitives ********)

Sofa[angleList_, xValueList_] := Sofa[Pi/2, angleList, xValueList];

ValidSofaQ[Sofa[b_,angleList_,xValueList_]] :=
	AllTrue[Differences@Join[{0},angleList,{b}],Positive] &&
	ArrayQ[xValueList,_,NumberQ] &&
	Dimensions[xValueList] === {Length[angleList]+2,2} &&
	Chop[Last@First@xValueList] === 0 &&
	Chop[(Last@xValueList) . {Cos[b],Sin[b]}] === 0
ValidSofaQ[_] := False;

SofaN[Sofa[_, angles_, _]] := Length[angles]+1;

SofaAngles[Sofa[b_, angles_, _]] := Join[{0}, angles, {b}];

SofaAngle[Sofa[b_, angles_, _], 0] := 0;
SofaAngle[sofa:Sofa[b_, angles_, _], i_] := 
	If[i === SofaN[sofa], b, angles[[i]]];

SofaU[sofa_Sofa,i_] := {Cos[SofaAngle[sofa,i]],Sin[SofaAngle[sofa,i]]};
SofaV[sofa_Sofa,i_] := {-Sin[SofaAngle[sofa,i]],Cos[SofaAngle[sofa,i]]}

SofaX[Sofa[_,_,xValues_],i_] := xValues[[i+1]]
SofaY[sofa_Sofa,i_] := SofaX[sofa,i]+SofaU[sofa,i]+SofaV[sofa,i]
SofaLineA[sofa_Sofa,i_]:=InfiniteLine[SofaY[sofa,i],-SofaV[sofa,i]]
SofaLineB[sofa_Sofa,i_]:=HalfLine[SofaX[sofa,i],-SofaV[sofa,i]]
SofaLineC[sofa_Sofa,i_]:=InfiniteLine[SofaY[sofa,i],SofaU[sofa,i]]
SofaLineD[sofa_Sofa,i_]:=HalfLine[SofaX[sofa,i],-SofaU[sofa,i]]

(******** Computing niche ********)

(* i==0 -> horizontal line, i==-1 -> the slanted side of parallelogram *)
nicheLine[sofa_Sofa,i_]:=With[{n=SofaN[sofa]},
	If[i>=0,
	Replace[SofaLineD[sofa,i],HalfLine[p_,v_]:>InfiniteLine[p,-v]],
	Replace[SofaLineB[sofa,n+1+i],HalfLine[p_,v_]:>InfiniteLine[p,v]]
	]
	]

lineIntersection[
    Through[(HalfLine|InfiniteLine)[{p_,q_},{r_,s_}]],
    Through[(HalfLine|InfiniteLine)[{a_,b_},{c_,d_}]]
] := {(b c r-a d r-c q r+c p s)/(-d r+c s),(d q r-b c s+a d s-d p s)/(d r-c s)}

nicheIntersection[sofa_Sofa,i_Integer,j_Integer]:=
lineIntersection[nicheLine[sofa,i],nicheLine[sofa,j]];

nodes[sofa_,polyline_]:=
lineIntersection@@@Partition[nicheLine[sofa,#]&/@polyline,2,1];

firstNode[_,{line_}]:={Infinity,0};
firstNode[sofa_,polyline_]:=nicheIntersection[sofa,polyline[[1]],polyline[[2]]];

reportIntervals[_,prevX_,{aFirst_Integer},{bFirst_Integer}]:={{{prevX,Infinity},{aFirst,bFirst}}};
reportIntervals[sofa_,prevX_,a:{aFirst_Integer,aRest___},b:{bFirst_Integer,bRest___}]:=
With[{curX=Min[First@firstNode[sofa,a],First@firstNode[sofa,b]]},
Prepend[
If[First@firstNode[sofa,a]<First@firstNode[sofa,b],
reportIntervals[sofa,curX,{aRest},b],
reportIntervals[sofa,curX,a,{bRest}]
],
{{prevX,curX},{aFirst,bFirst}}
]
];

handleInterval[sofa_,{{t1_,t2_},{l1_Integer,l2_Integer}}]:=
With[{inter=nicheIntersection[sofa,l1,l2],a=Min[l1,l2],b=Max[l1,l2]},
Which[inter===Null,{b},
First@inter<=t1,{b},
First@inter<t2,{a,b},
True,{a}
]
];

polylineUnion[sofa_,polyline1_,polyline2_]:=
ReplaceRepeated[
Flatten[handleInterval[sofa,#]&/@reportIntervals[sofa,-Infinity,polyline1,polyline2]],
{{a___,x_,x_,b___}:>{a,x,b},{a___,x_,_,x_,b___}:>{a,x,b}}];

drawPolyline[sofa_,{a_}]:=nicheLine[sofa,a];
drawPolyline[sofa_,p:{a_,b___,c_}]:=
Module[{ad=Last@nicheLine[sofa,a],cd=Last@nicheLine[sofa,c],nds},
nds=nodes[sofa,p];
{HalfLine[First@nds,-ad],Line[nds],HalfLine[Last@nds,cd]}];

mergeFold[_,{a_}]:=a
mergeFold[f_,l_]:=If[Mod[Length[l],2]==0,
mergeFold[f,f@@@Partition[l,2]],
mergeFold[f,Append[f@@@Partition[Most@l,2],Last@l]]];

NicheIndices[sofa:Sofa[b_,_,_]]:=mergeFold[polylineUnion[sofa,#1,#2]&,
Prepend[Table[{i,i-SofaN[sofa]-1},{i,1,SofaN[sofa]-1}],
If[b===Pi/2,{0},{-1,0}]]];

NicheLines[sofa_Sofa]:=drawPolyline[sofa,NicheIndices[sofa]];

NicheVertices[sofa_Sofa]:=NicheLines[sofa][[2,1]];

(******** Computing cap and monotonization ********)

isCap[
InfiniteLine[{x0_,y0_},{u0_,v0_}],
InfiniteLine[{x1_,y1_},{u1_,v1_}],
InfiniteLine[{x2_,y2_},{u2_,v2_}]
]:= (u0 v1 v2 (x1-x2)+u1 v2 (v0 (-x0+x2)+u0 (y0-y1))+
    u2 v0 (v1 (x0-x1)+u1 (y1-y2))+u0 u2 v1 (-y0+y2))/
    ((u1 v0-u0 v1) (-u2 v1+u1 v2))<0

addHullStack[{l0_},l1_]:={l0,l1};
addHullStack[{stackMost___,l0_,l1_},l2_]:=
If[isCap[l0,l1,l2],{stackMost,l0,l1,l2},addHullStack[{stackMost,l0},l2]];

CapVertices[sofa:Sofa[b_,_,_]]:=With[{n=SofaN[sofa]},lineIntersection@@@Partition[
Fold[addHullStack,{InfiniteLine[{0,0},{1,0}]},
Join[Table[SofaLineA[sofa,i],{i,0,n}],
Table[SofaLineC[sofa,i],{i,If[b===Pi/2,1,0],n}],
{InfiniteLine[{0,0},{-Sin[b],Cos[b]}]}]],
2,1]]

support[points_,angle_]:=Max[# . {Cos[angle],Sin[angle]}&/@points]

xFromCapVertices[points_,angle_]:=
(support[points,angle]-1)*{Cos[angle],Sin[angle]}+
(support[points,angle+Pi/2]-1)*{-Sin[angle],Cos[angle]}

sofaFromCapVertices[b_,cap_,angles_]:=
With[{xValues=xFromCapVertices[cap,#]&/@Join[{0},angles,{b}]},
Sofa[b,angles,xValues]
]

Monotonize[sofa:Sofa[b_,angles_,xValues_]]:=
  sofaFromCapVertices[b,CapVertices[sofa],angles]

End[]
EndPackage[]



