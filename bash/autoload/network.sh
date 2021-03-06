#!/usr/bin/env bash

# IP addresses
alias myip="dig +short myip.opendns.com @resolver1.opendns.com"
alias localip="ifconfig -a | perl -nle'/(\d+\.\d+\.\d+\.\d+)/ && print $1'"

# View HTTP traffic
alias sniffe="sudo ngrep -d 'enp0s31f6' -t '^(GET|POST) ' 'tcp and port 80'"
alias sniffw="sudo ngrep -d 'wlp2s0' -t '^(GET|POST) ' 'tcp and port 80'"
alias httpdump="sudo tcpdump -i en1 -n -s 0 -w - | grep -a -o -E \"Host\: .*|GET \/.*\""

ipif() {
	echo "Informarion about IP: ${1}"
	if [ ! $1 ]; then
		curl ipinfo.io
		echo
		return
	fi
		curl ipinfo.io/"${1}"
	echo
	return
}

# All the dig info
digga() {
	dig +nocmd "$1" any +multiline +noall +answer
}

sIP() {
	list=$(find . -name "$1"); grep -E "\b([0-9]{1,3}\.){3}[0-9]{1,3}\b" -h -o $list
}

alias fw_list='sudo iptables -nvL'
