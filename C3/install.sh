set -o nounset
set -o pipefail
set -o errexit 

# Sanity check
[ ! -d BTL-A4_vim7/ ] && echo "bash BTL-A4_vim7/install.sh" && exit

# vim7
# Pathogen
mkdir -p ~/.vim/autoload ~/.vim/bundle && \
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
# configs
cp BTL-A4_vim7/.vimrc $HOME
cp -R BTL-A4_vim7/.vim $HOME
# python-mode 
cd $HOME/.vim/bundle
git clone --recursive https://github.com/python-mode/python-mode.git

# tmux
cp BTL-A4_vim7/.tmux.conf $HOME
