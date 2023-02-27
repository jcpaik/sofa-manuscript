This is a rewrite of the following manuscript.

> de La Fortelle, Arnaud. "Generalized inverses of increasing functions and Lebesgue decomposition." _Markov Processes And Related Fields_ (2020).

Let $I_1 = [a, b]$ and $I_2 = [c, d]$ be two fixed closed intervals. Let  $t \in I_1$ and $s \in I_2$ be two variables inside each interval. We model the situation where $s$ is increasing with respect to $t$. 

This situation is effectively modeled by the following definition. 

> __Definition [generalized-graph].__ A _generalized graph_ $\Gamma$ is a subset of $I_1 \times I_2$ such that the followings hold.  ^def-generalized-graph
- The image of $\Gamma$ under the projection map $I_1 \times I_2 \to I_i$ is $I_i$ for both $i = 1, 2$. 
- $(a, c), (b, d) \in \Gamma$.

This information is equivalent to the following informations as well.
- A right-continuous function $F : I_1 \to I_2$ such that $F(b)=d$.
	- $F$ is effectively a map that sends $t$ to $s$
- A right-continuous function $G : I_2 \to I_1$ such that $G(d)=b$.
	- $G$ is effectively a map that sends $s$ to $t$.
Here note that $F$ and $G$ are not actual function-inverse to each other.

TODO: add parametrization $w=t+s$ and mention that $t(w)$ and $s(w)$ are Lipschitz.