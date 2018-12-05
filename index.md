---
layout: default
title: "COMS31700: Design Verification (UoB)"
description: Design Verification module (COMS31700) at the University of Bristol
---

## Welcome to Design Verification

Hello, welcome to the Design Verification module (COMS31700) website. Here you'll find all the course content and related information. Assessment materials are hosted privately on Blackboard at the University of Bristol. For further information about this course, please contact Kerstin Eder.

This unit familiarises students with the state of the art in Design Verification, and gives them the technical background plus some of the practical skills expected from a professional design verification engineer. More details about the unit have been captured during an interview I gave at [DAC'2012](https://youtu.be/6lovqBEmryM).



## Lecture and lab times

*Autumn Term 2018*

- Lecture Times (weeks 1-12, but not week 8) - unless notified otherwise:
  Please check your timetable as there may be room changes at short notice.
  - Tu 11:00 - 11:50 in QB 1.68,
  - Tu 14:00 - 15:50 in MVB 1.11,
  - There are no lectures in weeks 8. 
- Design Verification scheduled lab: We 14:00 - 14:50 in MVB 2.11 - on demand
- Design Verification Help Session: Th 17:00 - 17:50 in MVB 1.11 (QB 1.7 in week 4)
  - Special Design Verification Help Session: Depending on demand, special help desk sessions can be arranged at this time. These can cover setting up access to the EDA tools, an introduction to using the EDA tools, help with using the languages, methodology, etc.
- You should spend at least 3h per week working through the course materials, exercises and assignments.



## Office hours for Kerstin (3.25 MVB)

*Autumn Term 2018*

- You can always approach me before or after our lectures.
- **Please note that sending me an email may not result in the type of help you may need.** This is because I get far too many emails per day to process them all in a timely manner.
- **In addition, you can always visit my office.** You may want to phone me on 0117 9545146 before you come in order to check I'm actually in my office.
- Generally, it may or may not be possible for me to listen to you straight away, but it will always be possible to make an appointment at the time when you ring or visit.
- On Fridays I am on RESEARCH LEAVE and may not be contactable at all.



## Unit Content

### Lectures

| #   | Topic                                                                    | Print                                                                          | View                                                                          | Supplementary material                                                                                                                                                                                                                                                   |
|-----|--------------------------------------------------------------------------|--------------------------------------------------------------------------------|-------------------------------------------------------------------------------|--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| 1   | Introduction                                                             | [Print](Lectures/Current/1_Introduction_to_DV.p.pdf)                     | [View](Lectures/Current/1_Introduction_to_DV.v.pdf)                     | [Verification challenges](Supplementary/VerificationChallenges.TVS.pdf)<br>[Intelligent Testing (Dot Graham)](Supplementary/IntelligentTesting.DotGraham.pdf)                                                                                                            |
| 2   | Verification Hierarchy / Driving & Checking                              | [Print](Lectures/Current/2_Verification_Hierarchy.p.pdf)                 | [View](Lectures/Current/2_Verification_Hierarchy.v.pdf)                 | [Foster: Provably Correct Design](Supplementary/Provably_Correct_Design.pdf)                                                                                                                                                                                             |
| 3   | Verification Tools / Directed Testing                                    | [Print](Lectures/Current/3_VerificationTools_DirectedTesting.p.pdf)      | [View](Lectures/Current/3_VerificationTools_DirectedTesting.v.pdf)      | [ITRS Reports](http://www.itrs2.net/itrs-reports.html)                                                                                                                                                                                                                   |
| 4   | Hardware Design Languages                                                | [Print](Lectures/Current/4_Hardware_Design_Languages.p.pdf)                 | [View](Lectures/Current/4_Hardware_Design_Languages.v.pdf)                 | BOOK: Verilog HDL by Samir Palnitkar \[in QB Library]                                                                                                                                                                                                                    |
| 5   | Verification Cycle, Methodology & Plans                                  | [Print](Lectures/Current/5_Verification_Cycle_Methodology_Plans.p.pdf)      | [View](Lectures/Current/5_Verification_Cycle_Methodology_Plans.v.pdf)      | [I'm done simulating: Now what?](Supplementary/Im_done_simulating.Now_what.pdf)                                                                                                                                                                                          |
| 6   | Coverage                                                                 | [Print](Lectures/Current/6_Coverage.p.pdf)                          | [View](Lectures/Current/6_Coverage.v.pdf)                          | [Why statement coverage is not enough](Supplementary/Why_Statement_Coverage_is_not_enough.pdf)<br>[An introduction to FSM coverage](Supplementary/An_Introduction_to_FSM_Path_Coverage.pdf)<br>[A practical tutorial on MC/DC coverage](Supplementary/NASA_tutorial.pdf) |
| 7   | Stimuli Generation                                                       | [Print](Lectures/Current/7_Stimuli_Generation.p.pdf)                   | [View](Lectures/Current/7_Stimuli_Generation.v.pdf)                   | [Verification plan template](Supplementary/Verification_Plan_Template.pdf)<br>[GenesysPro: Innovations in Test Program Generation for Functional Processor Verification](Supplementary/GenesysPro.pdf)                                                                   |
| 8   | Checking                                                                 | [Print](Lectures/Current/8_Checking.p.pdf)                                 | [View](Lectures/Current/8_Checking.v.pdf)                                 | [Design Verification Glossary](Supplementary/DV_Glossary.MG.pdf)<br>[Mentor Graphics Verification Academy Glossary](https://verificationacademy.com/cookbook/doc/glossary)                                                                                               |
| 9   | High-level Verification: sn and e                                        | [Print](Lectures/Current/9_High_Level_Verification_sn_and_e.p.pdf) | [View](Lectures/Current/9_High_Level_Verification_sn_and_e.v.pdf) | [The e Language: A fresh separation of concerns](Supplementary/The_e_Language.A_Fresh_Separation_of_Concerns.pdf)                                                                                                                                                        |
| 10  | Assertion Based Verification                                             | [Print](Lectures/Current/10_ABV.p.pdf)                                     | [View](Lectures/Current/10_ABV.v.pdf)                                     | [ModelSim PSL quick reference card](Quick-References/ms_psl_qk_guide.pdf)                                                                                                                                                                                                |
| 11  | Closing the Cycle                                                        | [Print](Lectures/Current/11_Closing_the_Cycle.p.pdf)                       | [View](Lectures/Current/11_Closing_the_Cycle.v.pdf)                       | [IEE Stress Tests by Darren Galphin](Supplementary/IEE_Stress_Tests.DarrenGalpin.pdf)<br>[Functional verification of IBM's POWER7 processor core](Supplementary/Mainline_Functional_Verification_of_IBMs_POWER7_Processor_Core.pdf)                                      |
| 12  | Block-level Case-study including Formal Functional Verification          | [Print](Lectures/Current/12_BlockLevel_CaseStudy.p.pdf)            | [View](Lectures/Current/12_BlockLevel_CaseStudy.v.pdf)            | [PSL quick reference card for Verilog](Quick-References/PSL_quickref_verilog.pdf)<br>[PSL quick reference card for VHDL](Quick-References/PSL_quickref_vhdl.pdf)                                                                                                         |
| 13  | SoC Verification (Guest Lecture by Mike Benjamin, TVS)                   | [Print](Lectures/Current/13_SoCVerification_MB_TVS.p.pdf)                      | [View](Lectures/Current/13_SoCVerification_MB_TVS.v.pdf)                      |                                                                                                                                                                                                                                                                          |

[Download weeks 1 to 13 course content (ZIP archive)](/Lectures/Current.zip)

### Labs & Drop-ins

#### Lab 1

This session covers setting up access to the software.

We recommend you use the lab machines for reliable access. Remote accesss is also available via NoMachine/Frosty.

Video: [https://youtu.be/NQGvJ47RsSM](https://youtu.be/NQGvJ47RsSM)

[Lab sheet here.](Labs/Week 1.pdf)

#### [Lab 2](Labs/Week-2)

[See this page](Labs/Week-2)

#### [Lab 3](Labs/Week-4)

[See this page](Labs/Week-4)

#### Additional drop-in sessions : Tuesday 16th October 2018

In Kerstin's absence, additional informal drop-in sessions will be held during the usual lecture slots (in the lecture rooms) on Tuesday 16th October 2018. In particular these are to assist Robotics students who will be missing the first lab on Wednesday 10th October.

Please let Ed know (via the Blackboard forum or email) any specific technical issues in advance of these sessions (if you can) so he can prepare fixes. Thanks!


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



## Software Access

You will require access to two pieces of software for this module: MentorGraphic's ModelSim and Cadence's Specman. 

This software is available within the Linux labs and remotely via NoMachine/Frosty. However, **you must set up your profile correctly first. Access is not automatically available.**

**We will be going through setting up software access in the lab on Wednesday 10th October 2018 (2pm to 2:50pm).** Please make sure you attend.

Please watch [this video](https://youtu.be/NQGvJ47RsSM) for details: [https://youtu.be/NQGvJ47RsSM](https://youtu.be/NQGvJ47RsSM )

The following is the necessary script (as shown in the video):

```sh
PS1='\w\$ ' # If you know what this line does and you don't want it, you can delete it.

export PATH=/usr/local/modelsim/modeltech/bin:$PATH 
export MODEL_TECH=/usr/local/modelsim/modeltech/bin
export MGLS_LICENSE_FILE=1717@ze-ls0.fen.bris.ac.uk,1717@ze-ls1.fen.bris.ac.uk,1717@ze-ls2.fen.bris.ac.uk
source /usr/local/mentor/2016-17/scripts/QUESTA-CORE-PRIME_10.5c-4_RHELx86.sh 

export CDS_LIC_FILE="5280@ze-ls0.fen.bris.ac.uk,5280@ze-ls1.fen.bris.ac.uk,5280@ze-ls2.fen.bris.ac.uk"
export PATH=/usr/local/cadence/2016-17/jasper_2015.12/Linux64/bin:$PATH
source /usr/local/cadence/current/cadence_ic.sh
```

We hope this works for you. If it doesn't please let us know and we will help you fix it. 

**Note:** You will need to close and reopen any terminals before the changes to .bashrc will take effect. Re-"source"ing your .bashrc will not work and will result in the terminal closing immediately without warning - this is expected behaviour.



## Exercises

The exercises are designed to further your understanding of Verilog, the simulator and the e language, and to give you an opportunity to practice the material covered during the lectures. The ModelSim simulator and SpecMan Elite are installed under Linux. Instructions on how to set up and run ModelSim and SpecMan are contained in the exercise sheets.

### Exercise 1

***Your first exercise is a self-study exercise for you to teach yourself the basics of the Hardware Description Language (HDL) Verilog.***

In particular, you will need the behavioural coding style for the first assignment. Please remember that we "only" want to verify HDL designs. This means that we need to be able to understand the basics of HDLs (in this case Verilog); we do NOT intend to design hardware in this unit.
  
There are several good tutorials on Verilog online. ALDEC Inc. offers the Evita Verilog interacitve tutorial. To download it you need to sign up on the ALDEC web page. Please use your University of Bristol email address to do so; ALDEC do not accept generic emails like gmail, yahoo or hotmail. Installation is straightforward; the tutorial is self-extracting and runs under Windows.

You may also want to study the set of [slides](Supplementary/Verilog.SLIDES.pdf) that come with the book "The Verilog Hardware Description Language" by Donald Thomas.

For future use you might want to download and print the Verilog Reference Card: [verilog_reference_card.pdf](Quick-References/verilog_reference_card.pdf)

### Exercise 2

***This exercise introduces you to the ModelSim simulator by Mentor Graphics.***

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


## Credits

Parts of the lecture notes contain material from the book "Writing Testbenches: Functional Verification of HDL Models" by Janick Bergeron and from lecture slides developed at IBM, the University of Pittsburgh, Penn State University, North Carolina State University and Ohio State University. The HDL for the assignments has been developed at IBM - special thanks go to Bruce Wile for his support and encouragement.
