PROMPT='%(?.%F{green}ccasil.%F{red}ccasil)%f %B%F{240}%1~%f%b %# '

export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced

autoload -Uz vcs_info
precmd_vcs_info() { vcs_info }
precmd_functions+=( precmd_vcs_info )
setopt prompt_subst
RPROMPT=\$vcs_info_msg_0_
zstyle ':vcs_info:git:*' formats '%F{240}(%b)%r%f'
zstyle ':vcs_info:*' enable git