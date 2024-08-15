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

Here $q_K(t) = p_K(t + \pi/2)$.

- $q - p' = g$
- $p + q' = h$

Derivation below.

1. Assume $v_K'(t) = r(t) v_t$
2. $p_K(t) = v_K(t) \cdot u_t$
3. $p_K'(t) = v_K'(t) \cdot u_t + v_K(t) \cdot v_t = v_K(t) \cdot v_t$

# Function Table

| Contact | Equation                             | $g$                         | $h$                                             | $r_A$                     | $r_C$             | $p_K$               | $q_K$                 |
| ------- | ------------------------------------ | --------------------------- | ----------------------------------------------- | ------------------------- | ----------------- | ------------------- | --------------------- |
| (none)  |                                      | $A \cos t + B \sin t$       | $- A \sin t + B \cos t$                         | 0                         | 0                 | $B \cos t$          | $A \cos t$            |
| B       | $r_A = r_B$                          | $A \cos t + B \sin t$       | $- A \sin t + B \cos t + 1/2$                   | 1/2                       | 0                 | $B \cos t + 1/2$    | $A \cos t$            |
| D       | $r_C = r_D$                          | $A \cos t + B \sin t + 1/2$ | $- A \sin t + B \cos t$                         | 0                         | 1/2               | $B \cos t$          | $A \cos t + 1/2$      |
| x       | $r_A = h-1$<br>$r_C = g - 1$         | $t + A$                     | $- t + B$                                       | $-t + B - 1$              | $t + A - 1$       | $B - 1 - t$         | $A - 1 + t$           |
| Bx      | $r_A = h - 1 + r_B$<br>$r_C = g - 1$ | $-t^2/4+Bt/2+A$             | $- t + B$                                       | $-t/2 - B/2$              | $-t^2/4+Bt/2+A-1$ | $-t/2 + B/2$        | $-t^2/4+Bt/2+A - 1/2$ |
| Dx      | $r_A = h - 1$<br>$r_C = g - 1 + r_D$ | $t + A$                     | $-t^2/4 - At / 2 + B$<br>$-(t + A)^2/2 + B$<br> | $-t^2/4 - At / 2 + B - 1$ | $t/2 + A/2$       | $-t^2/4-At/2+B-1/2$ | $t/2+A/2$             |
|         |                                      |                             |                                                 |                           |                   |                     |                       |

- $\varphi < \theta < \pi/2 - \theta < \pi/2 - \varphi$
- Stages
	- D $(0, \varphi)$
		- $(g, h)$ from $(1, )$ to the point below.
		- $g(0)=1$ $g(\varphi) = \varphi$
		- $g(t) = 1/2 + 1/2 \cos (? t)$
		- 
	- Dx $(\varphi, \theta)$
		- $(g, h)$ from $(\varphi + C, \pi/2 - \theta + C - (\theta+C)^2/2 + (\varphi+C)^2/2)$ to $(\theta + C, \pi/2 - \theta + C)$.
		- 
	- x $(\theta, \pi/2 - \theta)$
		- $(g, h)$ from $(\theta + C, \pi/2 - \theta + C)$ to $(\pi/2 - \theta + C, \theta + C)$.
	- Bx
	- B
- x 