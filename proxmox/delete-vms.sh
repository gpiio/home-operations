#!/bin/bash

start_vm_id=$1
num_vms=$2

for (( i=0; i<num_vms; i++)); do
        curr_vm_id=$((start_vm_id + i))

	echo "Stopping vm id $curr_vm_id..."

	qm stop $curr_vm_id -overrule-shutdown 1

	echo "Deleting vm id $vm_id..."

	qm destroy $curr_vm_id --purge

	echo "$curr_vm_id destroyed."
done
