#
# Cookbook:: couchdb-wrapper-test
# Recipe:: three-nodes-from-source
#
# Copyright:: 2017, Joan Touzet <wohali@apache.org>
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

uuid = '313a845672de45aba230caf919a66163'

couchdb_node 'node1' do
  node_name 'node1'
  type 'clustered'
  port 15984
  local_port 15986
  uuid uuid
  cookie 'henriettapussycat'
  admin_username 'admin'
  admin_password 'password'
end

couchdb_node 'node2' do
  node_name 'node2'
  type 'clustered'
  port 25984
  local_port 25986
  uuid uuid
  cookie 'henriettapussycat'
  admin_username 'admin'
  admin_password 'password'
end

couchdb_node 'node3' do
  node_name 'node3'
  type 'clustered'
  port 35984
  local_port 35986
  uuid uuid
  cookie 'henriettapussycat'
  admin_username 'admin'
  admin_password 'password'
end

# TODO: join the cluster together