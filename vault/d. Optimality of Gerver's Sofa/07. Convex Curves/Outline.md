> __Definition [boundary-segment].__ For any convex body $K$, define $\mathbf{u}_K^I := \bigcup_{t \in I} e_K(t)$ as the segment of the boundary of $K$. ^def-boundary-segment

> __Definition [convex-curve].__ For any open interval $(a, b)$ of $S^1$, define $\mathcal{U}_{a, b}$ as the collection of all sets of form $\mathbf{u}_K^I$ for some convex body $K$. ^def-convex-curve

> __Proposition [convex-curve].__ The map $K \mapsto \bigcup_{t \in (a, b)} e_K(t)$ is a quotient from convex bodies to $\mathcal{U}_{a, b}$. ^pro-convex-curve

> __Theorem [convex-curve-info].__ Take an arbitrary $\mathbf{u} \in \mathcal{U}^{(a, b)}$. For any $K$ such that $\mathbf{u} = \mathbf{u}_K^{(a, b)}$, the following values are independent of the choice of $K$. ^thm-convex-curve-info
> 
> - Values $v_K^+(a), v_K^-(b), v_K^{\pm}(t)$ for $t \in (a, b)$.
> - Values $p_K(t)$ for $t \in [a, b]$.
> - Surface area measure $\sigma_K$ restricted to $(a, b)$.

> __Definition [convex-curve-info].__ With [[d. Optimality of Gerver's Sofa/07. Convex Curves/Outline#^thm-convex-curve-info]], define the _support function_ $h_\mathbf{u} : [a, b] \to \mathbb{R}$, the _vertices_ $v_{\mathbf{u}}^+(a), v_{\mathbf{u}}^-(b), v_{\mathbf{u}}^{\pm}(t)$ for $t \in (a, b)$, the _surface area measure_ $\sigma_{\mathbf{u}}$ on $(a, b)$ for their counterparts in $K$. ^def-convex-curve-info

Piecewise $C^1$ approximation

Issues

- If we want to preserve endpoints,
	- Allow line segments -> Just approximate by polygon, then -> Can't parametrize by $v_K^+$, then!
	- Not allow line segments -> Impossible if the thing is already line segment!! -> It is possible that $\mathbf{b}$ or $\mathbf{d}$ is line segment!!
- Pull endpoints a bit backwards
	- Works fine for $\mathbf{b}$ and $\mathbf{d}$
	- Cap $K$ -> Need some space on top. Do some argument juggling so that $w_K$ and $z_K$ are bounded from below by more than zero.


The interpolated space should all contain ...


> __Remark [smoothing].__ It is possible to execute the rest of the argument without this smoothing process. However, this comes at a cost. We need to define the curve area functional $\mathcal{I}(\mathbf{u}_K^I)$ for curves $\mathbf{u}_K^I$ that are not piecewisely smooth. Supplying an absolutely continuous parametrization of $\mathbf{p}$ such that $\mathcal{I}(\mathbf{p})$ is indeed equal to $\int_{I} p_K(t)\,\beta_K(dt)$ is possible, but requires a lot of rudimentary works ^rem-smoothing