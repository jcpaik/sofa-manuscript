# How to sell it?

- Convex geometry / Convex analysis
- Computer-assisted proofs
- Discrete Geometry
- Control Theory
- Intuitive Geometry

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

- Multiple ways to bound the gap
	- Bound $l_K(\pi/2) \cap l_K(\pi/2 - \theta)$ 

- Use the lower bound of $\tau$ and show that for those sofas, actually the cut area is absorbed by some niche.
	- Kills sofas that rotate by less than 90 degrees.
- Use lower bounds of $\tau$ to have lower bounds of $g^+$ and $h^+$ near critical angles.
	- Use that to finish the injectivity theorem.

### Presentation

- Part 1: We reduce the full Gerver's conjecture to a much weaker conjecture. We name it as _injectivity conjecture_. 
- Part 2: We reduce injectivity conjecture using computer assistance. Basically, the conjecture will be reduced to a bunch of statements on finite angles, that can be verified by enumerating all possible combinations of .
- Part 3: We describe the inner workings of `SofaDesigner` in full details.


- Dot notation
- Sofa -> Moving sofa
- Name of the paper
- Calling definitions unnecessary when they are really required