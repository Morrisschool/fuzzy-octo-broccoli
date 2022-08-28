install() {
    printf "\x1B[01;93m========== Updating system ==========\n\x1B[0m"
    sudo apt update
    sudo apt upgrade

    printf "\x1B[01;93m========== Install Apache webserver ==========\n\x1B[0m"
    sudo apt install apache2 -y
    sudo ufw allow 'Apache'
    sudo ufw enable

    printf "\x1B[01;92m================== Done.  ==================\n\x1B[0m\n\n"
}

# Actually do the install. Put in function and run at end to prevent parcial download and execution.
install
