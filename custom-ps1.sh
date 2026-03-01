#!/bin/bash
# HTB VPN-Aware & Logging PS1
# Autor: Ecartazo

# -------- VPN INFO --------
vpn_info() {
    if [[ -x /opt/vpnbash.sh ]] && [[ $(/opt/vpnbash.sh 2>/dev/null) == *"10."* ]]; then
        printf "[\[\033[1;34m\]%s\[\033[1;32m\]]─[\[\033[1;37m\]%s\[\033[1;32m\]]─" \
        "$(/opt/vpnserver.sh 2>/dev/null)" \
        "$(/opt/vpnbash.sh 2>/dev/null)"
    fi
}

# -------- PROMPT --------
PS1='\[\033[1;32m\]$(vpn_info)[\[\033[1;37m\]\u\[\033[01;32m\]@\[\033[01;34m\]\h\[\033[1;32m\]]─[\[\033[1;37m\]\w\[\033[1;32m\]]\n└──╼ [\[\e[01;33m\]\D{%Y-%m-%d %H:%M:%S}\[\e[01;32m\]]\$ \[\e[0m\]'
