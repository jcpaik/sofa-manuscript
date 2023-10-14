We have just shown that any sofa $S$ with rotation angle $\omega \in [0, \pi/2]$ is essentially a hallway intersection in standard position with angle set $[0, \omega]$ up to rigid transformation ([[01. Monotone Sofa#^cor-sofa-iff-hallway-intersection]]), and that it admits a monotonized sofa movement $f_S$ with tangent hallways $L_S(t)$ containing $S$ ([[01. Monotone Sofa#^thm-hallway-intersection-is-sofa]]). In this subsection, we define the _monotonization_ of $S$ as the intersection $\mathcal{M}(S) = P_\omega \cap \bigcap_{t \in [0, \omega]} L_S(t)$ of the parallelogram and all the tangent hallways ([[yy. Monotone Sofas#^def-monotonization]]). It turns out that $\mathcal{M}(S)$ is itself a sofa containing $S$ ([[yy. Monotone Sofas#^thm-monotonization-is-hallway-intersection]]), so we call $\mathcal{M}(S)$ a _monotone sofa_ ([[yy. Monotone Sofas#^def-monotone-sofa]]) and safely assume that a sofa of maximum area is monotone.

Moreover, a monotone sofa $\mathcal{M}(S)$ is equal to a _cap_ $K$ subtracted by its _niche_ $\mathcal{N}(K)$ ([[yy. Monotone Sofas#^thm-monotonization-eq]]). The cap $K$ ([[yy. Monotone Sofas#^def-cap]]) is a convex body bounded from above by the outer walls $a_S(t), c_S(t)$ of $L_S(t)$ as tangent lines and from below by the bottom edges of $P_\omega$. The niche $\mathcal{N}(K)$ ([[yy. Monotone Sofas#^def-niche]]) is the union of triangular regions carved out by the inner corner $Q^-_S(t)$ of the hallway $L_S(t)$. The niche $\mathcal{N}(K)$ turns out to be a subset of the cap $K$ ([[yy. Monotone Sofas#^thm-niche-in-cap]]), so the area $\mathcal{A}(K) = |K| - |\mathcal{N}(K)|$ can be analyzed separately in terms of the cap $K$ and its niche $\mathcal{N}(K)$. In general, for any cap $K$ (which may not be the cap of a sofa) we show that the niche $\mathcal{N}(K)$ is contained in $K$ if and only if the set $K \setminus \mathcal{N}(K)$ is connected ([[yy. Monotone Sofas#^thm-monotonization-connected-iff]]).

We now provide the full details, starting with the definition of monotonization.

> __Definition [monotonization].__ Let $S$ is any hallway intersection in standard position with rotation angle $\omega$ and angle set $\Theta$. Define the _monotonization_ $\mathcal{M}_\Theta(S)$ of $S$ as the following set.
$$
\mathcal{M}_\Theta(S) = P_\omega \cap \bigcap_{t \in \Theta} L_S(t)
$$
> Say that a shape is _monotone_ with respect to rotation angle $\omega$ and angle set $\Theta$ if it is the monotonization $\mathcal{M}(S)$ of some hallway intersection $S$ with angle set $\Theta$. If $\Theta$ in the context is fixed, we simply denote the monotonization as $\mathcal{M}(S)$. ^def-monotonization

The following is an immediate corollary of [[01. Monotone Sofa#^def-hallway-intersection]] and [[01. Monotone Sofa#^cor-sofa-is-hallway-intersection]].

> __Corollary [monotonization-contains].__ For any hallway intersection $S$, its monotonization $\mathcal{M}(S)$ contains $S$. ^cor-monotonization-contains

We also formally define what is a cap.

> __Corollary [cap-in-standard-position].__ A cap $K$ with rotation angle $\omega \in [0, \pi/2]$ is in standard position respect to $\omega$. ^cor-cap-in-standard-position

We describe the geometry of an arbitrary cap $K$ with angle set $\Theta$ and rotation angle $\omega$. We define geometric primitives derived from the cap $K$. By [[01. Monotone Sofa#^def-tangent-hallway]] and [[01. Monotone Sofa#^def-rotating-hallway-parts]], the tangent hallway $L_K(t)$ has the walls $a_K(t), b_K(t), c_K(t), d_K(t)$ where the outer walls $a_K(t) = l_K(t)$ and $c_K(t) = l_K(t+\pi/2)$ are the upper tangent lines of $K$. We also define the vertices of the cap $K$.

> __Definition [cap-vertices].__ Let $K$ be a cap with angle set $\Theta$ and rotation angle $\omega$. For any $t \in \Theta$, define the vertices $A^+_K(t) = v^+_K(t)$, $A^-_K(t) = v^-_K(t)$,  $C^+_K(t) = v^+_K(t + \pi/2)$, and $C^-_K(t) = v^-_K(t + \pi/2)$ of $K$. ^def-cap-vertices

We define the _upper boundary_ of an arbitrary cap $K$.

> __Definition [upper-boundary-of-cap].__ Define the _upper boundary_ $\delta K$ of a cap $K$ with rotation angle $\omega \in [0, \pi/2]$ as the set $\delta K = \bigcup_{t \in [0, \omega + \pi/2]} e_K(t)$. ^def-upper-boundary-of-cap

By [[00. Geometric Results#^thm-convex-set-support-disjoint]], we have the followings.
- if $\omega = \pi/2$, then $K$ is a convex body with the upper edges of normal vector $u_t$ for $t \in \Theta \cup \Theta + \pi/2$, and the lower edge $e_K(3\pi/2)$ on the $x$-axis connecting $A^-_K(0)$ and $C^+_K(\pi/2)$.
- if $\omega < \pi / 2$, then $K$ is a convex body with the upper edges of normal vector $u_t$ for $t \in \Theta \cup \Theta + \pi/2$, and the two lower edges $e_K(\pi + \omega)$ connecting $C^+_K(\omega)$ and the origin, and $e_K(3\pi/2)$ connecting the origin and $A^-_K(0)$.

We also define the cap $K = \mathcal{C}(S)$ of a hallway intersection $S$ as the intersection of the quadrants $Q^+_S(t)$ bounded by the outer walls of tangent hallways.

> __Theorem [cap-hallway-intersection].__ Let $S$ be any hallway intersection in standard position with rotation angle $\omega \in [0, \pi/2]$ and angle set $\Theta \subseteq [0, \omega]$. Define $\mathcal{C}(S)$ as the following set.
$$
\mathcal{C}(S) = P_\omega \cap \bigcap_{t \in \Theta} Q^+_S(t)
$$
> Then $\mathcal{C}(S)$ is a cap with rotation angle $\omega$ and angle set $\Theta$. We call $\mathcal{C}(S)$ as the _cap_ of $S$. ^thm-cap-hallway-intersection

_Proof._ As $Q^+_S(t)$ is the intersection of two half-planes of normal angle $t$ and $t + \pi/2$, the set $K = \mathcal{C}(S)$ is a convex set supported by the set $\Theta \cup (\Theta + \pi/2) \cup \{\pi + \omega, 3\pi/2\}$ ([[00. Geometric Results#^thm-convex-set-support]]). Moreover, $p_K(\omega) = p_K(\pi/2) = 1$ because $S$ is in standard position so $p_{S}(\omega)=p_S(\pi/2)=1$. It remains to verify $p_K(\pi + \omega) = p_K(3\pi/2) = 0$.

We first handle the case $\omega = \pi/2$. For this we only need to prove $p_{K}(3\pi/2) = 0$. As $p_{S}(\pi/2)=1$, we have some point $(x_0, 1)$ which is in $S$ and thus $K$. Observe that $(x_0, 0)$ is also in $K$ as the set $\bigcap_{t \in \Theta} Q^+_S(t)$ is [[01. Notations and Conventions#^def-closed-in-direction|closed in the downwards direction]]. This implies that $p_{K}(3\pi/2) = 0$.

Next we handle the case $\omega < \pi/2$. As $p_S(\omega) = p_S(\pi/2) = 1$, there are points $q$ and $r$ of $S$ touching the sides $l(\omega, 1)$ and $l(\pi/2, 1)$ of $P_\omega$ respectively. We then observe that the upper-right corner $p_\omega = l(\omega, 1) \cap l(\pi/2, 1)$ of $P_\omega$ is also contained in the set $\bigcap_{t \in \Theta} Q^+_S(t)$ by a geometric argument: for any $t \in \Theta$, $q$ is further than $p_\omega$ in the direction of $u_t$ ([[01. Notations and Conventions#^def-further-in-direction]]), and $r$ is further than $p_\omega$ in the direction of $v_t$, so $p_\omega \in Q^+_S(t)$ always.

Now as the set $\bigcap_{t \in \Theta} Q^+_S(t)$ contains $p_\omega$ and is closed in the direction of $-u_\omega$ and $-v_0$, the orthogonal projections of $p_\omega$ to the bottom sides $l(\omega, 0)$ and $l(\pi/2, 0)$ of $P_\omega$ respetively are also contained in $K$. This implies that $p_K(\pi + \omega) = p_K(3\pi/2) = 0$. □

Because $L_S(t) \subseteq Q^+_S(t)$, we have the following.

> __Corollary [cap-contains-hallway-intersection].__ For any hallway intersection $S$ in standard position, its cap $K = \mathcal{C}(S)$ contains $S$. ^cor-cap-contains-hallway-intersection

The tangent hallways of a hallway intersection $S$ are retained in its cap $K = \mathcal{C}(S)$.

> __Lemma [cap-same-support-function].__ Let $S$ be any hallway intersection in standard position with rotation angle $\omega \in [0, \pi/2]$ and angle set $\Theta \subseteq [0, \omega]$. Let $K = \mathcal{C}(S)$ be its cap. Then the support functions $p_S$ and $p_K$ have the same value on the set $\Theta \cup (\Theta + \pi/2)$. Consequently, the tangent hallways $L_S(t)$ and $L_K(t)$ are the same on any $t \in \Theta$, and so are the parts $?_S(t) = ?_K(t)$ for $? = a, b, c, d, \mathbf{x}, \mathbf{y}, Q^+, Q^-$ of $L$. ^lem-cap-same-support-function

_Proof._ By [[yy. Monotone Sofas#^cor-cap-contains-hallway-intersection]] we have $p_S \leq p_K$ on the set $\Theta \cup (\Theta + \pi/2)$. On the other hand, $K \subseteq Q^+_S(t)$ for any $t \in \Theta$ so $p_K(t') \leq p_{Q_S^+(t)}(t') = p_S(t')$ for $t'=t, t+ \pi/2$. So $p_K \leq p_S$ on the set $\Theta \cup (\Theta + \pi/2)$. □

With [[yy. Monotone Sofas#^lem-cap-same-support-function]] we will understand $S$ mostly in terms of $K$. We show the first main theorem that the monotonization $\mathcal{M}(S)$ is also a hallway intersection. The hard part is to show that $\mathcal{M}(S)$ is connected.

> __Theorem [monotonization-is-hallway-intersection].__ Let $S$ be a hallway intersection with rotation angle $\omega$ and angle set $\Theta$. Then the monotonization $\mathcal{M}(S)$ is connected, and so is also a hallway intersection with angle set $\Theta$. ^thm-monotonization-is-hallway-intersection

_Proof._ Take any point $p$ in $\mathcal{M}(S)$. Take the line $l_\theta$ passing $p$ that makes an angle of arbitrary $\theta \in [\omega, \pi/2]$ with the $x$-axis. Observe that $l_\theta \cap \mathcal{M}(S)$ is a nonempty line segment because $\bigcup_{t \in \Theta} Q^-_S(t)$ is closed in the direction of $-u_\theta$. So if any of $l_\theta$ meets $S$, then $p$ is connected to $S$ inside $\mathcal{M}(S)$ and the proof is done. Our goal now is to prove that there is some $\theta \in [\omega, \pi/2]$ such that $l_\theta$ meets $S$. Assume by contradiction that for any $\theta \in [\omega, \pi/2]$ the line $l_\theta$ is disjoint from $S$.

As $S \subseteq \mathcal{M}(S) \subseteq \mathcal{C}(S)$ ([[yy. Monotone Sofas#^cor-monotonization-contains]]) and the support function of $S$ and $\mathcal{C}(S)$ agrees on the set $\Theta \cup (\Theta + \pi/2)$ ([[yy. Monotone Sofas#^lem-cap-same-support-function]]), the support function of $\mathcal{M}(S)$ also agrees with that of $S$ on $\Theta \cup (\Theta + \pi/2)$.

As $p \in \mathcal{M}(S)$, the line $l_{\pi/2}$ is either equal to $l_{\mathcal{M}(S)}(0)$ or strictly on the left side of $l_{\mathcal{M}(S)(0)}$. As $p_S(0) = p_{\mathcal{M}(S)}(0)$ we have $l_{\mathcal{M}(S)}(0) = l_S(0)$. Now the line $l_{\pi/2}$ is either equal to $l_S(0)$ or strictly on the left side of $l_{S}(0)$. If they are equal, then $l_{\pi/2}$ contains some point of $S$ and this contradicts our assumption. So the line $l_{\pi/2}$ is strictly on the left side of $l_{S}(0)$. So there is a point of $S$ strictly on the right side of $l_{\pi/2}$.

As $p \in \mathcal{M}(S)$, the line $l_{\omega}$ that passes through $p$ is either equal to $l_{\mathcal{M}(S)}(\omega + \pi/2)$ or strictly on the right side of $l_{\mathcal{M}(S)}(\omega + \pi/2)$. As $p_S(\omega + \pi/2) = p_{\mathcal{M}(S)}(\omega + \pi/2)$ we have $l_{\mathcal{M}(S)}(\omega + \pi/2) = l_S(\omega + \pi/2)$. Now the line $l_{\omega}$ is either equal to $l_S(\omega + \pi/2)$ or strictly on the right side of $l_S(\omega + \pi/2)$. If they are equal, then $l_{\omega}$ contains some point of $S$ and this contradicts our assumption. So the line $l_{\omega}$ is strictly on the right side of $l_S(\omega + \pi/2)$. So there is a point of $S$ strictly on the left side of $l_{\omega}$.

As the line $l_\theta$ is disjoint from $S$ for any $\theta \in [\omega, \pi/2]$, $S$ is inside the set $X = \mathbb{R}^2 \setminus \bigcup_{\theta \in [\omega, \pi/2]} l_\theta$. Note that the set $X$ has exactly two connected components $X_L$ and $X_R$ each in left and right respectively. As there is a point of $S$ strictly on the right side of $l_{\pi/2}$, $S \cap X_R$ is nonempty. As there is also a point of $S$ strictly on the left side of $l_\omega$, $S \cap X_L$ is nonempty. We get contradiction as $S$ is connected and a subset of $X$. □

Now any monotonization $\mathcal{M}(S)$ of a sofa $S$ is also a sofa.

> __Definition [monotone-sofa].__ Call any monotonization $\mathcal{M}(S)$ of a sofa as a _monotone sofa_. ^def-monotone-sofa

We now show that the monotonization $\mathcal{M}(S)$ is the cap $K = \mathcal{C}(S)$ subtracted by its niche $\mathcal{N}(K)$.

> __Definition [fan].__ For any rotation angle $\omega \in [0, \pi/2]$, define the _fan_ $F_\omega = H(0, \pi+\omega) \cap H(0, 3\pi/2)$ as the convex cone bounded by the bottom edges of $P_\omega$. Denote the interior of $F_\omega$ as $F_\omega^\circ = H^\circ(0, \pi+\omega) \cap H^\circ(0, 3\pi/2)$. ^def-fan

> __Definition [niche].__ Let $K$ be any cap in standard position with rotation angle $\omega \in [0, \pi/2]$ and angle set $\Theta \subseteq [0, \omega]$. Define the _wedge_ $T_K(t) = F_\omega \cap Q_K^-(t)$ of $K$ for any $t \in \Theta$. Define the _niche_ of $K$ as the union of all triangular sets. ^def-niche
$$
\mathcal{N}(K) = F_{\omega} \cap \bigcup_{t \in \Theta} Q^-_K(t) = \bigcup_{t \in \Theta} T_K(t) 
$$

> __Theorem [monotonization-eq].__ Let $S$ is any hallway intersection in standard position with rotation angle $\omega$ and angle set $\Theta$. Then the monotonization of hallway intersection $S$ is $\mathcal{M}(S) = K \setminus \mathcal{N}(K)$ where $K = \mathcal{C}(S)$ is the cap of $S$ and $\mathcal{N}(K)$ is the niche of $K$ ([[yy. Monotone Sofas#^def-niche]]). ^thm-monotonization-eq

_Proof._ We have the following equality for hallway intersection $S$ with cap $K$ and angle set $\Theta$.
$$
\begin{align*}
\mathcal{M}(S) & = P_\omega \cap \bigcap_{t \in \Theta} L_S(t)  \\
& =
\left( P_\omega \cap \bigcap_{t \in \Theta} Q^+_S(t) \right) \setminus \left( F_\omega \cap \bigcup_{t \in \Theta} Q^-_S(t) \right)  \\
& = K \setminus \mathcal{N}(K)
\end{align*}
$$
The first equality is the definition of $\mathcal{M}(S)$. The second equality comes from substituting $L_K(t) = Q^+_K(t)\setminus Q^-_K(t)$. The last equality comes from [[yy. Monotone Sofas#^lem-cap-same-support-function]] and the definition of $K$, $\mathcal{N}(K)$. □

So far, $K$ is the cap of the original sofa $S$, not its monotonization $\mathcal{M}(S)$. We will show that $K$ is also the cap of $\mathcal{M}(S)$ at the very end when we are ready.

We show that for any monotone sofa with cap $K$, the niche $\mathcal{N}(K)$ is contained in $K$. We make small observations on the upper boundary of $K$. We omit the proofs.

> __Lemma [cap-empty-interior].__ A cap $K$ with rotation angle $\omega \in [0, \pi/2]$ has empty interior if and only if $\omega = \pi/2$ and $K$ is a vertical line segment of length 1. ^lem-cap-empty-interior

> __Corollary [upper-boundary-arc].__ If $K$ has nonempty interior, by [[00. Geometric Results#^thm-boundary-parametrization-segment]] the function $\mathbf{x}_{K, A^-_K(0), C^+_K(\omega)}$ is a Jordan arc parametrization of $\delta K$ from $A_K^-(0)$ to $C^+_K(\omega)$. In particular, $\delta K$ is connected. ^cor-upper-boundary-arc

> __Lemma [cap-fan-topology].__ For any cap $K$ with rotation angle $\omega \in [0, \pi/2]$, the set $\delta K$ is the boundary of $K$ in the subspace topology of $F_\omega \subseteq \mathbb{R}^2$. ^lem-cap-fan-topology

We inspect the exact condition where $\mathcal{N}(K) \subseteq K$ holds for a general cap $K$. As the niche $\mathcal{N}(K)$ is the union of the wedges $T_K(t)$ for all $t \in \Theta$, we need to examine when is the wedge in $K$. We observe a sufficient condition as the following.

> __Lemma [niche-in-cap].__ Fix any cap $K$ with rotation angle $\omega \in [0, \pi/2]$ and an angle $t \in (0, \omega)$. Let $T$ be the intersection of $F_\omega$ and the quadrant $Q^- = (-\infty, 0)^2$ rotated counterclockwise by an angle of $t$ with corner $\mathbf{x}$. Let $b_T$ and $d_T$ be the half-line edges of the rotated quadrant corresponding to the edges $b = \left\{ 0 \right\} \times (-\infty, 0]$ and $d = (-\infty, 0] \times \left\{ 0 \right\}$ of $Q^-$. 
> 
> Let $W_T$ be the intersection of the $x$-axis (bottom right edge of $P_\omega$) and $b_K$. Let $w_T = (A^-_K(0) - W_T) \cdot u_0$ be the signed distance measured from the intersection $W_T$ to the rightmost vertex $A_K^-(0)$ of the cap. Likewise, let $Z_T$ be the intersection of $l_\omega$ (bottom left edge of $P_\omega$) and $d_K$. Let $z_T = (C_K^+(\omega) - Z_K(t)) \cdot v_\omega$ be the signed distance measured from $Z_T$ to the leftmost vertex $C^+_K(\omega)$ of the cap.
> 
> If $w_T , z_T \geq 0$ and $\mathbf{x} \in K$, then $T \subseteq K$. ^lem-niche-in-cap

_Proof._ We divide the proof into four cases, on whether the origin $(0, 0)$ lies strictly below the lines $b_T$ and $d_T$ or not respectively.

- If $(0, 0)$ does not lie strictly below both $b_T$ and $d_T$, then the corner $\mathbf{x}$ is outside $F_\omega^\circ$ and so $T$ is an empty set.
- If $(0, 0)$ does not lie strictly below $b_T$ but does lie strictly below $d_T$, then $T$ is a triangle with vertices $\mathbf{x}$, $Z_T$ and the intersection $p = l_\omega \cap b_T$. In this case $p$ is in the line segment connecting $Z_T$ and $(0, 0)$. Also, as $z_T \geq 0$ the point $Z_T$ lies in the segment connecting $C^+_K(\omega)$ and the origin $(0, 0)$. So $\mathbf{x}, Z_T, p \in K$ and by convexity of $K$ we have $T \subseteq K$.
- The case where $(0, 0)$ lies strictly below $b_T$ but does not lie strictly below $d_T$ can be handed by an argument symmetric to the above case.
- If $(0, 0)$ lies strictly below both $b_T$ and $d_T$, then $T$ is a quadrilateral with vertices $\mathbf{x}$, $Z_T$, $W_T$ and $(0, 0)$. As $w_T \geq 0$ (resp. $z_T \geq 0$) the point $W_T$ (resp. $Z_T$) is in the line segment connecting $(0, 0)$ and $A^-_K(0)$ (resp. $C^+_K(\omega)$). So all the vertices are in $K$ and so is $T$ as well by convexity.

□

We now apply [[yy. Monotone Sofas#^lem-niche-in-cap]] to the wedge $T = T_K(t)$.

> __Definition [cap-wedge-gap].__ Fix any cap $K$ with rotation angle $\omega \in [0, \pi/2]$ and an angle $t \in (0, \omega)$. Define the values $W_K(t), w_K(t), Z_K(t), z_K(t)$ as the values $W_T, w_T, Z_T, z_T$ in [[yy. Monotone Sofas#^lem-niche-in-cap]] when $T = T_K(t)$. So for example, $W_K(t) = b_K(t) \cap l_{\pi/2}$. ^def-cap-wedge-gap

The left and right endpoints $W_K(t)$ and $Z_K(t)$ are already controlled.

So we only need $\mathbf{x}_K(t)$ to be inside $K$ in order for the wedge $T$ to be inside $K$. We characterize the exact condition when the monotonization $\mathcal{M}(K)$ of a cap $K$ is connected.

> __Theorem [monotonization-connected-iff].__ Let $K$ be any cap with angle set $\Theta$ and rotation angle $\omega$. Then the followings are all equivalent. ^thm-monotonization-connected-iff
> 
> 1. $\mathcal{N}(K) \subseteq K$
> 2. $\mathcal{N}(K) \subseteq K \setminus \delta K$
> 3. For any $t \in \Theta$, either $\mathbf{x}(t) \not\in F_\omega^\circ$ or $\mathbf{x}(t) \in K$.
> 4. Normalization $\mathcal{M}(K)$ is connected, so $\mathcal{M}(K)$ is a hallway intersection with angle set $\Theta$.

_Proof._ The conditions 1 and 2 are equivalent because $\mathcal{N}(K)$ is open in the subset topology of $F_\omega$, and the set $K \setminus \delta K$ is the interior of $K$ in the subset topology of $F_\omega$.

(1 $\Rightarrow$ 3) We will prove the contraposition and assume $\mathbf{x}(t) \in F_\omega^\circ \setminus K$. Then a neighborhood of $\mathbf{x}(t)$ is inside $F_\omega$ and disjoint from $K$, so a portion of $T_K(t)$ is outside $K$, showing $\mathcal{N}(K) \not\subseteq K \setminus K$.

(3 $\Rightarrow$ 1) If $\mathbf{x}(t) \not \in F_\omega^\circ$, then $T_K(t)$ is an empty set. If $\mathbf{x}(t) \in K$, then by [[yy. Monotone Sofas#^lem-niche-in-cap]] and [[yy. Monotone Sofas#^lem-wedge-ends-in-cap]] we have $T_K(t) \subseteq K$.

(2 $\Rightarrow$ 4) As $\delta K$ is disjoint from $\mathcal{N}(K)$, we have $\delta K \subseteq \mathcal{M}(K)$. We show that $\mathcal{M}(K)$ is connected. First, $\delta K$ is connected ([[yy. Monotone Sofas#^cor-upper-boundary-arc]]). Next, take any point $p \in \mathcal{M}(K)$. Take the ray $r = R_p(\pi/2)$ in the upward direction $u_{\pi/2}$ starting from $p$. Then $r$ touches a point in $\delta K$ as $p \in K$. Moreover, $r$ is disjoint from $\mathcal{N}(K)$ as the set $\mathcal{N}(K) \cup (\mathbb{R}^2 \setminus F_\omega)$ is closed in the downwards direction. Now $r \cap K$ is a line segment inside $\mathcal{M}(K)$ that connects the arbitrarily chosen point $p \in \mathcal{M}(K)$ to a point in $\delta K$. So $\mathcal{M}(K)$ is connected.

(4 $\Rightarrow$ 3) Assume by contradiction that $\mathbf{x}(t) \in F_\omega^\circ \setminus K$ for some $t \in \Theta$. We first show that the vertical line $l$ passing through $\mathbf{x}(t)$ is disjoint from $S$. The ray in the upwards direction from $\mathbf{x}(t)$ is disjoint from $K$ as the set $F_\omega^\circ \setminus K$ is closed in the direction upwards. The ray in the downwards direction from $\mathbf{x}(t)$ is not in $S$ because $\mathbf{x}(t)$ is the corner of $Q_K^-(t)$ and $Q_K^-(t)$ is closed in the direction downwards. So the vertical line $l$ passing through $\mathbf{x}(t)$ does not overlap with $S$.

Now separate the horizontal strip $H$ into two chunks by the vertical line $l$ passing through $\mathbf{x}(t)$. As $S$ is connected, $S$ should lie either strictly on left or strictly on right of $l$. As $\mathbf{x}(t)$ lies strictly inside $F_\omega$, the point $W_K(t)$ is strictly further than $\mathbf{x}(t)$ in the direction of $u_0$, and by [[yy. Monotone Sofas#^lem-niche-in-cap]] the point $A_K^-(0)$ is further than $W_K(t)$ in the direction of $u_0$. So the endpoint $A_K^-(0)$ of $K$ lies strictly on the right side of $l$. Similarly, the points $Z_K(t)$ is strictly further than $\mathbf{x}_K(t)$ in the direction of $-u_0$, and by [[yy. Monotone Sofas#^lem-niche-in-cap]] the point $C_K^+(\omega)$ is further than $W_K(t)$ in the direction of $-u_0$. So the endpoint $C^+_K(\omega)$ of $K$ lies strictly on the left side of $l$. As the endpoints $A^-_K(0)$ and $C^+_K(\omega)$ are in $\mathcal{M}(K)$ by [[yy. Monotone Sofas#^lem-wedge-ends-in-cap]], and the line $l$ separates the two points, $l$ divides $\mathcal{M}(K)$ and so $\mathcal{M}(K)$ is disconnected. □

Using this, we show that for any monotonization $\mathcal{M}(S) = K \setminus \mathcal{N}(K)$ of a hallway intersection $S$, the niche $\mathcal{N}(K)$ is contained in $K \setminus \delta K$.

> __Theorem [niche-in-cap].__ For any hallway intersection $S$ and its cap $K = \mathcal{C}(S)$, the niche $\mathcal{N}(K)$ is contained in $K \setminus \delta K$. ^thm-niche-in-cap

_Proof._ By [[yy. Monotone Sofas#^thm-monotonization-is-hallway-intersection]], monotonization $\mathcal{M}(S)$ is connected. By [[yy. Monotone Sofas#^thm-monotonization-connected-iff]], the niche $\mathcal{N}(K)$ is contained $K \setminus \delta K$. □

> __Theorem [monotone-sofa-cap].__ Let $S = \mathcal{M}(S')$ be any monotonization of a hallway intersection $S'$ with any angle set $\Theta$. Then the cap $\mathcal{C}(S)$ of $S$ is the cap $K = \mathcal{C}(S')$ of $S'$. ^thm-monotone-sofa-cap

_Proof._ By [[yy. Monotone Sofas#^thm-niche-in-cap]] on $S'$ we have $\delta K \subseteq \mathcal{M}(S') = S$. On the other hand we have $S = \mathcal{M}(S') \subseteq K$. So $\delta K \subseteq S \subseteq K$ and this implies that $\mathcal{C}(S) = K$. □

> __Corollary [monotone-sofa-cap].__ Specializing [[yy. Monotone Sofas#^thm-monotone-sofa-cap]] to $\Theta = [0, \omega]$, any monotone sofa $S$ is equal to $K \setminus \mathcal{N}(K)$ where $K$ is the cap of $S$. ^cor-monotone-sofa-cap