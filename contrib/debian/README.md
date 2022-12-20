
Debian
====================
This directory contains files used to package stealeumd/stealeum-qt
for Debian-based Linux systems. If you compile stealeumd/stealeum-qt yourself, there are some useful files here.

## stealeum: URI support ##


stealeum-qt.desktop  (Gnome / Open Desktop)
To install:

	sudo desktop-file-install stealeum-qt.desktop
	sudo update-desktop-database

If you build yourself, you will either need to modify the paths in
the .desktop file or copy or symlink your stealeum-qt binary to `/usr/bin`
and the `../../share/pixmaps/stealeum128.png` to `/usr/share/pixmaps`

stealeum-qt.protocol (KDE)

