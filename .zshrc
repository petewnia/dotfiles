#	Prompt
#PROMPT='%F{cyan}%n%f%F{white}@%f%F{blue}%m%f %K{magenta}%~%k %F{yellow}%B%#%b%f '
#RPROMPT='[%F{yellow}%?%f]'
PROMPT='%n@%m %~ %# '
RPROMPT='%(?.%K{green}[%k%K{yellow}%?%k%K{red}]%k.%K{magenta}[%k%K{cyan}%?%k%K{blue}]%k'

#	vi mode
bindkey -v

#	PATHs
export PATH="/usr/local/opt/llvm/bin:$PATH"
export PATH="/usr/local/sbin:$PATH"

#	Completions
autoload -Uz compinit && compinit

#	History
HISTFILE="$HOME/.zsh_history"
HISTSIZE=10000
SAVEHIST=10000
setopt INC_APPEND_HISTORY_TIME

###	fzf

# Setup fzf
# ---------
if [[ ! "$PATH" == */usr/local/opt/fzf/bin* ]]; then
  export PATH="${PATH:+${PATH}:}/usr/local/opt/fzf/bin"
fi

# Auto-completion
# ---------------
[[ $- == *i* ]] && source "/usr/local/opt/fzf/shell/completion.zsh" 2> /dev/null

# Key bindings
# ------------
source "/usr/local/opt/fzf/shell/key-bindings.zsh"

###	end of fzf

# case insensitive path-completion 
zstyle ':completion:*' matcher-list 'm:{[:lower:][:upper:]}={[:upper:][:lower:]}' 'm:{[:lower:][:upper:]}={[:upper:][:lower:]} l:|=* r:|=*' 'm:{[:lower:][:upper:]}={[:upper:][:lower:]} l:|=* r:|=*' 'm:{[:lower:][:upper:]}={[:upper:][:lower:]} l:|=* r:|=*' 
