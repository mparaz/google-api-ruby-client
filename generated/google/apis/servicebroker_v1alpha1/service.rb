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
    module ServicebrokerV1alpha1
      # Service Broker API
      #
      # The Google Cloud Platform Service Broker API provides Google hosted
      #  implementation of the Open Service Broker API
      #  (https://www.openservicebrokerapi.org/).
      #
      # @example
      #    require 'google/apis/servicebroker_v1alpha1'
      #
      #    Servicebroker = Google::Apis::ServicebrokerV1alpha1 # Alias the module
      #    service = Servicebroker::ServiceBrokerService.new
      #
      # @see https://cloud.google.com/kubernetes-engine/docs/concepts/add-on/service-broker
      class ServiceBrokerService < Google::Apis::Core::BaseService
        # @return [String]
        #  API key. Your API key identifies your project and provides you with API access,
        #  quota, and reports. Required unless you provide an OAuth 2.0 token.
        attr_accessor :key

        # @return [String]
        #  Available to use for quota purposes for server-side applications. Can be any
        #  arbitrary string assigned to a user, but should not exceed 40 characters.
        attr_accessor :quota_user

        def initialize
          super('https://servicebroker.googleapis.com/', '')
          @batch_path = 'batch'
        end
        
        # Gets the given service instance from the system.
        # This API is an extension and not part of the OSB spec.
        # Hence the path is a standard Google API URL.
        # @param [String] name
        #   The resource name of the instance to return.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ServicebrokerV1alpha1::GoogleCloudServicebrokerV1alpha1ServiceInstance] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ServicebrokerV1alpha1::GoogleCloudServicebrokerV1alpha1ServiceInstance]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_broker_instance(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha1/{+name}', options)
          command.response_representation = Google::Apis::ServicebrokerV1alpha1::GoogleCloudServicebrokerV1alpha1ServiceInstance::Representation
          command.response_class = Google::Apis::ServicebrokerV1alpha1::GoogleCloudServicebrokerV1alpha1ServiceInstance
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists all the bindings in the instance
        # @param [String] parent
        #   Parent must match
        #   `projects/[PROJECT_ID]/brokers/[BROKER_ID]/instances/[INSTANCE_ID]`.
        # @param [Fixnum] page_size
        #   Specifies the number of results to return per page. If there are fewer
        #   elements than the specified number, returns all elements.
        #   Optional. If unset or 0, all the results will be returned.
        # @param [String] page_token
        #   Specifies a page token to use. Set `pageToken` to a `nextPageToken`
        #   returned by a previous list request to get the next page of results.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ServicebrokerV1alpha1::GoogleCloudServicebrokerV1alpha1ListBindingsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ServicebrokerV1alpha1::GoogleCloudServicebrokerV1alpha1ListBindingsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_broker_instance_service_bindings(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha1/{+parent}/service_bindings', options)
          command.response_representation = Google::Apis::ServicebrokerV1alpha1::GoogleCloudServicebrokerV1alpha1ListBindingsResponse::Representation
          command.response_class = Google::Apis::ServicebrokerV1alpha1::GoogleCloudServicebrokerV1alpha1ListBindingsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists all the instances in the brokers
        # This API is an extension and not part of the OSB spec.
        # Hence the path is a standard Google API URL.
        # @param [String] parent
        #   Parent must match `projects/[PROJECT_ID]/brokers/[BROKER_ID]`.
        # @param [Fixnum] page_size
        #   Specifies the number of results to return per page. If there are fewer
        #   elements than the specified number, returns all elements.
        #   Optional. If unset or 0, all the results will be returned.
        # @param [String] page_token
        #   Specifies a page token to use. Set `pageToken` to a `nextPageToken`
        #   returned by a previous list request to get the next page of results.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ServicebrokerV1alpha1::GoogleCloudServicebrokerV1alpha1ListServiceInstancesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ServicebrokerV1alpha1::GoogleCloudServicebrokerV1alpha1ListServiceInstancesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_broker_service_instances(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha1/{+parent}/service_instances', options)
          command.response_representation = Google::Apis::ServicebrokerV1alpha1::GoogleCloudServicebrokerV1alpha1ListServiceInstancesResponse::Representation
          command.response_class = Google::Apis::ServicebrokerV1alpha1::GoogleCloudServicebrokerV1alpha1ListServiceInstancesResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists all the Services registered with this broker for consumption for
        # given service registry broker, which contains an set of services.
        # Note, that Service producer API is separate from Broker API.
        # @param [String] parent
        #   Parent must match `projects/[PROJECT_ID]/brokers/[BROKER_ID]`.
        # @param [Fixnum] page_size
        #   Specifies the number of results to return per page. If there are fewer
        #   elements than the specified number, returns all elements.
        #   Optional. If unset or 0, all the results will be returned.
        # @param [String] page_token
        #   Specifies a page token to use. Set `pageToken` to a `nextPageToken`
        #   returned by a previous list request to get the next page of results.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ServicebrokerV1alpha1::GoogleCloudServicebrokerV1alpha1ListCatalogResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ServicebrokerV1alpha1::GoogleCloudServicebrokerV1alpha1ListCatalogResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_broker_v2_catalogs(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha1/{+parent}/v2/catalog', options)
          command.response_representation = Google::Apis::ServicebrokerV1alpha1::GoogleCloudServicebrokerV1alpha1ListCatalogResponse::Representation
          command.response_class = Google::Apis::ServicebrokerV1alpha1::GoogleCloudServicebrokerV1alpha1ListCatalogResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Provisions a service instance.
        # If `request.accepts_incomplete` is false and Broker cannot execute request
        # synchronously HTTP 422 error will be returned along with
        # FAILED_PRECONDITION status.
        # If `request.accepts_incomplete` is true and the Broker decides to execute
        # resource asynchronously then HTTP 202 response code will be returned and a
        # valid polling operation in the response will be included.
        # If Broker executes the request synchronously and it succeeds HTTP 201
        # response will be furnished.
        # If identical instance exists, then HTTP 200 response will be returned.
        # If an instance with identical ID but mismatching parameters exists, then
        # HTTP 409 status code will be returned.
        # @param [String] parent
        #   Parent must match `projects/[PROJECT_ID]/brokers/[BROKER_ID]`.
        # @param [String] instance_id
        #   The id of the service instance. Must be unique within GCP project.
        #   Maximum length is 64, GUID recommended.
        #   Required.
        # @param [Google::Apis::ServicebrokerV1alpha1::GoogleCloudServicebrokerV1alpha1ServiceInstance] google_cloud_servicebroker_v1alpha1__service_instance_object
        # @param [Boolean] accepts_incomplete
        #   Value indicating that API client supports asynchronous operations. If
        #   Broker cannot execute the request synchronously HTTP 422 code will be
        #   returned to HTTP clients along with FAILED_PRECONDITION error.
        #   If true and broker will execute request asynchronously 202 HTTP code will
        #   be returned.
        #   This broker always requires this to be true as all mutator operations are
        #   asynchronous.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ServicebrokerV1alpha1::GoogleCloudServicebrokerV1alpha1CreateServiceInstanceResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ServicebrokerV1alpha1::GoogleCloudServicebrokerV1alpha1CreateServiceInstanceResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_broker_v2_service_instance(parent, instance_id, google_cloud_servicebroker_v1alpha1__service_instance_object = nil, accepts_incomplete: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:put, 'v1alpha1/{+parent}/v2/service_instances/{+instance_id}', options)
          command.request_representation = Google::Apis::ServicebrokerV1alpha1::GoogleCloudServicebrokerV1alpha1ServiceInstance::Representation
          command.request_object = google_cloud_servicebroker_v1alpha1__service_instance_object
          command.response_representation = Google::Apis::ServicebrokerV1alpha1::GoogleCloudServicebrokerV1alpha1CreateServiceInstanceResponse::Representation
          command.response_class = Google::Apis::ServicebrokerV1alpha1::GoogleCloudServicebrokerV1alpha1CreateServiceInstanceResponse
          command.params['parent'] = parent unless parent.nil?
          command.params['instance_id'] = instance_id unless instance_id.nil?
          command.query['acceptsIncomplete'] = accepts_incomplete unless accepts_incomplete.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deprovisions a service instance.
        # For synchronous/asynchronous request details see CreateServiceInstance
        # method.
        # If service instance does not exist HTTP 410 status will be returned.
        # @param [String] parent
        #   Parent must match `projects/[PROJECT_ID]/brokers/[BROKER_ID]`.
        # @param [String] instance_id
        #   The instance id to deprovision.
        # @param [Boolean] accepts_incomplete
        #   See CreateServiceInstanceRequest for details.
        # @param [String] plan_id
        #   The plan id of the service instance.
        # @param [String] service_id
        #   The service id of the service instance.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ServicebrokerV1alpha1::GoogleCloudServicebrokerV1alpha1DeleteServiceInstanceResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ServicebrokerV1alpha1::GoogleCloudServicebrokerV1alpha1DeleteServiceInstanceResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_broker_v2_service_instance(parent, instance_id, accepts_incomplete: nil, plan_id: nil, service_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1alpha1/{+parent}/v2/service_instances/{+instanceId}', options)
          command.response_representation = Google::Apis::ServicebrokerV1alpha1::GoogleCloudServicebrokerV1alpha1DeleteServiceInstanceResponse::Representation
          command.response_class = Google::Apis::ServicebrokerV1alpha1::GoogleCloudServicebrokerV1alpha1DeleteServiceInstanceResponse
          command.params['parent'] = parent unless parent.nil?
          command.params['instanceId'] = instance_id unless instance_id.nil?
          command.query['acceptsIncomplete'] = accepts_incomplete unless accepts_incomplete.nil?
          command.query['planId'] = plan_id unless plan_id.nil?
          command.query['serviceId'] = service_id unless service_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the given service instance from the system.
        # This API is an extension and not part of the OSB spec.
        # Hence the path is a standard Google API URL.
        # @param [String] name
        #   The resource name of the instance to return.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ServicebrokerV1alpha1::GoogleCloudServicebrokerV1alpha1ServiceInstance] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ServicebrokerV1alpha1::GoogleCloudServicebrokerV1alpha1ServiceInstance]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_broker_v2_service_instance(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha1/{+name}', options)
          command.response_representation = Google::Apis::ServicebrokerV1alpha1::GoogleCloudServicebrokerV1alpha1ServiceInstance::Representation
          command.response_class = Google::Apis::ServicebrokerV1alpha1::GoogleCloudServicebrokerV1alpha1ServiceInstance
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns the state of the last operation for the service instance.
        # Only last (or current) operation can be polled.
        # @param [String] parent
        #   Parent must match `projects/[PROJECT_ID]/brokers/[BROKER_ID]`.
        # @param [String] instance_id
        #   The instance id for which to return the last operation status.
        # @param [String] operation
        #   If `operation` was returned during mutation operation, this field must be
        #   populated with the provided value.
        # @param [String] plan_id
        #   Plan id.
        # @param [String] service_id
        #   Service id.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ServicebrokerV1alpha1::GoogleCloudServicebrokerV1alpha1Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ServicebrokerV1alpha1::GoogleCloudServicebrokerV1alpha1Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_broker_v2_service_instance_last_operation(parent, instance_id, operation: nil, plan_id: nil, service_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha1/{+parent}/v2/service_instances/{+instanceId}/last_operation', options)
          command.response_representation = Google::Apis::ServicebrokerV1alpha1::GoogleCloudServicebrokerV1alpha1Operation::Representation
          command.response_class = Google::Apis::ServicebrokerV1alpha1::GoogleCloudServicebrokerV1alpha1Operation
          command.params['parent'] = parent unless parent.nil?
          command.params['instanceId'] = instance_id unless instance_id.nil?
          command.query['operation'] = operation unless operation.nil?
          command.query['planId'] = plan_id unless plan_id.nil?
          command.query['serviceId'] = service_id unless service_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates an existing service instance.
        # See CreateServiceInstance for possible response codes.
        # @param [String] parent
        #   Parent must match `projects/[PROJECT_ID]/brokers/[BROKER_ID]`.
        # @param [String] instance_id
        #   The id of the service instance. Must be unique within GCP project.
        #   Maximum length is 64, GUID recommended.
        #   Required.
        # @param [Google::Apis::ServicebrokerV1alpha1::GoogleCloudServicebrokerV1alpha1ServiceInstance] google_cloud_servicebroker_v1alpha1__service_instance_object
        # @param [Boolean] accepts_incomplete
        #   See CreateServiceInstanceRequest for details.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ServicebrokerV1alpha1::GoogleCloudServicebrokerV1alpha1UpdateServiceInstanceResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ServicebrokerV1alpha1::GoogleCloudServicebrokerV1alpha1UpdateServiceInstanceResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_broker_v2_service_instance(parent, instance_id, google_cloud_servicebroker_v1alpha1__service_instance_object = nil, accepts_incomplete: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1alpha1/{+parent}/v2/service_instances/{+instance_id}', options)
          command.request_representation = Google::Apis::ServicebrokerV1alpha1::GoogleCloudServicebrokerV1alpha1ServiceInstance::Representation
          command.request_object = google_cloud_servicebroker_v1alpha1__service_instance_object
          command.response_representation = Google::Apis::ServicebrokerV1alpha1::GoogleCloudServicebrokerV1alpha1UpdateServiceInstanceResponse::Representation
          command.response_class = Google::Apis::ServicebrokerV1alpha1::GoogleCloudServicebrokerV1alpha1UpdateServiceInstanceResponse
          command.params['parent'] = parent unless parent.nil?
          command.params['instance_id'] = instance_id unless instance_id.nil?
          command.query['acceptsIncomplete'] = accepts_incomplete unless accepts_incomplete.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # CreateBinding generates a service binding to an existing service instance.
        # See ProviServiceInstance for async operation details.
        # @param [String] parent
        #   The GCP container.
        #   Must match
        #   `projects/[PROJECT_ID]/brokers/[BROKER_ID]`.
        # @param [String] instance_id
        #   The service instance to which to bind.
        # @param [String] binding_id
        #   The id of the binding. Must be unique within GCP project.
        #   Maximum length is 64, GUID recommended.
        #   Required.
        # @param [Google::Apis::ServicebrokerV1alpha1::GoogleCloudServicebrokerV1alpha1Binding] google_cloud_servicebroker_v1alpha1__binding_object
        # @param [Boolean] accepts_incomplete
        #   See CreateServiceInstanceRequest for details.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ServicebrokerV1alpha1::GoogleCloudServicebrokerV1alpha1CreateBindingResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ServicebrokerV1alpha1::GoogleCloudServicebrokerV1alpha1CreateBindingResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_broker_v2_service_instance_service_binding(parent, instance_id, binding_id, google_cloud_servicebroker_v1alpha1__binding_object = nil, accepts_incomplete: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:put, 'v1alpha1/{+parent}/v2/service_instances/{+instanceId}/service_bindings/{+binding_id}', options)
          command.request_representation = Google::Apis::ServicebrokerV1alpha1::GoogleCloudServicebrokerV1alpha1Binding::Representation
          command.request_object = google_cloud_servicebroker_v1alpha1__binding_object
          command.response_representation = Google::Apis::ServicebrokerV1alpha1::GoogleCloudServicebrokerV1alpha1CreateBindingResponse::Representation
          command.response_class = Google::Apis::ServicebrokerV1alpha1::GoogleCloudServicebrokerV1alpha1CreateBindingResponse
          command.params['parent'] = parent unless parent.nil?
          command.params['instanceId'] = instance_id unless instance_id.nil?
          command.params['binding_id'] = binding_id unless binding_id.nil?
          command.query['acceptsIncomplete'] = accepts_incomplete unless accepts_incomplete.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Unbinds from a service instance.
        # For synchronous/asynchronous request details see CreateServiceInstance
        # method.
        # If binding does not exist HTTP 410 status will be returned.
        # @param [String] parent
        #   Parent must match `projects/[PROJECT_ID]/brokers/[BROKER_ID]`.
        # @param [String] instance_id
        #   The service instance id that deleted binding is bound to.
        # @param [String] binding_id
        #   The id of the binding to delete.
        # @param [Boolean] accepts_incomplete
        #   See CreateServiceInstanceRequest for details.
        # @param [String] plan_id
        #   The plan id of the service instance.
        # @param [String] service_id
        #   Additional query parameter hints.
        #   The service id of the service instance.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ServicebrokerV1alpha1::GoogleCloudServicebrokerV1alpha1DeleteBindingResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ServicebrokerV1alpha1::GoogleCloudServicebrokerV1alpha1DeleteBindingResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_broker_v2_service_instance_service_binding(parent, instance_id, binding_id, accepts_incomplete: nil, plan_id: nil, service_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1alpha1/{+parent}/v2/service_instances/{instanceId}/service_bindings/{bindingId}', options)
          command.response_representation = Google::Apis::ServicebrokerV1alpha1::GoogleCloudServicebrokerV1alpha1DeleteBindingResponse::Representation
          command.response_class = Google::Apis::ServicebrokerV1alpha1::GoogleCloudServicebrokerV1alpha1DeleteBindingResponse
          command.params['parent'] = parent unless parent.nil?
          command.params['instanceId'] = instance_id unless instance_id.nil?
          command.params['bindingId'] = binding_id unless binding_id.nil?
          command.query['acceptsIncomplete'] = accepts_incomplete unless accepts_incomplete.nil?
          command.query['planId'] = plan_id unless plan_id.nil?
          command.query['serviceId'] = service_id unless service_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # GetBinding returns the binding information.
        # @param [String] parent
        #   Parent must match `projects/[PROJECT_ID]/brokers/[BROKER_ID]`.
        # @param [String] instance_id
        #   Instance id to which the binding is bound.
        # @param [String] binding_id
        #   The binding id.
        # @param [String] plan_id
        #   Plan id.
        # @param [String] service_id
        #   Service id.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ServicebrokerV1alpha1::GoogleCloudServicebrokerV1alpha1GetBindingResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ServicebrokerV1alpha1::GoogleCloudServicebrokerV1alpha1GetBindingResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_broker_v2_service_instance_service_binding(parent, instance_id, binding_id, plan_id: nil, service_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha1/{+parent}/v2/service_instances/{+instanceId}/service_bindings/{+bindingId}', options)
          command.response_representation = Google::Apis::ServicebrokerV1alpha1::GoogleCloudServicebrokerV1alpha1GetBindingResponse::Representation
          command.response_class = Google::Apis::ServicebrokerV1alpha1::GoogleCloudServicebrokerV1alpha1GetBindingResponse
          command.params['parent'] = parent unless parent.nil?
          command.params['instanceId'] = instance_id unless instance_id.nil?
          command.params['bindingId'] = binding_id unless binding_id.nil?
          command.query['planId'] = plan_id unless plan_id.nil?
          command.query['serviceId'] = service_id unless service_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns the state of the last operation for the binding.
        # Only last (or current) operation can be polled.
        # @param [String] parent
        #   Parent must match `projects/[PROJECT_ID]/brokers/[BROKER_ID]`.
        # @param [String] instance_id
        #   The instance id that the binding is bound to.
        # @param [String] binding_id
        #   The binding id for which to return the last operation
        # @param [String] operation
        #   If `operation` was returned during mutation operation, this field must be
        #   populated with the provided value.
        # @param [String] plan_id
        #   Plan id.
        # @param [String] service_id
        #   Service id.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ServicebrokerV1alpha1::GoogleCloudServicebrokerV1alpha1Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ServicebrokerV1alpha1::GoogleCloudServicebrokerV1alpha1Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_broker_v2_service_instance_service_binding_last_operation(parent, instance_id, binding_id, operation: nil, plan_id: nil, service_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha1/{+parent}/v2/service_instances/{+instanceId}/service_bindings/{+bindingId}/last_operation', options)
          command.response_representation = Google::Apis::ServicebrokerV1alpha1::GoogleCloudServicebrokerV1alpha1Operation::Representation
          command.response_class = Google::Apis::ServicebrokerV1alpha1::GoogleCloudServicebrokerV1alpha1Operation
          command.params['parent'] = parent unless parent.nil?
          command.params['instanceId'] = instance_id unless instance_id.nil?
          command.params['bindingId'] = binding_id unless binding_id.nil?
          command.query['operation'] = operation unless operation.nil?
          command.query['planId'] = plan_id unless plan_id.nil?
          command.query['serviceId'] = service_id unless service_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the access control policy for a resource.
        # Returns an empty policy if the resource exists and does not have a policy
        # set.
        # @param [String] resource
        #   REQUIRED: The resource for which the policy is being requested.
        #   See the operation documentation for the appropriate value for this field.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ServicebrokerV1alpha1::GoogleIamV1Policy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ServicebrokerV1alpha1::GoogleIamV1Policy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_iam_policy(resource, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha1/{+resource}:getIamPolicy', options)
          command.response_representation = Google::Apis::ServicebrokerV1alpha1::GoogleIamV1Policy::Representation
          command.response_class = Google::Apis::ServicebrokerV1alpha1::GoogleIamV1Policy
          command.params['resource'] = resource unless resource.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Sets the access control policy on the specified resource. Replaces any
        # existing policy.
        # @param [String] resource
        #   REQUIRED: The resource for which the policy is being specified.
        #   See the operation documentation for the appropriate value for this field.
        # @param [Google::Apis::ServicebrokerV1alpha1::GoogleIamV1SetIamPolicyRequest] google_iam_v1__set_iam_policy_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ServicebrokerV1alpha1::GoogleIamV1Policy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ServicebrokerV1alpha1::GoogleIamV1Policy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def set_iam_policy(resource, google_iam_v1__set_iam_policy_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha1/{+resource}:setIamPolicy', options)
          command.request_representation = Google::Apis::ServicebrokerV1alpha1::GoogleIamV1SetIamPolicyRequest::Representation
          command.request_object = google_iam_v1__set_iam_policy_request_object
          command.response_representation = Google::Apis::ServicebrokerV1alpha1::GoogleIamV1Policy::Representation
          command.response_class = Google::Apis::ServicebrokerV1alpha1::GoogleIamV1Policy
          command.params['resource'] = resource unless resource.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns permissions that a caller has on the specified resource.
        # If the resource does not exist, this will return an empty set of
        # permissions, not a NOT_FOUND error.
        # Note: This operation is designed to be used for building permission-aware
        # UIs and command-line tools, not for authorization checking. This operation
        # may "fail open" without warning.
        # @param [String] resource
        #   REQUIRED: The resource for which the policy detail is being requested.
        #   See the operation documentation for the appropriate value for this field.
        # @param [Google::Apis::ServicebrokerV1alpha1::GoogleIamV1TestIamPermissionsRequest] google_iam_v1__test_iam_permissions_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ServicebrokerV1alpha1::GoogleIamV1TestIamPermissionsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ServicebrokerV1alpha1::GoogleIamV1TestIamPermissionsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def test_iam_permissions(resource, google_iam_v1__test_iam_permissions_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha1/{+resource}:testIamPermissions', options)
          command.request_representation = Google::Apis::ServicebrokerV1alpha1::GoogleIamV1TestIamPermissionsRequest::Representation
          command.request_object = google_iam_v1__test_iam_permissions_request_object
          command.response_representation = Google::Apis::ServicebrokerV1alpha1::GoogleIamV1TestIamPermissionsResponse::Representation
          command.response_class = Google::Apis::ServicebrokerV1alpha1::GoogleIamV1TestIamPermissionsResponse
          command.params['resource'] = resource unless resource.nil?
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
