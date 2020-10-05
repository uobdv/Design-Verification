---
layout: default
title: "COMS30026: Design Verification (UoB)"
description: Design Verification module (COMS30026) at the University of Bristol
---

## Welcome to Design Verification

Hello, welcome to the Design Verification module (COMS30026) website. Here you'll find all the course content and related information. Lecture recordings and information on coursework (where applicable) are hosted privately on Blackboard at the University of Bristol. For further information about this course, please contact Kerstin Eder.

## Overview

This unit familiarises students with the state of the art in Design Verification, and gives them the technical background plus some of the practical skills expected from a professional design verification engineer. More details about the unit have been captured during an interview Kerstin gave at [DAC'2012](https://youtu.be/6lovqBEmryM).

## What you need to know prior to taking this unit

Students intending to take this unit should know that the unit requires a significant amount of initiative and motivation, independent study, e.g. teaching yourself a new language and familiarising yourself with EDA tools in the labs, and diligent time management to meet the learning objectives. Essential pre-requisites to take this unit include programming skills, software engineering skills and a basic understanding of computer architecture. In return, on successful completion of this unit, you will be able to add to your CV knowledge of and skills in the following areas:
- the Verilog Hardware Description Language, 
- EDA tools including ModelSim and the Cadence verification tools, 
- the e Verification Language, 
- Testbench Automation Techniques, 
- Constraint-Based Pseudo Random Test Generation, 
- Assertion-based Verification, 
- Coverage-Driven Verification,
- Functional Formal Verification. 



## Lecture and lab times

*Autumn Term 2020*

- Lecture recordings will be made available on a weekly basis via Blackboard. There are roughly two to three hours of recordings per week. 

- Online synchronous sessions (named Lectures in the timetable) are scheduled at 11:00 on Mondays in weeks 1-7 and also in weeks 11-12. We will use these to answer questions, to focus on specific topics that require interaction and/or debate, and to discuss the supplementary material (see below), e.g. you may be asked to read an article or a scientific paper and participate in a discussion. 

- Lab-based seminars with associated remote desktop bookings are scheduled at 12:00 on Tuesdays in weeks 1-7 and also in weeks 11-12. These can cover setting up remote access to the EDA tools, an introduction to using the EDA tools, help with using the various languages, methodologies, etc.

- Peer learning sessions are scheduled at 10:00 on Fridays in weeks 1-7 and also in weeks 11-12. 


## Making contact

*Autumn Term 2020*


- Your main ways of getting help with this unit are:
  1. Ask at the online synchronous (Lecture) sessions on Mondays.
  2. Ask a TA, ideally during the labs/seminars on Tuesdays.
  3. Post your question on the online forum for the unit.
  4. Ask a fellow student at the peer learning sessions on Fridays. 

- **Please note that sending Kerstin an email may not result in the type of help you may need.** This is because Kerstin gets far too many emails per day to process them all in a timely manner.




## Unit Content

### Lectures

The slides provided in the table below will be updated each week with the revised versions that have been used for the recordings. Please note that the recordings may not cover all slides; some may be left for discussion during an online session, and some may provide further in-depth detail for self study. 

| #   | Topic                                                                    | Print                                                                          | View                                                                          | Supplementary material                                                                                                                                                                                                                                                   |
|-----|--------------------------------------------------------------------------|--------------------------------------------------------------------------------|-------------------------------------------------------------------------------|--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| 1   | Introduction                                                             | [Print](Lectures/Current/1_Introduction_to_DV.p.pdf)                     | [View](Lectures/Current/1_Introduction_to_DV.v.pdf)                     | [Verification challenges](Supplementary/VerificationChallenges.TVS.pdf)<br>[Intelligent Testing (Dot Graham)](Supplementary/IntelligentTesting.DotGraham.pdf) <br> [ITRS Reports](http://www.itrs2.net/itrs-reports.html)                                                                                                         |
| 2   | Verification Hierarchy / Driving & Checking                              | [Print](Lectures/Current/2_Verification_Hierarchy.p.pdf)                 | [View](Lectures/Current/2_Verification_Hierarchy.v.pdf)                 | [Foster: Provably Correct Design](Supplementary/Provably_Correct_Design.pdf)                                                                                                                                                                                             |
| 3   | Verification Tools / Directed Testing                                    | [Print](Lectures/Current/3_VerificationTools_DirectedTesting.p.pdf)      | [View](Lectures/Current/3_VerificationTools_DirectedTesting.v.pdf)      | [The limits of Correctness](Supplementary/The_limits_of_Correctness.pdf) <br> from the [ACM Digital Library](https://dl.acm.org/citation.cfm?id=379512)                                                                                                                                                                                                             |
| 4   | Hardware Design Languages                                                | [Print](Lectures/Current/4_Hardware_Design_Languages.p.pdf)                 | [View](Lectures/Current/4_Hardware_Design_Languages.v.pdf)           | BOOK: Verilog HDL by Samir Palnitkar \[in QB Library]                                                                                                                                                                                                                  |
| 5   | Verification Cycle, Methodology & Plans                                  | [Print](Lectures/Current/5_Verification_Cycle_Methodology_Plans.p.pdf)      | [View](Lectures/Current/5_Verification_Cycle_Methodology_Plans.v.pdf)      | [I'm done simulating: Now what?](Supplementary/Im_done_simulating.Now_what.pdf)                                                                                                                                                                                          |
| 6   | Coverage                                                                 | [Print](Lectures/Current/6_Coverage.p.pdf)                          | [View](Lectures/Current/6_Coverage.v.pdf)                          | [Why statement coverage is not enough](Supplementary/Why_Statement_Coverage_is_not_enough.pdf)<br>[An introduction to FSM coverage](Supplementary/An_Introduction_to_FSM_Path_Coverage.pdf)<br>[A practical tutorial on MC/DC coverage](Supplementary/NASA_tutorial.pdf) |
| 7   | Stimuli Generation                                                       | [Print](Lectures/Current/7_Stimuli_Generation.p.pdf)                   | [View](Lectures/Current/7_Stimuli_Generation.v.pdf)                   | [Verification plan template](Supplementary/Verification_Plan_Template.pdf)<br>[GenesysPro: Innovations in Test Program Generation for Functional Processor Verification](Supplementary/GenesysPro.pdf)                                                                   |
| 8   | Checking                                                                 | [Print](Lectures/Current/8_Checking.p.pdf)                                 | [View](Lectures/Current/8_Checking.v.pdf)                                 | [Design Verification Glossary](Supplementary/DV_Glossary.MG.pdf)<br>[Mentor Graphics Verification Academy Glossary](https://verificationacademy.com/cookbook/doc/glossary)                                                                                               |
| 9  | Assertion Based Verification                                             | [Print](Lectures/Current/9_ABV.p.pdf)                                     | [View](Lectures/Current/9_ABV.v.pdf)                                     | [ModelSim PSL quick reference card](Quick-References/ms_psl_qk_guide.pdf) [SVA quick reference](Quick-References/SVA_QuickReference.CDNS.pdf)                                                                                                                                                                                            |
| 10   | High-level Verification: sn and e                                        | [Print](Lectures/Current/10_High_Level_Verification_sn_and_e.p.pdf) | [View](Lectures/Current/10_High_Level_Verification_sn_and_e.v.pdf) | [The e Language: A fresh separation of concerns](Supplementary/The_e_Language.A_Fresh_Separation_of_Concerns.pdf) <br> [SN and e quick reference (2018)](Quick-References/sn_quick_reference_2018.pdf) <br> [SN and e quick reference (2014)](Quick-References/sn_quick_reference_2014.pdf)                                                                                                                                                                        |
| 11  | Closing the Cycle                                                        | [Print](Lectures/Current/11_Closing_the_Cycle.p.pdf)                       | [View](Lectures/Current/11_Closing_the_Cycle.v.pdf)                       | [IEE Stress Tests by Darren Galphin](Supplementary/IEE_Stress_Tests.DarrenGalpin.pdf)<br>[Functional verification of IBM's POWER7 processor core](Supplementary/Mainline_Functional_Verification_of_IBMs_POWER7_Processor_Core.pdf)                                      |
| 12  | Block-level Case-study including Formal Functional Verification          | [Print](Lectures/Current/12_BlockLevel_CaseStudy.p.pdf)            | [View](Lectures/Current/12_BlockLevel_CaseStudy.v.pdf)            | [PSL quick reference card for Verilog](Quick-References/PSL_quickref_verilog.pdf)<br>[PSL quick reference card for VHDL](Quick-References/PSL_quickref_vhdl.pdf) <br> [SVA quick reference](Quick-References/SVA_QuickReference.CDNS.pdf)                                                                                                         |
| 13  | SoC Verification (Guest Lecture by Mike Benjamin, TVS)                   | [Print](Lectures/Current/13_SoCVerification_MB_TVS.p.pdf)                      | [View](Lectures/Current/13_SoCVerification_MB_TVS.v.pdf)                      |                                                                                                                                                                                                                                                                          |

[Download full course content (ZIP archive)](/Lectures/Current.zip)



## EDA Software Access

You will require access to two EDA tools for this module: MentorGraphic's ModelSim and Cadence's SpecMan and JasperGold. 

The EDA tools are accessible in the Linux labs in MVB, 2.11 and 1.15, and also remotely via X2GO. Further instructions will be made available shortly on how to set up X2GO (see below).

The following are the command line instructions you can use from a terminal once you are logged in, either directly in a lab or remotely:

```
> module use /eda/cadence/modules
> module load course/COMS30026
```

You should then be able to call ModelSim from the command line:
```
> vsim &
```

You may also want to check whether you can call Cadence SpecMan and JasperGold:
```
> specview &
> jaspergold &
```

In both cases the tools should come up with GUI interfaces. If this works for you, then you are ready to start the exercises and, where applicable your coursework.

The instructions on [how to use X2GO for remote access](Supplementary/tbc.pdf) will be made available here shortly.


## Exercises

The exercises are designed to further your understanding of Verilog, the simulator and the e language, and to give you an opportunity to practice the material covered during the lectures. The ModelSim simulator and SpecMan Elite are installed under Linux, for access instructions please see above. 

### Exercise 1

***Your first exercise is a self-study exercise for you to teach yourself the basics of the Hardware Description Language (HDL) Verilog.***

In particular, you will need the behavioural coding style for the first assignment. Please remember that we "only" want to verify HDL designs. This means that we need to be able to understand the basics of HDLs (in this case Verilog); we do NOT intend to design hardware in this unit.
  
There are several good tutorials on Verilog online. ALDEC Inc. offers the Evita Verilog interacitve tutorial. To download it you need to sign up on the ALDEC web page. Please use your University of Bristol email address to do so; ALDEC do not accept generic emails like gmail, yahoo or hotmail. Installation is straightforward; the tutorial is self-extracting and runs under Windows.

You may also want to study the set of [slides](Supplementary/Verilog.SLIDES.pdf) that come with the book "The Verilog Hardware Description Language" by Donald Thomas.

For future use you might want to download and print the Verilog Reference Card: [verilog_reference_card.pdf](Quick-References/verilog_reference_card.pdf)

### Exercise 2

***This exercise introduces you to the ModelSim simulator by Mentor Graphics.***

You can install the [Student Edition of ModelSim](https://www.mentor.com/company/higher_ed/modelsim-student-edition) on your own machine. ModelSim will also be made available in our labs.

[Introduction to the ModelSim Simulator](ModelSim/simulation_tutorial.pdf)

For future use you might want to download and print the ModelSim quick reference guide: [modelsim_se_6_5_quick_ref.pdf](ModelSim/modelsim_se_6_5_quick_ref.pdf)

Files needed for the ModelSim introduction:

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
