
> __Theorem [a1-is-upper-bound-angle].__ For any well-behaving cap $K \in \mathcal{K}_{\pi/2}$, we have $|S| = \mathcal{A}(K) \leq \mathcal{A}_1(K)$. ^thm-a1-is-upper-bound-angle

_Proof._ It is sufficient to show that $\mathcal{I}(\mathbf{x}_K) \leq |\mathcal{N}(K)|$. We construct a Jordan curve $\Gamma$ consisting of the following paths.

- The line segment $s_R$ from the point $(0, 0)$ to $\mathbf{x}_K(0)$
- The path $\mathbf{x}_K : [0, \omega] \to \mathbb{R}^2$
- The line segment $s_L$ from $\mathbf{x}_K(\omega)$ to the point $(0, 0)$.

First observe that the line segments $s_L$ and $s_R$ are contained in the bottom sides $l(\omega) \cap P_\omega$ and $l(\pi/2) \cap P_\omega$ of $P_\omega$ respectively. Each path is injective, and so the joined path $\Gamma$ formed by joining all the three paths is a Jordan curve by [[05. Definition#^con-injectivity]]. So by Jordan Curve Theorem, $\Gamma$ divides the plane into an unbounded region and a bounded region. Let $\mathcal{N}_0$ be the bounded open region. We observe that $\Gamma$ is oriented counterclockwise by applying [[yy. Geometric Results#^lem-orientation]] with the endpoints of $s_R$. As $\Gamma$ is oriented clockwise, we have $\left| \mathcal{N}_0 \right| = I(\Gamma)$, and as $I(\Gamma) = I(s_R) + I(\mathbf{x}_K) + I(s_L) = I(\mathbf{x}_K)$ we have $\left| \mathcal{N}_0 \right| = I(\mathbf{x}_K)$.

Next we show $\mathcal{N}_0 \subseteq \mathcal{N}(K)$ which closes the goal as $\left| \mathcal{N}_0 \right| \leq \left| \mathcal{N}(K) \right|$. Take any $p \in \mathcal{N}_0$. Take the ray $r = R_p(\pi/2)$ starting from $p$ upwards, then it should cross some point in the path $\Gamma$. As $\Gamma$ is inside $F_\omega$, we have $\mathcal{N}_0 \subseteq F_\omega$ and so $p \in F_\omega$ as well. As $p$ is in $F_\omega$ and $p$ itself is not in $\Gamma$, we can show that the intersection point of $r$ and $\Gamma$ should be in the path $\mathbf{x}_K$. As some inner corner $\mathbf{x}_K(t)$ of the hallway $L_K(t)$ is on the ray $r$, and the set $Q^-_K(t)$ is closed in the downwards direction, the point $p$ should be in $P_\omega \cap Q^-_K(t)$ and so in $\mathcal{N}(K)$. This shows $\mathcal{N}_0 \subseteq \mathcal{N}(K)$ and we're done. □

