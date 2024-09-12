- Specific
- Measurable
- Attainable
- Relevant
- Timelined

- [ ] Write abstract of Injectivity
	- Write 2000 words of the initial draft, no matter how terrible, of injectivity proof
	- Count the number of words. Expected: 2000
	- Do this in one week (start: Sep 10, end: Sep 17)
	- Relevant: Ofc...

	- Progress
		- [ ] Make a bullet list of what to write
		- [ ] Think of how to write


# Get rid of appendix

- Approximate a portion of convex body with smooth curves
	- First approximate with polygons
	- Then thicken it with smooth functions, padding each edge

- When do we approximate convex body??
	- As we extract the boundary and tails $(K, \mathbf{b}, \mathbf{d})$.
		- As it is easier to show Mamikon's theorem on smooth curves.
	- Show general Mamikon's by approximating
		- This won't work because it is not even trivial to _define_ curve area functional on non-smooth convex curves.

- Approximate $K$, $\mathbf{b}$ and $\mathbf{d}$ with smooth curves.
- Define the space of piecewise smooth curve space.
- There, Mamikon's theorem is easy.

- Approximation needs to be done carefully.
	- Take any portion of convex body $K$ with normal angles in $[a, b]$.
	- Need smooth convex curve $\mathbf{p}$ such that $\mathbf{p}$ is inside $K$, and the total area carved out by $\mathbf{p}$ is slightly larger than $K$.
	- Need to define 
	- Still better than finding an explicit parametrization of non-smooth boundary

IF piecewise only... then just use polygon and pad each. Endpoints won't matter.

## Things left to do

- Build differential Gauss-Minkowski $d v_K^+(t) = \nu_K \sigma_K(dt)$
	- Why is $v_K^+$ of right-continuous and bounded variation???
		- BV seems easy actually... the coordinate only monotonically increases and decreases.
		- TODO: streamline right-continuity. 
	- Then use Schneider argument
- Have smooth curve approximation scheme
	- Fix endpoints, and approximate curves by polygons of even sides
	- For adjacent pairs, approximate each by smooth curve