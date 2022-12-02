# my aliases
function list() {
  for n in *; do printf '%s\n' "$n"; done
}
alias suroot='sudo -E -s'
alias list='list'
alias y='yarn'
alias yt='yarn test'
alias yl='yarn local:watch'
alias yti='yarn test:isolated'
alias yw='yarn watch'
alias yf='yarn build:watch'
alias yd='yarn start:dev:watch'
alias yb='yarn build:server:watch'
alias ys='yarn start'
alias ydev='y gw dev'
alias c='code .'
alias pull-all='find . -type d -depth 1 -exec git --git-dir={}/.git --work-tree=$PWD/{} pull origin master \;'

alias gps='git push --set-upstream origin "$(git branch --show-current)"'

alias git-repo="git config --get remote.origin.url | sed -e 's/:/\//g'| sed -e 's/ssh\/\/\///g'| sed -e 's/git@/https:\/\//g'; open '$(git config --get remote.origin.url | sed -e 's/:/\//g' -e 's/ssh\/\/\///g' -e 's/git@/https:\/\//g')'"
alias gd='git diff --color | sed "s/^\([^-+ ]*\)[-+ ]/\\1/" | less -r'