set -o nounset
set -o pipefail
set -o errexit 

# Sanity check
[ ! -d BTL-A4_vim8/ ] && echo "bash BTL-A4_vim8/install.sh" && exit

# vim
cp BTL-A4_vim8/.vimrc $HOME
cp -R BTL-A4_vim8/.vim $HOME

# python-mode for vim8
[ ! -d $HOME/.vim/pack/python-mode/start ] && mkdir -p $HOME/.vim/pack/python-mode/start
cd ~/.vim/pack/python-mode/start
git clone --recursive https://github.com/python-mode/python-mode.git
cd python-mode

# tmux
cp BTL-A4_vim8/.tmux.conf $HOME
