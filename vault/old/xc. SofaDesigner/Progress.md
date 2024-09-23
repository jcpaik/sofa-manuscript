What should be the focus of this paper?
- (Hopefully) publish this at SoCG
	- Under 15 pages. Only 'interesting' proofs. The 'front page' of the work.
	- Papers should be submitted in the form of an extended abstract, which begins with the title of the paper, each author's name and affiliation, as well as a short abstract. This should be followed by the main body of the paper that begins with a precise statement of the problem considered, a succinct summary of the results obtained (emphasizing the significance, novelty, and potential impact of the research), and a clear comparison with related work. The remainder of the extended abstract should provide sufficient details to allow the program committee to evaluate the validity, quality, and relevance of the contribution. Clarity of presentation is very important; the entire extended abstract should be written carefully, taking into consideration that it will be read and evaluated by both experts and non-experts, often under tight time constraints.
	- All details needed to verify the results must be provided. Supporting materials, including proofs of theoretical claims and experimental details, that do not fit in the 500-line limit should be given in an appendix. If more appropriate, the full version may be given as the appendix. In both cases, however, the authors should include in the main part specific pointers to the relevant locations in the appendix. The appendix will be read by the program committee members and subreviewers at their discretion and will not be published as part of the proceedings. Thus, the paper without the appendix should be able to stand on its own. Experimental and implementation results (independent of paper type) must be reproducible and verifiable. Authors of all types of papers are encouraged to put accompanying software and relevant data, if there are any, in a repository accessible to the reviewers. Authors are asked to indicate which of the supporting materials will remain publicly available if their papers are accepted.
- Open up an API that subsequent papers can access and handle without much difficulty

# Software TODOs

- [ ] Exclude angle sets $0, \pi$.
	- Needs change in ALL the APIs
		- [ ] context
		- [ ] branching algorithm
- [ ] Export proof certificate
- [ ] Develop an independent verifier
- [ ] Decide proof