- Make the ideas transparent and simple
	- Generate a figure of monotonization
- Writeup of `SofaDesigner`
	- [ ] What it does
	- [ ] The algorithm
	- [ ] Its certificate
- Complete the implementation of the convex sets API.


### Scrapebook

- Injectivity, strict interior : Use `SofaDesinger`
- Prove strict interior upper bound $\mathcal{A}_{1, a, b}$ using a similar technique.
- Use $\mathcal{A}_{1, a, b}$ to prove full injectivity?
	- Two possible paths:
		- Prove an density upper bound of boundary measure, or
		- Use balancedness on lower sides
	- Which is more effective? 
		- It depends on experimentation results

- How to deal with balancedness?
	- Current path:
		- Use balancedness of polygonal sofas
		- Prove a limiting theorem
		- Show using SofaDesigner that horizontal edges are of length >= C
		- Use that and SofaDesigner again to show that niche contains the down-left corner of $P_\omega$.
	- New path:
		- Use that any sofa of angle $\omega$ can be made into a sofa of angle 90 degrees by cutting some region of the sofa.