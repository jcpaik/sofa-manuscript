# Rough Ideas

Tracks

1. The original route: use balancedness and interval-wide upper and lower bounds on $g$ and $h
		- Need to check a whole table of cases
1. New route: Prove Right-Lipschitzness of h for well-behaving $g \leq 2
		- Reduces computer check to 5ish I suppose
		- Still need distance ineqaulities.
1. Potential computer-free route: Prove lower estimate
	- $h < 1$ -> previous angle has x above than the $d_K(t)$. $\sigma$ bounded from above by $1 - g$ (if g <  1) or 0 (if g > 1).
	- $h \geq 1$ -> multiple cases... (may suddenly transition to $h < 1$) but if $g > 1$ then standard bound holds ($2 \sigma - 1 \leq g - 1$ (if $\sigma \leq 1$) or $\sigma \leq g - 1$ (if $\sigma > 1$). If $g < 1$ then absorbtion gives $\sigma = 0$.
	- $-h' = g - \sigma$
	- Note: $g=h=1$ corresponds to half-circle, which is well,, not balanced.
	- $f(t) = g_K(t) - f_K'(t)$ and $f(t + \pi/2) = f_K(t) + h'_K(t)$ 
	- Actually, better off collaobration?


	- 


- Pointwise measure diff bound -> Global bound?
- $f' \geq 0$ : pointwise increasingness only
	- Assume for any $x$, $f(x') < f(x)$ for $x'$ sufficiently close to $x$ from right (but band could be as small)
	- Should $f$ beincreasing?
	- Assume for any x, f increasing on an interval [x', x] for x' < x. Should f increase over all?
		- NO. sawtooth.
		- Is it increasing except finite number of breaks?
		- 

Our goal is this.

> __Theorem [leg-right-lipschitz].__ If $g_K(t) > 1.1$, then $g_K(t - \delta) \geq g_K(t) - \delta$. 
> ^thm-leg-right-lipschitz

Need to only show this for approximate.

> __Theorem [leg-right-lipschitz-polygon].__ Assume any polygon balanced cap with three adjacent angles $t, t - \delta^-, t + \delta^+$ and $\delta = (\delta^- + \delta^+)/2$. Assume $g_K(t, t + \delta^+) \geq 1.1$ (note no assumption on $\delta^-$: this is important). Then the side length $\sigma_K(t + \pi/2)$ should be at most $\delta + O(\delta^2)$ where the constant of $O$ does not depend on $K$ (only 1.1)
> ^thm-leg-right-lipschitz-polygon

- Next step is to send this to limit $K_n \to K$ and conclude that $\sigma_K$ have density at most one.
- The division by half comes from $\tan(\delta/2)$ side length.
- Pointwise convergence seems enough to also handle condition.

_Proof._ (sketch)

Hmm...

□



If this works.... $h' = -\sigma + g$. I'm showing $\sigma \leq 1$ always.Doesn't this suffice for injectivity right away?????? We only need some width bound. 

No. I'm showing $\sigma \leq 1$ conditioned that $h \geq 1$.

IF $g_K \leq 1$, then clockwise rotation seems to absorb a lot of right side. So the same conclusion seem to hold.

IF $\sigma \leq 1$ can be shown unconditionally, then max $\sigma$ deplets $h$ as fast as it can. Smaller $g$ is also increasing $h$ less. 

- This won't happen - Gerver's sofa already have $\sigma > 1$ for some point

Whatever it is, bounding $\sigma$ from below controls $h$. 


- 

- Segment:

- Real question: is there any cap satisfying all conditions above while failing to be injective?


- Measure right upper derivative <= 1 ????



How to execute the full argument of right derivative of $\sigma$ at $t$ is at most $g$:

- Handle $h > 1$ and $h < 1$ separately. Don't do anything for equality case as of now. Assume good upper and lower constant bound for $g$.
- Use right continuity of $h$ to take a small interval $[t, t + \delta]$ where $h$ is under epsilon gap from $h$.



> __Lemma [calccalc].__ Take $t$ and $t+\delta$ and any cap $K$. The value $\mathbf{x}_K(t + \delta) - \mathbf{x}_K(t) = g_K(t, t + \delta) and f_K(t, t + \delta)$. If $\mathbf{x}_K$ the same, then $g_K(t, t +\delta) = 1 + \tan(\delta/2)$ and $f_K(t, t + \delta) = 1 - \tan(\delta/2)$. 
> The poin $g_K(t, t+ \delta)$ 
> ^lem-calccalc
$$
\begin{gather*}
\mathbf{x}_K(t + \delta) - \mathbf{x}_K(t) = - (f_K(t, t + \delta) - (1 - \tan(\delta/2))) u_t +  (g_K(t, t + \delta) - (1 + \tan(\delta/2))) v_t \\
= 
\end{gather*}
$$

Wait... I can just use right derivative!! $\mathbf{x}_K(t + \delta) - \mathbf{x}_K(t) = \delta \mathbf{x}_K'(t) + o(\delta)$. This $o$ does depend on 

- Let $K$ be a limiting maximal cap with polygonal caps approximations $K_n$.

- Polygon cap convergence $K_n \to K$. 
	- $h_{K_n}^{+1}$ is the discretized version. Well... this is just equal to $h_{K_n}^+$ for polygon cap!!
	- $h_{K_n}^+ \to g_K^+$ pointwise on $t \in \Theta$.
		- First, $h_{K_n}(t, t') \to h_{K}(t, t')$. 
	- This route of converging $h_{K_n}$ to $g_K$ uniformly sounds hard.

Instead we can appeal to just math induction.

