#!/usr/bin/env bash

# Install command-line tools using Homebrew.

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade

# Install GNU core utilities (those that come with macOS are outdated).
# Don’t forget to add `$(brew --prefix coreutils)/libexec/gnubin` to `$PATH`.
brew install coreutils

# Install some other useful utilities like `sponge`.
brew install moreutils
# Install GNU `find`, `locate`, `updatedb`, and `xargs`, `g`-prefixed.
brew install findutils
# Install GNU `sed`, overwriting the built-in `sed`.
brew install gnu-sed --with-default-names
# Install Bash 4.
# Note: don’t forget to add `/usr/local/bin/bash` to `/etc/shells` before
# running `chsh`.
brew install bash
brew tap homebrew/versions
brew install bash-completion

# Switch to using brew-installed bash as default shell
if ! fgrep -q '/usr/local/bin/bash' /etc/shells; then
  echo '/usr/local/bin/bash' | sudo tee -a /etc/shells;
  chsh -s /usr/local/bin/bash;
fi;

# Install `wget` with IRI support.
brew install wget --with-iri

# Other developer tools
brew tap homebrew/dupes
brew install rsync
brew install mysql
brew install ruby
# brew install docker-completion
brew install groovy
brew install openssl
# brew install docker-compose-completion
brew install gist
brew install htop-osx
brew install git
brew install maven
brew install jenv

# Install all brew cask applications
# brew cask install skype
# brew cask install skype-for-business
brew cask install cyberduck             
# brew cask install dropbox               
brew cask install fluor                 
brew cask install gimp                  
brew cask install java                  
brew cask install mysqlworkbench        
# brew cask install slack                 
brew cask install spectacle             
# brew cask install xmind
brew cask install disk-inventory-x      
# brew cask install filezilla             
# brew cask install freeplane 
# Automatic switch F functions depending on app            
brew cask install hyperswitch           
brew cask install keybase               
brew cask install skitch                
brew cask install soapui                
brew cask install sublime-text
brew cask install visual-studio-code
# brew cask install intellij-idea


# Remove outdated versions from the cellar.
brew cleanup
