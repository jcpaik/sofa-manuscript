Here, we rigorously justify a theorem ([[#^thm-nef-polygon-area-diff]]) that captures the balancedness argument of Gerver using Nef polygons. A _Nef polygon_ is a subset of $\mathbb{R}^2$ that can be obtained by applying a finite number of boolean operations (e.g. taking complement $\mathbb{R}^2 \setminus X$ of a set $X$, or taking the intersection $X_1 \cap X_2$ of two sets $X_1, X_2$) to a finite collection of given closed half-spaces. We give the following formal definition.

> __Definition [boolean-function].__ Let $\textsf{true}$ and $\textsf{false}$ be the constants denoting the truthness of a predicate (e.g. $1+1=2$ is $\textsf{true}$ but $1 + 2 = 4$ is $\textsf{false}$). An _$n$-ary boolean function_ $\mathcal{E}$ is a function from $\left\{ \textsf{true}, \textsf{false} \right\}^n$ to $\left\{ \textsf{true}, \textsf{false} \right\}$.
> ^def-boolean-function

> __Definition [nef-polygon].__ For any $n$-ary boolean function $\mathcal{E}$ and $n$ closed half-planes, define the set 
$$
\mathcal{E}(H_1, \dots, H_n) := \left\{ p \in \mathbb{R}^2 : \mathcal{E}(p \in H_1, \dots,p \in H_n) \text{ is } \textsf{true} \right\}.
$$
> Call any such set $X = \mathcal{E}(H_1, \dots, H_n)$ a _Nef polygon_.
> ^def-nef-polygon

We introduce the notion of a _simple_ Nef polygon. 

> __Definition [simple-nef-polygon].__ Call a Nef polygon $X$ _simple_ if $X = \mathcal{E}(H_1, \dots, H_n)$ for an $n$-ary boolean function $\mathcal{E}$ and closed half-planes $H_1, \dots, H_n$ with different boundaries $l_1, \dots, l_n$.
> ^def-simple-nef-polygon

A line $l$ in $\mathbb{R}^2$ is a Nef polygon, since we can intersect the two closed half-planes $H_l^+$ and $H_l^-$ with boundary $l$ to express $l = H_l^+ \cap H_l^-$. However, $l$ is not simple because the half-planes $H_l^+$ and $H_l^-$ used in the expression of $l$ use the same boundary. On the other hand, the cap $K$ and the polygon niche $\mathcal{N}_\Theta(K)$ of $K$ is are simple Nef polygons. 

We can spell out the idea used in balancedness condition rigorously.

> __Theorem [nef-polygon-area-diff].__ Let $P = \mathcal{E}_P(H_1, \dots, H_n)$ be a simple Nef polygon defined with $n$ closed half-planes $H_i = H(t_i, h_i)$ for $1 \leq i \leq n$, each of different boundary $l_i$. Then there is an absolute constant $\epsilon = \epsilon(P) > 0$ such that the following holds.
> 
> Let $\delta_1, \dots, \delta_n$ be real values with absolute value less than $\epsilon$. Define $P' = \mathcal{E}_P(H_1', \dots, H_n')$ where $H_i' = H(t_i, h_i + \delta_i)$  for $1 \leq i \leq n$. Then we have
$$
\left| P' \right| = |P| + \sum_{i=1}^n \mathcal{H}^1(\partial P \cap l_i ) \cdot \delta_i + O(\delta_1^2 + \delta_2^2 + \dots + \delta_n^2).
$$
> ^thm-nef-polygon-area-diff

> __Lemma [nef-polygon-single-edge].__ Let $P = \mathcal{E}_P(H_1, \dots, H_n)$ be a simple Nef polygon defined with $n$ closed half-planes $H_i = H(t_i, h_i)$ for $1 \leq i \leq n$, each of different boundary $l_i$. Take an arbitrary index $1 \leq j \leq n$. There exists an absolute constant $\epsilon_j = \epsilon_j(P, j) > 0$ such that the following holds. Let $\delta_j$ be a real value with absolute value less than $\epsilon_j$. Define $P'_j = \mathcal{E}_P(H_1, \dots, H_{j-1}, H_j', H_{j+1}, \dots, H_n)$ with $H_j' = H(t_j, h_j + \delta_j)$. 
$$
\left| P'_j \right| = |P| + \mathcal{H}^1(\partial P \cap l_j) + O(\delta_j^2)
$$
> ^lem-nef-polygon-single-edge

> __Lemma [nef-polygon-half-plane].__ Let $H_0 = H(t, h)$ be a half-plane with boundary $l_0$. Let $X = \mathcal{E}_X(H_1, \dots, H_m)$ be a Nef polygon defined with $m$ closed half-planes $H_i$ with boundaries different from $l_0$. Then 
> ^lem-nef-polygon-half-plane

_Proof._  □