#!/bin/bash


if [ $(helm ls --short | wc -l) -ne 0 ]; then
	helm del $(helm ls --short) --purge
fi

./reset_data.sh

helm install misp-bare --atomic
