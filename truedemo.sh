#!/bin/bash

# demonstrating an infinite loop with true + random
# ctrl-c to end it

while [[ true ]]
do
  echo "${RANDOM}"
  sleep .5s
done
