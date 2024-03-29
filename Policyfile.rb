# Policyfile.rb - Describe how you want Chef Infra Client to build your system.
#
# For more information on the Policyfile feature, visit
# https://docs.chef.io/policyfile.html

# A name that describes what the system you're building with Chef does.
name 'github_python_requests'

# Where to find external cookbooks:
default_source :supermarket

# run_list: chef-client will run these recipes in the order specified.
run_list 'github_python_requests::default'

# Specify a custom source for a single cookbook:
cookbook 'github_python_requests', path: '.'
cookbook 'python_requests', github: 'sforrester23/python_chef', branch: 'master'
cookbook 'node', github: 'sforrester23/chef_cookbook_2', branch: 'master'
