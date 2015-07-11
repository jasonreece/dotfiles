# Source aliases, functions, and bash_prompt
for file in ~/.{aliases,bash_prompt,functions}; do
  [ -r "$file" ] && source "$file"
done

if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi

# RVM
source ~/.profile

# Init z
. ~/bin/z/z.sh

# Case-insensitive globbing (used in pathname expansion)
shopt -s nocaseglob

# Prefer US English and use UTF-8
export LC_ALL="en_US.UTF-8"
export LANG="en_US"

LS_COLORS='di=31:fi=0:ln=31:pi=5:so=5:bd=5:cd=5:or=31:*.deb=90'

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
