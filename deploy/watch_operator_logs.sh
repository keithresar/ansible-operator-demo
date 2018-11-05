#!/bin/bash

oc logs -f `oc get pods | grep simpledb | awk '{ print $1 }'` | grep "playbook task"

