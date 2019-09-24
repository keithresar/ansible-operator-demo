#!/bin/bash

. demo-magic.sh

TYPE_SPEED=40

clear

pe "oc create -f role.yaml"
echo ""
echo ""

pe "oc create -f operator.yaml"

wait
clear

pe "cat simpledb_cr.yaml"
echo ""
echo ""

pe "oc create -f simpledb_cr.yaml"
echo ""
echo ""

