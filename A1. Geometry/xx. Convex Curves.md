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

%%
Generalized inverses of increasign f unctions and Lebesgue decomposition by Arnaud de La Fortelle
%%