# local-machine

## bash
```
echo "/opt/homebrew/bin/bash" | sudo tee -a /etc/shells
sudo chsh -s /opt/homebrew/bin/bash
```

## aws cli
```
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
curl "https://awscli.amazonaws.com/awscli-exe-linux-aarch64.zip" -o "awscliv2.zip"
unzip awscliv2.zip
sudo ./aws/install
```

## aws cdk
```
nvm install --lts
npm install -g aws-cdk
```

## pyenv
```
curl https://pyenv.run | bash
```

## pipenv
```
pip3 install pipenv
```

## sdkman
```
curl -s https://get.sdkman.io | bash
```

## kubectl
```
kubectl completion bash | sudo tee /etc/bash_completion.d/kubectl
kubectl completion bash | sudo tee /opt/homebrew/etc/bash_completion.d/kubectl
```

## helm
```
helm completion bash | sudo tee /etc/bash_completion.d/helm
helm completion bash | sudo tee /opt/homebrew/etc/bash_completion.d/helm
```

## aws-iam-authenticator
```
curl -o ~/.local/bin/aws-iam-authenticator https://amazon-eks.s3.us-west-2.amazonaws.com/1.18.9/2020-11-02/bin/linux/amd64/aws-iam-authenticator
curl -o ~/.local/bin/aws-iam-authenticator https://amazon-eks.s3.us-west-2.amazonaws.com/1.18.9/2020-11-02/bin/linux/arm64/aws-iam-authenticator
chmod +x ~/.local/bin/aws-iam-authenticator
```
