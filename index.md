---
layout: default
title: "COMS30026: Design Verification (UoB)"
description: Design Verification module (COMS30026) at the University of Bristol
---

## Welcome to Design Verification

Hello, welcome to the Design Verification module (COMS30026) website. Here you'll find all the course content and related information. Lecture recordings and information on coursework (where applicable) are hosted privately on Blackboard at the University of Bristol. For further information about this course, please contact Kerstin Eder.

## Overview

This unit familiarises students with the state of the art in Design Verification, and gives them the technical background plus some of the practical skills expected from a professional design verification engineer. More details about the unit have been captured during an interview Kerstin gave at [DAC'2012](https://youtu.be/6lovqBEmryM).

## What you need to know prior to taking this unit and what you can expect to learn

Students intending to take this unit should know that the unit requires a significant amount of initiative and motivation, independent study, e.g. teaching yourself a new language and familiarising yourself with EDA tools in the labs, and diligent time management to meet the learning objectives. Essential pre-requisites to take this unit include programming skills, software engineering skills and a basic understanding of computer architecture. In return, on successful completion of this unit, you will be able to add to your CV knowledge of and skills in the following areas:
- the Verilog Hardware Description Language, 
- EDA tools including ModelSim/QuestaSim and the Cadence verification tools, 
- the e Verification Language, 
- Testbench Automation Techniques, 
- Constraint-Based Pseudo Random Test Generation, 
- Assertion-Based Verification, 
- Coverage-Driven Verification,
- Functional Formal Verification. 



## Lecture and lab times

*Autumn Term 2022*

- Lectures are scheduled in weeks 1-5, 7-8 and 12 on Mondays, 9:00 and 17:00, and on Wednesdays, 9:00. Lecture theatres can be found in your timetable. Any changes to scheduled lecture times and lecture theatres will be announced during lectures and via Blackboard.

- Lecture recordings will be made available via Blackboard. There are between two and three hours of recordings per week. 

<!-- - Online synchronous sessions (named Lectures in the timetable) are scheduled at 10:00 on Wednesdays in weeks 1-5, 7-8 and also in week 12. We will use these to answer questions, to focus on specific topics that require interaction and/or debate, and to discuss the supplementary material (see below), e.g. you may be asked to read an article or a scientific paper and participate in a discussion. Any slides presented can be found under Live Sessions below.-->

- Labs (called Seminars in your timetable) are scheduled in weeks 1-4 and 7-12 on Wednesdays at 14:00 in MVB 1.15. Labs are supervised by an experienced Teaching Assistant (TA). Labs can cover setting up remote access to the EDA tools, an introduction to using the EDA tools, help with using the various languages, methodologies, tools, etc. 

- You are expected to engage with the supplementary material and the opportunities highlighted in the lectures and on this unit page.

## Making contact

*Autumn Term 2022*


- Your main ways of getting help with this unit are:
  1. Ask directly after the 9:00 lectures.
  2. Ask the unit TA, ideally during the labs/seminars on Wednesdays.
  3. Post your question on the online Blackboard forum for the unit.
  4. Ask a fellow student via Teams.

- **Please avoid sending Kerstin an email to get help as this may not result in the type of help you may need.** This is because Kerstin gets far too many emails per day to process them all in a timely manner.


## Unit Content

### Lectures

The slides provided in the table below may be updated with revised versions as necessary. Please note that the lectures and recordings may not cover all slides; some of the slides not covered may provide further information for exercises and self study. 

| #   | Week | Topic                                                             | Slides                                                                        | Supplementary material                                                                                                                                                                                                                                                   |
|-----|--------------------------------------------------------------------------|-------------------------------------------------------------------------------|-------------------------------------------------------------------------------|--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| 0   | Week 1 | Introduction to the Design Verification unit COMS30026       | [View](LiveSessions/W1_COMS30026_Design_Verification_Unit-Overview.pdf)                       | [The limits of Correctness](Supplementary/The_limits_of_Correctness.pdf) <br> from the [ACM Digital Library](https://dl.acm.org/citation.cfm?id=379512)                                                                                                        |
| 1   | Week 1    | Introduction to Design Verification                          | [View](Lectures/Current/1_Introduction_to_DV_ALL-SLIDES_narrated_v7-plain.pdf)            | [ITRS Reports](http://www.itrs2.net/itrs-reports.html) <br> Read the paper by Harry Foster on [Why the Design Productivity Gap never happened](/Supplementary/Why-the-DV-Productivity-Gap-never-happened.pdf)                                                                                                        |
| 2.1 | Week 1    | Verification Hierarchy                                       | [View](Lectures/Current/2_Verification_Hierarchy_plain.pdf)                   | [Foster: Provably Correct Design](Supplementary/Provably_Correct_Design.pdf)  <br> Read the paper on [System Deadlocks](/Supplementary/System_Deadlocks-Four_necessary_and_sufficient_conditions_for_deadlock.pdf)                                                                                                                                                                                           |
| 2.2 | Week 1/2  | Driving & Checking                                           | [View](Lectures/Current/2_Fundamentals of Simulation-based Verification_plain.pdf) | Explore the [foretellix blog](https://blog.foretellix.com/) <br> Review the 2020 Wilson Research Group Functional Verification Study <br> [Slides](/WilsonResearchGroupFunctionalVerificationStudy/2020-WRGFV-Study/2020-WrG-FV-Study-Webinar-Oct13.pdf), [FPGA Trend Report](/WilsonResearchGroupFunctionalVerificationStudy/2020-WRGFV-Study/fpga-trend-report_2020-wilson-research-verification-study_hfoster.pdf), [IC ASIC Trend Report](/WilsonResearchGroupFunctionalVerificationStudy/2020-WRGFV-Study/ic-asic-trend-report_2020-wilson-research-verification-study_hfoster.pdf) <br> [2022 Wilson Research Group Functional Verification Study announced!](https://s3.amazonaws.com/public.verification.academy/wrg/preview_2022-wilson-resesearch-verification-study_hfoster.mp4)                                                                                                                                                                                        |
| 3   | Week 2    | Verification Tools                                           | [plain](Lectures/Current/3_VerificationTools_narrated_v6-plain.pdf) <br> [with ink](Lectures/Current/3_VerificationTools_narrated_v6-ink.pdf)           | [Verification challenges](Supplementary/VerificationChallenges.TVS.pdf)<br>[Intelligent Testing (Dot Graham)](Supplementary/IntelligentTesting.DotGraham.pdf) <br> [EWD 340: The humble programmer](https://www.cs.utexas.edu/users/EWD/ewd03xx/EWD340.PDF)                                                                                                                                                                                                              |
| 4   | Week (2)  | Hardware Design Languages (self-study) | [View](Lectures/Current/4_Hardware_Design_Languages.v.pdf)                    | BOOK: Verilog HDL by Samir Palnitkar \[in QB Library]                                                                                                                                                                                                                  |
| 5   | Week 2    | Verification Cycle, Methodology & Plan                       | [plain](Lectures/Current/5_Verification_Cycle_Methodology_Plan_narrated_v7-plain.pdf) <br> [with ink](Lectures/Current/5_Verification_Cycle_Methodology_Plan_narrated_v7-ink.pdf)         | [Verification plan template](Supplementary/Verification_Plan_Template.pdf) <br> [I'm done simulating: Now what?](Supplementary/Im_done_simulating.Now_what.pdf)                                                                                                                                                                                          |
| 6.1 | Week 3    | Stimuli Generation Part I: Foundations                       | [plain](Lectures/Current/7_Stimuli_Generation_Part-I_narrated_v4-plain.pdf) <br> [with ink](Lectures/Current/7_Stimuli_Generation_Part-I_narrated_v4-ink.pdf)                           |  [IEE Stress Tests by Darren Galpin](Supplementary/IEE_Stress_Tests.DarrenGalpin.pdf)                                                                |
| 6.2 | Week 3    | Stimuli Generation Part II: Test Automation                  | [plain](Lectures/Current/7_Stimuli_Generation_Part-II_narrated_v3-plain.pdf) <br> [with ink](Lectures/Current/7_Stimuli_Generation_Part-II_narrated_v3-ink.pdf)                          | [GenesysPro: Innovations in Test Program Generation for Functional Processor Verification](Supplementary/GenesysPro.pdf)                                                                   |
| 7   | Week 3    | Checking                                                     | [plain](Lectures/Current/8_Checking-narrated_v9-plain.pdf) <br> [with ink](Lectures/Current/8_Checking-narrated_v9-ink.pdf)                                    | [Design Verification Glossary](Supplementary/DV_Glossary.MG.pdf)<br>[Verification Academy Glossary](https://verificationacademy.com/cookbook/doc/glossary)                                                                                               |
| 8.1 | Week 4    | Coverage Part I: Introduction and Code Coverage              | [plain](Lectures/Current/6_Coverage-Part-I-narrated_v7-plain.pdf) <br> [with ink](Lectures/Current/6_Coverage-Part-I-narrated_v7-ink.pdf)                                   | [Why statement coverage is not enough](Supplementary/Why_Statement_Coverage_is_not_enough.pdf)<br>[An introduction to FSM coverage](Supplementary/An_Introduction_to_FSM_Path_Coverage.pdf)<br>[A practical tutorial on MC/DC coverage](Supplementary/NASA_tutorial.pdf) |
| 8.2 | Week 4    | Coverage Part II: Functional Coverage                        | [plain](Lectures/Current/6_Coverage-Part-II-narrated_v7-plain.pdf) <br> [with ink](Lectures/Current/6_Coverage-Part-II-narrated_v7-ink.pdf)                                   |  |
| 8.3 | Week 4    | Coverage Part III: Coverage Analysis                          | [plain](Lectures/Current/6_Coverage-Part-III-narrated_v8-plain.pdf) <br> [with ink](Lectures/Current/6_Coverage-Part-III-narrated_v8-ink.pdf)                           |  |
| 9.1 | Week 5    | High-level Verification: sn and e - Part 1                   | [View](Lectures/Current/10_High_Level_Verification_sn_and_e-Part-1-narrated_v9-plain.pdf) <br> [with ink](Lectures/Current/10_High_Level_Verification_sn_and_e-Part-1-narrated_v9-ink.pdf)           | [The e Language: A fresh separation of concerns](Supplementary/The_e_Language.A_Fresh_Separation_of_Concerns.pdf) <br> [IEEE Standard for E (2016)](https://ieeexplore.ieee.org/document/7805158)                                                                          |
| 9.2 | Week 5    | High-level Verification: sn and e - Part 2                   | [View](Lectures/Current/10_High_Level_Verification_sn_and_e-Part-2-narrated_v10-plain.pdf) <br> [with ink](Lectures/Current/10_High_Level_Verification_sn_and_e-Part-2-narrated_v10-ink.pdf)           | [Coverage-Driven Verification Methodology Summary for UVM by Doulos](http://www.doulos.com/knowhow/systemverilog/uvm/easier-uvm/easier-uvm-deeper-explanations/coverage-driven-verification-methodology/) <br> [SN and e quick reference (2018)](Quick-References/sn_quick_reference_2018.pdf) <br> [SN and e quick reference (2014)](Quick-References/sn_quick_reference_2014.pdf)                                                                                                                                                                        |
| 10.1  | Week 7    | Assertion Based Verification Part I: Introduction          | [View](Lectures/Current/9_ABV_narrated_v9-part-1-plain.pdf) <br> [with ink](Lectures/Current/9_ABV_narrated_v9-part-1-ink.pdf)                                          | [OVL quick reference card](Quick-References/ovl_quick_ref.pdf)   |
| 10.2  | Week 7    | Assertion Based Verification Part II: Property Formalisation | [View](Lectures/Current/9_ABV_narrated_v9-part-2-plain.pdf) <br> [with ink](Lectures/Current/9_ABV_narrated_v9-part-2-ink.pdf)                                        | [ModelSim PSL quick reference card](Quick-References/ms_psl_qk_guide.pdf) <br> [SVA quick reference](Quick-References/SVA_QuickReference.CDNS.pdf)  |
| 11  | Week 7    | Functional Formal Verification   | [View](Lectures/Current/13_Functional_Formal_Verification_narrated_v7-plain.pdf) <br> [with ink](Lectures/Current/13_Functional_Formal_Verification_narrated_v7-ink.pdf)                       | [PSL quick reference card for Verilog](Quick-References/PSL_quickref_verilog.pdf)<br>[PSL quick reference card for VHDL](Quick-References/PSL_quickref_vhdl.pdf)                                                                                                         |
| 12  | Week 8    | Closing the Cycle  <br> [Notes on Analysis and Adaptation with a focus on Failure Analysis](Lectures/Current/11_Closing_the_Cycle-narrated_Notes-on-Analysis-OPTIONAL.pdf)  | [View](Lectures/Current/11_Closing_the_Cycle-narrated_v6-plain.pdf) <br> [with ink](Lectures/Current/11_Closing_the_Cycle-narrated_v6-ink.pdf)  | [DV Club on Signing Off: What are your Verification Tape-Out Criteria?](https://www.testandverification.com/conferences/dvclub/europe/dvclub-europe-november-2020-signing-off-what-are-your-verif-tape-out-criteria) <br> Presentations from [Arm](Supplementary/DVClub/DVClub-Sign-off-202011-Nihit_Chattar-ARM.pdf), [Infineon](Supplementary/DVClub/DVClub-Sign-off-202011-Tim_Blackmore-Infineon.pdf) and [Graphcore](Supplementary/DVClub/DVClub-Sign-off-202011-Anthony_Wood-Graphcore.pdf)         |
| 13  | Week 8    | SoC Verification (Guest Lecture by Mike Benjamin)       | [View](Lectures/Current/13_SoCVerification_MB_TVS.v.pdf)                      | [Functional verification of IBM's POWER7 processor core](Supplementary/Mainline_Functional_Verification_of_IBMs_POWER7_Processor_Core.pdf) |


<!--[Download full course content (ALL slides) as a ZIP archive.](/Lectures/Current.zip)-->

### Weekly Status Updates 

<!--The slides presented at live sessions, if any, will be made available here in reverse chronological order, i.e. the most recent first. Recordings of the live sessions are available via the associated Team ***COMS30026: Design Verification (Teaching Unit) 2021/22 (TB-1, A)***.-->

These slides capture what we have covered in the past week and where you are expected to be with respect to the course materials at this stage. They include optional activities and opportunities for you to learn material beyond what has been taught in this unit.

<!--
* [Slides](StatusUpdate/W8_COMS30026_Design_Verification_StatusUpdate.pdf) from live session on 19 November 2021
* [Slides](StatusUpdate/W7_COMS30026_Design_Verification_StatusUpdate.pdf) from live session on 10 November 2021
* [Slides](StatusUpdate/W5_COMS30026_Design_Verification_StatusUpdate.pdf) from live session on 27 October 2021
-->
* [Week 4](StatusUpdate/W4_COMS30026_Design_Verification_StatusUpdate.pdf)
* [Week 3](StatusUpdate/W3_COMS30026_Design_Verification_StatusUpdate.pdf)
* [Week 2](StatusUpdate/W2_COMS30026_Design_Verification_StatusUpdate.pdf) 
<!--* [Slides](StatusUpdate/W1_COMS30026_Design_Verification_StatusUpdate.pdf) from live session on 29 September 2021-->


## EDA Software Access

You will require access to two EDA tools for this module: MentorGraphic's ModelSim/QuestaSim and Cadence's SpecMan and JasperGold. 

The EDA tools are accessible in the Linux labs in MVB, 2.11 and 1.15, and also remotely. To set up remote access you need to follow the instructions on [how to set up X2GO](https://uob.sharepoint.com/sites/itservices/SitePages/fits-engineering-linux-x2go.aspx).

The following are the command line instructions you can use from a terminal once you are logged in, either directly in a lab or remotely:

```
> module use /eda/cadence/modules
> module load course/COMS30026
```

You should then be able to call ModelSim/QuestaSim from the command line:
```
> vsim &
```

You may also want to check whether you can call Cadence SpecMan and JasperGold:
```
> specview &
> jaspergold &
```

In both cases the tools should come up with GUI interfaces. If this works for you, then you are ready to start the exercises and, where applicable, your coursework.

You can also download this worksheet on [how to use X2GO for remote access](/X2GO_Download_Page.pdf).


## Exercises

The exercises are designed to further your understanding of Verilog, the simulator and the e language, and to give you an opportunity to practice the material covered during the lectures. The ModelSim/QuestaSim simulator and SpecMan Elite are installed under Linux, for access instructions please see above. 

### Exercise 1

***Your first exercise is a self-study exercise for you to teach yourself the basics of the Hardware Description Language (HDL) Verilog.***

In particular, you will need the behavioural coding style for the first practical. Please remember that we "only" want to verify HDL designs. This means that we need to be able to understand the basics of HDLs (in this case Verilog); we do NOT intend to design hardware in this unit.
  
There are several good tutorials on Verilog online. ALDEC Inc. offers the Evita Verilog interacitve tutorial. To download it you need to sign up on the ALDEC web page. Please use your University of Bristol email address to do so; ALDEC do not accept generic emails like gmail, yahoo or hotmail. Installation is straightforward; the tutorial is self-extracting and runs under Windows.

You may also want to study the set of [slides](Supplementary/Verilog.SLIDES.pdf) that come with the book "The Verilog Hardware Description Language" by Donald Thomas.

For future use you might want to download and print the Verilog Reference Card: [verilog_reference_card.pdf](Quick-References/verilog_reference_card.pdf)

### Exercise 2

***This exercise introduces you to the ModelSim/QuestaSim simulator by Siemens.***

<!-- You can install the [Student Edition of ModelSim](https://www.mentor.com/company/higher_ed/modelsim-student-edition) on your own machine. ModelSim/QuestaSim will also be made available in our labs. -->

[Introduction to the ModelSim/QuestaSim Simulator](ModelSim/simulation_tutorial.pdf)

For future use you might want to download and print the ModelSim/QuestaSim quick reference guide: [modelsim_se_6_5_quick_ref.pdf](ModelSim/modelsim_se_6_5_quick_ref.pdf)

Files needed for the ModelSim/QuestaSim introduction:

[ZIP archive of all the below files](ModelSim/ModelSim-Tutorial-Src.zip)

- [mux421_structural.v](ModelSim/src/mux421_structural.v)
- [mux421_dataflow.v](ModelSim/src/mux421_dataflow.v)
- [mux421_behavioural.v](ModelSim/src/mux421_behavioural.v)
- [mux421_gen.v](ModelSim/src/mux421_gen.v)
- [mux421_check.v](ModelSim/src/mux421_check.v)
- [mux421_example_testbench.v](ModelSim/src/mux421_example_testbench.v)

- [mux421_structural_faulty.v](ModelSim/src/mux421_structural_faulty.v)
- [mux421_dataflow_faulty.v](ModelSim/src/mux421_dataflow_faulty.v)
- [mux421_behavioural_faulty.v](ModelSim/src/mux421_behavioural_faulty.v)
- [mux421_faulty_testbench.v](ModelSim/src/mux421_faulty_testbench.v) - Only download this one if you don't want to (learn how to) write your own.

- [mux_int.v](ModelSim/src/mux_int.v)
- [mux_int_test.v](ModelSim/src/mux_int_test.v)
    
### Exercise 3

***[How to collect Code Coverage with ModelSim](ModelSim/code_coverage_exercise.pdf)***
    
### Exercise 4

***[Introduction to SpecMan Elite](SN-CPU-Tutorial/sn_cpu_tutorial.pdf)***

SpecMan Elite is part of the Incisive Functional Verification platform provided by [Cadence](http://www.cadence.com/).

Files needed for the SpecMan tutorial:
    
- [sn_cpu_tutorial.tar.gz](SN-CPU-Tutorial/sn_cpu_tutorial.tar.gz)
- [specman_tutorial.pdf](SN-CPU-Tutorial/specman_tutorial.pdf)


## FAQs

For some answers to frequently asked questions about Verilog and Specman/E, please see the following pages.

* [Writing testbenches with Specman/E](FAQs/dv_lab_specman)
* [Writing testbenches with Verilog](FAQs/dv_lab_verilog)
* [Gluing Verilog modules together](FAQs/glue)
* [Generating random numbers in Verilog](FAQs/random)

### Online resources

The [Verification Academy](http://www.verificationacademy.com/) provides a comprehensive learning resource from basics to very advanced materials.


### Additional materials

A book that covers some of the course is:

```
Janick Bergeron
Writing Testbenches: Functional Verification of HDL Models
First Edition, Kluwer Academic Publishers, 2000, ISBN: 0-7923-7766-4
Second Edition, Kluwer Academic Publishers, 2003, ISBN: 1-4020-7401-8 
```

In May 2005 a comprehensive textbook on Design Verification was published:

```
Bruce Wile, John Goss and Wolfgang Roesner
Comprehensive Functional Verification
Elsevier, 2005, ISBN: 0-12-751803-7 
```

Both books are available in the QB library.


## Credits

Parts of the lecture notes contain material from the book "Writing Testbenches: Functional Verification of HDL Models" by Janick Bergeron and from lecture slides developed at IBM, the University of Pittsburgh, Penn State University, North Carolina State University and Ohio State University. The HDL for the assignments has been developed at IBM - special thanks go to Bruce Wile for his support and encouragement.
