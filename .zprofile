
alias cls=clear

md() {
  mkdir $1
  cd $1
}

# ########## Git ########## #

alias g="git"

alias wip="git commit -m WIP --allow-empty"

init() {
  git init &&
  git commit -m "First commit" --allow-empty &&
  git branch -M main
}

ch() {
  git fetch
  git checkout "issues/$1"
}

alias add="git add ."
alias push="git push origin HEAD"
alias pull="git pull origin HEAD"

alias fetch="git fetch --prune"
alias reset="git reset --soft HEAD^"
alias main="git checkout main"
alias dev="git checkout develop"
alias log="git log --oneline --graph --decorate -n 10"
alias st="git status"

show() {
  git show "$1"
}

for i in {1..10}; do
  alias "show$i"="git show HEAD~$i"
done

cm() {
  git commit -m "$1"
}

nb() {
  git checkout main &&
  git pull origin HEAD &&
  git checkout -b "$1" &&
  git commit -m "WIP" --allow-empty &&
  git push origin "$1"
}

merge() {
  git merge "$1" --no-edit
}

revert() {
  git revert "$1" --no-edit
}

cherry-pick() {
  git cherry-pick "$1"
}
