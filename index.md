---
layout: default
title: "COMS31700: Design Verification (UoB)"
description: Design Verification module (COMS31700) at the University of Bristol
---

## Welcome to Design Verification

Hello, welcome to the Design Verification module (COMS31700) website. Here you'll find all the course content and related information. Assessment materials are hosted privately on Blackboard at the University of Bristol. For further information about this course, please contact Kerstin Eder.

This unit familiarises students with the state of the art in Design Verification, and gives them the technical background plus some of the practical skills expected from a professional design verification engineer. More details about the unit have been captured during an interview Kerstin gave at [DAC'2012](https://youtu.be/6lovqBEmryM).

Students intending to take this unit should know that the unit requires a significant amount of initiative and motivation, independent study, e.g. teaching yourself a new language and familiarizing yourself with EDA tools in the labs, and diligent time management to meet the learning objectives. Pre-requisites to take this unit include programming skills, software engineering skills and a basic understanding of computer architecture. In return, on successful completion of this unit, you will be able to add to your CV knowledge of and skills in the following areas:
- the Verilog Hardware Description Language, 
- EDA tools including ModelSim and the Cadence verification tools, 
- the e Verification Language, 
- Testbench Automation Techniques, 
- Constraint-Based Pseudo Random Test Generation, 
- Assertion-based Verification, 
- Coverage-Driven Verification,
- Functional Formal Verification. 



## Lecture and lab times

*Autumn Term 2019*

- Lecture Times (weeks 2-12, but not week 8) - unless notified otherwise:
  Please check your timetable as there may be room changes at short notice.
  - Tu 12:00 - 12:50 in QB 1.68
  - Tu 15:00 - 16:50 in MVB 1.11
- Week 1: 
  - Th 15:00 - 15:50 in FRY BLDG 2.41
- There are no lectures in week 8. 
- Design Verification scheduled lab time: Th 15:00 - 15:50 in MVB 1.15 - on demand
- Design Verification help session: Fr 13:00 - 13:50 in MVB 1.11 (QB 1.68 in week 4)
  - Special Design Verification help session: Depending on demand, special help desk sessions can be arranged at this time. These can cover setting up access to the EDA tools, an introduction to using the EDA tools, help with using the languages, methodology, etc.
- You should spend at least 3h per week working through the course materials, exercises and assignments.



## Office hours for Kerstin (3.25 MVB)

*Autumn Term 2019*

- You can always approach me before or after our lectures.
- **Please note that sending me an email may not result in the type of help you may need.** This is because I get far too many emails per day to process them all in a timely manner.
- **In addition, you can always visit my office.** You may want to phone me on 0117 9545146 before you come, in order to check I'm actually in my office.
- Generally, it may or may not be possible for me to listen to you straight away, but it will always be possible to make an appointment at the time when you ring or visit.
- Please note that on Wednesday afternoons and on Fridays I am on RESEARCH LEAVE and may not be contactable at all.



## Unit Content

### Lectures

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
| 9  | Assertion Based Verification                                             | [Print](Lectures/Current/9_ABV.p.pdf)                                     | [View](Lectures/Current/9_ABV.v.pdf)                                     | [ModelSim PSL quick reference card](Quick-References/ms_psl_qk_guide.pdf)                                                                                                                                                                                               |
| 10   | High-level Verification: sn and e                                        | [Print](Lectures/Current/10_High_Level_Verification_sn_and_e.p.pdf) | [View](Lectures/Current/10_High_Level_Verification_sn_and_e.v.pdf) | [The e Language: A fresh separation of concerns](Supplementary/The_e_Language.A_Fresh_Separation_of_Concerns.pdf)                                                                                                                                                        |
| 11  | Closing the Cycle                                                        | [Print](Lectures/Current/11_Closing_the_Cycle.p.pdf)                       | [View](Lectures/Current/11_Closing_the_Cycle.v.pdf)                       | [IEE Stress Tests by Darren Galphin](Supplementary/IEE_Stress_Tests.DarrenGalpin.pdf)<br>[Functional verification of IBM's POWER7 processor core](Supplementary/Mainline_Functional_Verification_of_IBMs_POWER7_Processor_Core.pdf)                                      |
| 12  | Block-level Case-study including Formal Functional Verification          | [Print](Lectures/Current/12_BlockLevel_CaseStudy.p.pdf)            | [View](Lectures/Current/12_BlockLevel_CaseStudy.v.pdf)            | [PSL quick reference card for Verilog](Quick-References/PSL_quickref_verilog.pdf)<br>[PSL quick reference card for VHDL](Quick-References/PSL_quickref_vhdl.pdf)                                                                                                         |
| 13  | SoC Verification (Guest Lecture by Mike Benjamin, TVS)                   | [Print](Lectures/Current/13_SoCVerification_MB_TVS.p.pdf)                      | [View](Lectures/Current/13_SoCVerification_MB_TVS.v.pdf)                      |                                                                                                                                                                                                                                                                          |

[Download full course content (ZIP archive)](/Lectures/Current.zip)



## EDA Software Access

You will require access to two EDA tools for this module: MentorGraphic's ModelSim and Cadence's SpecMan. 

The EDA tools are available within the Linux labs in MVB, 2.11 and 1.15, and remotely via NoMachine on Frosty (frosty.fen.bris.ac.uk). However, **you must set up your profile correctly, following the instructions given below. Access is not automatically available.**

The following are the command line instructions you need to use from a terminal:

```
> module use /eda/cadence/modules
> module load course/COMS31700
```

You should then be able to call ModelSim from the command line:
```
> vsim &
```

You may also want to check whether you can call Cadence Specman:
```
> specview &
```

In both cases the tools should come up with GUI interfaces. If this works for you, then you are ready to start the exercises and your assignment. 

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
