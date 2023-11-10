alias cls="clear"
alias bshedit="nano ~/.bashrc"
alias bshsrc="source ~/.bashrc"
alias bashcr="bashly generate && $1"
alias bashly='docker run --rm -it --user $(id -u):$(id -g) --volume "$PWD:/app" dannyben/bashly'
