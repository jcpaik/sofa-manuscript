# Structural Ramsey Theory

- $G \to (F)_r$
	- For all $r$-coloring of $E(G)$, there is a monochromatic induced copy of $F$
	- If $G$, $F$ are complete graphs, this is the standard Ramsey theorem
- Question
	- How does $G$ look like indeed?

- High chromatic graphs
	- $\chi(G) > r$ iff for all $r$-coloring of $V(G)$, there is a monochromatic $e \in E(G)$
		- $G \to (K_2)_r$

- Erdos problem
	- For all $r, n$, is there some $G$
		- $\chi(G) > r$
		- All subgps of $G$ on $n$ vertices are forests (sparse)

- Answer
	- There are Ramsey graphs such that local copies of $F$ form a forest _only_
	- (Reiher/Rodl) For all $r, n > 0$, $F$, 
		- There is $G$, $\mathcal{G} \subseteq \binom{G}{F}$ (induced copies of $F$ in $G$)
			i. $G = \cup \mathcal{G}$
			ii. $\mathcal{G} \to (F)_r$
			iii. For all $\mathcal{F} \subseteq \mathcal{G}$, $|\mathcal{F}| \leq n$, 
				- there is $\mathcal{F} \subseteq \mathcal{F}^* \subseteq \mathcal{G}$ so that
				- $|\mathcal{F}^*| \leq 2 |\mathcal{F}|$ and $|\mathcal{F}^*|$ is a forest of copies of $\mathcal{F}$
	- $\mathcal{F}^* = \left\{ F_1, \dots, F_n \right\}$ is a forest of copies of $F$ if $F_i$ intersects $F_{< i}$ in a vertex, edge, or nothing.



Applications in Additive Combinatorics

- $B_{k, l}$-set: $X \subseteq \mathbb{N}$ such that
	- For all $n \geq 1$, there are at most $l$ representations of $n$ with $k$ terms $n = x_1 + \dots + x_l$, $x_{i} \leq x_{i+1} \in X$
- $B_{2, 1}$ is Sidon set


- Erdos-Neuman
	- Does there exist $X \subseteq \mathbb{N}$ $B_{k, l}$-set such that for all finite partition, one partition class is still a $B_{k, l}$ set?
	- Write $X \to (B_{k, l})_r$ for all $r > 0$
	- YES for $k=2$

- New result
	- Yes for all $k, l$.

- "Local-global phenomenon"
	- Locally, chromatic low. Globally, chromatic high.
	- So chromatic number is a global structure.

- Alon-Erdos Q.
	- $X$ is the finite union of $B_{k, l}$-sets
	- iff For all $\delta > 0$, for all $Y \subseteq X$ finite, $Y$ contains $B_{k, l}$ set of size $\delta |Y|$.
	- $\to$ direction is easy: hereditary
- Answer:
	- Fails for $\delta = 1/4$

- From graphs to $B_{k, l}$ sets!
	- $l=5, k=4$
	- Give poset. $l$ copies of $P_{k+1}$. Make theta graph by joining all leftmost vertices of $l$ copies, and likewise for right. Give poset structure from left to right. Smallest $x$, largest $y$.
	- $V(\Theta_{k, l}) \subseteq \mathbb{N}$
	- All differences of edges along each copy of $P_{k-1}$ telescopes to $y-x$
	- 