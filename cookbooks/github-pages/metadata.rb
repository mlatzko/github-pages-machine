name              "github-pages"
maintainer        "Mathias Latzko"
maintainer_email  "github@haus7.de"
license           "Apache 2.0"
description       "Set up github page jekyll server based on the github pages documentation."
version           "0.2"
recipe            "github-pages", "Set up receipts required to be executed to have a github pages machine."
recipe            "github-pages::gem-bunder", "Install ruby gem package bundler."
recipe            "github-pages::gem-github-page", "Install ruby gem package github-pages."
recipe            "github-pages::jekyll-server", "Set up & run jekyll server."

%w{ ubuntu }.each do |os|
  supports os
end
