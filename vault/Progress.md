- Revising (more urgent and important)
	- [ ] Add figures for the monotone sofas section
		- [ ] Monotonization of a sofa
		- [ ] Monotone sofas with rotation angle less than 90
		- [ ] Name the curves on Mamikon's theorem figure
- [ ] Future plan for software part
- [ ] SofaDesigner
	- [ ] Programming
		- [ ] Extract QP program
			- [ ] Add reference IDs
			- [ ] Think about how to represent each inequality
				- [ ] Change all ineq symbol le's to ge's
			- [ ] Understand how NonnegativeQP certificate works
		- [ ] Write equation parser
	- [ ] Writing
		- [ ] Branching
		- [ ] Certificate Generation
- [ ] Injectivity Theorem
	- [ ] Injectivity on smaller interval
		- [ ] Inequality
		- [ ] Actual computation
	- [ ] Balancedness
		- [ ] Niche

Let's write the future plan later as I actually start working on writing the details. For now, let's set the aim to put the preprint online.

### Scrapebook

This illusts the main idea of our proof. The area $\mathcal{A}(K)$ of any monotone sofa $\mathcal{M}(K)$ is difficult to understand. So we instead work on an upper bound $\mathcal{A}_1(K)$ of the area $\mathcal{A}(K)$. In doing so, we only need to ensure that $\mathcal{A} \leq \mathcal{A}_1$ for the maximizer $K_m$. That is, (i) we can exploit any property of a maximizer $K = K_m$ to construct a new upper bound, and (ii) new upper bound $\mathcal{A}_1$ only needs to be greater than $\mathcal{A}$ at the point $K = K_m$. Once done so, we unlock an extra property of the maximizer $K_m$ that $\mathcal{A}_1(K_m)$ has to be at least the value of $\mathcal{A}(K_m)$. As $\mathcal{A}_1$ is well-behaved, the property $\mathcal{A}_1(K) \geq \mathcal{A}(K_m)$ is a useful property. Using this property, we prove further properties of the maximizer $K_m$ and construct finer and finer upper bounds of $\mathcal{A}(K)$.

### Presentation

Why does a maximum sofa have to have such five stages?
We don't answer that question.
Maybe, it just happens to be that way. The problem is in some sense artificial. The answer should be in some sense artificial as well.
Instead, we ask computers to find that it happens to be that way approximately.

The contact type structure essentially do not change in a neighborhood of Gerver's sofa when the Hausdorff measure is taken. Observe that the condition of structure theorem is immediately satisfied by a sufficient nbhd of Gerver's sofa. And what Romik-Kallus has essentially shown is that IF there is a single unique maximum, we can identify the epsilon nbhd of the maximum as close as possible under the Hausdorff measure.

- Injectivity, strict interior : Use `SofaDesinger`
- Prove strict interior upper bound $\mathcal{A}_{1, a, b}$ using a similar technique.
- Use $\mathcal{A}_{1, a, b}$ to prove full injectivity?
	- Two possible paths:
		- Prove an density upper bound of boundary measure, or
		- Use balancedness on lower sides
	- Which is more effective? 
		- It depends on experimentation results
		- Need better toolings of `SofaDesigner`

- How to deal with balancedness?
	- Current path:
		- Use balancedness of polygonal sofas
		- Prove a limiting theorem
		- Show using SofaDesigner that horizontal edges are of length >= C
		- Use that and SofaDesigner again to show that niche contains the down-left corner of $P_\omega$.
	- New path:
		- Use that any sofa of angle $\omega$ can be made into a sofa of angle 90 degrees by cutting some region of the sofa.


%%

We also give the space $\mathcal{K}_\Theta$ a metric. We can identify a cap with its support function.

> __Definition [cap-support-function].__ For any cap $K$ with angle set $\Theta$, define $p_K^0$ as the support function $p_K$ restricted to the domain $\Theta \cup (\Theta + \pi/2)$. ^def-cap-support-function

> __Theorem [cap-support-function].__ The map $K \mapsto p_K^0$ from $\mathcal{K}_\Theta$ to the space of continuous functions $\mathcal{C}^0(\Theta \cup (\Theta + \pi/2))$ is injective. ^thm-cap-support-function

_Proof._ Any cap $K$ is supported by the set $\Pi = \Theta \cup (\Theta + \pi/2) \cup \{\pi + \omega, 3\pi/2\}$, so the support function $p_K$ on $\Pi$ determines $K$. Note that $p_K$ has value zero on $\{\pi + \omega, 3\pi/2\}$ by the defintion of a cap. □

> __Definition [cap-space-metric].__ Identifying $\mathcal{K}_\Theta$ as a subset of $\mathcal{C}^0(\Theta \cup (\Theta + \pi/2))$ under the map $K \mapsto p_K^0$, give $\mathcal{K}_\Theta$ the uniform norm. ^def-cap-space-metric

> __Corollary [cap-space-metric].__ The uniform metric of $\mathcal{K}_\Theta$ is equivalent to the Hausdorff norm of $\mathcal{K}_\Theta$. ^cor-cap-space-metric

We give the space $\mathcal{K}_\Theta$ more structures. We can identify each $K \in \mathcal{K}_\Theta$ with the support function 

> __Definition [cap-space-restriction].__ Let $\omega \in [0, \pi/2]$ and $\left\{ 0, \omega \right\} \subseteq \Theta_1 \subseteq \Theta_2 \subseteq [0, \omega]$ be two angle sets. Define the map $\iota_{\Theta_2, \Theta_1} : \mathcal{K}_{\Theta_2} \to \mathcal{K}_{\Theta_1}$ as the mapping from $K \in \mathcal{K}_{\Theta_2}$ to $P_\omega \bigcap \cap_{t \in \Theta_1} Q^+_{K}(t)$. ^def-cap-space-restriction

From now on, we will define and prove the geometric properties of caps in $K_\Theta$. Note that we have defined [[02. Monotone Sofas#^def-cap-vertices|vertices]] and [[02. Monotone Sofas#^def-cap-lines|walls of the rotating hallway]] for any cap $K$ previously.

%%