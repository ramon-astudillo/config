set -o nounset
set -o pipefail
set -o errexit 

# Sanity check
[ ! -d BTL-A4/ ] && echo "bash BTL-A4/install.sh" && exit

# vim7
# Pathogen
mkdir -p ~/.vim/autoload ~/.vim/bundle && \
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
# configs
cp BTL-A4/.vimrc $HOME
cp -R BTL-A4/.vim $HOME
# python-mode 
cd $HOME/.vim/bundle
git clone --recursive https://github.com/python-mode/python-mode.git
