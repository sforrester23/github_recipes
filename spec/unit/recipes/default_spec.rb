#
# Cookbook:: github_python_requests
# Spec:: default
#
# Copyright:: 2019, The Authors, All Rights Reserved.

require 'spec_helper'

describe 'python_requests::default' do
  context 'When all attributes are default, on Ubuntu 18.04' do
    # for a complete list of available platforms and versions see:
    # https://github.com/chefspec/fauxhai/blob/master/PLATFORMS.md
    platform 'ubuntu', '18.04'

    it 'converges successfully' do
      expect { chef_run }.to_not raise_error
    end
    # it 'uses python recipe' do
    #   expect(chef_run).to include_recipe 'default'
    # end

    it 'should install python package' do
      expect(chef_run).to install_package 'python'
    end

    it 'should install Python package management pip' do
      expect(chef_run).to install_package 'python-pip'
    end

    it 'should install requests plugin using pip management' do
      expect(chef_run).to run_execute ('install requests==2.3.0')
    end
  end
end

describe 'node::default' do
  context 'When all attributes are default, on Ubuntu 18.04' do
    # for a complete list of available platforms and versions see:
    # https://github.com/chefspec/fauxhai/blob/master/PLATFORMS.md
    platform 'ubuntu', '18.04'

    it 'converges successfully' do
      expect { chef_run }.to_not raise_error
    end

    it 'Should install nginx' do
      expect(chef_run).to install_package 'nginx'
    end

    it 'Enables the nginx service' do
      expect(chef_run).to enable_service 'nginx'
    end

    it 'Starts the nginx service' do
      expect(chef_run).to start_service 'nginx'
    end
  end
end
