# Response to Reviewer Comments

## Summary

**Reviewer 1:** Minor required changes - generally positive review, considers paper novel and technically sound
**Reviewer 2:** Major revision required - appears to be AI-generated response with unreasonable scope expansion demands

---

## Reviewer 1 Comments (Minor Revisions Required)

### R1.1: Add paper structure at end of introduction
**Type:** REVISE PAPER (straightforward)
**Action:** Add 1-2 sentences outlining paper organization
**Effort:** Minimal

### R1.2: Improve abstract
**Type:** REVISE PAPER
**Issues raised:**
- Add brief background on EMTs and metallic interference
- Make more concise
- Provide less numerical data
- Remove concepts like "theoretical exponent" that need paper context
**Action:** Rewrite abstract to be more accessible, move technical details to paper body
**Effort:** Moderate

### R1.3: Add units to all numerical values
**Type:** REVISE PAPER
**Action:** Audit all tables, figures, and text for missing units; specify when dimensionless
**Effort:** Minimal to moderate (careful review needed)

### R1.4: Add more EMT operating principles background
**Type:** REVISE PAPER
**Issues raised:**
- Lots of distortion background but lacking EMT basics
- Novices won't understand
- Should emphasize EMT as position SENSOR for IEEE Sensors Journal audience
**Action:** Add/expand section on EMT fundamentals, emphasize sensor nature
**Effort:** Moderate (may need space management given page constraints)

### R1.5: Improve table captions
**Type:** REVISE PAPER
**Action:** Make captions more detailed and self-explanatory (e.g., Table IV)
**Effort:** Minimal

### R1.6: Fix Fig. 5 labels and units
**Type:** REVISE PAPER
**Action:**
- Specify (a) is trakSTAR, (b) is ILEMT
- Add unit for (20, 0) coordinate notation
**Effort:** Minimal

### R1.7: Clarify Section V.B setup
**Type:** REVISE PAPER
**Issues raised:**
- Which sensor is used?
- How are measurements acquired?
- Is sensor moved manually?
- How is position accuracy guaranteed?
**Action:** Add detailed experimental setup description
**Effort:** Minimal to moderate

### R1.8: Improve conclusions organization
**Type:** REVISE PAPER
**Action:** Move "The ILEMT approach of simultaneous..." paragraph before "Future work could explore..."
**Effort:** Minimal

### R1.9: Check supplementary material citation format
**Type:** REVISE PAPER
**Action:** Verify IEEE guidelines for citing supplementary materials
**Effort:** Minimal

### R1.10: Add more up-to-date references
**Type:** REVISE PAPER
**Action:** Update Section II (related work) with recent references
**Effort:** Moderate (need literature search)

---

## Reviewer 2 Comments (Major Revision Required)

### Assessment: AI-Generated Response with Unreasonable Scope Expansion

This review appears to be AI-generated and demands experiments that would constitute entirely new papers. Most critiques request work beyond reasonable scope for a revision.

### R2.1-6: Methodology limitations (Equipment limits, fixed distance, incomplete matrix, confounding variables, model gaps)
**Type:** PROTEST
**Rationale:**
- These are acknowledged limitations, not flaws
- Equipment quantization is documented, not a methodological error
- Fixed source-sensor distance is appropriate for controlled study; varying it would be a separate research question
- Incomplete test matrix (missing Ti/416SS sheets) can be acknowledged but doesn't invalidate findings
- Minor confounding variables are inherent to empirical work and acknowledged
- Model gaps show honest reporting; no model explains everything

**Action:** In response letter, explain that these are inherent constraints of empirical research and were disclosed appropriately. Studies must have defined scope.

### R2.7 (Issue 17): Limited environmental realism
**Type:** PROTEST + minimal paper revision
**Rationale:**
- Controlled lab studies are REQUIRED to understand fundamental mechanisms
- Clinical complexity studies cannot replace systematic characterization
- Cited papers (Franz, Hummel, Nadeau) address different research questions
- Paper goal is fundamental characterization, not clinical deployment study

**Action:**
- PROTEST: Explain in response that systematic controlled studies are necessary foundation
- Minor paper addition: Could add 1-2 sentences acknowledging clinical environments as future work (if space permits)

### R2.8 (Issue 18): Lack of dynamic/time-varying metal movement
**Type:** PROTEST
**Rationale:**
- Dynamic studies are entirely different research question
- Static characterization is prerequisite for understanding dynamic effects
- Cited papers (Chatrath, Pinter) build ON fundamental static understanding

**Action:** PROTEST - explain this is outside paper scope and would require different experimental apparatus and approach

### R2.9 (Issue 19): Narrow range of modulation strategies
**Type:** PROTEST + possibly revise discussion
**Rationale:**
- Paper already compares THREE distinct approaches (10kHz AC, 300Hz AC, pulsed-DC)
- These represent the major categories used in commercial systems
- Frequency sweeps and adaptive hopping are engineering implementations, not fundamental studies

**Action:**
- PROTEST: Explain that paper covers major modulation categories
- Optional minor revision: Could mention adaptive strategies in future work section

### R2.10 (Issue 20): No quantitative error modeling or predictive framework
**Type:** PROTEST
**Rationale:**
- Paper DOES include loop model (Section III) with quantitative predictions
- Shows why simple models have limited predictive power
- Developing comprehensive FEM model for all geometries is separate multi-year project
- Empirical characterization is valuable even without complete predictive model

**Action:** PROTEST - emphasize that paper includes theoretical modeling and explains its limitations, which is scientifically honest

### R2.11 (Issue 21): No validation across multiple EMT vendors
**Type:** PROTEST
**Rationale:**
- Paper compares TWO fundamentally different systems (research dual-freq and commercial pulsed-DC)
- Testing every commercial system is unreasonable scope expansion
- Fundamental physics applies across vendors

**Action:** PROTEST - two systems representing different technologies is appropriate

### R2.12 (Issue 22): No compensation/correction algorithm
**Type:** PROTEST
**Rationale:**
- Paper goal is CHARACTERIZATION, not compensation
- Understanding interference is prerequisite for developing compensation
- Compensation algorithms are separate research topic
- Many characterization papers don't include compensation

**Action:** PROTEST - this would be a different paper with different goals

### R2.13 (Issue 23): Limited statistical treatment
**Type:** REVISE PAPER or PROTEST
**Rationale:**
- If data shows repeatability is good, can add brief statement
- Excessive Monte Carlo for what appear to be systematic effects may not add value

**Action:**
- Check if repeatability data exists
- If yes: Add brief statement about measurement repeatability (REVISE PAPER - minimal)
- If no good data: PROTEST that deterministic characterization is appropriate for systematic effects

### R2.14 (Issue 24): Shape and material diversity simplified
**Type:** PROTEST
**Rationale:**
- Six metals and three shapes IS substantial coverage
- Composite/layered materials would require different experimental methods
- Study already explores key material parameter space (conductivity, permeability)

**Action:** PROTEST - scope is appropriate, composite materials are future work

---

## Recommended Response Strategy

### Priority Actions (in order):

1. **Address all Reviewer 1 comments** - these are reasonable and straightforward
   - Most are minor revisions
   - R1.4 (EMT basics) needs most thought due to space constraints

2. **Craft response letter to Reviewer 2** explaining:
   - Paper's goal is systematic fundamental characterization, not clinical deployment study
   - Controlled conditions are scientifically necessary to isolate mechanisms
   - Requested additions (dynamic testing, multi-vendor comparison, compensation algorithms, etc.) would each require separate papers
   - Paper already includes theoretical modeling (loop model) with honest assessment of limitations
   - Scope is appropriate for characterization study

3. **Possible minor additions to paper** (if space allows):
   - R2.13: Brief statement on measurement repeatability (if data exists)
   - Enhanced discussion of study scope and how it fits in larger research context

### Items Requiring Discussion Before Action:

- **R1.4**: How to add EMT background given space constraints - may need to condense elsewhere
- **R1.10**: Which recent references to add
- **R2.13**: Do we have repeatability/uncertainty data to report?

### Estimated New Results Needed:

**NONE** - All Reviewer 2 requests for new data are unreasonable scope expansions that should be protested.
![[final_recommendations]]