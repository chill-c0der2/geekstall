#!/usr/bin/env bash

packages=("python3" "git" "lolcat" "figlet" "python3-pip")

for pkg in ${packages[@]}; do

    is_pkg_installed=$(dpkg-query -W --showformat='${Status}\n' ${pkg} | grep "install ok installed")

    if [ "${is_pkg_installed}" == "install ok installed" ]; then
        echo ${pkg} is installed.
    fi
