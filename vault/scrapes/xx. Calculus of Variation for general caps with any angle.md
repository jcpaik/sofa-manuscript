
> __Theorem [a1-is-upper-bound-angle].__ For any well-behaving cap $K \in \mathcal{K}_{\pi/2}$, we have $|S| = \mathcal{A}(K) \leq \mathcal{A}_1(K)$. ^thm-a1-is-upper-bound-angle

_Proof._ It is sufficient to show that $\mathcal{I}(\mathbf{x}_K) \leq |\mathcal{N}(K)|$. We construct a Jordan curve $\Gamma$ consisting of the following paths.

- The line segment $s_R$ from the point $(0, 0)$ to $\mathbf{x}_K(0)$
- The path $\mathbf{x}_K : [0, \omega] \to \mathbb{R}^2$
- The line segment $s_L$ from $\mathbf{x}_K(\omega)$ to the point $(0, 0)$.

First observe that the line segments $s_L$ and $s_R$ are contained in the bottom sides $l(\omega) \cap P_\omega$ and $l(\pi/2) \cap P_\omega$ of $P_\omega$ respectively. Each path is injective, and so the joined path $\Gamma$ formed by joining all the three paths is a Jordan curve by [[05. Definition#^con-injectivity]]. So by Jordan Curve Theorem, $\Gamma$ divides the plane into an unbounded region and a bounded region. Let $\mathcal{N}_0$ be the bounded open region. We observe that $\Gamma$ is oriented counterclockwise by applying [[yy. Geometric Results#^lem-orientation]] with the endpoints of $s_R$. As $\Gamma$ is oriented clockwise, we have $\left| \mathcal{N}_0 \right| = I(\Gamma)$, and as $I(\Gamma) = I(s_R) + I(\mathbf{x}_K) + I(s_L) = I(\mathbf{x}_K)$ we have $\left| \mathcal{N}_0 \right| = I(\mathbf{x}_K)$.

Next we show $\mathcal{N}_0 \subseteq \mathcal{N}(K)$ which closes the goal as $\left| \mathcal{N}_0 \right| \leq \left| \mathcal{N}(K) \right|$. Take any $p \in \mathcal{N}_0$. Take the ray $r = R_p(\pi/2)$ starting from $p$ upwards, then it should cross some point in the path $\Gamma$. As $\Gamma$ is inside $F_\omega$, we have $\mathcal{N}_0 \subseteq F_\omega$ and so $p \in F_\omega$ as well. As $p$ is in $F_\omega$ and $p$ itself is not in $\Gamma$, we can show that the intersection point of $r$ and $\Gamma$ should be in the path $\mathbf{x}_K$. As some inner corner $\mathbf{x}_K(t)$ of the hallway $L_K(t)$ is on the ray $r$, and the set $Q^-_K(t)$ is closed in the downwards direction, the point $p$ should be in $P_\omega \cap Q^-_K(t)$ and so in $\mathcal{N}(K)$. This shows $\mathcal{N}_0 \subseteq \mathcal{N}(K)$ and we're done. □


> __Definition [j-cap].__ For any $\omega \in [0, \pi/2]$, define $J_\omega = [0, \omega] \cup [\pi/2, \omega + \pi/2]$. ^def-j-cap

> __Definition [i-cap].__ For any cap $K \in \mathcal{K}_\omega$, define $i_K : J_\omega \to \mathbb{R}$ as $i_K(t) = h_K^+(t) - 1$ and $i_K(t + \pi / 2) = g^+_K(t) - 1$ for every $t \in [0, \omega]$. Define $\iota_K$ as the measure on $J_\omega$ derived from the density function $i_K$. That is, $\iota_K(dt) = i_K(t) dt$. ^def-i-cap

> __Theorem [variation-a1].__ Let $K_1$ and $K_2$ be two caps in $\mathcal{K}_\omega$. Then we have the following. ^thm-variation-a1
$$
D\mathcal{A}_1(K_1; K_2) = \left. \frac{d}{d\lambda} \right|_{\lambda = 0} \mathcal{A}_1((1 - \lambda) K_1 + \lambda K_2)
= \left< p_{K_2} - p_{K_1}, \beta_{K_1} - \iota_{K_1} \right>_{J_\omega}
$$

> __Theorem [a1-negative-semidefinite].__ $\mathcal{A}_1$ is concave on $\mathcal{K}_\omega$. ^thm-a1-negative-semidefinite

_Proof._ If $\omega = \pi/2$ then the vertex $p_\omega$ of the parallogram $P_\omega$ is undefined, so in this proof let $p_\omega = A^+_K(\pi/2) = C^+_K(0)$ for the case $\omega = \pi/2$. Define the path $\mathbf{b}_1$ from $A_K^-(0)$ to $p_\omega$ along the upper boundary $\delta K$. Define the path $\mathbf{b}_2$ from $p_\omega$ to $C_K^+(\omega)$ along the upper boundary $\delta K$. Then we have $|K| = I(\mathbf{b}_1) + I(\mathbf{b}_2)$ for all $K$ including the case when $K$ has empty interior.

We stitch the following instances of Mamikon's theorem. First, by [[yy. Geometric Results#^thm-mamikon]] on the curve $\mathbf{b}_1$ and $\mathbf{y}_K(t)$ for $t \in [0, \omega]$, we get the following after some rearrangement.
$$
\begin{align*}
I(\mathbf{y}_K) - I(\mathbf{b}_1) & = \frac{1}{2} \int_0^\omega h^+_K(t)^2 \, dt - (I(\mathbf{y}_K(\omega), p_\omega) - I(\mathbf{y}_K(0), A_K^-(0))) \\
& = \frac{1}{2} \int_0^\omega h^+_K(t)^2 \, dt - \frac{1}{2} \left(\left( p_\omega - \mathbf{y}_K(\omega) \right) \cdot v_\omega + p_K(0) \right) 
\end{align*}
$$

Second, by [[yy. Geometric Results#^thm-mamikon-tangent-line]] on the curve $\mathbf{b}_2$ we get the following after rearrangement. Here, for any $\omega < t < \omega + \pi/2$ define $\tau_K(t) \in \mathbb{R}$ as the value that satisfies $l_K(t) \cap l_K(\omega + \pi/2) = v_K^+(t) + \tau_K(t) v_t$. By [[yy. Geometric Results#^thm-convex-body-linear]] the value $\tau_K$ is convex-linear with respect to $K \in \mathcal{K}_\omega$.
$$
\begin{align*}
- I(\mathbf{b}_2) & = \frac{1}{2} \int_{\omega}^{\pi/2 + \omega} \tau(t)^2 \, dt - I(\mathbf{y}_K(\omega), C^+_K(\omega)) - I(p_\omega, \mathbf{y}_K(\omega))  \\
& = \frac{1}{2} \int_{\omega}^{\pi/2 + \omega} \tau(t)^2 \, dt - \frac{1}{2}\left( p_K(\omega + \pi/2) + \left( \mathbf{y}_K(\omega) - p_\omega \right) \cdot v_\omega \right) 
\end{align*}
$$

Add the two equations together, and we get this.
$$
I(\mathbf{y}_K) - \left| K \right| = \frac{1}{2} \int_0^\omega h^+_K(t)^2 \, dt +  \frac{1}{2} \int_{\omega}^{\pi/2 + \omega} \tau_K(t)^2 \, dt - \frac{1}{2} \left( p_K(0) + p_K(\omega + \pi/2) \right) 
$$

Note that $\mathbf{y}_K(t) = \mathbf{x}_K(t) + u_t + v_t$. Using this, we can show that $I(\mathbf{y}_K) - I(\mathbf{x}_K)$ is convex-linear in terms of $K$.
$$
\begin{align*}
I(\mathbf{y}_K) & = \frac{1}{2} \int_{0}^\omega \mathbf{y}_K(t) \times d \mathbf{y}_K(t) \\
& = \frac{1}{2} \int_{0}^\omega (\mathbf{x}_K(t) + u_t + v_t) \times d (\mathbf{x}_K(t) + u_t + v_t)  \\
& = I(\mathbf{x}_K) + \frac{1}{2} \left( \int_{0}^\omega (u_t + v_t) \times d \mathbf{x}_K(t) 
+ \int_{0}^\omega \mathbf{x}_K(t) \times d(u_t + v_t) + \int_{0}^\omega (u_t + v_t) \times d (u_t + v_t) \right) 
\end{align*}
$$

Now we have the following formula. 
$$
\begin{gather}
\mathcal{A}_1(K) = |K| - I(\mathbf{x}_K) =  \\
 - \frac{1}{2} \int_0^\omega h^+_K(t)^2 \, dt - \frac{1}{2} \int_{\omega}^{\pi/2 + \omega} \tau_K(t)^2 \, dt  \\
 + \frac{1}{2}\left( p_K(0) + p_K(\omega + \pi/2) \right) + \left( I(\mathbf{y}_K) - I(\mathbf{x}_K) \right) 
\end{gather}
$$
As $h^+_K, \tau_K$, and the last term are convex-linear with respect to $K$, $\mathcal{A}_1$ is negative semidefinite using [[01. Space of Caps#^lem-negative-semidefinite]]. □