#!/usr/bin/env bash

if [ $# -ne 3 ]; then
	echo "Please provide 3 arguments: pbar lab momentum, target mass, target charge"
	echo "Example: ./run.sh 50.0 40.078 20.0"
	exit 1
fi

./bin/antip $@ > /tmp/input.dat

./bin/scattering /tmp/input.dat $@