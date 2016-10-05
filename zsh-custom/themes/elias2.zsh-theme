# Directory info.
local current_dir='${PWD/#$HOME/~}'

# Git info.
local git_info='$(git_prompt_info)'
local git_last_commit='$(git log --pretty=format:"%h \"%<(20,trunc)%s\"" -1 2> /dev/null)'
ZSH_THEME_GIT_PROMPT_PREFIX=" %{$fg[magenta]%}\uE0A0 "
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="*"
ZSH_THEME_GIT_PROMPT_CLEAN=""

autoload -U add-zsh-hook

function elias2_preexec() {
  timer=${timer:-$SECONDS}
}
add-zsh-hook preexec elias2_preexec

function elias2_precmd() {
  if [ $timer ]; then
    timer_show=$(($SECONDS - $timer))
    if (( timer_show )); then
        if [[ $timer_show -gt 59 ]]; then
            timer_show="$(($timer_show / 60)) m, $(($timer_show % 60))"
        fi
        export RPROMPT="%F{cyan}${timer_show} s %{$reset_color%}"
    else
        export RPROMPT=""
    fi
    unset timer
  else
      time_show=""
      export RPROMPT=""
  fi
}
add-zsh-hook precmd elias2_precmd

PROMPT="╭%{$fg_bold[blue]%}[${current_dir}]%{$reset_color%}\
${git_info} \
%{$fg[cyan]%}${git_last_commit}%{$reset_color%}
╰⌚ %{$fg_bold[red]%}%* \
%{$terminfo[bold]$fg[white]%}› %{$reset_color%}"
