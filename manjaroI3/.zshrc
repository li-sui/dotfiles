# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH


#source /usr/share/zsh-theme-powerlevel9k/powerlevel9k.zsh-theme

# Path to your oh-my-zsh installation.
export ZSH="/home/lsui/.oh-my-zsh"

ZSH_THEME="agnoster"

plugins=(
	git
	ant
	archlinux
	history
	colored-man-pages
	zsh-autosuggestions
	zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh


JAVA_HOME=/home/lsui/Utilities/java/jdk1.8.0_144
ANT_HOME=/home/lsui/Utilities/apache-ant-1.9.7
M2_HOME=/home/lsui/Utilities/apache-maven-3.6.1
#DOOP_HOME=/home/lsui/projects/doop-4.15
RECALL_ROOT_DIR=/home/lsui/Recall-study/recall-study-artefact/
#DOOP_PLATFORMS_LIB=$DOOP_HOME

PATH=$PATH:$JAVA_HOME/bin:$ANT_HOME/bin:$M2_HOME/bin

export JAVA_HOME
export ANT_HOME
export M2_HOME
export RECALL_ROOT_DIR
#export DOOP_HOME
#export DOOP_PLATFORMS_LIB
export PATH
