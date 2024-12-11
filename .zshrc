eval "$(/opt/homebrew/bin/brew shellenv)"
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

##### ターミナルのgit branch表示
# git
autoload -Uz vcs_info
setopt prompt_subst
zstyle ':vcs_info:git:*' check-for-changes true
zstyle ':vcs_info:git:*' stagedstr "%F{magenta}!"
zstyle ':vcs_info:git:*' unstagedstr "%F{yellow}+"
zstyle ':vcs_info:*' formats "%F{cyan}%c%u(%b)%f"
zstyle ':vcs_info:*' actionformats '[%b|%a]'
precmd () { vcs_info }

# プロンプトカスタマイズ
PROMPT='
%F{green}%n@%m%f%b %F{yellow}%~%f %F{cyan}$vcs_info_msg_0_%f
%F$%f '
##### ターミナルのgit branch表示

##### key bind
bindkey -v
bindkey '^F' menu-complete
bindkey '^B' menu-complete-backward
##### key bind

##### ls
export LSCOLORS=gxfxcxdxbxegedabagacad
alias ll='ls -lGF'
alias ls='ls -GF'
##### lsautoload -Uz compinit && compinit

##### git
# git-completionの読み込み
fpath=(~/.zsh $fpath)
zstyle ':completion:*:*:git:*' script ~/.zsh/git-completion.bash
autoload -Uz compinit && compinit
##### git