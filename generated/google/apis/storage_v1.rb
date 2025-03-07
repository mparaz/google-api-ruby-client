# Copyright 2015 Google Inc.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

require 'google/apis/storage_v1/service.rb'
require 'google/apis/storage_v1/classes.rb'
require 'google/apis/storage_v1/representations.rb'

module Google
  module Apis
    # Cloud Storage JSON API
    #
    # Stores and retrieves potentially large, immutable data objects.
    #
    # @see https://developers.google.com/storage/docs/json_api/
    module StorageV1
      VERSION = 'V1'
      REVISION = '20190523'

      # View and manage your data across Google Cloud Platform services
      AUTH_CLOUD_PLATFORM = 'https://www.googleapis.com/auth/cloud-platform'

      # View your data across Google Cloud Platform services
      AUTH_CLOUD_PLATFORM_READ_ONLY = 'https://www.googleapis.com/auth/cloud-platform.read-only'

      # Manage your data and permissions in Google Cloud Storage
      AUTH_DEVSTORAGE_FULL_CONTROL = 'https://www.googleapis.com/auth/devstorage.full_control'

      # View your data in Google Cloud Storage
      AUTH_DEVSTORAGE_READ_ONLY = 'https://www.googleapis.com/auth/devstorage.read_only'

      # Manage your data in Google Cloud Storage
      AUTH_DEVSTORAGE_READ_WRITE = 'https://www.googleapis.com/auth/devstorage.read_write'
    end
  end
end
