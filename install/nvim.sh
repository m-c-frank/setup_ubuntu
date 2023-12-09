curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim.appimage
chmod u+x nvim.appimage

./nvim.appimage --appimage-extract
./squashfs-root/AppRun --version

# Optional: exposing nvim globally.
sudo mv squashfs-root /
sudo ln -s /squashfs-root/AppRun /usr/bin/nvim

rm ./nvim.appimage
rm -r ./squashfs-root

PATH_NVIM_CONFIG="$HOME/.config/nvim"
[ ! -d $PATH_NVIM_CONFIG ] && git clone https://github.com/m-c-frank/config.nvim $PATH_NVIM_CONFIG

