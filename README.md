# Terraform Module for Dataflow Flex Template

This repository contains terraform code for deploying google cloud dataflow flex jobs.

## Features :- 

- [x] Deploy dataflow flex job
- [x] Deploy dataflow flex template
- [x] Support for Multiple dataflow flex jobs using variable
- [x] Support Dataflex template creation with different variables
- [ ] Simple support using Makefile
- [x] E2E flow from dataflow flex template creation to running jobs and deletion
- [x] Compiled into a module

We will use `google` and `google_beta` provider for terraform. A sample dataflow template will be used which will be saved in Cloud Storage bucket in GCP with execution graph. 

We will finally package these into a module.
