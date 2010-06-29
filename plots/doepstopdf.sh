#!/bin/bash

set -e

for file in *.eps; do
    epstopdf $file
done