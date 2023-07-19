- Revising (more urgent and important)
	- [ ] Add figures for the monotone sofas section
		- [ ] Monotone sofas with rotation angle less than 90
		- [ ] Name the curves on Mamikon's theorem figure
- [ ] Future plan for software part
- [ ] SofaDesigner
	- [ ] Programming
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

Simple calculation:

What is the gradient of $\mathbf{x}^T A \mathbf{x}$? It is $\sum_{i, j} a_{ij} x_i x_j = \sum_i a_{ii} x_i^2 + \sum_{i < j} 2a_{ij} x_i x_j$ so differentiation w.r.t $x_i$ is $2a_{ii}x_i + \sum_{j > i} 2a_{ij} x_j$.... $2A \mathbf{x}$. Expressing the gradient of the original function as convex combination of normal vectors of constraints is sufficient to prove the optimality.

How do I actually solve for the optimality with given constraints?
(i) calculate gradient analytically/exactly
(ii) do numerical approximation solve + get certificates
(iii) interpolate them by working symbollically?

> Need to solve for at least a couple continuous sofa area functionals and automate the process/how to write it.

### How to deal with balancedness?

The question is, how do I find the lower bound on the distance $l$ between 
- $A^-(\pi/2)$ and $C^+(0)$ for angle of rotation by 90 degrees
- and $A^-(\omega)$ and $p_\omega$ for angle of rotation by less than 90 degrees.

Original plan was to use the compactness theorem like Gerver's. This actually seems easiest to carry???
But I thought of how to carry this out exactly. The idea of balancedness says that the upper side $l$ of the cap should be same as the lower side of the sofa. The lower side is greater than or equal to the following value.

- The minimum value $\tau_L$ of the distance between $A^-(0)$ and $b(t)\cap \{y=0\}$ for $t \in [0, \omega]$

There is this another problem of whether $\omega$ can be less than 90 degrees or not. We should exclude this case at some point. 
(i) Maintain generality all the way and solve at the very end.
- Worst method. Need to carry nasty calculation everywhere.
(ii) Show that any sofa of rotation angle $\omega > 80^\circ$ with area at least that of Gerver's sofa is actually a sofa of rotation angle 90 degress.
- More early-quit. Need to show that the niche contains a sufficient neighborhood of the origin. Need sufficient lower bound of $l$ to complete this.

One of the main observations for cutting down general $\omega$: the lower bound of $l$ for 90 degrees can be effective for general $\omega$ as well.
How to show that? 


- Show that, for every rotation angle, a sofa of maximum area with $\tau_L$ and $\tau_R$ being lower bounds of upper gap sides exists.
- Use the followings to find a lower bound of $\tau$
	- A sofa of rotation angle $\omega$ with area $A$ can be cut and lifted to a sofa of rotation angle 90 degrees with area $A + f(\omega)$ where $f(\omega)$ = area trimmed by slight cut of rotation 90 - $\omega$.
	- Use weaker upper bound $\mathcal{A}_{1, 15^\circ}$ to analytically solve for the lower bounds of $\tau$

- Use the lower bound of $\tau$ and show that for those sofas, actually the cut area is absorbed by some niche.
	- Kills sofas that rotate by less than 90 degrees.
- Use lower bounds of $\tau$ to have lower bounds of $g^+$ and $h^+$ near critical angles.
	- Use that to finish the injectivity theorem.

### Scrape

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