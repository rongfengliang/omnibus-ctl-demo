#
# Copyright 2019 YOUR NAME
#
# All Rights Reserved.
#

name "gitlab"
maintainer "rongfengliang"
homepage "https://github.com/rongfengliang"

# Defaults to C:/my on Windows
# and /opt/my on all other platforms
install_dir "#{default_root}/#{name}"

build_version '1.0.0'
build_iteration 1

# Creates required build directories
dependency "preparation"
dependency "gitlab-ctl"
dependency 'gitlab-cookbooks'
dependency 'chef-zero'
dependency 'chef-gem'
# my dependencies/components
# dependency "somedep"

exclude "**/.git"
exclude "**/bundler/git"
