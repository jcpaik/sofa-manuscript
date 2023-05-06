- Make the ideas transparent and simple
	- Generate a figure of monotonization
- Writeup of `SofaDesigner`
	- [ ] What it does
	- [ ] The algorithm
	- [ ] Its certificate
- Complete the implementation of the convex sets API.


### Scrapebook

- What should I write?
	- Prospective plan for structure theorem?
		- Takes too much words
		- Depends on a technique that I never talked about
			- Using KKT to solve for quadratic optimization in function space.
	- Effective and simple bound for arm lengths?

- How to deal with balancedness?
	- Current path:
		- Use balancedness of polygonal sofas
		- Prove a limiting theorem
		- Show using SofaDesigner that horizontal edges are of length >= C
		- Use that and SofaDesigner again to show that niche contains the down-left corner of $P_\omega$.
	- New path:
		- Use that any sofa of angle $\omega$ can be made into a sofa of angle 90 degrees by cutting some region of the sofa.