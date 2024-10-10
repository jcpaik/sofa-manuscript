Here, we focus on how to _derive_ the optimum sofa for fixed $\psi_R, \psi_L$.

That is, formulate the ODE equations and solve for constants.

We will care about its actual optimality later.

# Contact Point Cases

First, the sofa movement is divided into finite number of intervals, each with a fixed contact point set.

1. No contact
2. D (C, D half-half)
3. B (A, B half-half)
4. x (A, x, C)
5. Dx
6. Bx
7. DB
8. DBx

1-6 appears in solution. 7-8 may or may not appear. Right now I hope they really don't.

# Balancing Equations

We assume that the cap curvatures are smooth. That is, we assume finite radius of curvature. The surface area measure have finite, piecewise smooth function.

The following equations come from balancing conditions.

 - $r_B = 1 - r_A$
 - $r_D = 1 - r_C$
 - $r_A = (r_B) + (\mathbf{x}' \cdot v_t) = (r_B)_B + (h - 1)_\mathbf{x}$
 - $r_C = (r_D) + (-\mathbf{x}' \cdot u_t) = (r_D)_D + (g - 1)_\mathbf{x}$
	- Bracket means it is only active when it's in contact point set.

# Arm Length -> Boundary Measure

- $g' - h = - r_A$
- $h' + g = r_C$

Mix this with balancing equations above to solve for $(g, h)$ and $(r_A, r_C)$.

# Arm Length -> Support Function

Here $q_K(t) = h_K(t + \pi/2)$.

- $q - p' = g$
- $p + q' = h$

Derivation below.

1. Assume $v_K'(t) = r(t) v_t$
2. $p_K(t) = v_K(t) \cdot u_t$
3. $p_K'(t) = v_K'(t) \cdot u_t + v_K(t) \cdot v_t = v_K(t) \cdot v_t$

# Function Table

- $\varphi < \theta < \pi/2 - \theta < \pi/2 - \varphi$
- Stages
	- D $(0, \varphi)$
		- $(g, h)$ from $(1, )$ to the point below.
		- $g(0)=1$ $g(\varphi) = \varphi + C$
		- $g(t) = 1/2 + 1/2 \cos t + \left( \varphi + C - 1/2 - 1/2 \cos \varphi \right)/(\sin \varphi) \sin t$
		- Nasty equality on $C, \varphi, \theta$ on $h(\varphi)$.
	- Dx $(\varphi, \theta)$
		- $(g, h)$ from $(\varphi + C, \pi/2 - \theta + C - (\theta+C)^2/2 + (\varphi+C)^2/2)$ to $(\theta + C, \pi/2 - \theta + C)$.
		- 
	- x $(\theta, \pi/2 - \theta)$
		- $(g, h)$ from $(\theta + C, \pi/2 - \theta + C)$ to $(\pi/2 - \theta + C, \theta + C)$.
	- Bx
	- B
- x 