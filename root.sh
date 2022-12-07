if [ ! -f "root.zip" ];then
  curl -L https://raw.githubusercontent.com/mymine/bash/main/yt.zip -o yt.zip
  unzip yt.zip
  unzip root.zip
  tar -xvf root.tar.xz
fi
./dist/proot -S . /bin/bash
