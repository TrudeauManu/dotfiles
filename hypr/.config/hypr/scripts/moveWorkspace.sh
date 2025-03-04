#!/bin/bash

FOCUSED_MONITOR=$(hyprctl monitors -j | jq -r '.[] | select(.focused == true) | .id')

if [[ -z "$FOCUSED_MONITOR" ]]; then
    hyprctl dispatch workspace last
    exit 0
fi

WORKSPACE_OFFSET=$((FOCUSED_MONITOR * 10))

REQUESTED_WORKSPACE=$1

FINAL_WORKSPACE=$((REQUESTED_WORKSPACE + WORKSPACE_OFFSET))

hyprctl dispatch workspace $FINAL_WORKSPACE
