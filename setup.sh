echo '[[ -s "$HOME/.bash_local" ]] && source "$HOME/.bash_local"' >> .bashrc

cp -rf .aws .ssh .bash_local ~/

brew install aws-iam-authenticator
brew install direnv
brew install kubectl
brew install helm
brew install httpie
brew install jq
brew install nmap
brew install p7zip
brew install terraform
brew install terragrunt
brew unlink terraform
brew install tfenv

curl https://pyenv.run | bash
pip3 install pipenv
curl -s https://get.sdkman.io | bash
kubectl completion bash | sudo tee /etc/bash_completion.d/kubectl
helm completion bash | sudo tee /etc/bash_completion.d/helm

mkdir -p ~/environment/veea ~/environment/xandors

git clone git@github.com:xandors/ansible-local.git xandors/ansible-local
git clone git@veea.bitbucket.org:veea/kubernetes-poc.git veea/kubernetes-poc
git clone git@veea.bitbucket.org:veea/infrastructure-live.git veea/infrastructure-live
git clone git@veea.bitbucket.org:veea/terraform-modules.git veea/terraform-modules

---

mkdir -p cloud9/.aws cloud9/.ssh
cp -rf ~/.aws/config ~/.aws/credentials cloud9/.aws
cp -rf ~/.ssh/config ~/.ssh/id_ed25519* ~/.ssh/id_rsa* cloud9/.ssh
cp -rf ~/.bash_local cloud9
tar czf cloud9.tgz cloud9
gpg -c cloud9.tgz
rm -rf cloud9.tgz cloud9
