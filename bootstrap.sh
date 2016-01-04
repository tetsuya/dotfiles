ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew install ansible
cd ./ansible_files
ansible-playbook -i hosts localhost.yml
