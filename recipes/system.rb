#
# Author: Chris Jones <cjones303@bloomberg.net>
# Cookbook: ceph
#
# Copyright 2015, Bloomberg Finance L.P.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Use this recipe to update system oriented items so that it's easier to override on a per node or role basis

# This will allow for a much higher pid count instead of the default 64k since Ceph uses a lot of threads/daemons
execute 'pid_max' do
  command "echo #{node['ceph']['system']['pid_max']} > /proc/sys/kernel/pid_max"
end