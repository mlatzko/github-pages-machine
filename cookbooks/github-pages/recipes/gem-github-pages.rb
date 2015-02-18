#
# Cookbook Name:: github-pages
# Recipe:: gem-github-pages
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

execute "install gem 'github-pages'" do
  command "gem install github-pages"
  not_if do
    File.exists?("/var/opt/gem-gitgub-pages-installed")
  end
  user "root"
  action :run
end

execute "install gem 'github-pages' - set lock file" do
  command "touch /var/opt/gem-gitgub-pages-installed"
  not_if do
    File.exists?("/var/opt/gem-gitgub-pages-installed")
  end
  user "root"
  action :run
end
