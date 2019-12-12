# NeuroFlow Data Team Take-Home Project

The repository contains my response to the NeuroFlow Data Team Take-Home
Project.

## Part 1
My analysis of the data is contained in an ipython notebook
`subj_measures.ipynb`. This document contains my code, plots, and written
analysis. I've also included a Pipfile so that libraries can be installed using
pipenv. pipenv can be installed with

`pip install --user pipenv`

at which point jupyter and all the required libraries can be installed in their
own virtual environment with 

`pipenv install`

The notebook server can be started with

`pipenv run jupyter notebook`

The packages required to run the analysis are:

* jupyter
* numpy
* pandas
* matplotlib
* seaborn

I've also included a static html version of the notebook (`subj_measures.html`)
which can be viewed without installing any libraries.

## Part 2
The solutions to the SQL problem are provided as seperate `.sql` files. They are
`part2_problem1.sql` and `part2_problem2.sql`, respectively. A specific dialect
of SQL was not specified in the prompt, so I wrote them using sqlite dialect.
