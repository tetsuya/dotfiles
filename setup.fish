curl -sL https://raw.githubusercontent.com/jorgebucaran/fisher/main/functions/fisher.fish | source && fisher install jorgebucaran/fisher
rm -rf $HOME/.config/fish/fish_plugins
ln -s $PWD/fish_plugins $HOME/.config/fish/fish_plugins
/usr/local/bin/fish -c fisher update
rm -rf $HOME/.config/fish/config.fish
ln -s $PWD/config.fish $HOME/.config/fish/config.fish
fisher update
