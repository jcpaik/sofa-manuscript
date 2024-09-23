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

- $hlb_i = (A_i - C_{i-2}) \cdot u_{i}$
	- is a lower bound of $g_K(t)$ for $t \in [t_{i-1}, t_{i}]$
	- If $> 1$, then injectivity condition holds for $[t_i, t_{i+1}]$
	- If $> 1 + d$, injectivity effective for $t_{\min} \in [t_i, t_{i+1}]$ with $t_{\max} - t_{\min} <2\arctan(d)$


{0.199337, 0.394791, 0.590882, 0.781214, 0.979915, 1.17601, 1.37146

| t1       | t2       | t3       | t4 (midpoint) | t5       | t6      |
| -------- | -------- | -------- | ------------- | -------- | ------- |
| 0.199337 | 0.394791 | 0.590882 | 0.781214      | 0.979915 | 1.17601 |
11.25 - 22.5 - 33.75 - 45

|        | hlb     | 2\*arctan(d) | max interval | note                                                                                                                  |
| ------ | ------- | ------------ | ------------ | --------------------------------------------------------------------------------------------------------------------- |
| area   | 2.30331 |              |              | 56276706780760374435514949786698646360951015074004833124/<br>24432981183985904881287530868273088750840007338609058395 |
| width  | 91/32   |              |              | using symmetry, guarantees 1.42188 lb for t0, t1                                                                      |
|        | 1       |              |              | unconditional lb for t0, t1, but needs                                                                                |
| t1, t2 | 1+1/4   | 0.489957     | t1, t3       |                                                                                                                       |
| t2, t3 | 1+9/32  | > above      | t2, t4       |                                                                                                                       |
| t3, t4 | 1+1/8   | 0.24871      | t3, t4       |                                                                                                                       |
| t4, t5 | 1-1/8   | --           |              | Combine with t3, t4 result to show that x is strictly in the decreasing x coordinate                                  |
| t5, t6 |         |              |              |                                                                                                                       |
- Surely, we found uniform $\delta$ on some interval.
- Next goal: prove injectivity on [t1, t7]
	- Needs Lipschitzness at least: prove g, h <= 2??
	- Then need to make xi's close and get contradiction
		- Just add a LOT of angles
		- and add L2 constraints
		- and derive contradiction (hopefully)

- With this result, it seems that 20deg-70deg injectivity is trackable
- With symmetry argument, WLOG might also extend the angle to 0-70deg
- Then deploy the balancedness gap



- Scheme attempt:
	- Try proving the full injectivity for [0, 90 - 11.25]
	- [11.25, 90-11.25]
	- Prove gap inequality... w >= 0.5 is sufficient.

- Are