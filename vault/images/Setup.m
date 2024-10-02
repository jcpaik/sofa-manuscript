(* ::Package:: *)

<<MaTeX`
SetOptions[$FrontEndSession,PrintingStyleEnvironment->"Working"]
inch=72;
cm=inch/2.54;
mm=cm/10;
width=404;
fontSize=11; 
SetOptions[MaTeX,FontSize->fontSize];
SetDirectory[NotebookDirectory[]];
Needs["SofaPolygon`"];
Needs["MovingSofas`"->"MS`"];
SetAttributes[save,HoldFirst];
save[x_]:=Module[{name=SymbolName@Unevaluated[x]},
Assert[StringQ[name]];
Export[name<>".svg",x];
SystemOpen@Export[name<>".pdf",x];
]
