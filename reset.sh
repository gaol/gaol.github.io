#!/bin/bash

read -p "This will destroy current vagrant box and provision again, Are you sure?[y/n] " -n 1 -r
echo
if [[ $REPLY =~ ^[Yy]$ ]]
then
    vagrant destroy -f
    vagrant up
fi
