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
# Вход на ssh-сервер дома
alias sshconnect='ssh glebboxserver@192.168.1.50'
