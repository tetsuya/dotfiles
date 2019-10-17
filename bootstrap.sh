ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew install ansible
ansible-playbook -i hosts playbook.yml --ask-become-pass
