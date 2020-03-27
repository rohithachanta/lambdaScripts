
## ********** TinvioExceptions ********** ##
## --> check if this repository is already cloned or not
if [ ! -d "/var/lib/jenkins/workspace/TinvioExceptions" ]; then
    ## --> if not cloned, go to ~/workspace and clone it
    cd /var/lib/jenkins/workspace/
    #git clone https://github.com/teamtinvio/TinvioExceptions.git
    git clone git@github.com:teamtinvio/TinvioExceptions.git
fi
## --> navigate to repository root
cd /var/lib/jenkins/workspace/TinvioExceptions/
## --> pull the latest changes from master branch
git pull origin master
## --> clean the target directory and install the package
mvn clean install

## ********** TinvioSystemMessages ********** ## 
if [ ! -d "/var/lib/jenkins/workspace/TinvioSystemMessages" ]; then
    cd /var/lib/jenkins/workspace/
    git clone git@github.com:teamtinvio/TinvioSystemMessages.git
fi
cd /var/lib/jenkins/workspace/TinvioSystemMessages/
git pull origin master
mvn clean install