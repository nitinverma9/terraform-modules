#!/bin/bash

set -e

x=`ls -1 ./policies/ | xargs | tr  " " ","`
printf '{"policy_names":"%s"}' "$x"
