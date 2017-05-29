PROMPT='%{$fg[blue]%}${_current_dir} $(git_prompt_info) %{$fg[$CARETCOLOR]%}›%{$resetcolor%} '
PROMPT2='%{$fg[$CARETCOLOR]%}›%{$reset_color%} '

local _current_dir="%{$fg_bold[blue]%}%3~%{$reset_color%}"

if [[ $USER == "root" ]]; then
  CARETCOLOR="red"
else
  CARETCOLOR="white"
fi

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[yellow]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX=""
ZSH_THEME_GIT_PROMPT_DIRTY="*"
