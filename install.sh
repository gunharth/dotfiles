#!/bin/sh

echo "Setting up your Mac..."

# Check for Homebrew and install if we don't have it
if test ! $(which brew); then
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
fi

# Update Homebrew recipes
brew update

# Install all our dependencies with bundle (See Brewfile)
brew tap homebrew/bundle
brew bundle

# Install PHP extensions with PECL
# pecl install imagick

# Install Composer
curl -sS https://getcomposer.org/installer | php
mv composer.phar /usr/local/bin/composer

# Install global Composer packages
# /usr/local/bin/composer global require laravel/installer laravel/valet

# Install Laravel Valet
# $HOME/.composer/vendor/bin/valet install

# Install global NPM packages
# npm install --global yarn

# Create a Sites directory
# This is a default directory for macOS user accounts but doesn't comes pre-installed
# mkdir $HOME/Sites

# Removes .zshrc from $HOME (if it exists) and symlinks the .zshrc file from the .dotfiles
rm -rf $HOME/.zshrc
ln -s $HOME/.dotfiles/.zshrc $HOME/.zshrc

# Symlink the Mackup config file to the home directory
ln -s $HOME/.dotfiles/.mackup.cfg $HOME/.mackup.cfg

# Symlink the .hushlogin file to the home directory
ln -s $HOME/.dotfiles/.hushlogin $HOME/.hushlogin

############
# Nextcloud
############

# Symlink the .gitconfig file to the home directory
# ln -s $HOME/Nextcloud/Sync/git/gitconfig $HOME/.gitconfig

# Filezilla Setup
# Make sure .config folder is owned by me
# chown -R guni $HOME/.config
# mkdir $HOME/.config/filezilla
# ln -s $HOME/Nextcloud/Sync/Filezilla/sitemanager.xml $HOME/.config/filezilla/sitemanager.xml

#####################
# Work folder setups
#####################

# mkdir $HOME/Code/guni
# mkdir $HOME/Code/playground


# Set macOS preferences
# We will run this last because this will reload the shell
# source .macos
