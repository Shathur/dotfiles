# Directory info
local current_dir='${PWD/#$HOME/~}'

# Git symbols
ZSH_THEME_GIT_PROMPT_PREFIX="\uE0A0 "
ZSH_THEME_GIT_PROMPT_SUFFIX=""
ZSH_THEME_GIT_PROMPT_DIRTY="*"
ZSH_THEME_GIT_PROMPT_CLEAN=""
ZSH_THEME_GIT_PROMPT_STASHED="$"
ZSH_THEME_GIT_PROMPT_AHEAD=""
ZSH_THEME_GIT_PROMPT_BEHIND=""
ZSH_THEME_GIT_PROMPT_DIVERGED=""
# ZSH_THEME_GIT_PROMPT_AHEAD="^"
# ZSH_THEME_GIT_PROMPT_BEHIND="v"
# ZSH_THEME_GIT_PROMPT_DIVERGED="~"

# Git info
local git_info='$(git_prompt_info)'
local git_status='$(git_prompt_status)'
local git_last_commit='$(git log --pretty=format:"%h %<(20,trunc)%s" -1 2> /dev/null)'

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
      export RPROMPT=""
  fi
}
add-zsh-hook precmd elias2_precmd

PROMPT="╭%{$FG[111]%}[${current_dir}]%{$reset_color%} \
%{$fg[magenta]%}${git_info}${git_status}%{$reset_color%} \
%{$FG[238]%}${git_last_commit}%{$reset_color%}
╰⌚ %{$FG[094]%}%* \
%{$terminfo[bold]$fg[white]%}› %{$reset_color%}"
