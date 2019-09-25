#!/bin/bash

oc logs -f `oc get pods | grep simpledb-operator | awk '{ print $1 }'` | \
    grep "playbook task" 

