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
	- is a lower bound of $h_K(t)$ for $t \in [t_{i-1}, t_{i}]$
	- If $> 1$, then injectivity condition holds for $[t_i, t_{i+1}]$
	- If $> 1 + d$, injectivity effective for $t_{\min} \in [t_i, t_{i+1}]$ with $t_{\max} - t_{\min} <2\arctan(d)$


{0.199337, 0.394791, 0.590882, 0.781214, 0.979915, 1.17601, 1.37146

| t1       | t2       | t3       | t4 (midpoint) | t5       | t6      |
| -------- | -------- | -------- | ------------- | -------- | ------- |
| 0.199337 | 0.394791 | 0.590882 | 0.781214      | 0.979915 | 1.17601 |
- spans from 0 to 45 deg

|        | hlb    | 2\*arctan(d) | max interval | note                                                                                 |
| ------ | ------ | ------------ | ------------ | ------------------------------------------------------------------------------------ |
| t1, t2 | 1+1/4  | 0.489957     | t1, t3       |                                                                                      |
| t2, t3 | 1+9/32 | > above      | t2, t4       |                                                                                      |
| t3, t4 | 1+1/8  | 0.24871      | t3, t4       |                                                                                      |
| t4, t5 | 1-1/8  | --           |              | Combine with t3, t4 result to show that x is strictly in the decreasing x coordinate |
| t5, t6 |        |              |              |                                                                                      |
- Surely, we found uniform $\delta$ on some interval.
- With this result, it seems that 20deg-70deg injectivity is trackable
- With symmetry argument, WLOG might also extend the angle to 0-70deg
- Then deploy the balancedness gap
- 