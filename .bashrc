#	Prompt
PS1='\[\e[0;32m\]\w\[\e[0;32m\]:\[\e[m\] \[\e[0;33m\]$(git branch 2>/dev/null | grep '"'"'^*'"'"' | colrm 1 2)\[\e[m\] \[\e[0;31m\]$?\[\e[m\] \[\e[m\] \[\e[0;92m\]$\[\e[m\] \[\e0'

#	vi mode
set -o vi

#	PATHs
export PATH="/usr/local/opt/llvm/bin:$PATH"
export PATH="/usr/local/sbin:$PATH"

#	bash-completion
[ -f /usr/local/etc/bash_completion ] && . /usr/local/etc/bash_completion

###	fzf

# Setup fzf
# ---------
if [[ ! "$PATH" == */usr/local/opt/fzf/bin* ]]; then
  export PATH="${PATH:+${PATH}:}/usr/local/opt/fzf/bin"
fi

# Auto-completion
# ---------------
[[ $- == *i* ]] && source "/usr/local/opt/fzf/shell/completion.bash" 2> /dev/null

# Key bindings
# ------------
source "/usr/local/opt/fzf/shell/key-bindings.bash"

###	end of fzf

