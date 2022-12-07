# rm -rf PanIndex-linux-amd64* data/ #Uncomment this line to update
if [ ! -f "PanIndex-linux-amd64" ];then
  curl -L https://github.com/libsgh/PanIndex/releases/latest/download/PanIndex-linux-amd64.tar.gz -o PanIndex-linux-amd64.tar.gz
  tar -zxvf PanIndex-linux-amd64.tar.gz
  rm -f PanIndex-linux-amd64.tar.gz
  chmod 0777 PanIndex.sh
  echo "run = \"sh PanIndex.sh\"" >.replit
fi
chmod 0777 PanIndex-linux-amd64
nohup ./PanIndex-linux-amd64
