#!/bin/bash

for yaml in `ls *.yaml`; do
	oc delete -f ${yaml}
done

