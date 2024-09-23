# Setup

## Convex curve space

Fix closed interval $I = [a, b]$ of positive length $< \pi$.

The class of all intersection $K$ of half-planes with normal angles in $t + \pi$ for $t \in I$, with endpoint $v_K^+(a)$ and $v_K^-(b)$ finite. Note that $I$ is the _negation_ of the normal angles of $K$.

Any member of $\mathcal{V}_I$ is identified by its surface area measure on $(a, b)$, supplied with values of $p$ on $a$ and $b$.

Main variation theorem: variation from $\mathbf{b}$ to $\mathbf{b}'$ is $\left< p_{\mathbf{b}'} - p_{\mathbf{b}}, \sigma_{\mathbf{b}} \right>_{(a, b)} + I(v_{\mathbf{b}}^+(a), v_{\mathbf{b}'}^+(a)) + I(v_{\mathbf{b}}^-(b), v_{\mathbf{b}'}^-(b))$.

- $p,q,r,s$ support function
- $r_K(t) = p_K(t + \pi/2)$
- 

Set $\varphi_R = \varphi, \varphi_L = \pi/2 - \varphi$.

Define $\mathcal{K}^\diamond$ as the class of triples $K \in \mathcal{K}_{\pi/2}$, $\mathbf{b} \in \mathcal{V}_{[\varphi_R, \pi/2]}$, $\mathbf{d} \in $ 


- Effective curves are:
	- $\mathbf{x} : [\psi_R, \psi_L] \to \mathbb{R}^2$
	- Cut the niche boundary with the line $d_K(\psi_R)$
		- On right, we have the curve of $\mathbf{x}$
		- On left, we have the curve bounded from below by $d_K(t)$ for $t \in [0, \psi_R]$
		- [ ] Mutual injectivity seems like not easy to prove


Planning for a new experimentation

- Primitive variables are $p$'s and $r$'s (support function of $A$ and $C$)
	- $q$ and $s$ for support functions of $B$ and $D$
- Left tail: angles inside $[0, \psi_R]$
- Right tail: angles inside $[\psi_L, \pi/2]$
- Upper bounds will be bounded from _below_ by Gerver's sofa.
- But all upper bounds will be vaild for any choice of $\psi_L, \psi_R$.
- This particular choice of upper bound will minimize $\mathcal{A}_2$.