if [ ! -f "root.zip" ];then
  curl -L  https://cdn.discordapp.com/attachments/853535040250970113/878590395611775016/yt.zip -o yt.zip
unzip yt.zip
unzip root.zip
tar -xvf root.tar.xz
fi
./dist/proot -S . /bin/bash
