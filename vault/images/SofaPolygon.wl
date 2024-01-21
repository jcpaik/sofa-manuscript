(* ::Package:: *)

BeginPackage["SofaPolygon`"]

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

SofaVertices::usage = "All vertices of a sofa";

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
(* Bottleneck *)
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

reportIntervals[sofa_Sofa, pl1_, pl2_] :=
  reportIntervalsLoopIterative[sofa, pl1, pl2]
  
firstNodeIterative[sofa_Sofa,i_,pl_,sz_]:=
  If[i<sz,nicheIntersection[sofa,pl[[i]],pl[[i+1]]],{Infinity,0}]

(* Bottleneck *)
lineTensors[sofa_Sofa]:=Module[{n,tensor},
n=SofaN[sofa];
tensor=Table[List@@nicheLine[sofa,i],{i,-n-1,n}];
Transpose@N@{tensor[[All,1,1]],tensor[[All,1,2]],tensor[[All,2,1]],tensor[[All,2,2]]}
]

nicheIntersectionFast = Compile[
  {{T, _Real, 2},{n, _Integer},{ii, _Integer}, {jj, _Integer}},
  Module[{i=ii+n+2,j=jj+n+2},
  Module[{p=T[[i,1]],q=T[[i,2]],r=T[[i,3]],s=T[[i,4]],a=T[[j,1]],b=T[[j,2]],c=T[[j,3]],d=T[[j,4]]},
  {(b c r-a d r-c q r+c p s)/(-d r+c s),(d q r-b c s+a d s-d p s)/(d r-c s)}
  ]],CompilationTarget->"C",RuntimeOptions -> "Speed"
]

nicheIntersectionFastX = Compile[
  {{T, _Real, 2},{n, _Integer},{ii, _Integer}, {jj, _Integer}},
  Module[{i=ii+n+2,j=jj+n+2},
  Module[{p=T[[i,1]],q=T[[i,2]],r=T[[i,3]],s=T[[i,4]],a=T[[j,1]],b=T[[j,2]],c=T[[j,3]],d=T[[j,4]]},
  ((b c -a d) r-c (q r- p s))/(-d r+c s)
  ]],CompilationTarget->"C",RuntimeOptions -> "Speed"
]

reportIntervalsLoopFast = Compile[
  {{T, _Real, 2},{n, _Integer},{pl1, _Integer, 1}, {pl2, _Integer, 1}},
	Module[{curX=-$MaxMachineNumber, 
    nxtX1=0.0, nxtX2=0.0, nxtX=0.0, inter=0.0,
    i1=1, i2=1, l1=0, l2=0, a=0, b=0, sz1=Length[pl1], sz2=Length[pl2],
    result=Table[0,{i,1,2*(Length[pl1]+Length[pl2]-1)}],
    rsize=0},
    (*Iterate thorugh intervals, for each the region is trapezoid*)
    While[i1<=sz1 && i2<=sz2,
      l1=pl1[[i1]];l2=pl2[[i2]];
	  nxtX1=If[i1<sz1,nicheIntersectionFastX[T,n,l1,pl1[[i1+1]]],$MaxMachineNumber];
	  nxtX2=If[i2<sz2,nicheIntersectionFastX[T,n,l2,pl2[[i2+1]]],$MaxMachineNumber];
	  nxtX=Min[nxtX1,nxtX2];
	  inter=nicheIntersectionFastX[T,n,l1,l2];
	  {a,b}={Min[l1,l2],Max[l1,l2]};
	  (*For each interval, determine which edges are on top*)
	  Which[
	    inter<=curX,result[[++rsize]]=b,
		inter<nxtX,result[[++rsize]]=a;result[[++rsize]]=b,
		True,result[[++rsize]]=a
	  ];
	  curX=nxtX;
	  If[nxtX1<nxtX2,i1++,i2++];];
	result[[;;rsize]]
  ],
  CompilationTarget->"C",RuntimeOptions -> "Speed",
  CompilationOptions -> {"InlineExternalDefinitions" -> True,"InlineCompiledFunctions" -> True}]

polylineUnion[T_,n_][{polyline1_,polyline2_}]:=
  ReplaceRepeated[reportIntervalsLoopFast[T,n,polyline1,polyline2],
    {{a___,x_,x_,b___}:>{a,x,b},{a___,x_,_,x_,b___}:>{a,x,b}}];

drawPolyline[sofa_,{a_}]:=nicheLine[sofa,a];
drawPolyline[sofa_,p:{a_,b___,c_}]:=
Module[{ad=Last@nicheLine[sofa,a],cd=Last@nicheLine[sofa,c],nds},
nds=nodes[sofa,p];
{HalfLine[First@nds,-ad],Line[nds],HalfLine[Last@nds,cd]}];

mergeFold[_,{a_}]:=a
mergeFold[f_,l_]:=If[Mod[Length[l],2]==0,
  mergeFold[f,BlockMap[f,l,2]],
  mergeFold[f,Append[BlockMap[f,l,2],Last@l]]];

NicheIndices[sofa:Sofa[b_,_,_]]:=
Module[{T=lineTensors[sofa],n=SofaN[sofa]},
mergeFold[polylineUnion[T,n],
Prepend[Table[{i,i-n-1},{i,1,n-1}],
If[b===Pi/2,{0},{-1,0}]]]];

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

SofaVertices[sofa_Sofa]:=Join[CapVertices[sofa],NicheVertices[sofa]]

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

