#!/bin/bash

users_array=(gustavo pedro satake);

echo "Create and add typical users...";
for i in "${users_array[@]}";
do
    echo "  Creating things for user $i";
    useradd $i;
    usermod -aG docker $i;
    mkdir /home/$i;
done
