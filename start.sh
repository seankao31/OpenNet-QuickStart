#!/bin/bash
echo "floodlight.sh ..."
gnome-terminal -e "sudo $HOME/floodlight/floodlight.sh"

read -p "Ready for the next step? [y/n] " -n 1 -r
while [[ ! $REPLY =~ ^[Yy]$ ]]; do
    echo
    read -p "Ready for the next step? [y/n] " -n 1 -r
done

echo
echo "Omniui ..."
gnome-terminal -e "$HOME/.local/bin/omniui"

read -p "Ready for the next step? [y/n] " -n 1 -r
while [[ ! $REPLY =~ ^[Yy]$ ]]; do
    echo
    read -p "Ready for the next step? [y/n] " -n 1 -r
done

echo
echo "npm run dev ..."
gnome-terminal --working-directory=$HOME/openadm/ui/ -e "npm run dev"

read -p "Ready for the next step? [y/n] " -n 1 -r
while [[ ! $REPLY =~ ^[Yy]$ ]]; do
    echo
    read -p "Ready for the next step? [y/n] " -n 1 -r
done

echo
echo "OpenNet ..."
gnome-terminal -e "sudo mn --topo=tree,2 --controller=remote"

