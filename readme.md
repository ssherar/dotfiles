# Dotfiles

**Newer, greater, better dotfiles! The best ever dotfiles ever created!**

_absolutely not - it just suits my needs and aren't half broken!_

These are my basic dotfiles dedicated for setting up my MacOS development machine, using ansible, homebrew and others.

## What is installed?

- Applications
  - Visual Studio Code
  - Spotify
  - Google Chrome
  - and more if they are appended to the `homebrew_cask_apps` list in `vars.yml`
- Commandline tools
  - tmux
  - python3
  - fish
  - jq
  - vim8.1
  - latest node
  - and more if they are appended to the `homebrew_installed_packages` list in `vars.yml`
- PIP Packages
  - Virutalenv
  - Virtualfish
  - Powerline-status
  - powerline-gitstatus

Also my standard configurations for TMUX, VIM, iTerm, fish and powerline are also copied over

## Installation

1. Install ansbile onto your machine
2. Run `./run.sh`
3. Load up iTerm preferences and import the settings file in `~/.config/iterm.json`
