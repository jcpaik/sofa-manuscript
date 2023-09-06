# 'Positivity Geometry'

Lam got sick with COVID

'Positive' polytope with _canoncial form_

- Polytope
	- V-polytope: convex hull of finite vertices in $\mathbb{R}^n$
	- H-polytope: finite bounded intersection of closed half-planes (hyperplanes)
	- V-polytope and H-polytope are equivalent
		- the proof is not easy (half a lecture)

- Faces of polytope
	- Intersection between $P$ and supporting hyperplane $H$ ($P$ on one side of $H$, not other)
	- Proposition: faces are polytopes of lower dimension, and faces $\subseteq \partial P$.

- Polar dual of polytope
	- $P = conv\left\{ v_1, \dots, v_n \right\}$ and $0 \in P$
	- Dual is: $P^\vee = \left\{ y : y \cdot v_i \leq 1 \text{ for all } i \right\}$
	- Vertex of $P$ = Facets (maximum faces) of $P^\vee$
	- $P^{\vee \vee} = P$ 

e.g. $P = [-1, 1]^2$ -> $P^\vee = conv\left\{ (0, 1), (1, 0), (0, -1), (-1, 0) \right\}$.
Vertex of $P$ -> 'dual' hyperplane bounds the dual polytope.
$P$ is bipyramid of triangle base -> dual of $P$ is triangular prism

# Canonical form of polytope

Positive geometry = Polytopes w. Canonical form

- $\Omega(P)$ : d-form
- $\Omega(P) = (f / g) dx_1 \dots dx_d$
- where $f/g$ is rational such that
- 1. $\Omega(P)$ has simple poles on and only on $\partial P$ (no pole even at $\infty$)
- 2. The residue of this form at each facet $F$ of $P$ is the canonical form of $F$ (recursive)
	- $Res_F(\Omega(P)) = \Omega(F)$

Works more naturally in projective space

ex) $P = [a, b]$ -> $\Omega(P) = \left( 1/(x-a) - 1/(x-b) \right) dx$

ex) $P = conv\left\{ (0, 0), (1, 0), (0, 1) \right\}$
Boundaries $y=0, x=0, x+y=1$
$\Omega(P) = dx dy / xy(1-x-y)$

Define face $F = \left\{ y=0 \right\} \cap P$

$Res_F(\Omega(P)) = dx/x(1-x-y) |_{y=0} = dx/x(1-x) = \Omega(F)$

Polar structure of $\Omega(P)$ matches the combinatorics of $P$

Theorem: every polytope has a canonical form

> __Definition [triangulation-polytope].__ For $P$ d-dimensional polytope, $T = \left\{ T_1, \dots, T_N \right\}$ is a triangulation if each $T_i$ is $d$-simplex, $P = \cup T_i$, $T_i \cap T_j$ is a proper face of $T_i$ and $T_j$. ^def-triangulation-polytope

e.g. ...

Theorem: every polytope has a triangulation with no added vertex
Proof: if $P$ is the convex hull of $v_1, v_2, \dots, v_n$, let $u_i = (v_i, h_i) \in \mathbb{R}^{d+1}$. Generic choices of $h_i$'s -> $u_i$'s form a polytope $Q$ in $\mathbb{R}^{d+1}$. Look at the 'upper' faces of $Q$. Projects to $P$, and every facet is a simplex.

Theorem: If $P$ has triangulation $T_1, \dots, T_m$, with compatible orientation, then $\Omega(P) = \sum_{i=1}^n \Omega(T_i)$
(allow extra vertices)
- can be shown using induction on the dimension of $P$ and the defining properties of $\Omega(P)$

ex) $P = conv\left\{ (0, 0), (2, 0), (1, 2), (0, 1) \right\}$
Triangulate using $(0, 1)$ and $(2, 0)$

Poles $x, y, 1+x-y, 4-2x-y$ and $1-(x/2)-y$ (used in triangulation)

$\Omega(T_1) = dx dy/(x y (1 - x/2 - y))$

$\Omega(T_2) = (-9/2) dx dy / ((1+x-y)(4-2x-y)(1-x/2 - y)$

- How to get the constant? Calculate residue

$\Omega(P) = \Omega(T_1) + \Omega(T_2) = \frac{4+4x-y}{x y (4-2x-y)(1+x-y)}$

More ways to compute $\Omega(P)$
1. Dual volume
	- $\Omega(P)(x) = \text{vol}\left( (P - x)^\vee \right)dx_1 dx_2 \dots dx_n$
	- e.g. $P = [a, b]$ -> vertices $a-x$ and $b-x$. Polar: $1/(a-x)$ and $1/(b-x)$.
- Norman fan -> vertices of the dual is on the normal fan!
	- Add triangles
- Adjoints
	- $P \subseteq \mathbb{R}^d \subseteq \mathbb{P}^d$
	- $\Omega(P) = \frac{\alpha \cdot A_P}{\Pi \text{Facets}} dx_1 \dots dx_n$ 
		- where $\alpha \neq 0$, and $A_p$ is some polynomial with vanishing set (called 'adjoint hypersurface of P')
		- e.g. $P=ABCD$ -> $AB \cap CD$ and $AD \cap BC$. The line passing through two intersection = Adjoint of $P$.