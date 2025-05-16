#####################################################
# █████╗ ██╗     ██╗ █████╗ ███████╗███████╗███████╗#
#██╔══██╗██║     ██║██╔══██╗██╔════╝██╔════╝██╔════╝#
#███████║██║     ██║███████║███████╗█████╗  ███████╗#
#██╔══██║██║     ██║██╔══██║╚════██║██╔══╝  ╚════██║#
#██║  ██║███████╗██║██║  ██║███████║███████╗███████║#
#╚═╝  ╚═╝╚══════╝╚═╝╚═╝  ╚═╝╚══════╝╚══════╝╚══════╝#
#####################################################
# === file sourcing shortcuts === #
alias rf='. ~/.bash_profile'    # reload .bashrc file

# === ls shortcuts === #
alias la="ls -oAF --color=always"    # List all files in current directory
alias ll="ls -oAlF --color=always"   # List files in current directory in long list format
alias lal="ls -oAl"                  # List all files in current directory in long list format

# === uni related aliases === #
alias aa="cd ~/uni/cs712/"
alias aan="cd ~/uni/cs712/ && code . && xdg-open slides/algos-slides-08-shortest-paths.pdf"
alias aas="cd ~/uni/cs712/ && xdg-open textbooks/Algorithms-JeffE.pdf; sleep 1; xdg-open slides/algos-slides-01-recursion.pdf"
alias aaa="code ~/uni/cs712/assignments/assignment3 && xdg-open ~/uni/cs712/assignments/assignment3/a3_spec.pdf && exit"
alias aaa4="code ~/uni/cs712/assignments/assignment4 && xdg-open ~/uni/cs712/assignments/assignment4/a4_spec.pdf && exit"
alias ai="cd ~/uni/cs791/"
alias ais="cd ~/uni/cs791/ && xdg-open textbooks/computational_inteligence.pdf; sleep 1; xdg-open slides/04evolutionaryComputation.pdf"
alias aia="cd ~/uni/cs791/assignments/24717274assignment3 && code . && exit"
alias cdu="cd ~/uni/"           # Change directory to university stuff
alias cdur="cd ~/repo/unigl/"   # Change directory to uni repos
alias hns="cd ~/uni/cs771/class_stuff/ && vim notes/w12.md"
alias ml="cd ~/uni/cs742/"
alias mla="cd ~/uni/cs742/tuts/ && jupyter-lab ."
alias mln="cd ~/uni/cs742/notes/ && code ."
alias mls="cd ~/uni/cs742/ && xdg-open textbooks/machine_learning.pdf && vim notes/study_journal.md"
alias mlt="cd ~/uni/cs742/tuts/ && jupyter lab"
alias pr="cd ~/uni/cs771/project/ && code . && xdg-open doc/Main.pdf; sleep 1; xdg-open workbook/resources/pampara/pampara.pdf && exit"
alias prd="cd ~/uni/cs771/project/code/ && code . && exit"

# === personal related aliases === #
alias cdl="cd ~/.life/"         # Change directory to where I keep notes on life
alias cdr="cd ~/repo/"          # Change directory to where I keep code
alias cdrd="cd ~/repo/wlegh/dotfiles/"
alias ec="xdg-open ~/uni/.cs244/cs244_resources/the_c_programming_language.pdf && cd ~/repo/wlegh/the_c_programming_language && code ."
alias j="vim ~/.life/logs/2025_journal.txt"     # Open current journal in vim
alias sj="subl ~/.life/logs/2025_journal.txt"   # Open current journal in sublime text
alias eb="vim ~/.bashrc"
alias eba="vim ~/.bashrc.d/bashrc_aliases.sh"
alias eba="vim ~/.bashrc.d/bashrc_aliases.sh"
alias ev="vim ~/.vimrc"
