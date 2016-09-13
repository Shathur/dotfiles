# Directory info.
local current_dir='${PWD/#$HOME/~}'

# Git info.
local git_info='$(git_prompt_info)'
local git_last_commit='$(git log --pretty=format:"%h \"%<(20,trunc)%s\"" -1 2> /dev/null)'
ZSH_THEME_GIT_PROMPT_PREFIX=" %{$fg[magenta]%}\uE0A0 "
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="*"
ZSH_THEME_GIT_PROMPT_CLEAN=""

PROMPT="%{$fg_bold[blue]%}[${current_dir}]%{$reset_color%}\
${git_info} \
%{$fg[black]%}${git_last_commit}%{$reset_color%}
⌚ %{$fg_bold[red]%}%* \
%{$terminfo[bold]$fg[white]%}› %{$reset_color%}"
