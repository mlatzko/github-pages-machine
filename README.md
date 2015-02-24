github-pages-machine (virtual box + vagrant)
==================================================================

Software required to be installed before:
------------------------------------------------------------------
**Windows:**
* VirtualBox - https://www.virtualbox.org/wiki/Downloads
* Vagrant - http://downloads.vagrantup.com/
* Putty - http://www.putty.org
* GitHub - https://windows.github.com/

**Tested with:** VirtualBox 4.3.20, Vagrant 1.6.5

Other repositories required:
------------------------------------------------------------------
CLONE - https://github.com/mlatzko/jekyll-example - This repository is used in the Vagrantfile as sync folder.

Cookbooks & receipts based on the requirements defined on:
------------------------------------------------------------------
https://help.github.com/articles/using-jekyll-with-pages

Cookbooks:
------------------------------------------------------------------
* apt
* github-pages
* nodejs
* make
* ruby
* rubygems

Starting a jekyll server:
------------------------------------------------------------------
The basic usage is describe on [jekyllrb.com](http://jekyllrb.com/docs/usage/) page. This is just a short instruction
for further information look there.

**Command:**
```
sudo jekyll serve --source <source> --destination <destination> --port <port> --watch --force_polling --config <config>
```
**Example by using tech. study** - [jekyll-example](https://github.com/mlatzko/jekyll-example)
```
jekyll serve --source /var/www/jekyll-example/ --destination /tmp/jekyll/sites/jekyll-exampl --port 80 --watch --force_polling --config /var/www/jekyll-example/_config.local.yml
```
**Notice:** There are two _config.yml file. The first "_config.yml" is use for the [github pages version](http://mlatzko.github.io/jekyll-example/).
The second one is used for this machine and is call "_config.local.yml". Be aware of that the if you use the [jekyll-example](https://github.com/mlatzko/jekyll-example)
without defining the local version of the _config.yml while starting via `jekyll serve` the page will not be correct rendered.

Kill any jekyll's without thinking:
------------------------------------------------------------------
```
sudo kill -9 $(ps opid= -C jekyll)
```

Useful Links:
------------------------------------------------------------------
* https://www.virtualbox.org/
* http://www.vagrantbox.es/
* http://www.putty.org/
* http://jekyllrb.com/
* http://jekyllrb.com/docs/usage/

Copyright and license:
------------------------------------------------------------------
Copyright 2015 Mathias Latzko

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
