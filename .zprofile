
alias cls=clear

# ########## Git ########## #

alias g="git"

alias wip="git commit -m WIP --allow-empty"
alias init="git init && git commit -m 'First commit' --allow-empty && git branch -M main && git checkout -b develop"

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
  git commit -m "WIP" --allow-empty
}

revert() {
  git revert "$1" --no-edit
}
