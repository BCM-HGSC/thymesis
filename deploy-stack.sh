#! /usr/bin/env bash

STACK_NAME=$1
shift

aws cloudformation create-stack \
    --stack-name $STACK_NAME \
    --template-body file://template.yaml \
    --no-cli-pager \
    "$@"

# Example
# ./deploy-stack.sh my-stack-name --tags Key=source,Value=my2021
