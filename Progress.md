Monotone sofas outline
1. Define the parallelogram and standard position. Put a sofa in standard position.
2. Introduce generalization of sofas with a general set of angles -- hallway intersection. Mention that a sofa is a hallway intersection with angle set from 0 to omega. We work with hallway intersections from now on.
3. Define what is a pushed hallway. Show that pushed hallway contains the hallway intersection. Now the intersection is both in the parallelogram and all the intersection of pushed hallways.
4. Define what is a cap. Define what is a cap of an arbitrary shape in standard position. Show that it is indeed a cap.
5. Mention that a hallway intersection is inside the parallelogram and pushed hallways. This breaks down into the cap of $S$ and the niche. Define the niche of a curve or a cap. Define the monotonization.
6. First, we show that if $K$ is the cap of a hallway intersection $S$, then the monotonization $K \setminus \mathcal{M}(K)$ is also connected so it's also a hallway intersection.
	1. Whenever some $\mathbf{x}_K(t)$ is in $K$, then $T_K(t)$ is inside $K \setminus \delta K$ as well.
	2. $\mathcal{N}(K)$ inside $K \setminus \delta(K)$ -> connected.

Perturbation of x -> x still contained in new cap K.
x contained in new cap K -> triangular set also contained in K. 

- Should I refactor the definition of niche by its corner path ????
Once I bound to curves, this becomes unnecessary. We can introduce this definition later when it actually matters.
- [ ] Let $\mathbf{z}$ be any injective path inside the niche. Then $I(\mathbf{z})$ is a lower bound of niche.

- Revising (more urgent and important)
	- [ ] Revise the monotone sofas section
		- [ ] Make the monotonization process simpler
			- [ ] Make new outline
	- [ ] Add figures for the monotone sofas section
		- [ ] Monotonization of a sofa
		- [ ] Monotone sofas with rotation angle less than 90
		- [ ] Name the curves on Mamikon's theorem figure
- Future plan?
	- [ ] Write about finite version of monotone sofa
- SofaDesigner
	- [ ] Extract QP program
	- [ ] Write equation parser

What do I want?
- Publishing the injectivity thing??
	- Let the world know earlier that I'm working on something and has stuffs to put.
	- Takes time polishing which is not productive for new math.

1. The space of caps form a convex space, with the 
2. Define convex-linear functionals like this.
3. Define quadratic functional as this.
4. Define what it means for a quadratic functional to be positive semidefinite.
5. 

### Scrapebook

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