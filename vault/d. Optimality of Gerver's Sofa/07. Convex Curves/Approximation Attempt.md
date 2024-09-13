# Why not approximation?

- Subtleties in approximation
	- Need to make $h_{\mathbf{b}}$ and $h_{\mathbf{d}}$ smaller in approximation
	- Need to approximate cap $K$ separately.
		- Once we do this, we may hurt the injectivity principle.
		- As $K$ have unique contact point, you don't need to worry about it.
	- 
# Scrapes

> __Remark [smoothing].__ It is possible to execute the rest of the argument without this smoothing process. However, this comes at a cost. We need to define the curve area functional $\mathcal{I}(\mathbf{u}_K^I)$ for curves $\mathbf{u}_K^I$ that are not piecewisely smooth. Supplying an absolutely continuous parametrization of $\mathbf{p}$ such that $\mathcal{I}(\mathbf{p})$ is indeed equal to $\int_{I} p_K(t)\,\beta_K(dt)$ is possible, but requires a lot of rudimentary works ^rem-smoothing

> __Definition [convex-curve-piecewise-c1].__ Define $\mathcal{U}_{a, b}^{\text{pw}}$ as the subspace where $v_{\mathbf{u}}^+(t) = v_{\mathbf{u}}^-(t)$ for all $t \in (a, b)$ and the function $v_\mathbf{u} : [a, b] \to \mathbb{R}^2$ defined as $v_{\mathbf{u}}(a) = v_{\mathbf{u}}^+(a)$, $v_{\mathbf{u}}(b) = v_{\mathbf{u}}^-(b)$, and $v_{\mathbf{u}}(t) := v_{\mathbf{u}}^+(t) = v_{\mathbf{u}}^-(t)$ is continuous and piecewise continuously differentiable. ^def-convex-curve-piecewise-c1

> __Theorem [convex-curve-piecewise-c1].__ For any $\mathbf{u} \in \mathcal{U}_{a, b}$ and arbitrary $\epsilon > 0$, there is some $\mathbf{w} \in \mathcal{U}_{a, b}^{\text{pw}}$ such that the followings are true. ^thm-convex-curve-piecewise-c1
> 
> 1. $v_{\mathbf{u}}^+(a) = v_{\mathbf{w}}^+(a)$ and $v_{\mathbf{u}}^-(b) = v_{\mathbf{w}}^-(b) + ss$ for some $\alpha \in [0, \epsilon]$.
> 2. $\mathcal{R}_{\mathbf{w}} \subseteq \mathcal{R}_{\mathbf{u}}$ and the set $\mathcal{R}_\mathbf{u} \setminus \mathcal{R}_{\mathbf{w}}$ have Borel measure $< \epsilon$.
> 3. $h_{\mathbf{u}}(t) \geq h_{\mathbf{w}}(t)$ for all $t \in [a, b]$.


%%
Piecewise $C^1$ approximation

- If we want to preserve endpoints,
	- Allow line segments -> Just approximate by polygon, then -> Can't parametrize by $v_K^+$, then!
	- Not allow line segments -> Impossible if the thing is already line segment!! -> It is possible that $\mathbf{b}$ or $\mathbf{d}$ is line segment!!
- Pull endpoints a bit backwards
	- Works fine for $\mathbf{b}$ and $\mathbf{d}$
	- Cap $K$ -> Need some space on top. Do some argument juggling so that $w_K$ and $z_K$ are bounded from below by more than zero.

Another route: Define curve area functional for convex bodies separately. Just don't make them the same.

What we need: triangular region outside
%%