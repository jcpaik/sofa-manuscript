Goal Jan 9 - 12: Reduce bound of $h_K(t)$ to concrete calculations in `SofaDesinger`. The writing could be rough, but should be 'fixable' with only minor adjustments.


- (p8 of [[@schneider_2013]]) We end this section with a definition of the central notion of this book. A nonempty, compact, convex subset of Rn is called a convex body. (Thus, in our terminology, a convex body need not have interior points. We warn the reader that many authors reserve the term ‘body’ for sets with interior points. However, we prefer to avoid endless repetitions, in this book, of the expression ‘nonempty, compact, convex subset’.) By Kn we denote the set of all convex bodies in Rn and by Kn n the subset of convex bodies with interior points (thus, the lower index n stands for the dimension of the bodies). For ∅ A ⊂ Rn we write K(A) for the set of convex bodies contained in A and Kn(A) = K(A) ∩ Kn n . Further, Pn denotes the set of nonempty polytopes in Rn and Pn n = Pn ∩ Kn n is the subset of n-dimensional polytopes.


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
	- 

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

%%

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

%%

### Presentation

- Part 1: We reduce the full Gerver's conjecture to a much weaker conjecture. We name it as _injectivity conjecture_. 
- Part 2: We reduce injectivity conjecture using computer assistance. Basically, the conjecture will be reduced to a bunch of statements on finite angles, that can be verified by enumerating all possible combinations of .
- Part 3: We describe the inner workings of `SofaDesigner` in full details.