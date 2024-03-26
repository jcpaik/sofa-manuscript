- [ ] Write introduction
	- [ ] Describe piecewise-quadratic polynomial upper bound
	- [ ] Show that we can compute each piece optimum by executing QP
	- [ ] Say that its real use is to prove linear inequalities on the cap space. Its real application will be to show the angle and injectivity hypothesis.
- [ ] Describe polygon upper bound
	- [ ] The coordinate system of $\mathcal{K}_\Theta$
- [ ] Describe `sprove`
	- [ ] Say that the file formats are described in much detail in a github repository.
- [ ] Describe `sbranch`
	- [ ] So much details here...

- Intersect $H$ with $L_{60^\circ}$. Show an explicit lower bound of gap between $A_K^-(0)$ and $a_K(\pi/3) \cap a_K(\pi/2)$ along $x$-axis (c).
- Let $d_\omega = (o_\omega - O) \cdot u_0$. If $p_K(0) \geq 1 + c$ and $\min_t w_K(t) \geq d_\omega + c$ for explicit $c > 0$ then we're done.
- $p_K(0) \geq 1 + c$ can be achieved by WLOG.
- $w_K(t) \geq d_\omega + c$ proof goes like
	- $W_K(t)$ -> $a_K(t) \cap a_K(\pi/2)$ has gap at least $d_\omega$ (more, but not more by an explicit constant)
	- $a_K(t) \cap a_K(\pi/2)$ -> $a_K(\pi/3) \cap a_K(\pi/2)$
	- $a_K(\pi/3) \cap a_K(\pi/2)$ -> $A_K^-(0)$ by constant $c$

Too angled -> gap bound is bounded below!
Less angled -> can just use pivot bound

This at least reduces computation number greatly.
If we can get it to no use of SofaDesigner at all, then it's a wonderful news.

Angle -> Works.

Assume inequality false. 
Then there is a extremely crude bound that works effectively in the situation.

