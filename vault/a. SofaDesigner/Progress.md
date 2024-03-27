What should be the focus of this paper?
- (Hopefully) publish this at SoCG
	- Needs to be under 15 pages.
	- They seem to require only 'interesting' proofs.
	- The 'front page' of the work.
	- So the exact details should be published 
	- Papers should be submitted in the form of an extended abstract, which begins with the title of the paper, each author's name and affiliation, as well as a short abstract. This should be followed by the main body of the paper that begins with a precise statement of the problem considered, a succinct summary of the results obtained (emphasizing the significance, novelty, and potential impact of the research), and a clear comparison with related work. The remainder of the extended abstract should provide sufficient details to allow the program committee to evaluate the validity, quality, and relevance of the contribution. Clarity of presentation is very important; the entire extended abstract should be written carefully, taking into consideration that it will be read and evaluated by both experts and non-experts, often under tight time constraints.
	- All details needed to verify the results must be provided. Supporting materials, including proofs of theoretical claims and experimental details, that do not fit in the 500-line limit should be given in an appendix. If more appropriate, the full version may be given as the appendix. In both cases, however, the authors should include in the main part specific pointers to the relevant locations in the appendix. The appendix will be read by the program committee members and subreviewers at their discretion and will not be published as part of the proceedings. Thus, the paper without the appendix should be able to stand on its own. Experimental and implementation results (independent of paper type) must be reproducible and verifiable. Authors of all types of papers are encouraged to put accompanying software and relevant data, if there are any, in a repository accessible to the reviewers. Authors are asked to indicate which of the supporting materials will remain publicly available if their papers are accepted.
- Open up an API that subsequent papers can access and handle without much difficulty

OK. I should write all full details here. Then summarize it to 15 pages.

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

Too angled -> gap bound is bounded below!
Less angled -> can just use pivot bound

This at least reduces computation number greatly.
If we can get it to no use of SofaDesigner at all, then it's a wonderful news.

Angle -> Works.

Assume inequality false. 
Then there is a extremely crude bound that works effectively in the situation.

