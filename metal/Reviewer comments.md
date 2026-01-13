Review Comments:  
  
Reviewer: 1  
  
Recommendation: Publish in Minor, Required Changes (as noted in the Comments section. This rating may not be assigned for Sensors Letters.)  
  
Comments:  
I thank the authors for submitting this paper, which investigates the influence of metallic interference on electromagnetic trackers (EMTs) used in handheld robotics. The paper systematically explores the effects of different metal types, shapes, orientations, and positions on EMT performance, while comparing low-frequency and high-frequency modulation strategies using both a research prototype (ILEMT) and a commercial one (trakSTAR).  
The paper is well written and detailed, though some issues must be addressed. The theoretical background is enough detailed, and the methodology is clear and well described. The setup is not clear and needs better explanation. I particularly appreciate the inclusion of a dual-frequency system and the analysis of complex interactions between interference mechanisms (eddy currents and permeability) in real-world conditions, which is particularly useful for practical applications.  Results are interesting and very useful for EMT users.  
Below some points to be addressed:  
• Add a structure of the paper at the end of introduction, to help the reader, since the paper is quite long.  
• Abstract should be improved, giving a brief background of EMTs and the metallic interference. It should also be more concise and provide less numerical data, since concepts like “theoretical exponent” and others cannot be understood without reading the paper.  
• Please, make sure that all numerical values are provided with unit of measurement, both in main text and in tables/figures (if dimensionless, specify it).  
• Please, add more background about EMT operating principles. You provide a lot of background on distortions, but the paper lacks introduction on how EMT works. An expert in the field will understand, but a novice will not. This will also help to better match the IEEE Sensor Journal aim, since an EMT is indeed a position SENSOR: please, make it clear.  
• Tables’ captions should be more detailed and better explain tables’ content (e.g., table IV).  
• Fig. 5: specify that (a) is trakSTAR, (b) is ILEMT. Moreover, add unit of measurement for (20, 0)  
• Section V.B: The setup is not clear. Which sensor are you using? How do you acquire measurements? Is the sensor moved manually? How do you guarantee position accuracy?  
• Conclusions can be improved (e.g. paragraph “The ILEMT approach of simultenous […]” should be moved before paragraph “Future work could explore […]”)  
• I’m not sure whether Supplementary material should be cited in references or not. Please, check it.  
• Add more up-to-date references, particularly regarding related work (section II).  
  
  
Additional Questions:  
1. Is the paper technically sound? If no, why not?: Yes  
  
2. Is the coverage of the topic sufficiently comprehensive and balanced?: Yes  
  
3. How would you describe the technical depth of the paper?: Appropriate for the generally knowledgeable individual Working in the Field or a Related Field  
  
4. How would you rate the technical novelty of the paper?: Novel  
  
5. Is the topic appropriate for publication in these transactions?: Yes  
  
6. Is the topic important to colleagues working in the field?: Yes  
  
7. How would you rate the overall organization of the paper?: Could be improved  
  
8. Are the title and abstract satisfactory?: No (explain)  
  
title and abstract explanation: Abstract should be improved, giving a brief background of EMTs and the metallic interference. It should also be more concise and provide less numerical data, since some concepts cannot be understood without reading the paper.  
  
9. Is the length of the paper appropriate? If not, recommend how the length of the paper should be amended, including a possible target length for the final manuscript.: Yes  
  
length of the paper recommendation:  
  
10. Are symbols, terms, and concepts adequately defined?: Not always  
  
11. How do you rate the English usage?: Satisfactory  
  
12. Rate the Bibliography?: Unsatisfactory  
  
13. How would you rate the technical contents of the paper?: good  
  
14. How would you rate the novelty of the paper?: sufficiently novel  
  
15. How would you rate the "literary" presentation of the paper?: totally accessible  
  
16. How would you rate the appropriateness of this paper for publication in this IEEE Transactions?: good match  
  
If you are suggesting additional references they must be entered in the text box provided. All suggestions must include full bibliographic information plus a DOI. **Please note: requiring primarily one’s own papers to be cited is considered to be citation coercion, an ethically questionable practice according to IEEE Publication Services and Products Board Operations Manual. It also violates the reviewer’s anonymity.** : Nothing.  
  
Would you recommend this paper for a Best Paper Award?: No  
  
  
Reviewer: 2  
  
Recommendation: Review Again After Resubmission (Paper is not acceptable in its current form, but has merit. A major rewrite is required. Author should be encouraged to resubmit a rewritten version after the changes suggested in the Comments section have been completed.)  
  
Comments:  
While the study is rigorous, the paper's methodology does contain several limitations and constraints:  
• Equipment Measurement Limits: The commercial-style pulsed-DC tracker (trakSTAR) had a high measurement limit. Its position output was quantized at 110-micrometer increments. This "hard limit" was a significant disadvantage, as it made the tracker unable to detect the interference from non-ferromagnetic rod and tube samples, forcing the authors to omit this data from the pulsed-DC comparison.    
• Fixed Source-Sensor Distance: The study was conducted with a fixed source-sensor distance of approximately 23 cm. While the interfering metal's position was varied, the tracker's geometry was static. The theoretical models (like the Nixon model) show that the source-sensor distance is a critical variable, but its effect was not explored.    
• Incomplete Test Matrix: The experimental plan was not fully comprehensive. For the "sheet" shape, Titanium (Ti) and 416 stainless steel (416 SS) were not tested.    
• Minor Confounding Variables:  
o The authors note that while the metal types (e.g., 304 SS) were nominally the same across the different shapes (rod, tube, sheet), the materials would not be "entirely identical" due to different stock and processing, which could have minor effects.    
o The physical placement of the ILEMT and trakSTAR sources and sensors was slightly different due to the different sizes of the hardware.    
• Theoretical Model Gaps: The study's own theoretical loop model could not fully explain all the results. The authors note that, surprisingly, the interference reduction ratio for low-conductivity metals sometimes "greatly exceed[ed]" the 33x ratio predicted by the model, a finding the model "cannot explain".  
17. Limited Environmental Realism (Controlled Lab Setup vs. Clinical Reality)  
• Issue:  
The experiments are conducted under highly controlled laboratory conditions, where metal objects are isolated, shapes are idealized (rods, tubes, sheets), and distances/orientations are precisely known. In comparison: Other works — such as by Franz et al. (IEEE T-BME 2012), Hummel et al. (IEEE TBME 2005), and Nadeau et al. (Sensors 2015) — have incorporated complex clinical environments (e.g., surgical tables, instruments, and composite setups) to assess aggregate, real-world interference.  
Limitation:  
The present study, while precise, may not fully capture multi-object coupling, dynamic motion, or partial shielding effects typical in surgical or robotic use cases. Its findings, therefore, have limited ecological validity.  
18. Lack of Dynamic or Time-Varying Metal Movement Studies  
• Issue:  
All tests appear to use static metallic placements and steady-state measurements.  
In comparison:  
Recent studies (e.g., Chatrath et al., IEEE Sensors Journal, 2019; Pinter et al., IEEE Trans. Med. Robotics and Bionics, 2021) include moving or rotating metallic tools, which cause transient eddy currents and dynamic pose distortion—effects more relevant to robotic and surgical tracking.  
Limitation:  
The current study cannot fully predict motion-induced distortion or the temporal response of pulsed-DC vs. AC trackers during tool manipulation.  
  
19. Narrow Range of Modulation Strategies and Frequencies  
• Issue:  
Only three modulation strategies are examined (10 kHz AC, 300 Hz AC, pulsed-DC).  
In comparison:  
Other works (e.g., Kunz et al., IEEE T-MI, 2017; Eichelberger et al., Phys. Med. Biol., 2016) explore broader frequency sweeps, multi-harmonic waveforms, and adaptive frequency hopping for metal discrimination and compensation.  
Limitation:  
The study confirms key trade-offs between high and low frequencies but does not investigate intermediate or adaptive modulation, which could yield finer optimisation or hybrid solutions.  
  
20. No Quantitative Error Modeling or Predictive Framework  
• Issue:  
The paper offers excellent empirical data but stops short of proposing a quantitative predictive model or transfer function linking material parameters (conductivity, permeability, geometry) to field distortion.  
In comparison:  
Prior modeling efforts (e.g., Wilson et al., IEEE TBME, 2013; Vasconcelos et al., Med. Eng. Phys., 2019) propose analytical or FEM-based correction models that can predict tracking error for new geometries.  
Limitation:  
Without such a model, the findings remain descriptive rather than predictive, limiting direct algorithmic integration for automatic compensation.  
  
21. No Validation Across Multiple EMT Vendors or Designs  
• Issue:  
The study tests only two systems: a research-grade ILEMT (dual-frequency) and a commercial pulsed-DC tracker.  
In comparison:  
Multi-system validation (e.g., Hummel et al., Med. Phys., 2016) across multiple manufacturers (NDI, Ascension, Polhemus) provides broader generalizability and identifies system-specific error propagation.  
Limitation:  
The generalization of results to all commercial EMTs is uncertain, as internal calibration, field geometry, and solver algorithms differ across platforms.  
  
22. Absence of Compensation or Correction Algorithm Demonstration  
• Issue:  
While the study identifies nonlinearities and complex interference, it does not attempt real-time compensation or adaptive filtering.  
In comparison:  
Recent works (e.g., Pinter et al., IEEE T-MRB, 2021; Xu et al., IEEE T-IM, 2020) integrate data-driven or machine-learning-based correction strategies that mitigate distortion in real time.  
Limitation:  
The lack of algorithmic follow-up means that the study diagnoses the problem but doesn’t provide a computational solution to mitigate it.  
  
23. Limited Statistical Treatment of Variability  
• Issue:  
The analysis seems primarily deterministic, using fixed positions/orientations without reporting variability, repeatability, or statistical confidence intervals.  
In comparison:  
Other empirical EMT studies include Monte Carlo or multi-trial statistics to quantify repeatability and system noise (see Liao et al., IEEE Access, 2020).  
Limitation:  
This omission restricts understanding of measurement uncertainty, which is crucial for certifying clinical or robotic reliability.  
  
24. Shape and Material Diversity Still Simplified  
• Issue:  
Only three shapes (rod, tube, sheet) and six metals are tested.  
In comparison:  
Literature increasingly explores composite, layered, or partially magnetic alloys (e.g., surgical-grade stainless steels, Co–Cr–Mo alloys, carbon-fiber composites) that introduce hybrid behaviors.  
Limitation:  
The findings may not extend to these heterogeneous materials, which are common in surgical tools and robotic components.  
  
  
Additional Questions:  
25. Is the paper technically sound? If no, why not?:  
  
26. Is the coverage of the topic sufficiently comprehensive and balanced?:  
  
27. How would you describe the technical depth of the paper?:  
  
28. How would you rate the technical novelty of the paper?:  
  
29. Is the topic appropriate for publication in these transactions?:  
  
30. Is the topic important to colleagues working in the field?:  
  
31. How would you rate the overall organization of the paper?:  
  
32. Are the title and abstract satisfactory?:  
  
title and abstract explanation:  
  
33. Is the length of the paper appropriate? If not, recommend how the length of the paper should be amended, including a possible target length for the final manuscript.:  
  
length of the paper recommendation:  
  
34. Are symbols, terms, and concepts adequately defined?:  
  
35. How do you rate the English usage?:  
  
36. Rate the Bibliography?:  
  
37. How would you rate the technical contents of the paper?:  
  
38. How would you rate the novelty of the paper?:  
  
39. How would you rate the "literary" presentation of the paper?:  
  
40. How would you rate the appropriateness of this paper for publication in this IEEE Transactions?:  
  
If you are suggesting additional references they must be entered in the text box provided. All suggestions must include full bibliographic information plus a DOI. **Please note: requiring primarily one’s own papers to be cited is considered to be citation coercion, an ethically questionable practice according to IEEE Publication Services and Products Board Operations Manual. It also violates the reviewer’s anonymity.** : NA  
  
Would you recommend this paper for a Best Paper Award?: