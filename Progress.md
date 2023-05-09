- [ ] Make the section on monotone sofas more brief and to the point.
- [ ] Add proper figures of convex bodies.
- [ ] s

### Scrapebook

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