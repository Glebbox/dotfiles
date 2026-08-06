
# /\/\/\/\АЛИАСЫ/\/\/\/\
# Редачить доты
alias dotred='zeditor ~/dotfiles'
#Коммит пуш дотов
dotpush() {
  cd ~/dotfiles/ || return
  git add .
  git commit -m "$1"
  git push
}
# Апдейт
alias yup='yay -Syu --noconfirm'
