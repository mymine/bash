# rm -rf alist* data/ #Uncomment this line to update
if [ ! -f "alist" ];then
  curl -L https://github.com/alist-org/alist/releases/latest/download/alist-linux-musl-amd64.tar.gz -o alist.tar.gz
  tar -zxvf alist.tar.gz
  rm -f alist.tar.gz
  chmod 0777 alist.sh
  echo "run = \"bash alist.sh\"" >.replit
fi
chmod 0777 alist
./alist admin
nohup ./alist server --no-prefix
