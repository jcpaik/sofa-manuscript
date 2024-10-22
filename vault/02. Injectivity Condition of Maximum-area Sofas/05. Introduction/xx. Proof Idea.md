- [ ] Write an initial draft of this introduction.
	- [ ] Describe the balancing argument again.
	- [ ] Say that the _contact type_ determines the exact equality.
	- [ ] Our idea is to establish a differential _inequality_ that works regardless of contact types.
		- From now on, we assume the familiarity of Gerver's derivation of the moving sofa problem by [@romik].
		- We will bound $\sigma_K$ from above. That is, the side $\mathbf{A}'$. There might or might not be contributions from $\mathbf{B}$ or $\mathbf{x}$. $\left< \mathbf{A}'(t), u_t \right> \leq \left< -\mathbf{B}'(t), u_t \right> + \left| \left< \mathbf{x}'(t), u_t \right> \right|$
		- $\left| \mathbf{A}'(t) \right| \geq 1$ then it is guaranteed that $\mathbf{B}'(t)$ does not contribute.
		- $\left| \mathbf{A}'(t) \right| < 1$ then it may or may not 


A _maximum polygon sofa_ is the maximum area of the discretized problem. A _maximum balanced sofa_ is the limit of maximum polygon sofas.

Gerver worked in the polygon setting directly. As a result, the derivation is very complicated.

Romik gave a more streamlined derivation using ordinary differential equations. When taken limit, the side lengths becomes _differential_ side lengths. 

Take this example. Both the maximum polygon sofa and balanced sofa have side lengths 

Gerver's sofa is derived using 

It is possible that the inequality holds

$\left< \mathbf{A}'(t) - \mathbf{B}'(t) , u_t \right> = 0$ 

It is hard to establish the differential right away. Instead, we establish the inequality for maximum polygon sofas first. Then, we carefully take the limit. As the differentiablity assumptions freely used by Romik is not available here, 



TODO: find a systematic way to talk about ODEs. Make a big table...