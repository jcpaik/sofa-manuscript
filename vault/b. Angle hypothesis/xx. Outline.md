Here, we prove the first part of injectivity hypothesis. That is, we can assume that a cap $K \in \mathcal{K}_\omega$ attaining the maximum value of $\mathcal{A}(K)$ has rotation angle $\omega = \pi/2$.

%%
Note that this does not prove yet that a sofa of maximum area should rotate by 90 degrees yet.
%%

- Kallus-Romik eradicates use of all angle less than $\arcsin(84/85) = 81.203 \dots^\circ$ in beginning.
- Our goal is to maximize a sofa of rotation angle $\geq 81.203\dots ^\circ$.
- We use a larger domain than sofa with extension $\mathcal{A}$. This will only work later when 
	- we have an upper bound of $\mathcal{A}$ (because we bounded more than just sofa area)
	- or find a maximizer of $\mathcal{A}$ in proper sofa class.
- We show that maximizer of $\mathcal{A}$ follows these:
	- Has rotation angle 90 degrees
	- Has $\mathbf{x}_K$ injective
	- (gets rid of a big chunk of possible sofas)

- Show $w_K^\circ \geq 9/32$ for any maximizer $K$ of $\mathcal{A}$ `SofaDesigner`. 
	- So if $K$ has rotation angle $< \pi/2$, then there are two edges of length $\geq 9/32$ that contains $p_\omega$.
- WLOG assume $p_K(\omega) \geq 1.15$ as either $p_K(0)$ or $p_K(\omega + \pi/2)$ are larger than $1.15$.
	- (Need computer assistance)
- Enlarge $t$ just enough from 0 so that $Q^-_K(t)$ consumes all the lower corner of $P_\omega$. 

- The main idea is to rotate the sofa a little bit longer. 
	- If a corner of the sofa is carved out properly, then it can rotate a bit longer.
	- Like, if the triangle formed by (projection of $p_\omega$ to left lower edge of $P_\omega$, origin, and the point $(0.01, 0)$) is consumed by the inner quadrant of some $t$, then we can rotate $R_\omega(V)$ a little bit longer.
	- To actually show that the triangle near origin is consumed by inner quadrant, we use balancedness condition $w_K^\circ \geq 9/32$.
	- The issue with this line of idea is that, we can't really use balancedness of sofa on a connected sofa.
		- Gerver implicitly assumes without proof that any small perturbation of hallway still makes the intersection connected.
		- Kallus-Romik is free of such an assumption.
	- The cost of fixing the argument comes at now we have a different area functional $\mathcal{A}(K)$.

- Extend $P_\omega$ to $P'_{\omega'}$. $P'_{\omega'}$ is a slight translation of $P_{\omega'}$ with the upper right corner same as $P_\omega$.
	- Extend $K \in \mathcal{K}_\omega$ to $K' \in \mathcal{K}'_{\omega'}$.
		- $K'$ as a cap with normal angles in $[0, \omega] \cup \left\{ \omega' \right\}$
		- $K' = F_{\omega'} \cap \bigcap_{t \in [0, \omega]} Q^+_K(t) = P_{\omega'} \cap \bigcap_{t \in [0, \omega]} Q^+_K(t)$
		- $K$ and $K'$ have the same support $p_K = p_{K'}$ on $[0, \omega]$, and a slight difference in $[\omega, \omega']$.
	- Compare $\mathcal{N}(K)$ and $\mathcal{N}(K')$:
		- Define $N = F'_{\omega'} \cap \bigcup_{t \in [0, \omega]} Q_K^-(t)$. 
			- This is larger than $\mathcal{N}(K)$ in that the domain is enlarged from $F_\omega$ to $F'_{\omega'}$.
				- Want to show that $N \setminus \mathcal{N}(K) \subseteq K' \setminus K$.
			- This is smaller than $\mathcal{N}(K')$: one also needs to also take union of $Q^-_K(t)$ for all $t \in [\omega, \pi/2]$ to form $\mathcal{N}(K')$.
		- 
- 

Turns out, this is trickier as we want to improve $\mathcal{A}(K)$, not the actual area of intersection.
$K$: rotation angle $\omega$, $K'$: extend it by rotation angle $\pi/2$.
Need to compare $\mathcal{N}(K)$ and $\mathcal{N}(K')$, each living in a different fan.



# Mirror Reflection

We also introduce the _mirror reflection_ of a cap.

> __Definition [mirror-reflection].__ For any $\omega \in [0, \pi/2]$, define $f_\omega$ as the reflection of $\mathbb{R}^2$ along the line connecting the origin $(0, 0)$ and the point $p_\omega$. For any cap $K$ with rotation angle $\omega$, define its _mirror reflection_ $K^\textrm{op}$ as $f_\omega(K)$. ^def-mirror-reflection

> __Proposition [mirror-reflection].__ For any cap $K$ with angle set $\Theta$ and rotation angle $\omega \in [0, \pi/2]$, its mirror reflection $K^\textrm{op}$ is a cap with angle set $\omega - \Theta$ and rotation angle $\omega$. ^pro-mirror-reflection