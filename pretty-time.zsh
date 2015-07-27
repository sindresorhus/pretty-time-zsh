#!/usr/bin/env zsh

if (( $# == 0 )); then
	echo 'Input required'
	exit 1
fi

local human total_seconds=$1
local days=$(( total_seconds / 60 / 60 / 24 ))
local hours=$(( total_seconds / 60 / 60 % 24 ))
local minutes=$(( total_seconds / 60 % 60 ))
local seconds=$(( total_seconds % 60 ))

(( days > 0 )) && human+="${days}d "
(( hours > 0 )) && human+="${hours}h "
(( minutes > 0 )) && human+="${minutes}m "
human+="${seconds}s"

echo "$human"
