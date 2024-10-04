#!/bin/bash


template_id=$1
start_vm_id=$2
vm_name_prefix=$3
num_vms=$4

for i in $(seq 1 $num_vms); do
	curr_vm_id=$((start_vm_id + i))
	vm_name=$(printf "${vm_name_prefix}-%02d" "$i")

	echo "Cloning template to create $vm_name.."

	qm clone $template_id $curr_vm_id --name $vm_name --full 
 
	echo "$vm_name created from template."
done
