> __Definition [boolean-function].__ An _$n$-ary boolean function_ $\mathcal{E}$ is a function from $\left\{ 0, 1 \right\}^n$ to $\left\{ 0, 1 \right\}$.
> ^def-boolean-function

> __Definition [nef-polygon].__ A _nef polygon_ is a set $X \subseteq \mathbb{R}^2$ such that there exists an $n$-ary boolean function $\mathcal{E}$ and $n$ closed half-planes, so that 
$$
\mathcal{E}(H_1, \dots, H_n) := \left\{ p \in \mathbb{R}^2 :  \right\} 
$$
> ^def-nef-polygon

> __Definition [simple-nef-polygon].__ Call a nef polygon $X$ _simple_ if there is an $n$-ary boolean function $\mathcal{E}$ and closed half-planes $H_1, \dots, H_n$ with different boundaries.
> ^def-simple-nef-polygon

A single line $l$ of $\mathbb{R}^2$ is a Nef polygon, since we can intersect the two half-planes $H_l^+$ and $H_l^-$ with boundary $l$ to express $l = H_l^+ \cap H_l^-$. However, $l$ is not simple because the half-planes $H_l^+$ and $H_l^-$ used in the expression of $l$ use the same boundary. On the other hand, the cap $K$ and the polygon niche $\mathcal{N}_\Theta(K)$ of $K$ is are simple Nef polygons. 

We spell out the idea used in balancedness condition rigorously.

> __Theorem [nef-polygon-intersection-area].__ Let $P = \mathcal{E}_P(H_1, \dots, H_n)$ be a simple Nef polygon with $n$ closed half-planes $H_1, \dots, H_n$ of different boundaries $l_1, \dots, l_n$. Let $\mathcal{L}_P$ be the collection of boundaries of $H_i$.
> 
> Let $X = \mathcal{E}_X(H'_1, \dots, H'_m)$ be another Nef polygon. Let $\mathcal{L}_X$ be the collection of boundaries of $H_j'$. Assume that $\mathcal{L}_P$ and $\mathcal{L}_X$ are disjoint.
> 
> 
> ^thm-nef-polygon-intersection-area

Let $\mathcal{E}$ be any $n$-ary boolean expression. For $1 \leq i \leq n$, let $H_i = H(t_i, h_i)$ be half-spaces with different boundaries $l_i$. Let $P$ be 