#
# Author:: Christopher Webber (<cwebber@chef.io>)
# Copyright:: Copyright (c) 2015 Chef Software, Inc.
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

require 'chef/resource/lwrp_base'
require_relative 'resource_fastly_base'

class Chef
  class Resource
    class FastlyCondition < Chef::Resource::FastlyBase

      self.resource_name = :fastly_condition
      actions :create
      default_action :create

      attribute :type, kind_of: String, default: 'request', required: true, equal_to: ['request', 'cache', 'response']
      attribute :statement, kind_of: String, required: true
      attribute :priority, kind_of: Integer, default: 10

    end
  end
end
