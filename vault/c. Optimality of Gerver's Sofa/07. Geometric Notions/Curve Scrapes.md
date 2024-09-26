A convex curve $\mathbf{u} = \mathbf{u}_K^{a, b}$ from a convex body $K$ shares a lot of information with $K$.

> __Theorem [convex-curve-info].__ Take any convex curve $\mathbf{u} \in \mathcal{U}^{a, b}$. For any choice of convex body $K$ such that $\mathbf{u} = \mathbf{u}_K^{a, b}$, the following values are independent of the choice of $K$. ^thm-convex-curve-info
> 
> 1. Edges $e_K(t)$ and vertices $v_K^{\pm}(t)$ on $t \in (a, b)$.
> 2. Endpoints $v_K^+(a), v_K^-(b)$.
> 3. Support function $h_K(t)$ on $t \in [a, b]$.
> 4. Surface area measure $\sigma_K$ restricted to $(a, b)$.

_Proof._ (1) Recover $h_K$ from support □

> __Definition [convex-curve-info].__ With [[c. Optimality of Gerver's Sofa/07. Geometric Notions/20. Convex Curve#^thm-convex-curve-info]], define the _support function_ $h_\mathbf{u} : [a, b] \to \mathbb{R}$, the _vertices_ $v_{\mathbf{u}}^+(a), v_{\mathbf{u}}^-(b), v_{\mathbf{u}}^{\pm}(t)$ for $t \in (a, b)$, the _surface area measure_ $\sigma_{\mathbf{u}}$ on $(a, b)$ for their counterparts in $K$. ^def-convex-curve-info


Define the following convex curve segment of the boundary of a convex body $K$ (see ).

> __Definition [convex-curve].__ For any convex body $K$ and $a, b \in \mathbb{R}$ be arbitrary such that $a < b < a + \pi$, define
$$
\mathbf{u}_K^{a, b} := \left\{ v_K^+(a) \right\} \cup \bigcup_{t \in (a, b)} e_K(t) \cup \left\{ v_K^-(b) \right\} 
$$
> as the segment of the boundary of $K$. ^def-convex-curve

> __Proposition [convex-curve-triangle].__ If $v_K^+(a) = v_K^-(b)$, then $\mathbf{u}_K^{a, b}$ is the single point $v_K^+(a)$. Otherwise, the three points $v_K^+(a), v_K^-(b), v_K(a, b)$ are different from each other and the set $\mathbf{u}_K^{a, b}$ is inside the triangle formed by three points. ^pro-convex-curve-triangle

> __Proposition [convex-curve-parametrization].__ The set $\mathbf{u}_K^{a, b}$ in [[c. Optimality of Gerver's Sofa/07. Geometric Notions/20. Convex Curve#^def-convex-curve]] is a rectifiable Jordan curve from $v_K^+(a)$ to $v_K^-(b)$. ^pro-convex-curve-parametrization

_Proof._ It suffices to supply a rectifiable parametrization of $\mathbf{u}_K^{a, b}$. By rotating $K$, we can assume $a = -b$ and $a < 0 < b < \pi/2$ without loss of generality. Define $c$ as the $y$-coordinate of $v_K^+(a)$, and $d$ as the $y$-coordinate of $v_K^-(b)$. For $s \in [c, d]$, define $x(s)$ as the largest $x$-coordinate of the segment $K \cap l(\pi/2, s)$. $X$ be the parametrizing set. Take any point $p = (x(s), s)$. This is on the boundary of $K$. By the property of $K$, it has a supporting line passing through $p$.  □

> __Theorem [convex-curve-area-functional].__ ^thm-convex-curve-area-functional

_Proof._ Define $H'$ as the half-plane with boundary passing through the endpoints of the convex curve $\mathbf{u}$. Define the intersection $K \cap H'$. Its boundary is $\mathbf{u}_K^{a, b}$ followed by the line segment connecting $v_K^+(b)$ to $v_K^-(a)$.  □


> __Proposition [convex-curve-triangle].__ If $v_K^+(a) = v_K^-(b)$, then $\mathbf{u}_K^{a, b}$ is the single point $v_K^+(a)$. Otherwise, the three points $v_K^+(a), v_K^-(b), v_K(a, b)$ are different from each other and the set $\mathbf{u}_K^{a, b}$ is inside the triangle formed by three points. ^pro-convex-curve-triangle

> __Proposition [convex-curve-parametrization].__ The set $\mathbf{u}_K^{a, b}$ in [[c. Optimality of Gerver's Sofa/07. Geometric Notions/20. Convex Curve#^def-convex-curve]] is a rectifiable Jordan curve from $v_K^+(a)$ to $v_K^-(b)$. ^pro-convex-curve-parametrization

_Proof._ It suffices to supply a rectifiable parametrization of $\mathbf{u}_K^{a, b}$. By rotating $K$, we can assume $a = -b$ and $a < 0 < b < \pi/2$ without loss of generality. Define $c$ as the $y$-coordinate of $v_K^+(a)$, and $d$ as the $y$-coordinate of $v_K^-(b)$. For $s \in [c, d]$, define $x(s)$ as the largest $x$-coordinate of the segment $K \cap l(\pi/2, s)$. $X$ be the parametrizing set. Take any point $p = (x(s), s)$. This is on the boundary of $K$. By the property of $K$, it has a supporting line passing through $p$.  □

> __Theorem [convex-curve-area-functional].__  ^thm-convex-curve-area-functional
$$
\mathcal{I}\left( \mathbf{u}_K^{a, b} \right) = 
$$

_Proof._ Define $H'$ as the half-plane with boundary passing through the endpoints of the convex curve $\mathbf{u}$. Define the intersection $K \cap H'$. Its boundary is $\mathbf{u}_K^{a, b}$ followed by the line segment connecting $v_K^+(b)$ to $v_K^-(a)$ □