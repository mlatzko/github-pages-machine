#
# Cookbook Name:: github-pages
# Recipe:: jekyll-server
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

execute "kill all possible jekyll processes" do
  command "kill -9 $(ps opid= -C jekyll) &> /dev/null"
  user "root"
  action :run
end

execute "start automatic building of 'jekyll-example' with jekyll" do
  command "jekyll serve --source /var/www/jekyll-example/ --destination /tmp/jekyll/sites/jekyll-example/ --port 80 --watch --force_polling --detach"
  user "root"
  action :run
end
