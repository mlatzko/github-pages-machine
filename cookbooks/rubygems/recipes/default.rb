#
# Cookbook Name:: rubygems
# Recipe:: default
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

include_recipe "ruby"

#
# install rubygems
#
bash "install rubygems v.#{node['rubygems']['version']}" do
  code <<-EOH
    wget http://production.cf.rubygems.org/rubygems/rubygems-#{node['rubygems']['version']}.tgz
    tar xzf rubygems-#{node['rubygems']['version']}.tgz
    cd rubygems-#{node['rubygems']['version']}
    ruby setup.rb
    cd ..
    rm -rf rubygems-#{node['rubygems']['version']}*
  EOH
  not_if { ::File.exists?("/var/opt/rubygems-installed") }
end

execute "install rubygems v.#{node['rubygems']['version']} - set lock file" do
  command "touch /var/opt/rubygems-installed"
  not_if do
    File.exists?("/var/opt/rubygems-installed")
  end
  user "root"
  action :run
end
