---
title: Autograding For a Blocks Langauge
abstract: |
    This work describes an environment for autograding a visual programming langage, Snap! and it's use in MOOCs. We present our design approach, as well as
author:
    - name: Michael Ball
      email: michael.ball@berkeley.edu
    - name: Michael Ball
      email: michael.ball@berkeley.edu
    - name: Michael Ball
      email: michael.ball@berkeley.edu
subject:
date: October 31, 2015
company: UC Berkeley
keywords: autograding, visual programming languages, Snap!, assessment, feedback
references:
    - id: doe2006
      author:
        family: Doe
        given: [John, F.]
      title: Article
      page: 33-34
      issued:
        year: 2006
      type: article-journal
      volume: 6
      container-title: Journal of Generic Studies
    - id: hoverbear
      title: Hoverbear.org
      author:
          - given: Andrew
            family: Hobden
      type: webpage
      URL: http://hoverbear.org

---

Notes
	- Diffing the "world" State
		- detecting script changes
	- Ambiguous States or Errors
		- infinitely looping code
		- JS Errors
		- Static analysis
	- Assertion-Based Testing
		- following an event log
		- image diffing

# FIXME
In this paper, we present the design and use of an in-browser autograder for a visual programming language, Snap<i>!</i> [REF].
Snap<i>!</i>, Build Your Own Block is a web-based, blocks-based language inspired by Scratch [REF], for the course _The Beauty and Joy of Computing_[REF], at UC Berkeley. Before planning to build a MOOC of BJC we needed a way of evaluating student work that didn't involve human grading. We designed the autograder system that we could have a wide set of unit tests as well as more general assertion tests based on static analysis or output logs. This fall, we successfully deployed our autograder to edX, and piloted it UC Berkeley. We are planning to build out the tools to make them easier for others to use.

# Introduction

# Background

# Lack Related Work (?)

# System Overview (?)

# Features

## Data Collection
We aren't actually testing things, but we are collecting data!

## Adaptability

# Implementing The Tools

# Future Work

# Conclusion

# References

