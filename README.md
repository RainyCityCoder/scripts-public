# scripts-public

## Table of Contents

1. [Descriptoin](#description)
1. [Prerequisites](#prerequisites)
1. [Instructions](#instructions)
1. [Problems and Issues](#issues)

### Description

A collection of some useful scripts designed to streamline setup of new OS installs.

### Prerequisites

#### Distro-specific scripts

Scripts that begin with distro and desktop environment (DE) names were developed to set up specific distro-DE combinations. Release edition numbers are noted at the top of each script. For example `nobara-gnome-setup` notes that the script is "Designed for Nobara 41 with Gnome". These scripts may not work properly on other distro-DE combinations. Changes and updates made by the dev teams of each respective distro in releases later than those noted in each script may impact the effectiveness of a given script. Running a script on an earlier versions of those distros may impact the effectiveness of a given script.

These scripts will generate an output script in the home directory, for logging and sanity-check purposes. Errors should appear in terminal indicating the line where the error occured, to aid in troubleshooting.

#### Other scripts

Scripts without distro/DE-specific naming were developed and tested to be distro-agnostic as much as is testable using the distro-&-DE releases for which there is a specific setup script included in this repo. For example: `python-setup` was tested on

- Nobara 41 Gnome
- Pop_OS! 22.04 Gnome
- Ubuntu 24.04 Gnome
- Linux Mint 22 Cinnamon
- Linux Mint 20, 21, and 22 XFCE

Using these scripts on other distros is possible, but may necessitate modification to ensure they run appropriately.

### Instructions

Run a given script in terminal with `bash <name>`, where `<name>` is the name of the script.

Some scripts will create output text files to which output is sent. These are usually created in the home directory for convenience.

It is suggested to proceed in this order:

1. The OS setup script of your choice
1. `battery-threasholds`
1. `flatpak-setup`
1. `python-setup`
1. `node-install`
1. `gnome-extensions-install` - if desired. 
1. `virtual-machine-manager-setup` - if desired. 
    * Please note Fedora/Gnome includes Boxes, which is an alternative to Virtual Machine Manager, and running this script may not be necessary/desireable in that case

### Issues

For major issues, please either: 

* Open an issue in this repository and include the distribution name, version, desktop environment, behavior, steps to reproduce (if applicable), and expected behavior and/or suggestion.
* Fork this repository and submit a pull request against this repository's `main` branch.