Here, we develop our definition of _convex curves_. Informally, a convex curve is a segment of the boundary of a planar convex body. Although there are many existing definitions of convex curves, this version is tailored to our specific needs.

(TODO: elaborate more on the intuition)

# Measure


> __Theorem [reparametrizations-right-continuous].__ For any measure $\beta$ on $[a, b]$, the functions $F_\beta$ and $G_\beta$ are right-continuous. ^thm-reparametrizations-right-continuous

1. send to smooth case
2. in smooth case, show that it attains the maximum!
3. 

> __Definition [measure-inverse].__ Let $\beta$ be a measure on some interval $[a, b]$. Let $B = \beta([a, b])$. For any $s \in [0, B]$, define $G_\beta(s)$ as the unique value $t$ such that $\beta([a, t)) \leq s \leq \beta([a, t])$. ^def-measure-inverse

- $\beta$ a measure on $[a, b]$
- $B = \beta([a, b])$ is the total of $\beta$ 
- Informally, $t$ is the angle of the tangent line and $s$ is the arclength
	- They are bijective when the curve is $C^1$, but not in our case.
- $F_\beta(t) = \beta([a, t])$ for $t \in [a, b]$
	- $F_\beta$ is monotonically increasing and right-continuous.
- $G_\beta(s) = \inf \left\{ t | F_{\beta}(t) \geq s \right\}$
	- 
- 


Prefix measure

Other tools: Riemann-Stieltjets

Cap the cumulative sum at maximum X

> __Definition [boundary-measure].__ Let $p_0 = (x_0, y_0), p_1 = (x_1, y_2) \in \mathbb{R}^2$ be two points on a plane. Let $[a, b]$ be an interval of $S^1$. A _boundary measure_ $\beta$ from $p_0$ to $p_1$ is a measure on $[a, b] \subseteq S^1$ such that the following holds. ^def-boundary-measure
$$
\int_{a}^{b} u_t \, \beta(dt) = p_1 - p_0
$$

> __Definition [convex-curve].__ Let $\beta$ be a measure on an interval $[a, b]$ in $S^1$ from point $p_0$ to $p_1$. Let $B = \beta([a, b])$. Define a _convex curve_ $\mathbf{x} : [0, B] \to \mathbb{R}^2$ with the boundary measure $\beta$ as the following. ^def-convex-curve
$$
\mathbf{x}(s) := p_0 + \int_{[0, s]} u_{G_{\beta}(s_0)} \, ds_0
$$

_Proof._ We need to prove the following.
$$
\mathbf{x}(B) - \mathbf{x}(0) = \int_{0}^{B} u_{G_{\beta}(s)} \, ds = p_{1} - p_{0}
$$

$$
\int_{0}^{B} u_{G_{\beta}(s)} \, ds = \int_{a}^{b}u_t\,\beta(dt)
$$
□

> __Definition [convex-curve-support-function].__ For any $t \in [a, b]$, define $p_\beta(t) =\mathbf{x}(F_\beta(t)) \times u_t$ ^def-convex-curve-support-function

> __Theorem [convex-curve-area].__ ^thm-convex-curve-area
$$
I(\mathbf{x}) = \frac{1}{2} \int_{[a, b]} p_{\beta}(t)\,\beta(dt) = \frac{1}{2} \int_{[a, b]} \mathbf{x}(F_\beta(t)) \times u_t \beta(dt)
$$
> Note that $I(\mathbf{x})$ itself is defined using the parametrization $\mathbf{x}(s)$.

Next: prove that the boundary of any convex body is a convex curve. This is called the 'Gauss-Minkowski Theorem'.

%%
DONE
- What is a convex curve
- What is a signed area I(x) of a curve x
- What is a signed area of a convex curve
- The boundary of a convex body is a convex curve with full angle lengths
- Also, a segment of the boundary of the convex body can be described in other ways as well
TODOs
- (Jordan Curve Theorem) A closed curve determines a bounded region
- (Green's Theorem) The area of the bounded region is equal to I(x)
- (Mamikon's Theorem) (How do I even state it?)
%%


%%
# Current situation

1. We need a way to talk about the area functional $I(\mathbf{x})$ on curves $\mathbf{x}$ consistently.
	1. So for example, if $\mathbf{x}$ is a join of two curves $\mathbf{x}_1$ and $\mathbf{x}_2$ then $I(\mathbf{x}) = I(\mathbf{x}_1) + I(\mathbf{x}_2)$.
	2. Also, we want the calculus of variation of $I(\mathbf{x})$ to be easy to deal with. 
2. Definition of a curve
	1. Usually a curve is parametrized by a _continuous_ function.
	2. But if we parametrize a convex curve by its tangential angle, we encounter with bounded yet _non-continuous_ values. Imagine a square - the 'parametrization' pops from one vertex to another discontinuously.
	3. There are two ways to resolve.
		1. Develop a new theory of rectifiable yet non-continuous curves
			1. Not using. Reasons:
				1. We can't identify a curve with the image of the parametrization
				2. Also, what is a parametrization of a square then? How long should one stay in a vertex? If more than one moment, the function is not injective! We can't use Jordan curve theorem at all here.
		2. Parametrize a convex curve by its arclength (Selected)
3. How to parametrized a convex curve by its arclength?
	1. Given a 'inverse-curvature' measure, we need to construct a _continuous_ parametrization (arc-length).
	2. If smooth, s (arc-length) and t (angle) are one-to-one and calculus is rather easy
		1. Say $\beta(dt) = b(t)dt$. Then $ds=\beta(dt)=b(t)dt$. 
		2. The issue is that $\beta(dt)$ can be zero on an interval or have point mess.
4. Generalized inverse
	1. Generalized inverses of increasign f unctions and Lebesgue decomposition by Arnaud de La Fortelle
%%