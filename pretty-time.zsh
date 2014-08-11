#!/usr/bin/env zsh

if [ $# -eq 0 ]; then
	echo 'Input required'
	exit 1
fi

local tmp=$1
local days=$(( tmp / 60 / 60 / 24 ))
local hours=$(( tmp / 60 / 60 % 24 ))
local minutes=$(( tmp / 60 % 60 ))
local seconds=$(( tmp % 60 ))

(( $days > 0 )) && echo -n "${days}d "
(( $hours > 0 )) && echo -n "${hours}h "
(( $minutes > 0 )) && echo -n "${minutes}m "

echo "${seconds}s"
