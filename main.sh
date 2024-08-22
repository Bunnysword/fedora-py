#! /bin/bash

cd .. && mv Fedora-Fly/ .config/ && cd .config/Fedora-Fly/
sudo dnf in python python3 pip && pip install shellpy
clear && shellpy main.spy
