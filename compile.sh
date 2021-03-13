#!/usr/bin/env bash
gfortran src/antiprova.for -o bin/antip 2> /dev/null  ## suppressing a fortran compiling warning
g++ src/coulomb.cpp -o bin/scattering
echo "antip and scattering programs compiled (executable files in the bin directory)"

