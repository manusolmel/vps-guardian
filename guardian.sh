#!/bin/bash

# guardian.sh
# Main menu for the VPS Guardian toolset

# --- Colours---
GREEN="\033[0;32m"
YELLOW="\033[0;33m"
RESET="\033[0m"

# --- Main loop ---
while true; do
    # We keep screen clean =)
    clear

    # Main Menu
    echo -e "${GREEN}===========================${RESET}"
    echo -e "${GREEN}    🛡️  VPS Guardian  🛡️    ${RESET}"
    echo -e "${GREEN}===========================${RESET}"
    echo ""
    echo "Select an option:"
    echo ""
    echo -e "  ${YELLOW}1)${RESET} Quick System Report"
    echo -e "  ${YELLOW}2)${RESET} (Próximamente: Backup)"
    echo -e "  ${YELLOW}3)${RESET} (Próximamente: Update Packages)"
    echo ""
    echo -e "  ${YELLOW}q)${RESET} Exit"
    echo ""

    # User input
    read -p "Your choice [1-3, q]: " choice

    # 
    case $choice in
        1)
            echo "Running Quick System Report..."
            ./check-system.sh
            echo ""
            read -p "Press [Enter] to return to the menu..."
            ;;
        2)
            echo "Backup script is not ready yet!"
            sleep 2
            ;;
        3)
            echo "Package update script is not ready yet!"
            sleep 2
            ;;
        q|Q)
            echo "Goodbye! 👋"
            exit 0
            ;;
        *)
            echo "Invalid option. Please try again."
            sleep 2
            ;;
    esac
done