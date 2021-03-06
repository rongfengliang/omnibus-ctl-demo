#
# Copyright:: Copyright (c) 2012 Opscode, Inc.
# Copyright:: Copyright (c) 2014 GitLab.com
# License:: Apache License, Version 2.0
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

name 'gitlab-cookbooks'

license 'Apache-2.0'

source path: File.expand_path('files/gitlab-cookbooks', Omnibus::Config.project_root)

build do
  cookbook_name = 'dalong::default'
  command "mkdir -p #{install_dir}/embedded/cookbooks"
  sync './', "#{install_dir}/embedded/cookbooks/"
  erb dest: "#{install_dir}/embedded/cookbooks/dna.json",
      source: 'dna.json.erb',
      mode: 0644,
      vars: { master_cookbook: cookbook_name }
end
