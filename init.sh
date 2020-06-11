if [ -z ${repo} ]; then
  export repo='QA-Terraform'
fi
if [ -z ${branch} ]; then
  export branch='master'
fi
if [ -z ${state_file_name} ]; then
  export state_file_name=${repo}_${branch}
fi

envsubst < main.tf.tmpl > main.tf
envsubst < backend.tf.tmpl > backend.tf

rm -f .terraform/terraform.tfstate
terraform init
