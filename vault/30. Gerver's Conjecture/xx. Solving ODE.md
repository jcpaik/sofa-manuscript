$g'(t) = h(t) - a(t)$
$h'(t) = -g(t) + c(t)$

None
$g'(t) = h(t)$
$h'(t) = -g(t)$

AB
$a(t)=1/2$ and $c(t) = 0$

$g'(t) = h(t) - 1/2$
$h'(t) = -g(t)$

ACx
$a(t) = h(t) - 1$ and $c(t) = g(t) - 1$

$g'(t) = 1$
$h'(t) = 1$

> __Theorem [variation-zero].__ Let $K$ be a cap. Let $t_1 < t_2$ be two angles. Then $\beta_{K_1} = i_{K}(t) dt$ on $(t_1, t_2)$ if and only if $\beta_{K}(dt) = \left( t + a_0 \right) dt$. For such $K$ we have the following calculations. (some calculation) ^thm-variation-zero



ABCx
$a(t)-(1-a(t)) = h(t) - 1$ -> $2a(t) = h(t)$, and $c(t) = g(t) - 1$

$g'(t) = h(t) / 2$
$h'(t) = 1$

$\mathbf{y}'(t) = -g(t) u_t + h(t) v_t$




$$
\begin{align*}
	\partial^+ \mathbf{y}_K(t) = -g_K^+(t) u_t + h_K^+(t) v_t
\end{align*}
$$

> __Theorem [balanced-ACx].__ Let $K \in \mathcal{K}_{\pi/2}$ be any cap. Let $0 \leq t_1 < t_2 < \pi/2$ be two arbitrary angles. Then the followings are equivalent. ^thm-balanced-ACx
> 
> - We have $\beta_{K} = \iota_{K}$ on the set $(t_1, t_2) \cup (t_1 + \pi/2, t_2 + \pi/2)$
> - We have $\beta_K(dt) = (a_0 - t) dt$ and $\beta_K(dt + \pi/2) = (c_0 + t) dt$ on the interval $t \in (t_1, t_2)$ where $a_0 = h_K^+(t_1) + t_1 - 1$ and $c_0 = g_K^+(t_1) - t_1 - 1$.
> 
> Moreover, for such $K$ we have $g_K(t) = g_K^+(t_1) + (t - t_1)$ and $h_K(t) = h_K^+(t_1) - (t - t_1)$ for $t \in (t_1, t_2)$, and $g_K^-(t_2) - g_K^+(t_1) = t_2 - t_1$ and $h_K^-(t_2) - h_K^+(t_1) = -(t_2 - t_1)$ consequently.

> __Theorem [balanced-none].__ Let $K \in \mathcal{K}_{\pi/2}$ be any cap. Let $0 \leq t_1 < t_2 < \pi/2$ be two arbitrary angles. Say the following holds. ^thm-balanced-ACx
> 
> - We have $\beta_{K} = 0$ on the set $(t_1, t_2) \cup (t_1 + \pi/2, t_2 + \pi/2)$
> 
> For such $K$ we have $g_K(t) = g_K^+(t_1) + (t - t_1)$ and $h_K(t) = h_K^+(t_1) - (t - t_1)$ for $t \in (t_1, t_2)$, and $g_K^-(t_2) - g_K^+(t_1) = t_2 - t_1$ and $h_K^-(t_2) - h_K^+(t_1) = -(t_2 - t_1)$ consequently.



> __Theorem [balanced-ACDx].__ $\beta_{K} = \iota_{K}$ on $(t_1, t_2)$ and $2\beta_{K} - 1 = \iota_{K}$ on $(t_1 + \pi/2, t_2 + \pi/2)$ if and only if there is a constant $a_0$ and $c_0$ such that $\beta_K(t) = (a_0 + t) dt$ and $\beta_K(t + \pi/2) = (c_0 + t) dt$ on the interval $t \in (t_1, t_2)$. Moreover, for such $K$ we have $g^{\pm}(t) = g^{\pm}(t_1) + (t - t_0)$. ^thm-balanced-ACx
