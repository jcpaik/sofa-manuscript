- Revising (more urgent and important)
	- [ ] Revise the monotone sofas section
		- [ ] Make the monotonization process simpler
	- [ ] Add figures for the monotone sofas section
		- [ ] Monotonization of a sofa
		- [ ] Monotone sofas with rotation angle less than 90
		- [ ] Name the curves on Mamikon's theorem figure
- Future plan?
	- [ ] Write about finite version of monotone sofa
- SofaDesigner
	- [ ] Extract QP program
	- [ ] Write equation parser

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