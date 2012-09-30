#alias設定
#

#Android
export PATH=$PATH:/Users/yuika/workspace/android-sdk-macosx/tools 

# 基本的なこと
alias ls='ls -AF'
alias ll='ls -l'
alias df="df -h"
alias du="du -h"
# エラーログ確認する
alias err="sudo tail -f  /var/log/httpd/error_log"

# vim関連
alias vi=vim

# 検索を便利にする
alias rgrep="grep -R"
alias rgrepsvn="rgrep --exclude=\"*.svn*\""

#
# zsh的な設定
#
PROMPT="%/%% "
## 補完時に大小文字を区別しない
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'
zstyle ':completion:*' menu select=1

autoload -U compinit && compinit

## options
setopt bash_auto_list
setopt list_ambiguous
setopt list_packed              # つめて表示されるようになる
setopt correct                  # コマンドの間違いを自動修正
setopt auto_pushd               # 自動でディレクトリをPUSH
setopt nolistbeep               # beep音を鳴らさない

## history
HISTFILE="$HOME/.zsh_history"
HISTSIZE=10000
SAVEHIST=10000
setopt hist_ignore_all_dups
setopt hist_reduce_blanks
setopt share_history

