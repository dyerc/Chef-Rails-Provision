name 'rails'
description 'Configure server to serve rails app'
run_list "role[base]", "recipe[bluepill]", "recipe[nginx]", "recipe[ruby_build]", "recipe[rbenv]", "recipe[git]"
default_attributes(
  "nginx" => { "server_tokens" => "off" },
  "rbenv" => {
    "group_users" => ['deployer']
  },
  "deploy_users" => [
        "deployer"
  ]
)
