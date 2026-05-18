#!/bin/bash
# ==============================================
# GCP Cloud Run – PROTOCOL SELECTOR
# Launches your existing repo deployers on‑demand
# created by prvtspyyy
# ==============================================

BOLD='\033[1m'; RESET='\033[0m'
RED='\033[0;31m'; GREEN='\033[0;32m'; YELLOW='\033[1;33m'
BLUE='\033[0;34m'; MAGENTA='\033[0;35m'; CYAN='\033[0;36m'; WHITE='\033[0;37m'
LRED='\033[1;31m'; LGREEN='\033[1;32m'; LYELLOW='\033[1;33m'
LBLUE='\033[1;34m'; LMAGENTA='\033[1;35m'; LCYAN='\033[1;36m'; LWHITE='\033[1;37m'
C_SUCCESS="${BOLD}${LGREEN}"; C_ERROR="${BOLD}${LRED}"
C_WARN="${BOLD}${LYELLOW}"; C_INFO="${BOLD}${LCYAN}"
C_HEADER="${BOLD}${LMAGENTA}"; C_ACCENT="${BOLD}${LBLUE}"; C_PLAIN="${BOLD}${WHITE}"

banner() {
    clear
    echo -e "${BOLD}${LRED}╔════════════════════════════════════════════════════════════════════════════╗${RESET}"
    echo -e "${BOLD}${LRED}║${RESET}  ${BOLD}${WHITE}GCP CLOUD RUN PROTOCOL SELECTOR${RESET}                                         ${BOLD}${LRED}║${RESET}"
    echo -e "${BOLD}${LRED}║${RESET}  ${CYAN}Trojan · Shadowsocks · VMess · VLESS${RESET}                                  ${BOLD}${LRED}║${RESET}"
    echo -e "${BOLD}${LRED}╚════════════════════════════════════════════════════════════════════════════╝${RESET}"
    echo ""
}

banner
echo -e "${C_HEADER}══════════════════════════════════════════════${RESET}"
echo -e "${C_PLAIN}SELECT PROTOCOL${RESET}"
echo -e "${C_HEADER}══════════════════════════════════════════════${RESET}"
echo -e " ${C_ACCENT}[1]${RESET} Trojan-Go + OpenResty (WebSocket, decoy)"
echo -e " ${C_ACCENT}[2]${RESET} Shadowsocks WS + Nginx Stealth"
echo -e " ${C_ACCENT}[3]${RESET} VMess WS + Nginx Stealth"
echo -e " ${C_ACCENT}[4]${RESET} VLESS WS + Fallback"
echo -e " ${C_ACCENT}[5]${RESET} Exit"
echo ""

read -p "$(echo -e "${C_INFO}[?]${RESET} Choose option [1-5]: ")" CHOICE
CHOICE=$(echo "$CHOICE" | xargs)

case "$CHOICE" in
    1)
        echo -e "${C_INFO}[*]${RESET} Launching Trojan deployer..."
        bash <(curl -sL https://raw.githubusercontent.com/saekacutie/trojan/main/deploy.sh)
        ;;
    2)
        echo -e "${C_INFO}[*]${RESET} Launching Shadowsocks deployer..."
        bash <(curl -sL https://raw.githubusercontent.com/saekacutie/Shadowsocks/main/deploy-ss.sh)
        ;;
    3)
        echo -e "${C_INFO}[*]${RESET} Launching VMess deployer..."
        bash <(curl -sL https://raw.githubusercontent.com/saekacutie/vmess/main/deploy-vm.sh)
        ;;
    4)
        echo -e "${C_INFO}[*]${RESET} Launching VLESS deployer..."
        bash <(curl -sL https://raw.githubusercontent.com/saekacutie/script/main/deploy.sh)
        ;;
    5)
        echo -e "${C_SUCCESS}[✔]${RESET} Goodbye."
        exit 0
        ;;
    *)
        echo -e "${C_WARN}[!]${RESET} Invalid option. Exiting."
        exit 1
        ;;
esac
