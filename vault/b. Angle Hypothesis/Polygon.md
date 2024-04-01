A _Nef polygon_ is a subset of $\mathbb{R}^2$ that can be obtained by applying a finite number of boolean operations (e.g. taking complement $\mathbb{R}^2 \setminus X$ of a set $X$, or taking the intersection $X_1 \cap X_2$ of two sets $X_1, X_2$) to a finite collection of given closed half-spaces.

> __Definition [boolean-function].__ Let $\textsf{true}$ and $\textsf{false}$ be the constants denoting the truthness of a predicate (e.g. $1+1=2$ is $\textsf{true}$ but $1 + 2 = 4$ is $\textsf{false}$). An _$n$-ary boolean function_ $\mathcal{E}$ is a function from $\left\{ \textsf{true}, \textsf{false} \right\}^n$ to $\left\{ \textsf{true}, \textsf{false} \right\}$.
> ^def-boolean-function

> __Definition [nef-polygon].__ For any $n$-ary boolean function $\mathcal{E}$ and $n$ closed half-planes, define the set 
$$
\mathcal{E}(H_1, \dots, H_n) := \left\{ p \in \mathbb{R}^2 : \mathcal{E}(p \in H_1, \dots,p \in H_n) \text{ is } \textsf{true} \right\}.
$$
> Call any such set $X = \mathcal{E}(H_1, \dots, H_n)$ a _Nef polygon_.
> ^def-nef-polygon

We introduce the following 

> __Definition [simple-nef-polygon].__ Call a nef polygon $X$ _simple_ if $X = \mathcal{E}(H_1, \dots, H_n)$ for an $n$-ary boolean function $\mathcal{E}$ and closed half-planes $H_1, \dots, H_n$ with different boundaries $l_1, \dots, l_n$.
> ^def-simple-nef-polygon

A single line $l$ of $\mathbb{R}^2$ is a Nef polygon, since we can intersect the two half-planes $H_l^+$ and $H_l^-$ with boundary $l$ to express $l = H_l^+ \cap H_l^-$. However, $l$ is not simple because the half-planes $H_l^+$ and $H_l^-$ used in the expression of $l$ use the same boundary. On the other hand, the cap $K$ and the polygon niche $\mathcal{N}_\Theta(K)$ of $K$ is are simple Nef polygons. 

We can spell out the idea used in balancedness condition rigorously.

> __Theorem [nef-polygon-intersection-area].__ Let $P = \mathcal{E}_P(H_1, \dots, H_n)$ be a simple Nef polygon defined with $n$ closed half-planes $H_1, \dots, H_n$ of different boundaries $l_1, \dots, l_n$. Let $\mathcal{L}_P$ be the collection of boundaries of $H_i$.
> 
> Let $X = \mathcal{E}_X(G_1, \dots, G_m)$ be a Nef polygon which is not necessarily simple. Let $\mathcal{L}_X$ be the collection of boundaries of $H_j'$. Assume that $\mathcal{L}_P$ and $\mathcal{L}_X$ are disjoint.
> 
> There is an absolute constant $\epsilon = \epsilon(P, X) > 0$ such that the following holds. Let $\delta_1, \dots, \delta_n$ be real values with absolute value less than $\epsilon$. Define $P' = \mathcal{E}_P(H_1', \dots, H_n')$ where $H_i' = H(t_i, h_i + \delta_i)$. Then we have
$$
\left| P' \cap X \right| = |P \cap X| + \sum_{i=1}^n \mathcal{H}^1(\partial P \cap l_i \cap X) \cdot \delta_i + O(\delta_1^2 + \delta_2^2 + \dots + \delta_n^2).
$$
> ^thm-nef-polygon-intersection-area

_Proof._  □