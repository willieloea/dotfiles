#####################################################
#░█████╗░██╗░░░░░██╗░█████╗░░██████╗███████╗░██████╗#
#██╔══██╗██║░░░░░██║██╔══██╗██╔════╝██╔════╝██╔════╝#
#███████║██║░░░░░██║███████║╚█████╗░█████╗░░╚█████╗░#
#██╔══██║██║░░░░░██║██╔══██║░╚═══██╗██╔══╝░░░╚═══██╗#
#██║░░██║███████╗██║██║░░██║██████╔╝███████╗██████╔╝#
#╚═╝░░╚═╝╚══════╝╚═╝╚═╝░░╚═╝╚═════╝░╚══════╝╚═════╝░#
#####################################################
# --- File Sourcing Shortcuts ---
alias rf='. ~/.bash_profile'    # reload .bashrc file

# --- ls Shortcuts ---
alias la="ls -oAF --color=always"    # List all files in current directory
alias ll="ls -oAlF --color=always"   # List files in current directory in long list format
alias lal="ls -oAl"                  # List all files in current directory in long list format

# --- Uni Related Aliases ---
alias aa="cd ~/uni/cs712/"
alias aan="cd ~/uni/cs712/ && code . && xdg-open slides/algos-slides-08-shortest-paths.pdf"
alias aas="cd ~/uni/cs712/ && xdg-open textbooks/Algorithms-JeffE.pdf; sleep 1; xdg-open slides/algos-slides-01-recursion.pdf"
alias aaa="cd ~/uni/cs712/assignments/assignment4 && code . && exit"
alias ai="cd ~/uni/cs791/"
alias ais="cd ~/uni/cs791/ && xdg-open textbooks/computational_inteligence.pdf; sleep 1; xdg-open slides/04evolutionaryComputation.pdf"
alias aia="cd ~/uni/cs791/assessments/24717274assignment3 && code . && exit"
alias aie="cd ~/uni/cs791/assessments/exam && code . && xdg-open exam2025.pdf && exit"
alias cdu="cd ~/uni/"           # Change directory to university stuff
alias cdur="cd ~/repo/unigl/"   # Change directory to uni repos
alias hns="cd ~/uni/cs771/class_stuff/ && nvim notes/w12.md"
alias ml="cd ~/uni/cs742/"
alias mla="cd ~/uni/cs742/tuts/ && jupyter-lab ."
alias mln="cd ~/uni/cs742/notes/ && code ."
alias mls="cd ~/uni/cs742/ && xdg-open textbooks/machine_learning.pdf && code notes"
alias mlt="cd ~/uni/cs742/tuts/ && jupyter lab"
alias pr="cd ~/uni/cs771/project/ && code . && xdg-open workbook/resources/pampara/pampara.pdf && exit"
alias prd="cd ~/uni/cs771/project/ && code . && exit"

# --- Personal Related Aliases ---
alias cdl="cd ~/.life/"         # Change directory to where I keep notes on life
alias cdr="cd ~/repo/"          # Change directory to where I keep code
alias cdrd="cd ~/repo/dotfiles/"
alias ec="xdg-open ~/uni/.cs244_2024/cs244_resources/the_c_programming_language.pdf \
&& cd ~/repo/laguage_learning/c/the_c_programming_language && code ."
alias j="nvim ~/.life/logs/2025_journal.txt"     # Open current journal in nvim
alias sj="subl ~/.life/logs/2025_journal.txt"   # Open current journal in sublime text
alias eb="nvim ~/.bashrc"
alias eba="nvim ~/.bashrc.d/bashrc_aliases.sh"
alias ebp="nvim ~/.bashrc.d/bashrc_prompt.sh"
alias ebr="nvim ~/.bashrc.d/bashrc_runOnLaunch.sh"
alias ev="nvim ~/.config/nvim/init.lua"
