First, we show that if $K$ is the cap of a hallway intersection $S$, then the monotonization $K \setminus \mathcal{M}(K)$ is also connected so it's also a hallway intersection.
- [ ] $\mathbf{x}_K(t)$ is in $K$ iff $T_K(t)$ is inside $K \setminus \delta K$.
- [ ] $\mathcal{N}(K)$ inside $K \setminus \delta(K)$ -> connected.

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