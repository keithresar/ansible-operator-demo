#!/bin/bash

for yaml in `ls *.yaml`; do
	oc delete -f ${yaml} 2>/dev/null
done

