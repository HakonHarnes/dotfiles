alias p 'paru'
alias i 'paru'
alias r 'paru -R'
alias o 'xdg-open'
alias c 'xclip -selection clipboard'

alias rg 'rg -i'
alias ls 'exa'
alias nv 'nvim'
alias ci 'paru -S --noconfirm'

alias viu 'viu -n'

alias open 'xdg-open'

alias suspend 'echo "Suspending" | cowsay && systemctl suspend'
#alias shutdown 'echo "Shutting down" | cowsay && shutdown now'

function reboot
  echo 'Rebooting' | cowsay 
  sleep 1
  sudo grub-reboot 'gnulinux-simple-74df82b4-fc4e-4817-8f9c-18e5d9d1f692'
  systemctl reboot
end

function windows
  echo 'Booting into Windows' | cowsay 
  sleep 1
  sudo grub-reboot 'osprober-efi-DCA7-17C0'
  systemctl reboot
end
