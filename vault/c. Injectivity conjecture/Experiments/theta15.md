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


0.117512, 0.199337, 0.29778, 0.394791, 0.489957, 0.590882, 0.686048, 0.781214

| t1       | t2       | t3      | t4       | t5       | t6       | t7       | t8 (45deg) |
| -------- | -------- | ------- | -------- | -------- | -------- | -------- | ---------- |
| 0.117512 | 0.199337 | 0.29778 | 0.394791 | 0.489957 | 0.590882 | 0.686048 | 0.781214   |
11.25 - 22.5 - 33.75 - 45

Lipschitz constant 2

gap of 4
correction term at most 0.1 ish total



```
| -----x-- O ------- | ------- | -----x- O ------ |
```


|         | hlb   | 2\*arctan(d) | max interval | note               |
| ------- | ----- | ------------ | ------------ | ------------------ |
| w00     | 19/16 | 0.370696     |              | Only case 0,0      |
| t1, t2  | 5/4   | 0.489957     | t1, t6       |                    |
| t2, t3  | 45/32 | 0.771765     | t2, t9       |                    |
| t3, t4  | 47/32 | 0.876673     | t3, t11      |                    |
| t4, t5  | 23/16 | 0.824821     | t4, t12      | t4-t12 injectivity |
| t5, t6  | 43/32 | 0.662192     | t5, t11      | t5-t11 injectivity |
| t6, t7  | 41/32 | 0.548335     | t6, t11      | ^                  |
| t7, t8  | 19/16 | 0.370696     | t7, t10      | ^                  |
| t8, t9  |       |              |              | > 1                |
| t9, t10 | < 1   |              |              |                    |
| x8-x6   |       |              |              |                    |

t7,8 -- t10,11



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