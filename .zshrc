# Use powerline
USE_POWERLINE="true"
# Has weird character width
# Example:
#    is not a diamond
HAS_WIDECHARS="false"

# Source manjaro-zsh-configuration
if [[ -e /usr/share/zsh/manjaro-zsh-config ]]; then
  source /usr/share/zsh/manjaro-zsh-config
fi
# Use manjaro zsh prompt
if [[ -e /usr/share/zsh/manjaro-zsh-prompt ]]; then
  source /usr/share/zsh/manjaro-zsh-prompt
fi

# Has weird character width
# Example:
#    is not a diamond
HAS_WIDECHARS="false"

plugins=(git dotbare fzf-zsh-plugin fzf-brew fzf-tab zsh-sdkman)

# Brew 
if type brew &>/dev/null
then
  FPATH="$(brew --prefix)/share/zsh/site-functions:${FPATH}"

  autoload -Uz compinit
  compinit
fi

 [ -d /home/linuxbrew/.linuxbrew ] && eval $(/home/linuxbrew/.linuxbrew/bin/brew shellenv)


#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"

alias zshedit="micro ~/.zshrc"
alias zshsrc="source ~/.zshrc"
export PATH="$PATH:$(gem env path | sed 's#[^:]\+#&/bin#g'):${GOPATH}/bin"
export GOROOT="$(brew --prefix golang)/libexec"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

alias cls=clear
alias bcr="bashly generate && "
OPENAI_API_KEY=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

eval "$(zoxide init --cmd cd zsh)"


source ~/.dotbare/dotbare.plugin.zsh
