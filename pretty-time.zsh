#!/usr/bin/env zsh

if (( $# == 0 )); then
	echo 'Input required'
	exit 1
fi

local human tmp=$1
local days=$(( tmp / 60 / 60 / 24 ))
local hours=$(( tmp / 60 / 60 % 24 ))
local minutes=$(( tmp / 60 % 60 ))
local seconds=$(( tmp % 60 ))

(( days > 0 )) && human+="${days}d "
(( hours > 0 )) && human+="${hours}h "
(( minutes > 0 )) && human+="${minutes}m "
human+="${seconds}s"

echo "$human"
