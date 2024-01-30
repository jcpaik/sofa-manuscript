(* ::Package:: *)

BeginPackage["SofaPolygon`"]

(* Package for producing figures and executing numerical experiments *)
(* Not a part of SofaDesigner nor a part of a rigorous proof *)

Sofa::usage = "Expression representing a numerical sofa (rotation angle, angles, x coordinates)";
SofaN::usage = "Number of intervals involved in a sofa";
SofaU::usage = "Vector u";
SofaV::usage = "Vector v";
SofaX::usage = "Coordinate x";
SofaY::usage = "Coordinate y";
SofaLineA::usage = "Tangent line a";
SofaLineB::usage = "Tangent line b";
SofaLineC::usage = "Tangent line c";
SofaLineD::usage = "Tangent line d";

NicheIndices::usage = "Niche of sofa as an integer array of indices of edges in order";
NicheLines::usage = "Lines of the niche of sofa";
NicheVertices::usage = "Vertices of the niche of sofa";

CapVertices::usage = "Vertices of the cap of sofa";

SofaVertices::usage = "All vertices of a sofa";

Monotonize::usage = "Monotonize a sofa";

Begin["`Private`"]

(******** Sofa primitives ********)

isValidSofaParams[angles_,xValues_]:=With[{beta=Last@angles},And[
  VectorQ[angles, NumberQ],
  Chop[First@angles] === 0,
  beta<=Pi/2,
  AllTrue[Differences@angles,Positive],
  ArrayQ[xValues,2,NumberQ],
  Dimensions[xValues] === {Length[angles],2},
  Chop[Last@First@xValues] === 0,
  Chop[(Last@xValues) . {Cos[beta],Sin[beta]}] === 0]]

Protect[w, n, u, x, p];

Sofa[angles_, xValues_] /; isValidSofaParams[angles, xValues] :=
  Module[{nValue, uValue, pValue},
    nValue = Length[angles]-1;
    uValue = Join[{Cos[#],Sin[#]}&/@angles,{-Sin[#],Cos[#]}&/@angles];
    pValue = MapThread[Dot, {uValue, Join[xValues, xValues]}];
    <|w -> Last@angles, n -> nValue, u -> uValue, x -> xValues, p -> pValue|>] 

SofaN[sofa_Association] := sofa[n];
SofaU[sofa_Association,i_] := sofa[u][[i+1]];
SofaV[sofa_Association,i_] := sofa[u][[i+sofa[n]+2]];
SofaX[sofa_Association,i_] := sofa[x][[i+1]];
SofaY[sofa_Association,i_] := SofaX[sofa,i]+SofaU[sofa,i]+SofaV[sofa,i];

SofaLineA[sofa_Association,i_] := InfiniteLine[SofaY[sofa,i],-SofaV[sofa,i]];
SofaLineB[sofa_Association,i_] := HalfLine[SofaX[sofa,i],-SofaV[sofa,i]];
SofaLineC[sofa_Association,i_] := InfiniteLine[SofaY[sofa,i],SofaU[sofa,i]];
SofaLineD[sofa_Association,i_] := HalfLine[SofaX[sofa,i],-SofaU[sofa,i]];

(******** Computing niche ********)

(* i==0 -> horizontal line, i==-1 -> the slanted side of parallelogram *)

(* nicheIntersectionReference is slow and not used, but is a reference implementation *)
nicheLine[sofa_Association,i_]:=With[{n=SofaN[sofa]},
	If[i>=0,
	Replace[SofaLineD[sofa,i],HalfLine[p_,v_]:>InfiniteLine[p,-v]],
	Replace[SofaLineB[sofa,n+1+i],HalfLine[p_,v_]:>InfiniteLine[p,v]]
	]
	]
lineIntersection[
    Through[(HalfLine|InfiniteLine)[{p_,q_},{r_,s_}]],
    Through[(HalfLine|InfiniteLine)[{a_,b_},{c_,d_}]]
] := {(b c r-a d r-c q r+c p s)/(-d r+c s),(d q r-b c s+a d s-d p s)/(d r-c s)}
nicheIntersectionReference[sofa_Association,i_Integer,j_Integer]:=
  lineIntersection[nicheLine[sofa,i],nicheLine[sofa,j]];

nicheIntersectionInternal = Compile[
  {{n, _Integer},{u, _Real, 2},{p, _Real, 1},{i, _Integer},{j, _Integer}},
  Module[{u1x,u1y,p1,u2x,u2y,p2},
    If[i<0,
      u1x=u[[n+2+i,1]]; u1y=u[[n+2+i,2]]; p1=p[[n+2+i]],
      u1x=-u[[i+1,2]]; u1y=u[[i+1,1]]; p1=p[[n+2+i]];
    ];
    (*i->j, 1->2*)
    If[j<0,
      u2x=u[[n+2+j,1]]; u2y=u[[n+2+j,2]]; p2=p[[n+2+j]],
      u2x=-u[[j+1,2]]; u2y=u[[j+1,1]]; p2=p[[n+2+j]];
    ];
    {p2 u1y-p1 u2y,-p2 u1x+p1 u2x}/(u1y u2x-u1x u2y)
  ],
  CompilationTarget->"C",RuntimeOptions -> "Speed"
];
nicheIntersection[sofa_Association,i_Integer,j_Integer]:=
  nicheIntersectionInternal[sofa[n],sofa[u],sofa[p],i,j];

nicheIntersectionXInternal = Compile[
  {{n, _Integer},{u, _Real, 2},{p, _Real, 1},{i, _Integer},{j, _Integer}},
  Module[{u1x,u1y,p1,u2x,u2y,p2},
    If[i<0,
      u1x=u[[n+2+i,1]]; u1y=u[[n+2+i,2]]; p1=p[[n+2+i]],
      u1x=-u[[i+1,2]]; u1y=u[[i+1,1]]; p1=p[[n+2+i]];
    ];
    (*i->j, 1->2*)
    If[j<0,
      u2x=u[[n+2+j,1]]; u2y=u[[n+2+j,2]]; p2=p[[n+2+j]],
      u2x=-u[[j+1,2]]; u2y=u[[j+1,1]]; p2=p[[n+2+j]];
    ];
    (p2 u1y-p1 u2y)/(u1y u2x-u1x u2y)
  ],
  CompilationTarget->"C",RuntimeOptions -> "Speed"
];
nicheIntersectionX[sofa_Association,i_Integer,j_Integer]:=
  nicheIntersectionXInternal[sofa[n],sofa[u],sofa[p],i,j];

nodes[sofa_Association,polyline_] :=
  nicheIntersection[sofa,#1,#2]& @@@ Partition[polyline,2,1];

reportIntervalsLoopInternal = Compile[
  {{n, _Integer},{u, _Real, 2},{p, _Real, 1},{pl1, _Integer, 1},{pl2, _Integer, 1}},
  Module[{
    curX=-$MaxMachineNumber, 
    nxtX1=0.0, nxtX2=0.0, nxtX=0.0, inter=0.0,
    i1=1, i2=1, l1=0, l2=0, a=0, b=0, sz1=Length[pl1], sz2=Length[pl2],
    result=Table[0,{i,1,2*(Length[pl1]+Length[pl2]-1)}], rsize=0},
    (*Iterate thorugh intervals, for each the region is trapezoid*)
    While[i1<=sz1 && i2<=sz2,
      l1=pl1[[i1]];l2=pl2[[i2]];
	  nxtX1=If[i1<sz1,nicheIntersectionXInternal[n,u,p,l1,pl1[[i1+1]]],$MaxMachineNumber];
	  nxtX2=If[i2<sz2,nicheIntersectionXInternal[n,u,p,l2,pl2[[i2+1]]],$MaxMachineNumber];
	  nxtX=Min[nxtX1,nxtX2];
	  inter=nicheIntersectionXInternal[n,u,p,l1,l2];
	  {a,b}={Min[l1,l2],Max[l1,l2]};
	  (*For each interval, determine which edges are on top*)
	  Which[
	    inter<=curX,result[[++rsize]]=b,
		inter<nxtX,result[[++rsize]]=a;result[[++rsize]]=b,
		True,result[[++rsize]]=a
	  ];
	  curX=nxtX;
	  If[nxtX1<nxtX2,i1++,i2++];];
	result[[;;rsize]]],
  CompilationTarget -> "C", RuntimeOptions -> "Speed",
  CompilationOptions -> {"InlineExternalDefinitions" -> True, "InlineCompiledFunctions" -> True}]

polylineUnion[sofa_][{pl1_,pl2_}]:=
  ReplaceRepeated[
    reportIntervalsLoopInternal[sofa[n],sofa[u],sofa[p],pl1,pl2],
    {{a___,x_,x_,b___} :> {a,x,b}, {a___,x_,_,x_,b___} :> {a,x,b}}];

drawPolyline[sofa_,{a_}] := nicheLine[sofa,a];
drawPolyline[sofa_,p:{a_,b___,c_}]:=
  Module[{ad=Last@nicheLine[sofa,a],cd=Last@nicheLine[sofa,c],nds},
    nds=nodes[sofa,p];
    {HalfLine[First@nds,-ad],Line[nds],HalfLine[Last@nds,cd]}];

mergeFold[_,{a_}]:=a
mergeFold[f_,l_]:=If[Mod[Length[l],2]==0,
  mergeFold[f,BlockMap[f,l,2]],
  mergeFold[f,Append[BlockMap[f,l,2],Last@l]]];

isFullAngle[sofa_Association]:=(Chop[sofa[w]-Pi/2]===0);

NicheIndices[sofa_Association]:=
  mergeFold[polylineUnion[sofa],
    Prepend[
      Table[{i,i-sofa[n]-1},{i,1,sofa[n]-1}],
      If[isFullAngle[sofa],{0},{-1,0}]]]

NicheLines[sofa_Association]:=drawPolyline[sofa,NicheIndices[sofa]];

NicheVertices[sofa_Association]:=nodes[sofa,NicheIndices[sofa]];

(******** Computing cap and monotonization ********)

capVertexInternal=Compile[
{{w,_Real},{u,_Real,2},{p,_Real,1},{i1,_Integer},{i2,_Integer}},
Module[{u1x=0.0,u1y=0.0,p1=0.0,u2x=0.0,u2y=0.0,p2=0.0},
If[i1===0,
u1x=0;u1y=-1;p1=0,
u1x=u[[i1,1]];u1y=u[[i1,2]];p1=p[[i1]]+1
];
If[i2===Length[p]+1,
u2x=-Cos[w];u2y=-Sin[w];p2=0,
u2x=u[[i2,1]];u2y=u[[i2,2]];p2=p[[i2]]+1
];
{p2 u1y-p1 u2y,-p2 u1x+p1 u2x}/(u1y u2x-u1x u2y)
]
];

capVertex[sofa_Association][{i_,j_}]:=
capVertexInternal[sofa[w],sofa[u],sofa[p],i,j];

capEdgesInternal=Compile[
{{w,_Real},{u,_Real,2},{p,_Real,1}},
Module[{i=1,j=1,
u1x=u[[1,1]],u1y=u[[1,2]],p1=p[[1]]+1,
u2x=0.0,u2y=0.0,p2=0.0,
e=Table[0,{i,1,Length[p]+2}],
v=Table[0.0,{i,1,Length[p]+1},{j,1,2}],si=1,
inter,np=Table[0.0,{i,1,Length[p]}]},
(* start computing edge indices e *)
e[[1]]=0;e[[2]]=1;v[[1]]={p[[1]]+1,0}; si=1;
While[++i<=Length[p]+1,
If[i===Length[p]+1,
u2x=-Cos[w];u2y=-Sin[w];p2=0,
u2x=u[[i,1]];u2y=u[[i,2]];p2=p[[i]]+1
];
(* Pop all points from vertex stack *)
While[si>=1 && u2x*v[[si,1]]+u2y*v[[si,2]] >= p2, si--];
(* Push the edge and vertex stack *)
si++;e[[si+1]]=i;v[[si]]=capVertexInternal[w,u,p,e[[si]],i];
u1x=u2x; u1y=u2y; p1=p2;
];
(* end computing e *)
e[[;;si+1]]
]];

capEdges[sofa_Association]:=
Module[{n=sofa[n]},
If[isFullAngle[sofa],
If[#>=n+1,#+1,#]&/@
capEdgesInternal[sofa[w],Drop[sofa[u],{n+1}],Drop[sofa[p],{n+1}]],
capEdgesInternal[sofa[w],sofa[u],sofa[p]]]
];

CapVertices[sofa_Association]:=
(capVertex[sofa]/@Partition[capEdges[sofa],2,1])

SofaVertices[sofa_Association]:=Join[CapVertices[sofa],NicheVertices[sofa]]

monotonizePInternal=Compile[
{{w,_Real},{u,_Real,2},{p,_Real,1}},
Module[{e=capEdgesInternal[w,u,p],i=1,j=0,inter={0.0,0.0},
np=Table[0.0,{i,1,Length[p]}]},
(* start computing vertices *)
i=1;j=0;
While[++i<=Length[e],
inter=capVertexInternal[w,u,p,e[[i-1]],e[[i]]];
While[++j<=e[[i]],If[j<=Length[p],np[[j]]=u[[j]] . inter-1]];
j--;
];
np
]];

monotonizeP[sofa_Association]:=
Module[{w=sofa[w],uArr,pArr,np},
If[Chop[w-Pi/2]===0,
uArr=Drop[sofa[u],{SofaN[sofa]+1}];
pArr=Drop[sofa[p],{SofaN[sofa]+1}],
uArr=sofa[u];pArr=sofa[p]
];
np=monotonizePInternal[w,uArr,pArr];
If[Chop[w-Pi/2]===0,
Insert[np,np[[SofaN[sofa]+1]],SofaN[sofa]+1],
np
]
];

Monotonize[sofa_Association]:=
Module[{np=monotonizeP[sofa],n=sofa[n],nx},
nx=Table[SofaU[sofa,i]*np[[i+1]]+SofaV[sofa,i]*np[[i+n+2]],{i,0,n}];
Append[sofa,{x->nx,p->np}]
]

End[]
EndPackage[]

