

set -eu

aws cloudformation create-stack \
        --capabilities CAPABILITY_IAM \
        --stack-name $CODEPIPELINE_STACK_NAME \
        --parameters ParameterKey=GitHubOAuthToken,ParameterValue=${1} \
        --template-body file://pipeline.yaml
