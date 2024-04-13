- Intersect $H$ with $L_{60^\circ}$. Show an explicit lower bound of gap between $A_K^-(0)$ and $a_K(\pi/3) \cap a_K(\pi/2)$ along $x$-axis (c).
	- Have tried this with a single hallway $L_t$. That is, we tried an explicit lower bound between $x$-coordinates of $A_K^-(0)$ and $a_K(t) \cap a_K(\pi/2)$.
	- We take intersection of $H$ and $L_t$ only.
	- `Plot[1/Sin[t] + 1/Sin[Pi/2 - t] - 1/Tan[t]/2, {t, Pi/6, Pi/4}]`
	- `1/Sin[t] + 1/Sin[Pi/2 - t]` for the intersection of $H$ and $L_t$. `- 1/Tan[t]/2` for assuming that $A_K^-(0)$ and $a_K(t) \cap a_K(\pi/2)$ are extremely close in $x$-coordinate.
	- This does not work: area `2.24918`. We need at least one extra hallway to intersect.
	- Another way is to show this by exploiting WLOG symmetry. But the symmetry has been used for $p_K(0) \geq 1 + c$.
- Let $d_\omega = (o_\omega - O) \cdot u_0$. If $p_K(0) \geq 1 + c$ and $\min_t w_K(t) \geq d_\omega + c$ for explicit $c > 0$ then we're done.
- $p_K(0) \geq 1 + c$ can be achieved by WLOG.
- $w_K(t) \geq d_\omega + c$ proof goes like
	- $W_K(t)$ -> $a_K(t) \cap a_K(\pi/2)$ has gap at least $d_\omega$ (more, but not more by an explicit constant)
	- $a_K(t) \cap a_K(\pi/2)$ -> $a_K(\pi/3) \cap a_K(\pi/2)$
	- $a_K(\pi/3) \cap a_K(\pi/2)$ -> $A_K^-(0)$ by constant $c$



- Assume angle $\omega < 90$
- Assume $p_K(0) > 1.1$
- $p_\omega$, the point $A_K^-(0)$ already determines two points of $K$
- What is the worst value of $w_K(t)$ you can get in this case? 
	- Note that $A_K^-(0)$ is already determined, so it is the vertex $a_K(t) \cap \left\{ y=0 \right\}$ that matters
	- More the value of $p_K(t)$ is, the worse the value of $w_K(t)$ is as well
	- This will happen when the other vertex is $a_K(0) \cap a_K(\omega)$
- This minimum $w_K(t)$ is still much larger than three times the gap length $d_\omega = \tan\left( (\pi/2 - \omega) / 2 \right)$
	- So one can improve the angle one-shot!