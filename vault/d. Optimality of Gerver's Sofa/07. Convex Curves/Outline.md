> __Definition [boundary-segment].__ For any convex body $K$, define $\mathbf{u}_K^I := \bigcup_{t \in I} e_K(t)$ as the segment of the boundary of $K$. ^def-boundary-segment

> __Definition [convex-curve].__ For any open interval $(a, b)$ of $S^1$, define $\mathcal{U}_{a, b}$ as the collection of all sets of form $\mathbf{u}_K^I$ for some convex body $K$. ^def-convex-curve

> __Proposition [convex-curve].__ The map $K \mapsto \bigcup_{t \in (a, b)} e_K(t)$ is a quotient from convex bodies to $\mathcal{U}_{a, b}$. ^pro-convex-curve

> __Theorem [convex-curve-info].__ Take an arbitrary $\mathbf{u} \in \mathcal{U}^{(a, b)}$. For any $K$ such that $\mathbf{u} = \mathbf{u}_K^{(a, b)}$, the following values are independent of the choice of $K$. ^thm-convex-curve-info
> 
> - Values $v_K^+(a), v_K^-(b), v_K^{\pm}(t)$ for $t \in (a, b)$.
> - Values $p_K(t)$ for $t \in [a, b]$.
> - Surface area measure $\sigma_K$ restricted to $(a, b)$.

> __Definition [convex-curve-info].__ With [[d. Optimality of Gerver's Sofa/07. Convex Curves/Outline#^thm-convex-curve-info]], define the _support function_ $p_\mathbf{u} : [a, b] \to \mathbb{R}$, the _vertices_ $v_{\mathbf{u}}^+(a), v_{\mathbf{u}}^-(b), v_{\mathbf{u}}^{\pm}(t)$ for $t \in (a, b)$, the _surface area measure_ $\sigma_{\mathbf{u}}$ on $(a, b)$ for the counterparts $K$. ^def-convex-curve-info

