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

require 'google/apis/core/base_service'
require 'google/apis/core/json_representation'
require 'google/apis/core/hashable'
require 'google/apis/errors'

module Google
  module Apis
    module RemotebuildexecutionV1alpha
      # Remote Build Execution API
      #
      # Supplies a Remote Execution API service for tools such as bazel.
      #
      # @example
      #    require 'google/apis/remotebuildexecution_v1alpha'
      #
      #    Remotebuildexecution = Google::Apis::RemotebuildexecutionV1alpha # Alias the module
      #    service = Remotebuildexecution::RemoteBuildExecutionService.new
      #
      # @see https://cloud.google.com/remote-build-execution/docs/
      class RemoteBuildExecutionService < Google::Apis::Core::BaseService
        # @return [String]
        #  API key. Your API key identifies your project and provides you with API access,
        #  quota, and reports. Required unless you provide an OAuth 2.0 token.
        attr_accessor :key

        # @return [String]
        #  Available to use for quota purposes for server-side applications. Can be any
        #  arbitrary string assigned to a user, but should not exceed 40 characters.
        attr_accessor :quota_user

        def initialize
          super('https://admin-remotebuildexecution.googleapis.com/', '')
          @batch_path = 'batch'
        end
        
        # Creates a new instance in the specified region.
        # Returns a long running operation which contains an instance on completion.
        # While the long running operation is in progress, any call to `GetInstance`
        # returns an instance in state `CREATING`.
        # @param [String] parent
        #   Resource name of the project containing the instance.
        #   Format: `projects/[PROJECT_ID]`.
        # @param [Google::Apis::RemotebuildexecutionV1alpha::GoogleDevtoolsRemotebuildexecutionAdminV1alphaCreateInstanceRequest] google_devtools_remotebuildexecution_admin_v1alpha_create_instance_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::RemotebuildexecutionV1alpha::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::RemotebuildexecutionV1alpha::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_instance(parent, google_devtools_remotebuildexecution_admin_v1alpha_create_instance_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha/{+parent}/instances', options)
          command.request_representation = Google::Apis::RemotebuildexecutionV1alpha::GoogleDevtoolsRemotebuildexecutionAdminV1alphaCreateInstanceRequest::Representation
          command.request_object = google_devtools_remotebuildexecution_admin_v1alpha_create_instance_request_object
          command.response_representation = Google::Apis::RemotebuildexecutionV1alpha::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::RemotebuildexecutionV1alpha::GoogleLongrunningOperation
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes the specified instance.
        # Returns a long running operation which contains a `google.protobuf.Empty`
        # response on completion.
        # Deleting an instance with worker pools in it will delete these worker
        # pools.
        # @param [String] name
        #   Name of the instance to delete.
        #   Format: `projects/[PROJECT_ID]/instances/[INSTANCE_ID]`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::RemotebuildexecutionV1alpha::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::RemotebuildexecutionV1alpha::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_instance(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1alpha/{+name}', options)
          command.response_representation = Google::Apis::RemotebuildexecutionV1alpha::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::RemotebuildexecutionV1alpha::GoogleLongrunningOperation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns the specified instance.
        # @param [String] name
        #   Name of the instance to retrieve.
        #   Format: `projects/[PROJECT_ID]/instances/[INSTANCE_ID]`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::RemotebuildexecutionV1alpha::GoogleDevtoolsRemotebuildexecutionAdminV1alphaInstance] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::RemotebuildexecutionV1alpha::GoogleDevtoolsRemotebuildexecutionAdminV1alphaInstance]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_instance(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+name}', options)
          command.response_representation = Google::Apis::RemotebuildexecutionV1alpha::GoogleDevtoolsRemotebuildexecutionAdminV1alphaInstance::Representation
          command.response_class = Google::Apis::RemotebuildexecutionV1alpha::GoogleDevtoolsRemotebuildexecutionAdminV1alphaInstance
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists instances in a project.
        # @param [String] parent
        #   Resource name of the project.
        #   Format: `projects/[PROJECT_ID]`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::RemotebuildexecutionV1alpha::GoogleDevtoolsRemotebuildexecutionAdminV1alphaListInstancesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::RemotebuildexecutionV1alpha::GoogleDevtoolsRemotebuildexecutionAdminV1alphaListInstancesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_instances(parent, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+parent}/instances', options)
          command.response_representation = Google::Apis::RemotebuildexecutionV1alpha::GoogleDevtoolsRemotebuildexecutionAdminV1alphaListInstancesResponse::Representation
          command.response_class = Google::Apis::RemotebuildexecutionV1alpha::GoogleDevtoolsRemotebuildexecutionAdminV1alphaListInstancesResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a new worker pool with a specified size and configuration.
        # Returns a long running operation which contains a worker pool on
        # completion. While the long running operation is in progress, any call to
        # `GetWorkerPool` returns a worker pool in state `CREATING`.
        # @param [String] parent
        #   Resource name of the instance in which to create the new worker pool.
        #   Format: `projects/[PROJECT_ID]/instances/[INSTANCE_ID]`.
        # @param [Google::Apis::RemotebuildexecutionV1alpha::GoogleDevtoolsRemotebuildexecutionAdminV1alphaCreateWorkerPoolRequest] google_devtools_remotebuildexecution_admin_v1alpha_create_worker_pool_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::RemotebuildexecutionV1alpha::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::RemotebuildexecutionV1alpha::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_instance_workerpool(parent, google_devtools_remotebuildexecution_admin_v1alpha_create_worker_pool_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha/{+parent}/workerpools', options)
          command.request_representation = Google::Apis::RemotebuildexecutionV1alpha::GoogleDevtoolsRemotebuildexecutionAdminV1alphaCreateWorkerPoolRequest::Representation
          command.request_object = google_devtools_remotebuildexecution_admin_v1alpha_create_worker_pool_request_object
          command.response_representation = Google::Apis::RemotebuildexecutionV1alpha::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::RemotebuildexecutionV1alpha::GoogleLongrunningOperation
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes the specified worker pool.
        # Returns a long running operation, which contains a `google.protobuf.Empty`
        # response on completion.
        # While the long running operation is in progress, any call to
        # `GetWorkerPool` returns a worker pool in state `DELETING`.
        # @param [String] name
        #   Name of the worker pool to delete.
        #   Format:
        #   `projects/[PROJECT_ID]/instances/[INSTANCE_ID]/workerpools/[POOL_ID]`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::RemotebuildexecutionV1alpha::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::RemotebuildexecutionV1alpha::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_instance_workerpool(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1alpha/{+name}', options)
          command.response_representation = Google::Apis::RemotebuildexecutionV1alpha::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::RemotebuildexecutionV1alpha::GoogleLongrunningOperation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns the specified worker pool.
        # @param [String] name
        #   Name of the worker pool to retrieve.
        #   Format:
        #   `projects/[PROJECT_ID]/instances/[INSTANCE_ID]/workerpools/[POOL_ID]`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::RemotebuildexecutionV1alpha::GoogleDevtoolsRemotebuildexecutionAdminV1alphaWorkerPool] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::RemotebuildexecutionV1alpha::GoogleDevtoolsRemotebuildexecutionAdminV1alphaWorkerPool]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_instance_workerpool(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+name}', options)
          command.response_representation = Google::Apis::RemotebuildexecutionV1alpha::GoogleDevtoolsRemotebuildexecutionAdminV1alphaWorkerPool::Representation
          command.response_class = Google::Apis::RemotebuildexecutionV1alpha::GoogleDevtoolsRemotebuildexecutionAdminV1alphaWorkerPool
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists worker pools in an instance.
        # @param [String] parent
        #   Resource name of the instance.
        #   Format: `projects/[PROJECT_ID]/instances/[INSTANCE_ID]`.
        # @param [String] filter
        #   Optional. A filter to constrain the pools returned. Filters have the form:
        #   <field> <operator> <value> [[AND|OR] <field> <operator> <value>]...
        #   <field> is the path for a field or map key in the Pool proto message.
        #   e.g. "configuration.disk_size_gb" or "configuration.labels.key".
        #   <operator> can be one of "<", "<=", ">=", ">", "=", "!=", ":".
        #   ":" is a HAS operation for strings and repeated primitive fields.
        #   <value> is the value to test, case-insensitive for strings. "*" stands for
        #   any value and can be used to test for key presence.
        #   Parenthesis determine AND/OR precedence. In space separated restrictions,
        #   AND is implicit, e.g. "a = b x = y" is equivalent to "a = b AND x = y".
        #   Example filter:
        #   configuration.labels.key1 = * AND (state = RUNNING OR state = UPDATING)
        #   This field is currently ignored in all requests.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::RemotebuildexecutionV1alpha::GoogleDevtoolsRemotebuildexecutionAdminV1alphaListWorkerPoolsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::RemotebuildexecutionV1alpha::GoogleDevtoolsRemotebuildexecutionAdminV1alphaListWorkerPoolsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_instance_workerpools(parent, filter: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+parent}/workerpools', options)
          command.response_representation = Google::Apis::RemotebuildexecutionV1alpha::GoogleDevtoolsRemotebuildexecutionAdminV1alphaListWorkerPoolsResponse::Representation
          command.response_class = Google::Apis::RemotebuildexecutionV1alpha::GoogleDevtoolsRemotebuildexecutionAdminV1alphaListWorkerPoolsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates an existing worker pool with a specified size and/or configuration.
        # Returns a long running operation, which contains a worker pool on
        # completion. While the long running operation is in progress, any call to
        # `GetWorkerPool` returns a worker pool in state `UPDATING`.
        # @param [String] name
        #   WorkerPool resource name formatted as:
        #   `projects/[PROJECT_ID]/instances/[INSTANCE_ID]/workerpools/[POOL_ID]`.
        #   name should not be populated when creating a worker pool since it is
        #   provided in the `poolId` field.
        # @param [Google::Apis::RemotebuildexecutionV1alpha::GoogleDevtoolsRemotebuildexecutionAdminV1alphaUpdateWorkerPoolRequest] google_devtools_remotebuildexecution_admin_v1alpha_update_worker_pool_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::RemotebuildexecutionV1alpha::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::RemotebuildexecutionV1alpha::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_instance_workerpool(name, google_devtools_remotebuildexecution_admin_v1alpha_update_worker_pool_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1alpha/{+name}', options)
          command.request_representation = Google::Apis::RemotebuildexecutionV1alpha::GoogleDevtoolsRemotebuildexecutionAdminV1alphaUpdateWorkerPoolRequest::Representation
          command.request_object = google_devtools_remotebuildexecution_admin_v1alpha_update_worker_pool_request_object
          command.response_representation = Google::Apis::RemotebuildexecutionV1alpha::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::RemotebuildexecutionV1alpha::GoogleLongrunningOperation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the latest state of a long-running operation.  Clients can use this
        # method to poll the operation result at intervals as recommended by the API
        # service.
        # @param [String] name
        #   The name of the operation resource.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::RemotebuildexecutionV1alpha::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::RemotebuildexecutionV1alpha::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_operation(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+name}', options)
          command.response_representation = Google::Apis::RemotebuildexecutionV1alpha::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::RemotebuildexecutionV1alpha::GoogleLongrunningOperation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end

        protected

        def apply_command_defaults(command)
          command.query['key'] = key unless key.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
        end
      end
    end
  end
end
