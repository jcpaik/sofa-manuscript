> __Definition [j-cap].__ For any $\omega \in [0, \pi/2]$, define the set $J_\omega = [0, \omega] \cup [\pi/2, \omega + \pi/2]$. ^def-j-cap

> __Definition [i-cap].__ For any cap $K \in \mathcal{K}_\omega$, define measurable function $i_K : J_\omega \to \mathbb{R}$ as $i_K(t) = h_K^+(t) - 1$ and $i_K(t + \pi / 2) = g^+_K(t) - 1$ for every $t \in [0, \omega]$. Define $\iota_K$ as the measure on $J_\omega$ with the density function $i_K$. That is, $\iota_K(dt) = i_K(t) dt$. ^def-i-cap

> __Theorem [variation-a1].__ Let $K_1$ and $K_2$ be two caps in $\mathcal{K}_\omega$. Then we have the following. ^thm-variation-a1
$$
D\mathcal{A}_1(K_1; K_2) = \left. \frac{d}{d\lambda} \right|_{\lambda = 0} \mathcal{A}_1((1 - \lambda) K_1 + \lambda K_2)
= \left< p_{K_2} - p_{K_1}, \beta_{K_1} - \iota_{K_1} \right>_{J_\omega}
$$

_Proof._  □

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
As $h^+_K, \tau_K$, and the last term are convex-linear with respect to $K$, $\mathcal{A}_1$ is negative semidefinite using [[02. Calculus of variation#^lem-negative-semidefinite]]. □

> __Theorem [maximum-presofa-a1].__ The cap $K_1 \in \mathcal{K}_{\omega}$ attains the maximum value of $\mathcal{A}_1$. ^thm-maximum-presofa-a1

_Proof._ By [[02. Calculus of variation#^thm-variation-maximizer]] and [[#^thm-variation-a1]] it suffice to check that $\beta_{K_1}(dt) = i_{K_1}(t)dt$ on $J_\omega$ except for the points $t = \omega, \pi/2$. Take any $t \in (0, \omega)$, then we have the following.
$$
\begin{align*}
g^+_K(t) & = \int_{u \in (t, t+\pi/2]} \cos (u-t)\, \beta(du) \\
& = \cos(\omega - t) + \cos(\pi/2 - t) + \int_{t}^{\omega} \cos(u-t)(\omega-u)\,du + \int_{\pi/2}^{t + \pi/2} \cos(u-t)(u - \pi/2)\,du  \\
& = 1 + t
\end{align*}
$$
Note that this computation holds for both cases $\omega < \pi/2$ and $\omega = \pi/2$. So on the domain $t \in (\pi/2, \omega + \pi/2]$ the measure $\beta_{K_1}(dt) = (t - \pi/2) dt$ is equal to $i_K(t) dt = (g^+_K(t - \pi/2) - 1) dt$. Similarly, we can also check $\beta_{K_1}(dt) = i_K(t) dt$ on any $t \in [0, \omega)$. □

> __Theorem [maximum-presofa-a1-area].__ The maximum value $\mathcal{A}_1(K_1)$ is $1 + \omega^2/2$.  ^thm-maximum-presofa-a1-area

_Proof._ If $\omega = \pi/2$, let $p_\omega = (0, 1)$. Let $\tau = (\pi/2-\omega)/2$. Then we have $p_\omega = (\tan(\tau), 1)$ for any angle $\omega \leq \pi/2$. Note that $K_1$ has mirror symmetry along the line segment connecting $(0, 0)$ and $p_\omega$.

Let us compute the value of $p_{K_1}(t)$ for $t \in [0, \omega]$. 
$$
\begin{align*}
p_{K_1}(t) - p_\omega \cdot u_t & = (A^-_{K_1}(t) - p_\omega) \cdot u_t =  \\
& = \sin(\omega - t) + \int_{t_0 \in [t, \omega] } (\omega - t_0) \sin \left( t_0 - t \right) \, dt_{0} \\
& = \omega - t
\end{align*}
$$
So $p_{K_1}(t) = \omega - t + p_{\omega} \cdot u_t$ on $t \in [0, \omega]$. By symmetry, $p_{K_1}(t) = t - \pi/2 + p_\omega \cdot u_t$ on $t \in [\pi/2, \omega + \pi/2]$. Now use the mirror symmetry to calculate half the area of $K_1$.
$$
\begin{align*}
\frac{1}{2} \int_{t \in [0, \omega]} p_{K_1}(t) \, \beta(dt) & = 
\frac{1}{2} + \frac{1}{2} \int_{t \in [0, \omega]} \left( \omega - t + p_\omega \cdot u_t \right)  (\omega-t) \, dt \\
& = \frac{1}{2} + \frac{1}{2} \left( \omega^3 / 3 + p_\omega \cdot (1 - \cos(\omega), \omega - \sin(\omega)) \right) 
\end{align*}
$$
So we have the following.
$$
\begin{align*}
|K_1| & = 1 + \omega^3 / 3 + p_\omega \cdot (1 - \cos \omega, \omega - \sin \omega) \\
& = \omega^3/3 + \omega + \cot\left( \pi/4 + \omega/2 \right)
\end{align*}
$$

Next, we compute the area of the niche $I(\mathbf{x}_{K_1})$. We have 
$$
\mathbf{x}_{K_1}(t) = (p_{K_1}(t) - 1)u_t + (p_{K_1}(t + \pi/2) - 1) v_t
$$
and
$$
\mathbf{x}'_{K_1} = -(g_{K_1}^+(t) - 1) \cdot u_t + (h_{K_1}^+(t) - 1) \cdot v_t = 
- t \cdot u_t + (\omega - t) \cdot v_t
$$
so
$$
\begin{align*}
I(\mathbf{x}_{K_1}) & = \frac{1}{2} \int_0^\omega (p_{K_1}(t) - 1)(\omega - t) + (p_{K_1}(t+\pi/2) - 1) t \, dt  \\
& = \frac{1}{2} \int_0^\omega (\omega - t + p_{\omega} \cdot u_t - 1) (\omega - t) \, dt + 
\frac{1}{2} \int_0^\omega (t + p_{\omega} \cdot v_t - 1) t \, dt \\
& = \omega^3 / 3 - \omega^2 / 2 + (-1 + \omega + \cot\left( \pi/4 + \omega/2 \right) )
\end{align*}
$$
Finally, we compute $\mathcal{A}_1(K_1) = |K_1| - I(\mathbf{x}_{K_1}) = 1 + \omega^2 / 2$. □