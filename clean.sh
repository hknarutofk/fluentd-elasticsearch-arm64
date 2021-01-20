#!/bin/bash

ls *.yaml | xargs -i kubectl delete -f {}
