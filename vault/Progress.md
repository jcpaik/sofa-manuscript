Goal Jan 9 - 14: Reduce bound of $h_K(t)$ to concrete calculations in `SofaDesinger`. The writing could be rough, but should be 'fixable' with only minor adjustments.

- [ ] Check preliminary calculations on gap
	- Simple and naive gap bound



- [ ] Make pictures of how `SofaDesigner` work
	- [ ] Make `.crl` files translatable to JSON
	- [ ] Make `mathematica` script plot out a good picture of such shape
		- [ ] Make a script that can plot out a shape from any x coordinates

- Take rest with NO internet
	- Reward range
		- Going out -> Pinball
		- Rowing
- Playtime _after_ work
- Acknowledge the limit of concentration time / productivity
	- Push a little bit more day by day
	- Plan accordingly to my limit
- Don't spend too much time on relatively not urgent/important things
	- Notation
	- Perfection of each sentence
- Spend time on whole body

# How to sell it?

- Convex geometry / Convex analysis
- Computer-assisted proofs
- Discrete Geometry
- Control Theory
- Intuitive Geometry

# Current Goal

- Finish what's just written and not add more mathematics
- Ofc some parts are incomplete. But let's write it so that the rest of the arguments are easier for someone to fill out.

# How to deal with balancedness?

- Relax the problem to optimizing $\mathcal{A}(K)$ for any $K$ (even including the case where $\mathcal{N}(K)$ is not a subset of $K$)
- Balancedness works in this setup very well. 

- We use the discrete lower bound found above to support $g^+_K(t)$ from below as well.
	- Numbers are not sufficient, though...

# Angle

We go with showing $d v_K^+(t) = \beta_K(dt)$.

As $K_n \to K$, we have $\beta_{K_n} \to \beta_K$ weakly.
By taking specific $K_n$, we also have convergence of $v_{K_n}^+(t)$ for a finite number of $t$ (mostly, it is not the case).
Use equivariance to show WLOG that we only need to show it on positive quadrant.


p216 4.15 Equivariance of surface area measure
p217 4.26 That the measure indeed measures surface area

Let's not think too much about convex curves at this moment (part 3).
Need: a curve from $C^+_K(t)$ to the intersection of $\mathbf{x}$ and envelope of $\mathbf{d}_K$.
The envelope of $\mathbf{d}_K$ can be defined as a convex body.
