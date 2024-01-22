Known:
- $\omega \geq 81^\circ$

Goals:
- Prove $\omega = 90^\circ$

Have:
- If $\omega \geq 85^\circ$, then $\omega = 90^\circ$
	- Not exactly, but for maximizer of $\mathcal{A}$


Initial route:
- Show angle = 90 from angle >= 81 (does not work!)
- Show injectivity on whole 90 degrees at once
New route 0:
- Show incrementally that there is a cap of a bit larger angle
	- Need to also verify that the angle attains 90 degrees eventually
New route 1:
- Bump up angle using `SofaBounds`, and make the argument work
	- Even hard to compile SofaBounds
	- Not sure if bumping is ever possible. 
New route 2:
- Show injectivity on [10, 80] first
- Use the augmented A1 to show improved gap bound
	- Need heavy analysis like A2
	- Also need 
- Use improved gap to 