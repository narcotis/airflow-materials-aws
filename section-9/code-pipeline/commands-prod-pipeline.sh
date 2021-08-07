# Path to the template
TEMPLATE=file://airflow-materials-aws/section-9/code-pipeline/airflow-prod-pipeline.cfn.yml

# Update the stack
aws cloudformation create-stack --stack-name=airflow-prod-pipeline \
    --template-body=$TEMPLATE \
    --parameters ParameterKey=EksClusterName,ParameterValue=optimizer \
    ParameterKey=KubectlRoleName,ParameterValue=AirflowCodeBuildServiceRole \
    ParameterKey=GitHubUser,ParameterValue=narcotis \
    ParameterKey=GitHubToken,ParameterValue=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 \
    ParameterKey=GitSourceRepo,ParameterValue=airflow-eks-docker \
    ParameterKey=GitBranch,ParameterValue=master