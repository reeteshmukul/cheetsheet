if [[ "$EUID" = 0 ]];
 then 
  apt-get update
  apt-get  install nano
  apt-get install git-lfs
  chmod 777 /home/rmukul/.ssh/runpod_id_rsa
  mkdir  /workspace/.cache
  chmod a+rwx /workspace/.cache
fi


cp  /workspace/.ssh/runpod*  /home/rmukul/.ssh/
ln -sfn  /workspace/.vscode-server /home/rmukul/.vscode-server
ln -sfn  /workspace/rmgit /home/rmukul/rmgit
cp /workspace/.profile /home/rmukul/
cp /workspace/.bash_profile /home/rmukul/



source /home/rmukul/.profile
source /home/rmukul/.bash_profile
ssh-add /home/rmukul/.ssh/runpod_id_rsa

git config --global user.email "reetesh.mukul@gmail.com"
git config --global user.name "Reetesh Mukul"
