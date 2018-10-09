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

| # | Topic | Print | View | Slides | Supplementary material |
|---|-------|-------|------|--------|------------------------|
| 1 | Introduction | [Print](Lectures/) | [View](Lectures/) | [PowerPoint](Lectures/) | |
| 2 | Verification Hierarchy / Driving & Checking | [Print](Lectures/) | [View](Lectures/) | [PowerPoint](Lectures/) | |
| 3 | Verification Tools / Directed Testing | [Print](Lectures/) | [View](Lectures/) | [PowerPoint](Lectures/) | |
| 4 | Hardware Design Languages | [Print](Lectures/) | [View](Lectures/) | [PowerPoint](Lectures/) | |
| 5 | Verification Cycle, Methodology & Plans | [Print](Lectures/) | [View](Lectures/) | [PowerPoint](Lectures/) | |
| 6 | Coverage | [Print](Lectures/) | [View](Lectures/) | [PowerPoint](Lectures/) | |
| 7 | Stimuli Generation | [Print](Lectures/) | [View](Lectures/) | [PowerPoint](Lectures/) | |
| 8 | Checking | [Print](Lectures/) | [View](Lectures/) | [PowerPoint](Lectures/) | |
| 9 | High-level Verification: sn and e | [Print](Lectures/) | [View](Lectures/) | [PowerPoint](Lectures/) | |
| 10 | Assertion Based Verification | [Print](Lectures/) | [View](Lectures/) | [PowerPoint](Lectures/) | |
| 11 | Closing the Cycle | [Print](Lectures/) | [View](Lectures/) | [PowerPoint](Lectures/) | |
| 12 | Block-level Case-study including Formal Functional Verification | [Print](Lectures/) | [View](Lectures/) | [PowerPoint](Lectures/) | |
| 13 | SoC Verification (Guest Lecture by Mike Benjamin, TVS) | [Print](Lectures/) | [View](Lectures/) | [PowerPoint](Lectures/) | |
| - | Industry trends | | | [PowerPoint](Extra-Lectures/) | |
| - | Highlights from 2017 Wilson Reserach Group Functional Verification study | | | [PowerPoint](Extra-Lectures/) | |


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

You may also want to study the set of [slides](TODO) that come with the book "The Verilog Hardware Description Language" by Donald Thomas.

For future use you might want to download and print the Verilog Reference Card: [verilog_reference_card.pdf](TODO)

### Exercise 2

***This exercise introduces you to the ModelSim simulator by Mentor Graphics.***

[Introduction to the ModelSim Simulator](TODO)

For future use you might want to download and print the ModelSim quick reference guide: [modelsim_se_6_5_quick_ref.pdf](TODO)

Files needed for the ModelSim introduction:

[ZIP archive of all the below files](TODO)

- [mux421_structural.v](TODO)
- [mux421_dataflow.v](TODO)
- [mux421_behavioural.v](TODO)
- [mux421_gen.v](TODO)
- [mux421_check.v](TODO)
- [mux421_example_testbench.v](TODO)

- [mux421_structural_faulty.v](TODO)
- [mux421_dataflow_faulty.v](TODO)
- [mux421_behavioural_faulty.v](TODO)
- [mux421_faulty_testbench.v](TODO) - Only download this one if you don't want to (learn how to) write your own.

- [mux_int.v](TODO)
- [mux_int_test.v](TODO)
    
### Exercise 3

***[How to collect Code Coverage with ModelSim](TODO)***
    
### Exercise 4

***[Introduction to SpecMan Elite](TODO)***

SpecMan Elite is part of the Incisive Functional Verification platform provided by [Cadence](TODO).

Files needed for the SpecMan tutorial:
    
- [sn_cpu_tutorial.tar.gz](TODO)
- [specman_tutorial.pdf](TODO)



## Credits

Parts of the lecture notes contain material from the book "Writing Testbenches: Functional Verification of HDL Models" by Janick Bergeron and from lecture slides developed at IBM, the University of Pittsburgh, Penn State University, North Carolina State University and Ohio State University. The HDL for the assignments has been developed at IBM - special thanks go to Bruce Wile for his support and encouragement.
