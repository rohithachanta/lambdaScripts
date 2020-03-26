#cd /var/lib/jenkins/workspace/build_createorderlambda/
if [ ! -d "/var/lib/jenkins/workspace/OrderCreate_Lambda" ]; then
 cd /var/lib/jenkins/workspace/
 git clone https://github.com/teamtinvio/OrderCreate_Lambda.git
fi
cd /var/lib/jenkins/workspace/OrderCreate_Lambda
git pull origin master 
mvn clean package

cp target/ordercreate-1.0.0.jar /var/lib/jenkins/workspace/Lambdas
cd ..

#dldir = "/var/lib/jenkins/workspace/deployment/OrderCreateLambda"
[ ! -d "/var/lib/jenkins/workspace/deployment/OrderCreateLambda" ] && mkdir -p "/var/lib/jenkins/workspace/deployment/OrderCreateLambda"

# mkdir /var/lib/jenkins/workspace/deployment/OrderCreateLambda

cd /var/lib/jenkins/workspace/deployment/OrderCreateLambda

#mkdir lib

#cp /var/lib/jenkins/workspace/Libraries/*.jar /var/lib/jenkins/workspace/deployment/ccl/lib/

cp /var/lib/jenkins/workspace/Lambdas/ordercreate-1.0.0.jar /var/lib/jenkins/workspace/deployment/OrderCreateLambda

ArtifactName = $1
echo $ArtifactName

rm -rf $ArtifactName

mkdir $ArtifactName

mv ordercreate-1.0.0.jar $ArtifactName

DATE=`date +%Y%m%d`

FileName=$ArtifactName'_'$DATE'.zip'

echo $FileName

rm -rf $FileName

zip -r $FileName $ArtifactName



aws s3 cp /var/lib/jenkins/workspace/deployment/OrderCreateLambda/$FileName s3://openlantinviobucket



#aws lambda create-function --function-name OrderCreate_Lambda \
#--code S3Bucket=openlantinviobucket,S3Key=$FileName --handler index.handler --runtime java8 \
#--timeout 120 --memory-size 2048 \
#--role arn:aws:iam::895290997849:role/LambdaExecutor 

#Lambda Creation

{ # your 'try' block
  aws lambda get-function --function-name OrderCreate_Lambda
  if [ 0 -eq $? ]; then
    aws lambda update-function-code --function-name OrderCreate_Lambda \
    --s3-bucket openlantinviobucket --s3-key $FileName
  else
     aws lambda create-function --function-name OrderCreate_Lambda \
--code S3Bucket=openlantinviobucket,S3Key=$FileName --handler index.handler --runtime java8 \
--timeout 120 --memory-size 2048 \
--role arn:aws:iam::895290997849:role/LambdaExecutor
fi  
} || { # your 'catch' block
echo 'at catch block with result code:'$?
   
}