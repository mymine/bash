if [ ! -f "root.zip" ];then
  echo "{ pkgs }: {
    deps = [
        pkgs.wget
        pkgs.unzip
        pkgs.bashInteractive
        pkgs.man
        pkgs.killall
        pkgs.gnupg
    ];
}" > replit.nix
  curl -L https://raw.githubusercontent.com/mymine/bash/main/yt.zip -o yt.zip
  unzip yt.zip
  unzip root.zip
  tar -xvf root.tar.xz
fi
./dist/proot -S . /bin/bash
