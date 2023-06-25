apt-get update
apt-get  install nano
ln -sfn  /workspace/.vscode-server .vscode-server
ln -sfn  /workspace/rmgit ~/rmgit
cp  /workspace/.ssh/runpod*  ~/.ssh/
cp /workspace/.profile ~
cp /workspace/.bash_profile ~
source ~/.profile
source ~/.bash_profile
chmod 400 ~/.ssh/runpod_id_rsa
ssh-add ~/.ssh/runpod_id_rsa

git config --global user.email "reetesh.mukul@gmail.com"
git config --global user.name "Reetesh Mukul"
