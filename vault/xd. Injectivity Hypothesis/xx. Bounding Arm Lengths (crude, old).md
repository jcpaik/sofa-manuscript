> __Lemma [vertex-approximation].__ $A_{i+1}= A^{\pm}_K(t_i) + \lambda v_i$ for some nonnegative $\lambda$. $A_{i}= A^{\pm}_K(t_i) - \lambda v_i$ for some nonnegative $\lambda$. $C_{i} = C^{\pm}_K(t_i) - \lambda u_i$ for some nonnegative $\lambda$. $C_{i-1} = C_K^{\pm}(t_i) + \lambda u_i$ for some nonnegative $\lambda$. ^lem-vertex-approximation

> __Theorem [upper-bound-leg-g].__ Fix an interval $[t_{i}, t_{i+1}]$. For any $t \in [t_i, t_{i+1}]$, we have $f_K^{\pm}(t)$ bounded from above by the following value. ^thm-upper-bound-leg-g
$$
\frac{(C_i - A_i) \cdot v_{i+1}}{\cos(t_{i+1} - t_i)}
$$

_Proof._ Note that $g_{K}^+(t) = \int_{[t, t+\pi/2]} \cos(u - t) \, \beta_K(du)$. So everything is bounded from above by
$$
L = \int_{[t_i, t_{i+1}+\pi/2]} f(u) \, \beta_K(du)
$$
where $f(u) = 1$ if $u \leq t_{i+1}$, and $f(u) = \cos(u - t_{i+1})$ if $u > t_{i+1}$.
Define $U$ as the following value. Note that the second equality holds by [[xb. Upper Bound A1/25. Upper Bound A1/03. Boundary measure#^thm-surface-area-measure-vertex]].
$$
U = (C^-_K(t_{i+1}) - A^-_K(t_{i})) \cdot v_{i+1} = \int_{[t_i, t_{i+1}+\pi/2]} \cos(u - t_{i+1}) \, \beta_K(du)
$$
Observe that $L \leq U \cdot (1/\cos(t_{i+1} - t_i))$ because $f(u) \leq \cos(u - t_{i+1}) / \cos(t_{i+1} - t_i)$ for all $u \in [t_i, t_{i+1}  + \pi/2]$. Then use [[xd. Injectivity Hypothesis/xx. Bounding Arm Lengths (crude, old)#^lem-vertex-approximation]] to bound $U$ further from above by $(C_i - A_i) \cdot v_{t_{i+1}}$. □

> __Theorem [lower-bound-leg-g].__ Fix an interval $[t_{i}, t_{i+1}]$. For any $t \in [t_i, t_{i+1}]$, we have $f_K^{\pm}(t)$ bounded from below by the following value. ^thm-lower-bound-leg-g
$$
(C_i - A_{i+2}) \cdot v_{i}
$$

_Proof._ Note that $g_{K}^-(t) = \int_{(t, t+\pi/2]} \cos(u - t) \, \beta_K(du)$. So for all $t \in [t_i, t_{i+1}]$,
$$
f_K^-(t) \geq \int_{(t_{i+1}, t_i+\pi/2]} \cos(u - t_{i}) \, \beta_K(du) = \left( C_K^+(t_i) - A^+_K(t_{i+1}) \right) \cdot v_i
$$
The equality holds by [[xb. Upper Bound A1/25. Upper Bound A1/03. Boundary measure#^thm-surface-area-measure-vertex]]. Now use [[xd. Injectivity Hypothesis/xx. Bounding Arm Lengths (crude, old)#^lem-vertex-approximation]] to bound it from below. □

$\mathbf{x}(t_1) = \mathbf{x}(t_2)$, $t_1 < t_2$, $t_2 - t_1 < d$
'Local' inequality


-> $h(t_1) < \tan(d/2)+1$ always, and $g(t_2) < \tan(d/2)+1$ too.

`theta5` 
t0, t1, t2, ..., t5, t6

| Interval | g-lb | 2*ArcTan[lb-1] | interval length | h-lb | h-ub |
| -------- | ---- | -------------- | --------------- | ---- | ---- |
| t0, t1   |      |                |                 |      |      |
| t1, t2   |      |                |                 |      |      |
| t2, t3   |      |                |                 |      |      |
| t3, t4   | 1    |                |                 |      |      |
| t4, t5   | 9/8  | 0.247          | 0.261799        |      |      |
| t5, t6   |      |                |                 |      |      |
Injectivity from t1 to t5: can we get that???

Could be effective on first interval only
- Gap lower bound for six angles

Or, show injectivity for most interval first.
- and go the continuous route.

Or, balancedness + Lipschitz

dot(A(1)-C(0),u(1))
1.5 bound -> very good.

Major TODO: establish a concrete proof of injectivity hypothesis.