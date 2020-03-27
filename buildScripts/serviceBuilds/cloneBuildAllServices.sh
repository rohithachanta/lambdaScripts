
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

## ********** TinvioUtils ********** ## 
if [ ! -d "/var/lib/jenkins/workspace/TinvioUtils" ]; then
    cd /var/lib/jenkins/workspace/
    git clone git@github.com:teamtinvio/TinvioUtils.git
fi
cd /var/lib/jenkins/workspace/TinvioUtils/
git pull origin master
mvn clean install

## ********** EntityManagement ********** ## 
if [ ! -d "/var/lib/jenkins/workspace/EntityManagement" ]; then
    cd /var/lib/jenkins/workspace/
    git clone git@github.com:teamtinvio/EntityManagement.git
fi
cd /var/lib/jenkins/workspace/EntityManagement/
git pull origin master
mvn clean install

## ********** CMS ********** ## 
if [ ! -d "/var/lib/jenkins/workspace/CMS" ]; then
    cd /var/lib/jenkins/workspace/
    git clone git@github.com:teamtinvio/CMS.git
fi
cd /var/lib/jenkins/workspace/CMS/
git pull origin master
mvn clean install

## ********** OAuth2 ********** ## 
if [ ! -d "/var/lib/jenkins/workspace/OAuth2" ]; then
    cd /var/lib/jenkins/workspace/
    git clone git@github.com:teamtinvio/OAuth2.git
fi
cd /var/lib/jenkins/workspace/OAuth2/
git pull origin master
mvn clean install

## ********** IAMService ********** ## 
if [ ! -d "/var/lib/jenkins/workspace/IAMService" ]; then
    cd /var/lib/jenkins/workspace/
    git clone git@github.com:teamtinvio/IAMService.git
fi
cd /var/lib/jenkins/workspace/IAMService/
git pull origin master
mvn clean install

## ********** CustomerService ********** ## 
if [ ! -d "/var/lib/jenkins/workspace/CustomerService" ]; then
    cd /var/lib/jenkins/workspace/
    git clone git@github.com:teamtinvio/CustomerService.git
fi
cd /var/lib/jenkins/workspace/CustomerService/
git pull origin master
mvn clean install

## ********** PushNotificationService ********** ## 
if [ ! -d "/var/lib/jenkins/workspace/PushNotificationService" ]; then
    cd /var/lib/jenkins/workspace/
    git clone git@github.com:teamtinvio/PushNotificationService.git
fi
cd /var/lib/jenkins/workspace/PushNotificationService/
git pull origin master
mvn clean install

## ********** ChatService ********** ## 
if [ ! -d "/var/lib/jenkins/workspace/ChatService" ]; then
    cd /var/lib/jenkins/workspace/
    git clone git@github.com:teamtinvio/ChatService.git
fi
cd /var/lib/jenkins/workspace/ChatService/
git pull origin master
mvn clean install

## ********** APIMapper ********** ## 
if [ ! -d "/var/lib/jenkins/workspace/APIMapper" ]; then
    cd /var/lib/jenkins/workspace/
    git clone git@github.com:teamtinvio/APIMapper.git
fi
cd /var/lib/jenkins/workspace/APIMapper/
git pull origin master
mvn clean install

## ********** ConfigService ********** ## 
if [ ! -d "/var/lib/jenkins/workspace/ConfigService" ]; then
    cd /var/lib/jenkins/workspace/
    git clone git@github.com:teamtinvio/ConfigService.git
fi
cd /var/lib/jenkins/workspace/ConfigService/
git pull origin master
mvn clean install

## ********** GlobalSearchService ********** ## 
if [ ! -d "/var/lib/jenkins/workspace/GlobalSearchService" ]; then
    cd /var/lib/jenkins/workspace/
    git clone git@github.com:teamtinvio/GlobalSearchService.git
fi
cd /var/lib/jenkins/workspace/GlobalSearchService/
git pull origin master
mvn clean install











