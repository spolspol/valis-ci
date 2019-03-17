# valis-ci

**Infrastructure as Code** concept. Integrating _Ansible_, _Terraform_, AWS SSM _Parameter Store_ and _Helm_ into framework for releasing into _Kubernetes_.

## Overview

Simple **automation framework**, to manage CI/CD style release pipline of micro-service **stack as a platform** into Kubernetes. Designed to be portable. Can be adapted to run from most available CI engines, with modest development effort.

## Description

- CI _steps_ and _stages_ are described in ansible **playbooks**.
- Deployment and service configuration is stored in external **key:value store**.
- AWS resources are managed by **terraform**, with state tracked in s3 bucket and outputs pushed to key:value store.
- A CI engine, such as Gitlab CI or Jenkins, is required to provide triggers and to **orchestrate** job execution.
- CI Stages can be assembled from any combination of steps. New steps can be coded to expand functionality.
- CI pipeline hands over to _kubernetes_ API via deployment through helm _release_.
- Release target is a _namespace_, understood as collection of micro-services, running atop of _kubernetes_ cluster.

## Diagrams

![Valis CI pipeline diagram](diagrams/valis-ci_pipeline.png?raw=true "Valis CI pipeline")

### Build With:

#### [**Ansible**](https://www.ansible.com/)
scripting automation tool to describe CI as code

#### [**Terraform**](https://www.terraform.io/)
Infrastructure as Code framework for stateful management of AWS resources required by platform

#### [**Helm**](https://kubernetes.io/)
stateful package manager for releasing into Kubernetes

#### [**Kubernetes**](https://kubernetes.io/)
automating deployment, scaling, and management of containerized applications

#### [**Docker**](https://www.docker.com/get-started)
Linux containerisation engine

#### [**AWS SSM**](https://aws.amazon.com/systems-manager/features/#Parameter_Store)
external key:value parameter store, to hold inventory of configuration parameters
