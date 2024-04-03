Goal: Derive contradiction from $\mathbf{x}_K(t_1) = \mathbf{x}_K(t_2)$, $t_1 < t_2$.

Properties:

- $A_K(t_1, t_2)$ and $C_K(t_1, t_2)$
- $\left( \mathbf{y}_K(t_2) - C_K(t_1, t_2) \right) \cdot u_2 < 1$
	- $\left( \mathbf{y}_K(t_2) - C_K(t_1, t_2) \right) \cdot u_2 < 1$
	- $\left( \mathbf{y}_K(t_2) - C_K(t_1) \right) \cdot u_2 < \left( \mathbf{y}_K(t_2) - C_K(t_1, t_2) \right) \cdot u_2 < 1$ ^oonfzz
	- Lower bound equal to $\int_{t \in (t_2, t_1 + \pi/2]} \sin(t - t_2) \, \beta_K(dt)$
- If $t_1 \in [l_1, u_1]$ and $t_2 \in [l_2, u_2]$
	- Global lower bound $\int_{t \in (u_2, l_1 + \pi/2]} \sin(t - u_2) \, dt$
	- Which is equal to $(\mathbf{y}_K(u_2) - C_K(l_1)) \cdot u_{u_2}$ 
- $1 < \left( \mathbf{y}_K(t_1) - C_K(t_1, t_2) \right) \cdot u_{1} < \left( \mathbf{y}_K(t_1) - C_K(t_2) \right)$
	- Upper bound equal to $\int_{t \in (t_1, t_2 + \pi/2]} \sin(t - t_1) \, \beta_K(dt)$
	- 

- Modify angle range
	- 20,30,40,50,60,70
- Add niche in cap condition
	- Easy
	- Don't know what improvement will this bring
- Add more angles
	- No branch (easiest to execute, but leads to much more angles)
	- Simple branch (need some coding, but maybe quite worth it
- Allow multiple inequality
	- could help a lot in separting x of distance
	- and give much more stronger constraints

- Another strategy:
	- Divide the intervals A LOT
	- Assume a global constant $\delta$ so that for any $t_1, t_2$ with diff $< \delta$, we have injectivity
	- Then the rest of x's can be bounded by just subdividing a LOT of intervals