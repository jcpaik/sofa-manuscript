The following notions will be useful in the construction of upper bounds of sofa area. 

> __Definition [ray].__ For any point $p \in \mathbb{R}^2$ and an angle $t \in S^1$, define $R_p(t)$ as the closed _ray_ (or _half-line_) in the direction of $u_t$ starting from the point $p$. ^def-ray

> __Definition [closed-in-direction].__  Say that a subset $X$ of $\mathbb{R}^2$ is _closed in the direction_ of $u_t$ (_angle_ $t$) if for any point $p \in X$, the ray $R_p(t)$ is contained in $X$. We say that a set $X$ is _closed in the direction downwards_ (resp. _upwards_) if $X$ is closed in the direction of angle $3\pi/2$ (resp. $\pi/2$). ^def-closed-in-direction

> __Definition [further-in-direction].__ Say that a point $p_0$ is _further_ (resp. _strictly further_) _than_ $p_1$ _in the direction of_ nonzero vector $v \in \mathbb{R}^2$ if and only if $p_0 \cdot v \geq p_1 \cdot v$ (resp. $p_0 \cdot v > p_1 \cdot v$). Say that a point $p_0$ strictly lies left (resp. right) to the point $p_1$ if and only if $p_0 \cdot u_0 < p_1 \cdot u_0$ (resp. $p_0 \cdot u_0 > p_1 \cdot u_0$). ^def-further-in-direction

We rigorously define what is a sofa. We first set up the hallway.

> __Definition [shape].__ A _shape_ is a nonempty compact subset of $\mathbb{R}^2$. Denote the area (Borel measure) of a shape $X$ as $|X|$. ^def-shape

To define a sofa, we need to define its rigid motion. A rigid motion is described by a continuous path of rigid transformations.

> __Definition [rigid-motion].__ For any $\theta \in S^1 \simeq \mathbb{R}/2\pi\mathbb{Z}$, define the map $R_\theta : \mathbb{R}^2 \to \mathbb{R}^2$ as the rotation of $\mathbb{R}^2$ around the origin by a counterclockwise angle of $\theta$. For any $\mathbf{v} \in \mathbb{R}^2$, define the map $T_\mathbf{v} : \mathbb{R}^2 \to \mathbb{R}^2$ as the translation of $\mathbb{R}^2$ by the vector $\mathbf{v}$.
> 
> A _proper rigid transformation_ is the composition $f = T_v \circ R_\theta$ for any choice of $\theta \in S^1$ and $\mathbf{v} \in \mathbb{R}^2$. The _set of all proper rigid transformation_ $\mathcal{T}_r$ can be identified with $S^1 \times \mathbb{R}^2$ by the bijective map $(\theta, \mathbf{v}) \mapsto T_\mathbf{v} \circ R_\theta$ and inherits the topology of $S^1 \times \mathbb{R}^2$. The value $\theta \in S^1$ is the _rotation angle_ of the proper rigid transformation $f$. We also say simply that $f$ _rotates the plane_ by an angle of $\theta$.
> 
> A _rigid motion_ is a continuous path $f_* : [a, b] \to \mathcal{T}_r$ in the set of all proper rigid transformations $\mathcal{T}_r$. We put the time $t \in [a, b]$ as a subscript of $f$ to denote the transformation $f_t$ at time $t$. ^def-rigid-motion

Now we are ready to define what is a sofa.

> __Definition [sofa].__ A shape $S$ is a _sofa_ if it is connected and there exists a rigid motion $f_- : [a, b] \to \mathcal{T}_r$ such that the followings hold. ^def-sofa
> 
> - $f_a(S) \subseteq L_H$. That is, the sofa starts in the horizontal side $L_V$ of the hallway.
> - $f_t(S) \subseteq L$ for all $t \in [a, b]$. That is, the sofa stays inside the hallway $L$ at all the time.
> - $f_b(S) \subseteq L_V$. That is, the sofa ends in the vertical side $L_H$ of the hallway.
>   
> Call such a rigid motion a _movement_ of the sofa $S$. Call a sofa a _maximum sofa_ if it attains the maximum area of a sofa.

> __Figure [sofa-in-movement].__ A sofa $S$ in movement. The initial position $f_a(S)$ colored red is in the horizontal side $L_H$, and the final position $f_b(S)$ colored blue is in the vertical side $L_V$. The sofa in movement $f_t(S)$ colored purple with traces in grey lines is in the hallway $L$. ^fig-sofa-in-movement
> 
> ![40%](images/sofa-in-movement.svg)

> __Remark [sofa-def].__ One may question why we restrict a sofa to a shape. That is, a bounded and closed set. The rationale behind it is this: ^rem-sofa-def
> 
> - If an arbitrary set $S$ which might not be closed admits the same movement $f$ inside the hallway $L$, then its closure $\overline{S}$ also admits the same movement $f$ as the hallway parts $L, L_H, L_V$ are closed. So it does not hurt generality to assume that $S$ is closed.
> - There is no unbounded sofa abiding to the conditions of [[#^def-sofa]].

> __Remark [sofa-connected].__ We depend on the connectedness of the sofa throughly in this paper. That is, although there is a possibility of an 'disconnected sofa' abiding to the other conditions of [[#^def-sofa]] and having a larger area, we exclude them in our discussion. ^rem-sofa-connected

Given a movement $f$ of a sofa $S$, we can define a _rotation angle_ of $S$.

> __Definition [rotation-angle].__ For any rigid motion $f : [a, b] \to \mathcal{T}$, its _rotation angle_ $\omega$ is defined as the following. First, note that the rotation angle $\theta(t) \in S^1$ of the map $f(t)$ is continuous with respect to $t \in [a, b]$. Let the map $\hat{\theta} : [a, b] \to \mathbb{R}$ be any lift of the continous map $\theta : [a, b] \to S^1$ with respect to the covering $\mathbb{R} \to S^1 \simeq \mathbb{R}/2\pi\mathbb{Z}$. Then the difference $\hat{\theta}(b) - \hat{\theta}(a)$ is independent of the choice of $\hat{\theta}$. Define $\omega$ as $\omega = \hat{\theta}(a) - \hat{\theta}(b)$ (note that the sign is reversed, so that _clockwise_ rotation of sofa is counted as positive).
> 
> For any sofa $S$, say that $\omega$ is a _rotation angle_ of $S$ if there is a movement $f$ of $S$ with the rotation angle $\omega$. ^def-rotation-angle

We will only consider sofas of rotation angle $\omega \in [0, \pi/2]$. Indeed, Gerver has shown that a sofa of maximum area have rotation angle $\omega \in [\pi/3, \pi/2]$ [[@gerverMovingSofaCorner1992]], and Romik and Kallus refined the result further to $\omega \in [\sin^{-1} (84/85), \pi/2]$ where the value is approximately $81.203\dots^\circ$ [[@kallusImprovedUpperBounds2018]].

Here we provide a self-contained proof that we can assume $\omega \in [\pi/4, \pi/2]$.

> __Theorem [rotation-angle-range].__ Any sofa $S$ of maximum area admits a movement with rotation angle $\omega \in [\pi/4, \pi/2]$. ^thm-rotation-angle-range

_Proof._ Consider any sofa $S$ of rotation angle $\omega$. Without loss of generality, we can assume that the movement $f_t$ of $S$ admits the time interval $t \in [0, T]$ for some $T \geq 0$ and that the sofa $S$ is located at the initial position $S = S_0 = f_0(S)$ of the movement. So $S$ is contained in the horizontal strip $V$ in particular. 

Observe that $S_T = f_T(S)$ is a copy of $S$ rotated clockwise by an angle of $\omega$ and is contained in the vertical strip $V$. Thus, $S$ is contained in a copy $V'$ of $V$ rotated counterclockwise by an angle of $\omega$. So if $-\pi/4 \leq \omega \leq \pi/4$, $S$ cannot be a maximum sofa because $S$ is inside the parallelogram $H \cap V'$ of area $\leq \sqrt{2}$.

Observe that for any time $t \in [0, T]$, the sofa $S_t = f_t(S)$ is contained in $L$ so the rotated hallway $L_t = f_t^{-1}(L)$ contains $S$. Also, $L_0 = L$ and $L_T$ is the hallway $L$ rotated _counterclockwise_ by $\omega$. If $\omega \leq - \pi/4$, then by the intermediate value theorem on the angle of rotation of $L_t$ with respect to $t \in [0, T]$, there is a hallway $L_t$ rotated counterclockwise by $-\pi/4$ that contains $S$. Now the intersection $H \cap L_t$ has area $\sqrt{2}$ and contains $S$, so $S$ cannot be a maximum sofa.

Thus, any maximum sofa has a rotation angle $\omega \geq \pi/4$. We will show that if $\omega > \pi/2$, then $S$ also admits a movement of rotation angle exactly $\pi/2$. By the intermediate value theorem on the angle of rotation of $S_t$, there is some $t \in [0, T]$ so that $S_t = f_t(S)$ is rotated clockwise by an angle of $\pi/2$. As $S \subseteq H$, we also have $S_t \subseteq f_t(H)$ as well, and so the rotated sofa $S_t$ is contained in both $L$ and a vertical strip $f_t(H)$ of width 1. Thus the sofa $S_t$ can be translated horizontally in the right direction inside $L$ and can be placed inside $L \cap V$. Now the new movement of $S$ that replaces the original movement starting from time $t$ with the horizontal translation is a movement with rotation angle $\pi/2$. □

If $\mu$ is a Borel measure on an interval $I$ of $\mathbb{R}$, and $X$ is a measurable subset of $I$, denote the Lebesgue integral of a measurable function $f$ on $X$ as $\int_{X}f\,d \mu$ (no parametrization) or $\int_X f(t)\,\mu(dt)$ (parametrization with $t \in X$). The notation $\int_a^b f(t) \, \mu(dt)$ means the integral $\int_{(a, b]} f(t)\,\mu(dt)$. That is, $\int_a^b$ denotes the integration on the half-open interval $(a, b]$.

Recall the notion of _Lebesgue-Stieltjes measure_ [[@halmos2013measure]].

> __Theorem [lebesgue-stieltjes-measure].__ For any right-continuous, bounded-variation function $F : \mathbb{R} \to \mathbb{R}$ there is a unique signed Borel measure $dF$ called the _Lebesgue-Stieltjes measure_ on $\mathbb{R}$ such that $dF\left( (a, b] \right) = F(b) - F(a)$ for any interval $(a, b]$. ^thm-lebesgue-stieltjes-measure

We can also define the Lebesgue-Stieltjes measure on $S^1$. We omit the proofs.

> __Theorem [lebesgue-stieltjes-measure-circle].__ For any right-continuous, bounded-variation function $F : S^1 \to \mathbb{R}$, there is a unique signed Borel measure $dF$ we will call the _Lebesgue-Stieltjes measure_ on $S^1$ such that for any $t_1 \in \mathbb{R}$ and $t_2 \in (t_1, t_1 + 2\pi]$, we have $dF\left( (t_1, t_2] \right) = F(t_2) - F(t_1)$. ^thm-lebesgue-stieltjes-measure-circle

_Proof._ Consider the restriction $\iota : (0, 2\pi] \to S^1$ of the covering map $\mathbb{R} \to S^1$. Let $G = \iota \circ F$ be a function defined on the interval $I = (0, 2\pi]$, and extend the domain of $G$ to whole $\mathbb{R}$ by letting $G(x) = F(0) = F(2\pi)$ for all $x \leq 0$ and $x > 2\pi$. Then $G$ is a right-continuous, bounded-variation function because $F$ is, and we can construct the Lebesgue-Stieltjes measure $dG$ using [[10. Notations and conventions/00. Preface#^thm-lebesgue-stieltjes-measure]]. Let $dF$ be the pushforward of the measure $dG$ under the map $\iota$.

We show $dF\left( (t_1, t_2] \right) = F(t_2) - F(t_1)$ for arbitrary $t_1$ and $t_2$ given as in the statement. Without loss of generality, assume $t_1 \in I$. If $t_2 \leq 2\pi$ then as $dF$ is the pushforward of $dG$ we have $dF\left( (t_1, t_2] \right) = dG\left( (t_1, t_2] \right) =  F(t_2) - F(t_1)$. So assume $t_2 > 2\pi$, then the following holds.

$$
\begin{align*}
dF((t_1, t_2]) & = dF((t_1, 2 \pi]) + dF((2\pi, t_2]) \\
& = dG((t_1, 2\pi]) + dG((0, t_2 - 2\pi]) \\
& = F(2 \pi) - F(t_1) + F(t_2 - 2\pi) - F(0) = F(t_2) - F(t_1)
\end{align*}
$$

□

If $\mu = dF$ is the Lebesgue-Stieltjes measure of a function $F$, then instead of writing the integral $\int_X f\,d(dF)$ we just write $\int_X f\,dF$. Also instead of writing $\int_X f(t)\, dF(dt)$ we write $\int_X f(t)\,dF(t)$. Linearity $d(c F) = c dF$ and $d(F+G) = dF + dG$ holds for real $c$ and functions $F, G$. But we don't have the product formula $d(FG) = dF \cdot G + F \cdot dG$ in general. For example, assume that both $F$ and $G$ are functions $1_{\geq 0}$. Then $FG = 1_{\geq0}$ as well, but we have $d(1_{\geq0})$ equal to the Dirac measure $\delta$ with mass 1 concentrated at zero, so $d(FG) = \delta$ while $dF \cdot G + F \cdot dG = 2 \delta$.

We have the following general version of integration by parts [[@revuz2013continuous]].

> __Theorem [integration-by-parts].__ Let $F, G : [a, b] \to \mathbb{R}$ be right-continuous and bounded-variation functions. Then we have the following. ^thm-integration-by-parts
$$
F(b)G(b) = F(a)G(a) + \int_{(a, b]} F(t) \, dG(t) + \int_{(a, b]} G(t-) \, dF(t)
$$

We adopt the definition of curves in [[@apostolMathematicalAnalysisModern]].

> __Definition [curve].__ Let $\alpha : [a, b] \to \mathbb{R}^2$ be a continuous function with $a \leq b$. A _curve_ $\Gamma$ _parametrized by_ $\alpha$ is the image $\Gamma$ of $\alpha$ equipped with the particular _parametrization_ $\alpha$, and we say that the curve $\Gamma$ _joins_ the points $\alpha(a)$ and $\alpha(b)$. If $\alpha(a)=\alpha(b)$ then the curve $\Gamma$ is a _closed curve_. If $\alpha(a) \neq \alpha(b)$ then the curve $\Gamma$ is an _arc_. If $\alpha$ is one-to-one then the curve $\Gamma$ is a _Jordan arc_. If $\alpha$ is one-to-one on $[a, b)$ and $\alpha(a) = \alpha(b)$ then the curve $\Gamma$ is a _Jordan curve_.
> 
> If $\Gamma_1$ and $\Gamma_2$ are curves with parametrizations $\alpha : [a, b] \to \mathbb{R}^2$ and $\beta : [c, d] \to \mathbb{R}^2$ respectively and the endpoints $\alpha(b) = \beta(c)$ match, define the _join_ of $\Gamma_1$ and $\Gamma_2$ as the union $\Gamma_1 \cup \Gamma_2$ parametrized by $\gamma(t) : [a, b + (d-c)] \to \mathbb{R}^2$ defined as $\gamma(t) = \alpha(t)$ for $t \leq b$ and $\gamma(t) = \beta(t - b + c)$ for $t > b$. ^def-curve

Note that although we typically say that the image $\Gamma$ of parametrization $\alpha$ is a curve, the curve is actually the datum $(\Gamma, \alpha)$ of both the image $\Gamma$ and its parametrization $\alpha$. The area of the region enclosed by a Jordan curve can be expressed as the following value.