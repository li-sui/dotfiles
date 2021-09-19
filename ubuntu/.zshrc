
export ZSH="/home/lsui/.oh-my-zsh"
ZSH_THEME="purify"

plugins=(git)

source $ZSH/oh-my-zsh.sh



JAVA_HOME=/home/lsui/Utilities/java/jdk-15.0.1
ANT_HOME=/home/lsui/Utilities/apache-ant-1.9.7
M2_HOME=/home/lsui/Utilities/apache-maven-3.6.1
GRADLE_HOME=/home/lsui/Utilities/gradle-6.7.1
TOMCAT_HOME=/home/lsui/Servers/apache-tomcat-9.0.44

#DOOP_HOME=/home/lsui/projects/doop-4.15
#RECALL_ROOT_DIR=/home/lsui/Recall-study/recall-study-artefact/
#DOOP_PLATFORMS_LIB=$DOOP_HOME

PATH=$PATH:$JAVA_HOME/bin:$ANT_HOME/bin:$M2_HOME/bin:$GRADLE_HOME/bin

export JAVA_HOME
export ANT_HOME
export M2_HOME
export GRADLE_HOME
export TOMCAT_HOME
#export RECALL_ROOT_DIR
#export DOOP_HOME
#export DOOP_PLATFORMS_LIB
export PATH

# start tomcat
alias tomcat='sh $TOMCAT_HOME/bin/startup.sh'
#stop tomcat
alias tomcatstop='sh $TOMCAT_HOME/bin/shutdown.sh'
