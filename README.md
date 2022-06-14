# Generating-Terraform-configuration-files

This is the GitHub repository for the thesis "Generating Terraform Configuration files with Large Language Models" by Oskar Bonde. This thesis was done in collaboration with KTH and Ericsson. 

The thesis evaluates 5 different large language models on their ability to write Terraform configuration files. The models used are Codex, CodeParrot-110M, CodeParrot-1.5B, GPT-2-110M and GPT-2-1.5B.

The **data** folder contains all tasks used to evaluated the models, all code written by the models and the results. The **human-txt** folders contain the solutions and comments. **context** files are available in the data folder. The **aws** folder contains tasks used for the functional correctness metric and the **aws-easy** contains tasks for compile check. 

Scripts for training models, preprocessing data and generating code are available in the **codeparrot** folder.