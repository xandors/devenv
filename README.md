# local-machine

## aws cli
```
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
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
```

## aws-iam-authenticator
```
curl -o ~/.local/bin/aws-iam-authenticator https://amazon-eks.s3.us-west-2.amazonaws.com/1.18.8/2020-09-18/bin/linux/amd64/aws-iam-authenticator
chmod +x ~/.local/bin/aws-iam-authenticator
```