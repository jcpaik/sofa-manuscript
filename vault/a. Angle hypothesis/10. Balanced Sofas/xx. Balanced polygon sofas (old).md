In this [[a. Angle hypothesis/10. Balanced Sofas/15. Balanced Polygon Sofas|15. Balanced Polygon Sofas]], our goal is to show the [[a. Angle hypothesis/10. Balanced Sofas/15. Balanced Polygon Sofas#^thm-balanced-polygon-sofa]] which states that the maximizing polygon cap $K \in \mathcal{K}_\Theta$ of the polygon sofa area $\mathcal{A}_\Theta(K)$ is _balanced_ in the sense of Gerver. We postpone its full statement and proof of [[a. Angle hypothesis/10. Balanced Sofas/15. Balanced Polygon Sofas#^thm-balanced-polygon-sofa]] at the end as it involves a bit of technicalties.

Our main idea is to use the balancing argument as described in [[a. Angle hypothesis/01. Introduction/05. Balancedness]], we circumvented the issue of preserving the connectedness by separtating the cap $K \in \mathcal{K}_\Theta$ from its polygon niche $\mathcal{N}_\Theta(K)$ in our polygon sofa area functional $\mathcal{A}_\Theta(K) = |K| - |\mathcal{N}_\Theta(K)|$. Consequently, we need to take account of both the cap $K$ and the niche $\mathcal{N}_\Theta(K)$ in our balancing strategy. 

Let $\Theta^* := \Theta \cup (\Theta + \pi/2) \cup \left\{ \omega + \pi, 3\pi/2 \right\}$. Then the support function $h = p_K$ of the cap $K$ restricted to the set $\Theta^*$ determines the cap ^eqn-cap-support-ftn
$$
K = \bigcap_{t \in \Theta^*} H^-(t, h(t))
$$
and the polygon niche ^eqn-niche-support-ftn
$$
\mathcal{N}_{\Theta}(K) = H_-(\omega + \pi, h(\omega + \pi)) \cap H_-(3\pi/2, h(3\pi/2)) \cap
\bigcup_{t \in \Theta} \left( H_-^{\circ}(t, h(t) - 1) \cap H_-^\circ(t + \pi/2, h(t + \pi/2) - 1) \right) 
$$
completely. More specifically, they are Nef polygons determined by the hyperplanes with angle $t \in \Theta^*$ and distance $h(t)$ or $h(t) - 1$ from the origin. So the area functional $\mathcal{A}_\Theta(K)$ is a function of the support function $h : \Theta^* \to \mathbb{R}$.

Assume that $K$ is not balanced. We now execute the balancing strategy by tweaking the individual values of $h : \Theta^* \to \mathbb{R}$ to $h'$ and make the corresponding area functional $|K| - |\mathcal{N}_{\Theta}(K)|$ larger.

The issue is that, as we tweak the values of $h$ to $h'$, there might not be a corresponding cap $K' \in \mathcal{K}_\Theta$ such that $h'$ is the support function $p_{K'}$. After making such an adjustment from $h$ to $h'$, we also need to construct back a cap $K'' \in \mathcal{K}_\Theta$ so that $\mathcal{A}_\Theta(K'') > \mathcal{A}_\Theta(K)$.

We do this process by extending the polygon cap space $\mathcal{K}_\Theta$ to larger spaces $\mathcal{K}_\Theta'$ and $\mathcal{H}_\Theta$ successively. $\mathcal{K}_\Theta'$ is the space of _extended caps_ defined in XX. $\mathcal{H}_\Theta$ is the space of functions $h : \Theta^* \to \mathbb{R}$ that may or may not be . We will have a chain of injections $\mathcal{K}_\Theta \to \mathcal{K}_\Theta' \to \mathcal{H}_\Theta$ where the map $\mathcal{K}_\Theta \to \mathcal{H}_\Theta$ is the support function $K \mapsto h = p_K$. The area functional $\mathcal{A}_\Theta$ is then naturally extended from $\mathcal{K}_\Theta$ to $\mathcal{H}_\Theta$. Take any $K \in \mathcal{K}_\Theta$ which is not balanced. We will make small adjustment to $K$ to construct a $h \in \mathcal{H}_\Theta$ with larger $\mathcal{A}_\Theta(h)$ than $\mathcal{A}_\Theta(K)$. Then we will successively find $K' \in \mathcal{K}_\Theta'$ and $K'' \in \mathcal{K}_\Theta$ such that $\mathcal{A}_\Theta(h) \leq \mathcal{A}_\Theta(K') \leq \mathcal{A}_\Theta(K'')$, reducing the new example to while keeping the area. Consequently, we find a $K'' \in \mathcal{K}_\Theta$ with a larger $\mathcal{A}_\Theta$ than $K \in \mathcal{K}_\Theta$, completing the proof.

# Extensions of the Cap Space

We first define the extension $\mathcal{K}_\Theta'$ of $\mathcal{K}_\Theta$.

> __Definition [angled-cap-space-ext].__ Let $\Theta$ be any angle set with rotation angle $\omega \in (0, \pi/2]$. Define $\mathcal{K}_\Theta'$ as the collection of _extended caps_ whic are all convex bodies $K$ satisfying the following conditions. ^def-angled-cap-space-ext
> 
> 1. $K$ is a convex body with normal angles in the set $\Theta \cup (\Theta + \pi/2) \cup \left\{ \pi + \omega, 3\pi/2 \right\}$.
> 2. The widths $p_K(\omega) + p_K(\omega + \pi)$ and $p_K(\pi/2) + p_K(3\pi/2)$ of $K$ along the angles $\omega$ and $\pi/2$ are at most 1.

Note that only the condition 2 of [[a. Angle hypothesis/10. Balanced Sofas/04. Polygon Sofas#^def-angled-cap-space]] is relaxed from [[a. Angle hypothesis/10. Balanced Sofas/15. Balanced Polygon Sofas#^def-angled-cap-space-ext]] of a cap $K \in \mathcal{K}_\Theta$. In particular, any translation of a cap $K \in \mathcal{K}_\Theta$ is a member of $\mathcal{K}_{\Theta}'$. 

> __Proposition [angled-cap-space-ext].__ We have $\mathcal{K}_\Theta \subseteq \mathcal{K}_\Theta'$. ^pro-angled-cap-space-ext

> __Definition [height-space].__ Let $\Theta$ be an arbitrary finite angle set with rotation angle $\omega$ of size $\geq 3$. Define $\Theta^*$ as the set $\Theta \cup (\Theta + \pi/2) \cup \left\{ \omega + \pi, 3\pi/2 \right\}$. Define $\mathcal{H}_\Theta$ as the space of all functions $h : \Theta ^* \to \mathbb{R}$ such that $h(\omega) + h(\omega + \pi)$ and $h(\pi/2) + h(3\pi/2)$ are at most 1. ^def-height-space

> __Proposition [height-space-embedding].__ The map $p_- : \mathcal{K}_\Theta' \to \mathcal{H}_\Theta$ mapping $K$ to its support function $p_K$ restricted to $\Theta^*$ is a well-defined injection. ^pro-height-space-embedding

We now have a sequence of injections $\mathcal{K}_\Theta \to \mathcal{K}_\Theta' \to \mathcal{H}_\Theta$. The space $\mathcal{H}_\Theta$ is the most extended space where the movement of each $h(t)$ is free. We will extend many definitions on a cap $K \in \mathcal{K}_\Theta$ to $\mathcal{H}_\Theta$. First, the edges $a_K, b_K, c_K, d_K$ of $K$ are generalized naturally as they only depend on the support function $p_K$ ([[15. Monotone sofas/07. Tangent Hallway#^pro-rotating-hallway-parts]]).

> __Definition [height-edges].__ For any $h \in \mathcal{H}_\Theta$ and angle $t \in \Theta$, define the following lines. ^def-height-edges
$$
\begin{gather}
a_h(t) = l(t, h(t)) \\
b_h(t) = l(t, h(t) - 1) \\
c_h(t) = l(t + \pi/2, h(t + \pi/2)) \\
d_h(t) = l(t + \pi/2, h(t + \pi/2) - 1)
\end{gather}
$$
> For any extended cap $K' \in \mathcal{K}_\Theta'$ with support function $h = p_{K'}$, define $?_{K'} = ?_{h}$ for $? = a, b, c, d$.

> __Proposition [height-edges].__ [[a. Angle hypothesis/10. Balanced Sofas/15. Balanced Polygon Sofas#^def-height-edges]] agrees with the definition of $a_K, b_K, c_K, d_K$ on cap. ^pro-height-edges

Second, the cap and niche of a cap generalizes naturally to an arbitrary function $h \in \mathcal{H}_\Theta$. We only need to follow [[a. Angle hypothesis/10. Balanced Sofas/15. Balanced Polygon Sofas#^eqn-cap-support-ftn]] and [[a. Angle hypothesis/10. Balanced Sofas/15. Balanced Polygon Sofas#^eqn-niche-support-ftn]].

> __Definition [height-cap].__ For any $h \in \mathcal{H}_\Theta$, define its _cap_ ^def-height-cap
$$
\mathcal{C}(h) = \bigcap_{t \in \Theta^*} H_-(t, h(t)).
$$

If the function $h = p_K$ originates from some extended cap $K \in \mathcal{K}_\Theta'$, then $\mathcal{C}(h)$ retrieves $K$ back.

> __Proposition [height-cap-back].__ For any extended cap $K \in \mathcal{K}_\Theta'$ and its support function $h = p_K$, we have $\mathcal{C}(h) = K$. ^pro-height-cap-back

Now we extend the definition of niche to $\mathcal{H}_\Theta$.

> __Definition [height-niche].__ For any $h \in \mathcal{H}_\Theta$, define its _fan_ ^def-height-niche
$$
F_h = H_-(\omega + \pi, h(\omega + \pi)) \cup H_-(3\pi/2, h(3\pi/2))
$$
> and _niche_
$$
\mathcal{N}_{\Theta}(h) = F_h \cap \bigcup_{t \in \Theta \setminus \left\{ 0, \omega \right\} } H_-^\circ(t, h(t)) \cap H_-^\circ(t + \pi/2, h(t + \pi/2)).
$$

If the function $h = p_K$ originates from some cap $K \in \mathcal{K}_\Theta$, then $\mathcal{N}_\Theta(h)$ retrieves the polygonal niche $\mathcal{N}_\Theta(K)$.

> __Proposition [height-niche-back].__ For any cap $K \in \mathcal{K}_\Theta$ and its support function $h = p_K$, we have $\mathcal{N}_\Theta(h) = \mathcal{N}_\Theta(K)$. ^pro-height-niche-back

Using the generalizations of cap and niche, the polygon sofa area functional $\mathcal{A}_\Theta(K)$ on a cap also generalizes to $h \in \mathcal{H}_\Theta$.

> __Definition [polygon-sofa-area].__ For any $h \in \mathcal{H}_\Theta$, define $\mathcal{A}_\Theta(h) = |\mathcal{C}(h)| - |\mathcal{N}_\Theta(h)|$. Correspondingly, for any extended cap $K' \in \mathcal{K}_\Theta'$ with support function $h = p_{K'}$, define $\mathcal{A}_\Theta(K')$ = $\mathcal{A}_\Theta(h)$. ^def-polygon-sofa-area

> __Proposition [polygon-sofa-area].__ For any cap $K \in \mathcal{K}_\Theta$ and $h = p_K$, we have $\mathcal{N}_\Theta(h) = \mathcal{N}_\Theta(K)$. ^pro-polygon-sofa-area

# Balancedness of a Cap

Now we define the contributing lengths of the lines to the boundary of polygons $\mathcal{C}(h)$ and $\mathcal{N}(h)$. This is important to execute the balancedness argument.

> __Definition [height-side-length].__ For any $t \in \Theta^*$, let $\kappa_h(t)$ be the side length $\lambda^1(\partial \mathcal{C}(h) \cap l(t, h(t)))$ of $\mathcal{C}(h)$, and let $\nu_h(t)$ be the side length $\lambda^1(\partial \mathcal{N}(h) \cap l_h(t))$ of $\mathcal{N}(h)$. ^def-height-side-length

For any $t \in \Theta$, the value $\kappa_h(t)$ (resp. $\kappa_h(t + \pi/2)$) is the length of the edge of $\mathcal{C}(h)$ on the line $a_h(t)$ (resp. $c_h(t)$). The value $\kappa_h(\omega + \pi)$ (resp. $\kappa_h(3\pi/2)$) is the length of the edge of $\mathcal{C}(h)$ on the left edge $l_h(\omega + \pi)$ (resp. right edge $l_h(3\pi/2)$) of the fan $F_h$. For any $t \in \Theta$, the value $\nu_h(t)$ (resp. $\nu_h(t + \pi/2)$) is the length of the edges of $\mathcal{N}(h)$ on the line $b_h(t)$ (resp. $d_h(t)$). The value $\nu_h(\omega + \pi)$ (resp. $\nu_h(3\pi/2)$) is the length of the edge of $\mathcal{N}(h)$ on the left edge $l_h(\omega + \pi)$ (resp. right edge $l_h(3\pi/2)$) of the fan $F_h$. Now we have enough vocabulary to explicitly say the balancedness condition.

> __Definition [height-balanced].__ Say that a cap $K \in \mathcal{K}_\Theta$ is _balanced_ if the following conditions are true. ^def-height-balanced
> 
> 1. $\kappa_h(t) = \nu_h(t)$ for all $t \in \Theta \cup (\Theta + \pi/2)$.
> 2. If $\omega < \pi/2$, then $\kappa_h(3\pi/2) - \nu_h(3\pi/2) = \kappa_h(\pi/2)$ and $\kappa_h(\omega + \pi) - \nu_h(\omega + \pi) = \kappa_h(\omega)$.
> 3. If $\omega = \pi/2$, then $\kappa_h(3\pi/2) - \nu_h(3\pi/2) = \kappa_h(\pi/2)$.

[[a. Angle hypothesis/10. Balanced Sofas/15. Balanced Polygon Sofas#^def-height-balanced]] is really motivated from the following analysis of local adjustments.

> __Lemma [height-balancing].__ For any extended cap $K \in \mathcal{K}_\Theta$ and its support function $h = p_{K} \in \mathcal{H}_\Theta$. Let $g \in \mathcal{H}_\Theta$ be a slight adjustment of $h'$. ^lem-height-balancing
> 
> 1. (move to $u_t$ and $v_t$) Fix an arbitrary $t \in \Theta \cup (\Theta + \pi/2)$. If $g(t) = h(t) + \delta$ and $g = h$ on $\Theta^{*} \setminus \left\{ t \right\}$ then $\mathcal{A}_\Theta(g) = \mathcal{A}_\Theta(h) + (\kappa_h(t) - \nu_h(t)) \delta + O(\delta^2)$.
> 2. (move both down) If $g(\pi/2) = h(\pi/2) + \delta$ and $g($

Now if some cap $K \in \mathcal{K}_\Theta$ is _not_ balanced, then we will show that there is some $h \in \mathcal{H}_\Theta$ with larger $\mathcal{A}_\Theta(h) > \mathcal{A}_\Theta(K)$.

> __Proposition [height-balanced].__ If some cap $K \in \mathcal{K}_\Theta$ is not balanced, then there is some $h \in \mathcal{H}_\Theta$ with larger $\mathcal{A}_\Theta(h) > \mathcal{A}_\Theta(K)$. ^pro-height-balanced

_Proof._ Appeal to the adjustment lemma. □

Now we will take the $h \in \mathcal{H}_\Theta$ that we took in [[a. Angle hypothesis/10. Balanced Sofas/15. Balanced Polygon Sofas#^pro-height-balanced]] and reduce it to larger cap.

> __Proposition [height-to-cap].__ For any $h \in \mathcal{H}_\Theta$ with $\mathcal{A}_\Theta(h) > 0$, take $K' = \mathcal{C}(h) \in \mathcal{K}_\Theta'$, then we have $\mathcal{A}_\Theta(h) \leq \mathcal{A}_\Theta(K')$. ^pro-height-to-cap

_Proof._  □

# Wedge Gap

We need to define the wedge gap $w_K^{\circ}$ and $z_K^{\circ}$ carefully.

> __Definition [wedge-gap-polygon].__ Let $K \in \mathcal{K}_\Theta'$ be an arbitrary extended cap. Define the _right wedge gap_ $w_K^{\circ}$ and the _left wedge gap_ $z_K^{\circ}$ as the followings. ^def-wedge-gap-polygon
> 
> - If $\omega < \pi/2$, define $w_K^{\circ} := \min\left(\min_{t \in \Theta} w_K(t), \kappa_K(3\pi/2) \right)$ and $z_K^{\circ} = \min\left( \min_{t \in \Theta} z_K(t), \kappa_K(\omega + \pi) \right)$.
> - If $\omega = \pi/2$, define $w_K^{\circ} := \min_{t \in \Theta \setminus \left\{ \pi/2 \right\}} w_K(t)$ and $z_K^{\circ} := \min_{t \in \Theta \setminus \left\{\omega -  \pi/2 \right\}} z_K(t)$.

The weird subtraction by $\pi/2$ or $\omega - \pi/2$ in the definition of $w_K^{\circ}$ and $z_K^{\circ}$ is only affected by the rotation angle $\omega = \pi/2$. The reason is that, if $\omega = \pi/2$, then the wedge gap $w_K(\pi/2)$ is not well-defined because the lines $b_K(t)$ and $l_K(3\pi/2)$ are parallel so their intersection $W_K(t)$ is not well-defined.

Recall that for a cap $K \in \mathcal{K}_\Theta$, the wedge gap is strictly positive (existing theorem). For an extended cap, the situation is a little bit different.

> __Lemma [wedge-gap-positive].__ Let $K \in \mathcal{K}_\Theta'$ be an extended cap. Let $h_\omega = p_K(\omega) + p_K(\omega + \pi)$ and $h_{\pi/2} = p_K(\pi/2) + p_K(3\pi/2)$ be the width of $K$ along the angles $\omega$ and $\pi/2$ respectively. The following statements hold. ^lem-wedge-gap-positive
> 
> - If $h_\omega \geq h_{\pi/2}$, then the right wedge gap $w_K^{\circ}$ is strictly positive.
> - If $h_\omega \leq h_{\pi/2}$, then the left wedge gap $z_K^{\circ}$ is strictly positive.
> 
> In particular, for any cap $K \in \mathcal{K}_\Theta$ we have $h_{\omega} = h_{\pi/2} = 1$ so both wedge gaps $w_K^{\circ}$ and $z_{K}^{\circ}$ are strictly positive.

To prove [[a. Angle hypothesis/10. Balanced Sofas/15. Balanced Polygon Sofas#^lem-wedge-gap-positive]], we will use the following terminology.

> __Definition [further-in-direction].__ Say that a point $p_1$ is _further than_ (resp. _strictly further than_) the point $p_2$ _in the direction_ of nonzero vector $v \in \mathbb{R}^2$ if $p_1 \cdot v \geq p_2 \cdot v$ (resp. $p_1 \cdot v > p_2 \cdot v$). ^def-further-in-direction

We factor out a technical yet purely elementary geometric part of the proof of [[a. Angle hypothesis/10. Balanced Sofas/15. Balanced Polygon Sofas#^lem-wedge-gap-positive]].

> __Lemma [band-intersection].__ Let the angle $t \in [0, \pi/2)$, real values $a, b$, and nonnegative real values $h_\omega, h_{\pi/2} \geq 0$ be arbitrary. Define the points $O = l(t, a) \cap l(\pi/2, b)$ and $o = l(t, a + h_{t}) \cap l(\pi/2, b + h_{\pi/2})$. ^lem-band-intersection
> 
> - If $h_t \geq h_{\pi/2}$, then $o$ is strictly further than $O$ in the direction of $u_0$.
> - If $h_t \leq h_{\pi/2}$, then $o$ is strictly further than $O$ in the direction of $v_t$.

_Proof._ Let $\mathbf{z} = O - o$ be the vector from $o$ to $O$. Then by the definition of $o$ and $O$, we have $\mathbf{z} \cdot u_t = h_t$ and $\mathbf{z} \cdot u_{\pi/2} = h_{\pi/2}$. Solving this, we get $\mathbf{z} = (h_t u_0 + h_{\pi/2} v_\omega) / \cos \omega$. If $h_t \geq h_{\pi/2}$, then we have $\cos \omega (\mathbf{z} \cdot u_0) = h_t + h_{\pi/2} (v_\omega \cdot u_0) > h_t - h_{\pi/2} \geq 0$. □

We now prove [[a. Angle hypothesis/10. Balanced Sofas/15. Balanced Polygon Sofas#^lem-wedge-gap-positive]].

_Proof._ (of [[a. Angle hypothesis/10. Balanced Sofas/15. Balanced Polygon Sofas#^lem-wedge-gap-positive]]) Assume $h_\omega \geq h_{\pi/2}$. By [[a. Angle hypothesis/10. Balanced Sofas/15. Balanced Polygon Sofas#^def-wedge-gap-polygon]] of wedge gap $w_K^{\circ}$, we only need to show the followings.

1. We have $w_K(t) > 0$ for all $t \in \Theta \setminus \left\{ \pi/2 \right\}$.
2. If $\omega < \pi/2$, then we have $\kappa_K(3\pi/2) > 0$.

We prove (1). First, the point $q_0 = l_K(\pi/2) \cap l_K(t)$ is further than the point $W_K(t)$ which is $l_K(3\pi/2) \cap b_K(t)$ by (definition) in the direction of $u_0$ by [[a. Angle hypothesis/10. Balanced Sofas/15. Balanced Polygon Sofas#^lem-band-intersection]]. Observe that $l_K(\pi/2)$ and $l_K(3\pi/2)$ has gap at most 1, and $l_K(t)$ and $b_K(t)$ has gap exactly 1. Now the point $A_K^-(0)$ is further than $q_0$ in the direction of $u_0$ by the convexity of $K$. So $A_K^-(0)$ is strictly further than $W_K(t)$ in the direction of $u_0$, and consequently $w_K(t) > 0$.

We also prove (2). $\kappa_K(3\pi/2)$ is the distance between the point $o = l_K(\omega + \pi) \cap l_K(3\pi/2)$ and $A_K^-(0)$ along the vector $u_0$. Compare $o$ with $O = l_K(\omega) \cap l_K(\pi/2)$. By the assumption $h_\omega \geq h_{\pi/2}$ and [[a. Angle hypothesis/10. Balanced Sofas/15. Balanced Polygon Sofas#^lem-band-intersection]], $O$ is strictly further than $o$ in the direction $u_0$. By the convexity of $K$, the point $A_K^-(0)$ is further than $O$ in the direction of $u_0$. Consequently the proof is done. □

The wedge gap $w_K^{\circ}$ provides a lower bound for the difference between the lengths $\nu_h(3\pi/2)$, $\nu_h(3\pi/2)$ of the bottom edges of cap and niche.

> __Lemma [height-gap].__ The followings are true for any extended cap $K \in \mathcal{K}_\Theta'$ with rotation angle $\omega$. ^lem-height-gap
> 
> - If $\omega < \pi/2$, then $\nu_K(3\pi/2) + w_K^{\circ} \leq \kappa_K(3\pi/2)$ and $\nu_K(\omega + \pi) + z_K^{\circ} \leq \kappa_K(\omega + \pi)$. 
> - If $\omega = \pi/2$ and $\kappa_K(3\pi/2) \geq 2$, then $w_K^{\circ} + \nu_K(3\pi/2) + z_K^{\circ} \leq \kappa_K(3\pi/2)$.

_Proof._ Assume first that $\omega < \pi/2$. $\nu_K(3\pi/2)$ is the side length $\lambda^1(\partial \mathcal{N}(K) \cap l_K(3\pi/2))$ of $\mathcal{N}(K)$. Need to examine the side $s = \partial \mathcal{N}(K) \cap l_K(3\pi/2)$. 

Since $\mathcal{N}(K)$ is the union of wedges $\bigcup_{t \in \Theta} T_K(t)$, $s$ is inside the union of $\bigcup_{t \in \Theta} \partial T_K(t) \cap l_K(3\pi/2)$. Each set $\partial T_K (t) \cap l_K(3\pi/2)$ is, by case analysis, empty or contained in a line segment $s_t$ from $o_K$ to the point $W_K(t)$ on the right of $o_K$. If all sets are empty, then $\nu_K(3\pi/2) = 0$ and we get $w_K^{\circ} \leq \kappa_K(3\pi/2)$ by the mere definition. Otherwise, $s$ is contained in $s_t$ for some $t \in \Theta$, where $s_t$ connects $o_K$ to $W_K(t)$ to the right. $w_K^{\circ} \leq w_K(t)$, and $w_K(t)$ is the signed distance from $W_K(t)$ to $A_K^-(0)$. $\kappa_K(3\pi/2)$ is the signed distance from $o_K$ to $A_K^-(0)$. Now the result follows.

Now prove the case $\omega = \pi/2$. Again, $s = \partial \mathcal{N}(K) \cap l_K(3\pi/2)$. Since $\mathcal{N}(K)$ is the union of wedges $\bigcup_{t \in \Theta} T_K(t)$, $s$ is inside the union of $\bigcup_{t \in \Theta} \partial T_K(t) \cap l_K(3\pi/2)$. Each set $s_t = \partial T_K (t) \cap l_K(3\pi/2)$ is, by case analysis, empty or a line segment from $Z_K(t)$ to $W_K(t)$ in the right direction.

- If every $s_t$ is empty, then $s$ itself is empty. So $\nu_K(3\pi/2) = 0$. $w_K^{\circ} + z_K^{\circ} \leq 2 \leq \kappa_K(3\pi/2)$.
- If some $s_t$ is nonempty, then among all points $Z_K(t)$ and $W_K(t)$ over $t \in \Theta$, $Z_K(t_1)$ is the leftmost and $W_K(t_2)$ is the rightmost and $W_K(t_2)$ is strictly on the right side of $Z_K(t_1)$. Now $w_K^{\circ} \leq$ the signed length from $Z_K(t_1)$ to $C_K^+(\pi/2)$ in the left direction. $z_K^{\circ} \leq$ the signed length from $W_K(t_2)$ to $A_K^-(0)$ in the right direction. The proof is complete. □

# Reduction from $\mathcal{K}_\Theta'$ to $\mathcal{K}_\Theta$

Here, our goal is to take an extended cap $K' \in \mathcal{K}_\Theta'$ and enlarge it to a cap $K'' \in \mathcal{K}_\Theta$, so that $\mathcal{A}_\Theta(K') \leq \mathcal{A}_\Theta(K'')$. The main idea is to push down the lines $l_{K'}(\omega + \pi)$ and $l_{K'}(3\pi/2)$. 

> __Theorem [extended-cap-to-cap].__ For any extended cap $K' \in \mathcal{K}_\Theta' \setminus \mathcal{K}_{\Theta}$ which is _not_ a cap, there exists another extended cap $K'' \in \mathcal{K}_\Theta'$ with strictly larger $\mathcal{A}_\Theta(K') < \mathcal{A}_\Theta(K'')$. ^thm-extended-cap-to-cap

_Proof._ Let $h_\omega$ and $h_{\pi/2}$. Appeal to the mirror symmetry, and without loss of generality and assume that . The idea is to take $h = p_{K'}$, and increase the values of $h(\omega + \pi/2)$ and $h(3\pi/2)$. This has the effect of pushing the boundaries $l_K(\omega + \pi/2)$ and $l_K(3\pi/2)$ of $F_K$ downwards. □

We take an indirect route. We will find a maximizer of $\mathcal{A}_\Theta$ in $\mathcal{K}_\Theta'$ and show that the maximizer should be in $\mathcal{K}_\Theta$.

> __Theorem [extended-cap-maximizer].__ There exists an extended cap $K' \in \mathcal{K}_\Theta'$ attaining the maximum value of $\mathcal{A}_\Theta(K')$. ^thm-extended-cap-maximizer

_Proof._ We divide the case into $\omega < \pi/2$ and $\omega = \pi/2$.

If $\omega < \pi/2$, define the subspace $\mathcal{K}_\Theta^0$ of $\mathcal{K}_\Theta'$ as the set of all extended caps $K'$ with $O_{K'}$ is the origin $(0, 0)$. Since every extended cap is a translation of a cap in $\mathcal{K}_\Theta^0$, a maximizer of $\mathcal{A}_\Theta$ in $\mathcal{K}_\Theta^0$ is going to be a maximizer of $\mathcal{A}_\Theta$ in $\mathcal{K}_\Theta'$ as well. Now observe that $K \in \mathcal{K}_\Theta^0$ is contained in the bounded parallelogram $P_\omega$. So $\mathcal{A}_\Theta$ is bounded from above by $|P_\omega|$ in particular. Take $K_1, K_2, \dots. \in \mathcal{K}_\Theta^0$ such that $\mathcal{A}_\Theta(K_i)$ approaches to the supremum. Appeal to Blasche convergence. There should be a subsequence that converges to some $K \in \mathcal{K}_\Theta^0$ which attains the supremum value.

If $\omega = \pi/2$, the same strategy does not hold as $P_\omega$ is unbounded. We make further adjustments. Define $\mathcal{K}_\Theta^0$ as the space of extended caps $K'$ such that $p_{K'}(0) = 0$ and $p_{K'}(3\pi/2) = 0$. Any extended cap is a translation of some element in $\mathcal{K}_\Theta^0$, so finding the maximizer of $\mathcal{A}_\Theta$ in $\mathcal{K}_\Theta^0$ is sufficient.

We argue that the value of $D = p_{K'}(\pi)$ should be bounded for some $K' \in \mathcal{K}_\Theta^0$ to have $\mathcal{A}_\Theta(K') > 0$. If $K'$ has width $D$, the area of cap $K'$ is at most $D$ because the height is at most 1. Take an arbitrary angle $t \in \Theta$ which is not $0$ or $\pi/2$ (this is the only place where we use the condition $|\Theta| \geq 3$). The intersection of $F_{K'} = H_-(\pi/2, 0)$ $Q_K^+(t)$ is a right-angled triangle with outer vertex $\mathbf{y}_K(t)$ and base on the line $y=0$ of length at least $D$. So if $D \geq \cot(t) + \cot(\pi/2 - t)$, then the niche $T_K(t)$ is also a right-angled triangle with base at least $D' = D - \cot(t) - \cot(\pi / 2 - t)$ and height $D' \cos t \sin t$. So the area functional 

Define the domain $\mathcal{D}$ as the set of elements in $\mathcal{K}_\Theta^0$ where the width $p_{K'}(\pi)$ is at most the constant $C$. Now take $K_1, K_2, \dots \in \mathcal{D}$ such that $\mathcal{A}_\Theta(K_i)$ approaches the supremum of $\mathcal{A}_{\Theta}$ on $\mathcal{D}$ and thus $\mathcal{K}_\Theta^0$. Apply the Blaschke convergence to the sequence to find a subsequence that converges to $K$, then by continuity of $\mathcal{A}_\Theta$, $\mathcal{A}_\Theta(K)$ attains the maximum over $\mathcal{D}$ and thus $\mathcal{K}_\Theta^0$ and $\mathcal{K}_\Theta$. □

> __Corollary [extended-cap-to-cap].__ For any extended cap $K' \in \mathcal{K}_\Theta'$, there exists a cap $K'' \in \mathcal{K}_\Theta'$ with larger $\mathcal{A}_\Theta(K') \leq \mathcal{A}_\Theta(K'')$. ^cor-extended-cap-to-cap



# Balanced Polygon Sofa

> __Theorem [balanced-polygon-sofa].__ Let $\Theta$ be an angle set with rotation angle $\omega \in (0, \pi/2]$. Then there exists a $K \in \mathcal{K}_\Theta$ attaining the maximum value of $\mathcal{A}_\Theta(K)$. Moreover, any such maximizer $K$ is balanced as in [[a. Angle hypothesis/10. Balanced Sofas/15. Balanced Polygon Sofas#^def-height-balanced]]. In particular, any such $K$ satisfies the followings. ^thm-balanced-polygon-sofa
> 
> - If $\omega < \pi/2$, then we have $w_K^{\circ} \leq \kappa_K(\pi/2)$ and $z_K^{\circ} \leq \kappa_K(\omega)$.
> - If $\omega = \pi/2$, then we have $w_K^{\circ} + z_K^{\circ} \leq \kappa_K(\pi/2)$.

_Proof._ The existence of such $K$ is guaranteed by [[a. Angle hypothesis/10. Balanced Sofas/15. Balanced Polygon Sofas#^thm-extended-cap-maximizer]] and [[a. Angle hypothesis/10. Balanced Sofas/15. Balanced Polygon Sofas#^thm-extended-cap-to-cap]].

Next, we show that $K$ is balanced. Assume otherwise. Then by [[a. Angle hypothesis/10. Balanced Sofas/15. Balanced Polygon Sofas#^pro-height-balanced]], there exists a $h \in \mathcal{H}_\Theta$ such that $\mathcal{A}_\Theta(K) < \mathcal{A}_\Theta(h)$. By [[a. Angle hypothesis/10. Balanced Sofas/15. Balanced Polygon Sofas#^pro-height-to-cap]], there exists an extended cap $K' \in \mathcal{K}_\Theta'$ with $\mathcal{A}_\Theta(h) \leq \mathcal{A}_\Theta(K')$ by [[a. Angle hypothesis/10. Balanced Sofas/15. Balanced Polygon Sofas#^pro-height-to-cap]]. Finally, use [[a. Angle hypothesis/10. Balanced Sofas/15. Balanced Polygon Sofas#^cor-extended-cap-to-cap]] to find another $K'' \in \mathcal{K}_\Theta$ such that $\mathcal{A}_\Theta(K') \leq \mathcal{A}_\Theta(K'')$. In conclusion, $K$ does not attain the maximum value. 

- If $\omega < \pi/2$, then by balancedness we have $\kappa_h(3\pi/2) - \nu_h(3\pi/2) = \kappa_h(\pi/2)$. By [[a. Angle hypothesis/10. Balanced Sofas/15. Balanced Polygon Sofas#^lem-height-gap]] we have $\nu_K(3\pi/2) + w_K^{\circ} \leq \kappa_K(3\pi/2)$. So we have $w_K^{\circ} \leq \kappa_K(\pi/2)$.

□