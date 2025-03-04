#!/bin/bash

FOCUSED_MONITOR=$(hyprctl monitors -j | jq -r '.[] | select(.focused == true) | .id')

if [[ -z "$FOCUSED_MONITOR" ]]; then
    hyprctl dispatch workspace last
    exit 0
fi

WORKSPACE_OFFSET=$((FOCUSED_MONITOR * 10))

REQUESTED_WORKSPACE=$1

FINAL_WORKSPACE=$((REQUESTED_WORKSPACE + WORKSPACE_OFFSET))

FOCUSED_WINDOW=$(hyprctl activewindow -j | jq -r '.address // empty')

if [[ -n "$FOCUSED_WINDOW" ]]; then
    hyprctl dispatch movetoworkspace "$FINAL_WORKSPACE,$FOCUSED_WINDOW"
fi

hyprctl dispatch workspace "$FINAL_WORKSPACE"
