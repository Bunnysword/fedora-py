#! /bin/bash

#krnl - kernels
sudo sed -i "13i exclude=kernel*" /etc/yum.repos.d/fedora-updates.repo && sudo dnf copr enable -y sentry/kernel-fsync