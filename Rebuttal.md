Thank you for taking the time to review our paper. We appreciate your constructive feedback that greatly improves our manuscript.
We will address all the comments and suggestions raised in the reviews, and we hope the revised version of the paper will meet the reviewer's expectations. Please find below the responses to each reviewer's comments:

# Incorrect grammar and mathematical errors (to all reviewers): 

We deeply appreciate you for locating many mistakes in our manuscript. We took account of all your comments in our newer version. Also, we will make the best of our efforts to ensure no such mistakes in our final draft.

# The novelty of our work compared to existing works (to Reviewer 1):

Indeed, it is true that the Mason-Stothers theorem has already been formalized in numerous other theorem provers. We found that a formalization in Isabelle by Ebert, Lean by Wagemaker, and an unpublished formalization in Coq by Mahboubi exist.

Our work aims to
- provide a much wider range of consequences of Mason-Stothers, including a generalized version of FLT allowing different exponents,
- prove theorems in the most general setting possible, and
- explain the full details of our formalization in documents while doing so. 
This differentiates our works from existing works where they prove the 'standard' FLT with the same exponents as the only application of Mason-Stothers. 

Also, our work draws comparison from each work specifically as the following:
- The Isabelle proof lacks a full human-readable explanation of the proof. Also, its FLT has a more restrictive condition of (a^n)'!= 0. In our implementation, we relax the condition to variables a, b, and c not being constant using an infinite descent argument we developed.
- The Lean proof is incomplete as it assumes without proof that a polynomial ring is a UFD. Also, their version of Mason-Stothers is limited to fields with characteristics 0, while ours allow the field to have an arbitrary characteristic.

We will include this comparison in our final version of the draft.

# Improving the writing and structure for more clarity (to Reviewers 1 and 2):

We appreciate you suggesting various directions to improve our writing. 

- For clarity, we will separate the exact mathematical formulations of the theorems from the introduction.
- We will give more details to explanations of our formalizations. More explanation on Lean-specific terminologies (like `finset` or `normalized_factors`) and a subsection about the Lean theorem prover will be added. 
- We plan to add a discussion section that mentions the challenges we encountered during formalization. The discussion section will include the following points:
	- We could make minor improvements in the statements and proofs as we formalized the theorems. For example, the original proof of Davenport's theorem by Stothers divides the proof into two cases on whether the degree of f^3 is the same as that of g^2 or not. We found a simplified proof that does not divide cases which also simplifies the formalization.
	  Also, we proved and formalized the non-solvability of the Fermat-Catalan equation, which is a generalization of Fermat's equation, allowing different exponents. As we mentioned in 2-a, the conclusion of FLT is also strengthened using an infinite descent argument.
	- We were unaware of Wagemaker's prior formalization in Lean before completing our formalization. We are aware of reusability issues. Our formalization is more compatible with now-mature mathlib, so we expect our code to be more suited for reuse.

# On mentioning Mochizuki's attempt on the ABC conjecture (to Reviewer 3): 

We avoided mentioning the controversial nature of Mochizuki's attempt, as we wanted to let the readers focus more on the main topic which is the Mason-Stothers' theorem and its corollaries.

Once again, we appreciate your feedback and would like to express our gratitude for your valuable contributions to improving our work.