#
# Cookbook Name:: ruby
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

include_recipe "apt"
include_recipe "make"

#
# install ruby
#
bash "install ruby v.#{node['ruby']['version']}" do
  code <<-EOH
    wget http://cache.ruby-lang.org/pub/ruby/2.0/ruby-#{node['ruby']['version']}.tar.gz
    tar -xzvf ruby-#{node['ruby']['version']}.tar.gz
    cd ruby-#{node['ruby']['version']}
    ./configure
    make &&
    make install
    cd ..
    rm -rf #{node['ruby']['version']}*
  EOH
  not_if { ::File.exists?("/var/opt/ruby-installed") }
end

execute "install ruby v.#{node['ruby']['version']} - set lock file" do
  command "touch /var/opt/ruby-installed"
  not_if do
    File.exists?("/var/opt/ruby-installed")
  end
  user "root"
  action :run
end

include_recipe "ruby::rubygems"
include_recipe "ruby::gem-github-page"
