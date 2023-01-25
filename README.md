# Terraform Module for Dataflow Flex Template

This repository contains terraform code for deploying google cloud dataflow flex jobs.

## Features :- 

- [x] Deploy dataflow flex job
- [ ] Deploy dataflow flex template
- [ ] Support for Multiple dataflow flex jobs using variable
- [ ] Simple support using Makefile
- [ ] E2E flow from dataflow flex template creation to running jobs and deletion

We will use `google` and `google_beta` provider for terraform. A sample dataflow template will be used which will be saved in Cloud Storage bucket in GCP with execution graph. 

We will finally try to package these into a module.