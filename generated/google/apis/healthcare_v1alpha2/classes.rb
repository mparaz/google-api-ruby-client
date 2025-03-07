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

require 'date'
require 'google/apis/core/base_service'
require 'google/apis/core/json_representation'
require 'google/apis/core/hashable'
require 'google/apis/errors'

module Google
  module Apis
    module HealthcareV1alpha2
      
      # An annotation record.
      class Annotation
        include Google::Apis::Core::Hashable
      
        # AnnotationSource holds the source information of the annotation.
        # Corresponds to the JSON property `annotationSource`
        # @return [Google::Apis::HealthcareV1alpha2::AnnotationSource]
        attr_accessor :annotation_source
      
        # Image annotation.
        # Corresponds to the JSON property `imageAnnotation`
        # @return [Google::Apis::HealthcareV1alpha2::ImageAnnotation]
        attr_accessor :image_annotation
      
        # Output only. Resource name of the Annotation, of the form
        # `projects/`project_id`/locations/`location_id`/datasets/`dataset_id`/
        # annotationStores/`annotation_store_id`/annotations/`annotation_id``.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Resource level annotation.
        # Corresponds to the JSON property `resourceAnnotation`
        # @return [Google::Apis::HealthcareV1alpha2::ResourceAnnotation]
        attr_accessor :resource_annotation
      
        # A TextAnnotation specifies a text range that includes sensitive information.
        # Corresponds to the JSON property `textAnnotation`
        # @return [Google::Apis::HealthcareV1alpha2::SensitiveTextAnnotation]
        attr_accessor :text_annotation
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @annotation_source = args[:annotation_source] if args.key?(:annotation_source)
          @image_annotation = args[:image_annotation] if args.key?(:image_annotation)
          @name = args[:name] if args.key?(:name)
          @resource_annotation = args[:resource_annotation] if args.key?(:resource_annotation)
          @text_annotation = args[:text_annotation] if args.key?(:text_annotation)
        end
      end
      
      # AnnotationSource holds the source information of the annotation.
      class AnnotationSource
        include Google::Apis::Core::Hashable
      
        # Cloud Healthcare API resource.
        # Corresponds to the JSON property `cloudHealthcareSource`
        # @return [Google::Apis::HealthcareV1alpha2::CloudHealthcareSource]
        attr_accessor :cloud_healthcare_source
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cloud_healthcare_source = args[:cloud_healthcare_source] if args.key?(:cloud_healthcare_source)
        end
      end
      
      # An Annotation store that can store annotation resources such as
      # labels and tags for text, image and audio.
      class AnnotationStore
        include Google::Apis::Core::Hashable
      
        # User-supplied key-value pairs used to organize Annotation stores.
        # Label keys must be between 1 and 63 characters long, have a UTF-8 encoding
        # of maximum 128 bytes, and must conform to the
        # following PCRE regular expression:
        # \p`Ll`\p`Lo``0,62`
        # Label values are optional, must be between 1 and 63 characters long, have
        # a UTF-8 encoding of maximum 128 bytes, and must conform to the
        # following PCRE regular expression: [\p`Ll`\p`Lo`\p`N`_-]`0,63`
        # No more than 64 labels can be associated with a given store.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # Output only. Resource name of the Annotation store, of the form
        # `projects/`project_id`/locations/`location_id`/datasets/`dataset_id`/
        # annotationStores/`annotation_store_id``.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @labels = args[:labels] if args.key?(:labels)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # Specifies the audit configuration for a service.
      # The configuration determines which permission types are logged, and what
      # identities, if any, are exempted from logging.
      # An AuditConfig must have one or more AuditLogConfigs.
      # If there are AuditConfigs for both `allServices` and a specific service,
      # the union of the two AuditConfigs is used for that service: the log_types
      # specified in each AuditConfig are enabled, and the exempted_members in each
      # AuditLogConfig are exempted.
      # Example Policy with multiple AuditConfigs:
      # `
      # "audit_configs": [
      # `
      # "service": "allServices"
      # "audit_log_configs": [
      # `
      # "log_type": "DATA_READ",
      # "exempted_members": [
      # "user:foo@gmail.com"
      # ]
      # `,
      # `
      # "log_type": "DATA_WRITE",
      # `,
      # `
      # "log_type": "ADMIN_READ",
      # `
      # ]
      # `,
      # `
      # "service": "fooservice.googleapis.com"
      # "audit_log_configs": [
      # `
      # "log_type": "DATA_READ",
      # `,
      # `
      # "log_type": "DATA_WRITE",
      # "exempted_members": [
      # "user:bar@gmail.com"
      # ]
      # `
      # ]
      # `
      # ]
      # `
      # For fooservice, this policy enables DATA_READ, DATA_WRITE and ADMIN_READ
      # logging. It also exempts foo@gmail.com from DATA_READ logging, and
      # bar@gmail.com from DATA_WRITE logging.
      class AuditConfig
        include Google::Apis::Core::Hashable
      
        # The configuration for logging of each type of permission.
        # Corresponds to the JSON property `auditLogConfigs`
        # @return [Array<Google::Apis::HealthcareV1alpha2::AuditLogConfig>]
        attr_accessor :audit_log_configs
      
        # Specifies a service that will be enabled for audit logging.
        # For example, `storage.googleapis.com`, `cloudsql.googleapis.com`.
        # `allServices` is a special value that covers all services.
        # Corresponds to the JSON property `service`
        # @return [String]
        attr_accessor :service
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @audit_log_configs = args[:audit_log_configs] if args.key?(:audit_log_configs)
          @service = args[:service] if args.key?(:service)
        end
      end
      
      # Provides the configuration for logging a type of permissions.
      # Example:
      # `
      # "audit_log_configs": [
      # `
      # "log_type": "DATA_READ",
      # "exempted_members": [
      # "user:foo@gmail.com"
      # ]
      # `,
      # `
      # "log_type": "DATA_WRITE",
      # `
      # ]
      # `
      # This enables 'DATA_READ' and 'DATA_WRITE' logging, while exempting
      # foo@gmail.com from DATA_READ logging.
      class AuditLogConfig
        include Google::Apis::Core::Hashable
      
        # Specifies the identities that do not cause logging for this type of
        # permission.
        # Follows the same format of Binding.members.
        # Corresponds to the JSON property `exemptedMembers`
        # @return [Array<String>]
        attr_accessor :exempted_members
      
        # The log type that this config enables.
        # Corresponds to the JSON property `logType`
        # @return [String]
        attr_accessor :log_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @exempted_members = args[:exempted_members] if args.key?(:exempted_members)
          @log_type = args[:log_type] if args.key?(:log_type)
        end
      end
      
      # Associates `members` with a `role`.
      class Binding
        include Google::Apis::Core::Hashable
      
        # Represents an expression text. Example:
        # title: "User account presence"
        # description: "Determines whether the request has a user account"
        # expression: "size(request.user) > 0"
        # Corresponds to the JSON property `condition`
        # @return [Google::Apis::HealthcareV1alpha2::Expr]
        attr_accessor :condition
      
        # Specifies the identities requesting access for a Cloud Platform resource.
        # `members` can have the following values:
        # * `allUsers`: A special identifier that represents anyone who is
        # on the internet; with or without a Google account.
        # * `allAuthenticatedUsers`: A special identifier that represents anyone
        # who is authenticated with a Google account or a service account.
        # * `user:`emailid``: An email address that represents a specific Google
        # account. For example, `alice@gmail.com` .
        # * `serviceAccount:`emailid``: An email address that represents a service
        # account. For example, `my-other-app@appspot.gserviceaccount.com`.
        # * `group:`emailid``: An email address that represents a Google group.
        # For example, `admins@example.com`.
        # * `domain:`domain``: The G Suite domain (primary) that represents all the
        # users of that domain. For example, `google.com` or `example.com`.
        # Corresponds to the JSON property `members`
        # @return [Array<String>]
        attr_accessor :members
      
        # Role that is assigned to `members`.
        # For example, `roles/viewer`, `roles/editor`, or `roles/owner`.
        # Corresponds to the JSON property `role`
        # @return [String]
        attr_accessor :role
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @condition = args[:condition] if args.key?(:condition)
          @members = args[:members] if args.key?(:members)
          @role = args[:role] if args.key?(:role)
        end
      end
      
      # A bounding polygon for the detected image annotation.
      class BoundingPoly
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `label`
        # @return [String]
        attr_accessor :label
      
        # 
        # Corresponds to the JSON property `vertices`
        # @return [Array<Google::Apis::HealthcareV1alpha2::Vertex>]
        attr_accessor :vertices
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @label = args[:label] if args.key?(:label)
          @vertices = args[:vertices] if args.key?(:vertices)
        end
      end
      
      # Mask a string by replacing its characters with a fixed character.
      class CharacterMaskConfig
        include Google::Apis::Core::Hashable
      
        # Character to mask the sensitive values. If not supplied, defaults to "*".
        # Corresponds to the JSON property `maskingCharacter`
        # @return [String]
        attr_accessor :masking_character
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @masking_character = args[:masking_character] if args.key?(:masking_character)
        end
      end
      
      # Cloud Healthcare API resource.
      class CloudHealthcareSource
        include Google::Apis::Core::Hashable
      
        # Full path of a Cloud Healthcare API resource.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # Creates a new message.
      class CreateMessageRequest
        include Google::Apis::Core::Hashable
      
        # A complete HL7v2 message.
        # See http://www.hl7.org/implement/standards/index.cfm?ref=common for details
        # on the standard.
        # Corresponds to the JSON property `message`
        # @return [Google::Apis::HealthcareV1alpha2::Message]
        attr_accessor :message
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @message = args[:message] if args.key?(:message)
        end
      end
      
      # Pseudonymization method that generates surrogates via cryptographic hashing.
      # Uses SHA-256.
      # Outputs a base64-encoded representation of the hashed output
      # (for example, `L7k0BHmF1ha5U3NfGykjro4xWi1MPVQPjhMAZbSV9mM=`).
      class CryptoHashConfig
        include Google::Apis::Core::Hashable
      
        # An AES 128/192/256 bit key. Causes the hash to be computed based on this
        # key. A default key is generated for each DeidentifyDataset operation and is
        # used wherever crypto_key is not specified.
        # Corresponds to the JSON property `cryptoKey`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :crypto_key
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @crypto_key = args[:crypto_key] if args.key?(:crypto_key)
        end
      end
      
      # A message representing a health dataset.
      # A health dataset represents a collection of healthcare data pertaining to one
      # or more patients. This may include multiple modalities of healthcare data,
      # such as electronic medical records or medical imaging data.
      class Dataset
        include Google::Apis::Core::Hashable
      
        # Output only. Resource name of the dataset, of the form
        # `projects/`project_id`/locations/`location_id`/datasets/`dataset_id``.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The default timezone used by this dataset. Must be a either a valid IANA
        # time zone name such as "America/New_York" or empty, which defaults to UTC.
        # This is used for parsing times in resources (e.g., HL7 messages) where no
        # explicit timezone is specified.
        # Corresponds to the JSON property `timeZone`
        # @return [String]
        attr_accessor :time_zone
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] if args.key?(:name)
          @time_zone = args[:time_zone] if args.key?(:time_zone)
        end
      end
      
      # Shift a date forward or backward in time by a random amount which is
      # consistent for a given patient and crypto key combination.
      class DateShiftConfig
        include Google::Apis::Core::Hashable
      
        # An AES 128/192/256 bit key. Causes the shift to be computed based on this
        # key and the patient ID. A default key is generated for each
        # DeidentifyDataset operation and is used wherever crypto_key is not
        # specified.
        # Corresponds to the JSON property `cryptoKey`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :crypto_key
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @crypto_key = args[:crypto_key] if args.key?(:crypto_key)
        end
      end
      
      # Configures de-id options specific to different types of content.
      # Each submessage customizes the handling of an
      # https://tools.ietf.org/html/rfc6838 media type or subtype. Configs are
      # applied in a nested manner at runtime.
      class DeidentifyConfig
        include Google::Apis::Core::Hashable
      
        # Specifies the parameters needed for de-identification of DICOM stores.
        # Corresponds to the JSON property `dicom`
        # @return [Google::Apis::HealthcareV1alpha2::DicomConfig]
        attr_accessor :dicom
      
        # Specifies how de-identification of a FHIR store should be handled.
        # Corresponds to the JSON property `fhir`
        # @return [Google::Apis::HealthcareV1alpha2::FhirConfig]
        attr_accessor :fhir
      
        # Specifies how de-identification of image pixel should be handled.
        # Corresponds to the JSON property `image`
        # @return [Google::Apis::HealthcareV1alpha2::ImageConfig]
        attr_accessor :image
      
        # Configures de-identification of text wherever it is found in the
        # source_dataset.
        # Corresponds to the JSON property `text`
        # @return [Google::Apis::HealthcareV1alpha2::TextConfig]
        attr_accessor :text
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @dicom = args[:dicom] if args.key?(:dicom)
          @fhir = args[:fhir] if args.key?(:fhir)
          @image = args[:image] if args.key?(:image)
          @text = args[:text] if args.key?(:text)
        end
      end
      
      # Redacts identifying information from the specified dataset.
      class DeidentifyDatasetRequest
        include Google::Apis::Core::Hashable
      
        # Configures de-id options specific to different types of content.
        # Each submessage customizes the handling of an
        # https://tools.ietf.org/html/rfc6838 media type or subtype. Configs are
        # applied in a nested manner at runtime.
        # Corresponds to the JSON property `config`
        # @return [Google::Apis::HealthcareV1alpha2::DeidentifyConfig]
        attr_accessor :config
      
        # The name of the dataset resource to create and write the redacted data to
        # (e.g.,
        # `projects/`project_id`/locations/`location_id`/datasets/`dataset_id``).
        # * The destination dataset must not exist.
        # * The destination dataset must be in the same project as the source
        # dataset. De-identifying data across multiple projects is not supported.
        # Corresponds to the JSON property `destinationDataset`
        # @return [String]
        attr_accessor :destination_dataset
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @config = args[:config] if args.key?(:config)
          @destination_dataset = args[:destination_dataset] if args.key?(:destination_dataset)
        end
      end
      
      # Contains the status of the Deidentify operation.
      class DeidentifyErrorDetails
        include Google::Apis::Core::Hashable
      
        # Number of resources failed to process.
        # Corresponds to the JSON property `failureResourceCount`
        # @return [Fixnum]
        attr_accessor :failure_resource_count
      
        # Number of stores failed to process.
        # Corresponds to the JSON property `failureStoreCount`
        # @return [Fixnum]
        attr_accessor :failure_store_count
      
        # Number of resources successfully processed.
        # Corresponds to the JSON property `successResourceCount`
        # @return [Fixnum]
        attr_accessor :success_resource_count
      
        # Number of stores successfully processed.
        # Corresponds to the JSON property `successStoreCount`
        # @return [Fixnum]
        attr_accessor :success_store_count
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @failure_resource_count = args[:failure_resource_count] if args.key?(:failure_resource_count)
          @failure_store_count = args[:failure_store_count] if args.key?(:failure_store_count)
          @success_resource_count = args[:success_resource_count] if args.key?(:success_resource_count)
          @success_store_count = args[:success_store_count] if args.key?(:success_store_count)
        end
      end
      
      # Contains a detailed summary of the Deidentify operation.
      class DeidentifySummary
        include Google::Apis::Core::Hashable
      
        # Number of resources successfully processed.
        # Corresponds to the JSON property `successResourceCount`
        # @return [Fixnum]
        attr_accessor :success_resource_count
      
        # Number of stores successfully processed.
        # Corresponds to the JSON property `successStoreCount`
        # @return [Fixnum]
        attr_accessor :success_store_count
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @success_resource_count = args[:success_resource_count] if args.key?(:success_resource_count)
          @success_store_count = args[:success_store_count] if args.key?(:success_store_count)
        end
      end
      
      # Contains multiple sensitive information findings for each resource slice.
      class Detail
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `findings`
        # @return [Array<Google::Apis::HealthcareV1alpha2::Finding>]
        attr_accessor :findings
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @findings = args[:findings] if args.key?(:findings)
        end
      end
      
      # Specifies the parameters needed for de-identification of DICOM stores.
      class DicomConfig
        include Google::Apis::Core::Hashable
      
        # Tag filtering profile that determines which tags to keep/remove.
        # Corresponds to the JSON property `filterProfile`
        # @return [String]
        attr_accessor :filter_profile
      
        # List of tags to be filtered.
        # Corresponds to the JSON property `keepList`
        # @return [Google::Apis::HealthcareV1alpha2::TagFilterList]
        attr_accessor :keep_list
      
        # List of tags to be filtered.
        # Corresponds to the JSON property `removeList`
        # @return [Google::Apis::HealthcareV1alpha2::TagFilterList]
        attr_accessor :remove_list
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @filter_profile = args[:filter_profile] if args.key?(:filter_profile)
          @keep_list = args[:keep_list] if args.key?(:keep_list)
          @remove_list = args[:remove_list] if args.key?(:remove_list)
        end
      end
      
      # Represents a DICOM store.
      class DicomStore
        include Google::Apis::Core::Hashable
      
        # User-supplied key-value pairs used to organize DICOM stores.
        # Label keys must be between 1 and 63 characters long, have a UTF-8 encoding
        # of maximum 128 bytes, and must conform to the
        # following PCRE regular expression:
        # \p`Ll`\p`Lo``0,62`
        # Label values are optional, must be between 1 and 63 characters long, have
        # a UTF-8 encoding of maximum 128 bytes, and must conform to the
        # following PCRE regular expression: [\p`Ll`\p`Lo`\p`N`_-]`0,63`
        # No more than 64 labels can be associated with a given store.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # Output only. Resource name of the DICOM store, of the form
        # `projects/`project_id`/locations/`location_id`/datasets/`dataset_id`/
        # dicomStores/`dicom_store_id``.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Specifies where notifications should be sent upon changes to a data store.
        # Corresponds to the JSON property `notificationConfig`
        # @return [Google::Apis::HealthcareV1alpha2::NotificationConfig]
        attr_accessor :notification_config
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @labels = args[:labels] if args.key?(:labels)
          @name = args[:name] if args.key?(:name)
          @notification_config = args[:notification_config] if args.key?(:notification_config)
        end
      end
      
      # A generic empty message that you can re-use to avoid defining duplicated
      # empty messages in your APIs. A typical example is to use it as the request
      # or the response type of an API method. For instance:
      # service Foo `
      # rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty);
      # `
      # The JSON representation for `Empty` is empty JSON object ````.
      class Empty
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Structure to describe the error encountered during batch operation on one
      # resource. This is used both for sample errors in operation response, and
      # for format of errors in error reports.
      class ErrorDetail
        include Google::Apis::Core::Hashable
      
        # The `Status` type defines a logical error model that is suitable for
        # different programming environments, including REST APIs and RPC APIs. It is
        # used by [gRPC](https://github.com/grpc). Each `Status` message contains
        # three pieces of data: error code, error message, and error details.
        # You can find out more about this error model and how to work with it in the
        # [API Design Guide](https://cloud.google.com/apis/design/errors).
        # Corresponds to the JSON property `error`
        # @return [Google::Apis::HealthcareV1alpha2::Status]
        attr_accessor :error
      
        # The identifier of the resource.
        # Corresponds to the JSON property `resource`
        # @return [String]
        attr_accessor :resource
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @error = args[:error] if args.key?(:error)
          @resource = args[:resource] if args.key?(:resource)
        end
      end
      
      # Exports data from the specified DICOM store.
      # If a given resource (e.g., a DICOM object with the same SOPInstance UID)
      # already exists in the output, it is overwritten with the version
      # in the source dataset.
      # Exported DICOM data will persist when the DICOM store from which it was
      # exported is deleted.
      class ExportDicomDataRequest
        include Google::Apis::Core::Hashable
      
        # The BigQuery table where the output should be written.
        # Corresponds to the JSON property `bigqueryDestination`
        # @return [Google::Apis::HealthcareV1alpha2::GoogleCloudHealthcareV1alpha2DicomBigQueryDestination]
        attr_accessor :bigquery_destination
      
        # The Cloud Storage location where the output should be written, and the export
        # configuration.
        # Corresponds to the JSON property `gcsDestination`
        # @return [Google::Apis::HealthcareV1alpha2::GoogleCloudHealthcareV1alpha2DicomGcsDestination]
        attr_accessor :gcs_destination
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @bigquery_destination = args[:bigquery_destination] if args.key?(:bigquery_destination)
          @gcs_destination = args[:gcs_destination] if args.key?(:gcs_destination)
        end
      end
      
      # Request to export resources.
      class ExportResourcesRequest
        include Google::Apis::Core::Hashable
      
        # The configuration for exporting to BigQuery.
        # Corresponds to the JSON property `bigqueryDestination`
        # @return [Google::Apis::HealthcareV1alpha2::GoogleCloudHealthcareV1alpha2FhirBigQueryDestination]
        attr_accessor :bigquery_destination
      
        # The configuration for exporting to Cloud Storage.
        # Corresponds to the JSON property `gcsDestination`
        # @return [Google::Apis::HealthcareV1alpha2::GoogleCloudHealthcareV1alpha2FhirRestGcsDestination]
        attr_accessor :gcs_destination
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @bigquery_destination = args[:bigquery_destination] if args.key?(:bigquery_destination)
          @gcs_destination = args[:gcs_destination] if args.key?(:gcs_destination)
        end
      end
      
      # Represents an expression text. Example:
      # title: "User account presence"
      # description: "Determines whether the request has a user account"
      # expression: "size(request.user) > 0"
      class Expr
        include Google::Apis::Core::Hashable
      
        # An optional description of the expression. This is a longer text which
        # describes the expression, e.g. when hovered over it in a UI.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Textual representation of an expression in
        # Common Expression Language syntax.
        # The application context of the containing message determines which
        # well-known feature set of CEL is supported.
        # Corresponds to the JSON property `expression`
        # @return [String]
        attr_accessor :expression
      
        # An optional string indicating the location of the expression for error
        # reporting, e.g. a file name and a position in the file.
        # Corresponds to the JSON property `location`
        # @return [String]
        attr_accessor :location
      
        # An optional title for the expression, i.e. a short string describing
        # its purpose. This can be used e.g. in UIs which allow to enter the
        # expression.
        # Corresponds to the JSON property `title`
        # @return [String]
        attr_accessor :title
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @description = args[:description] if args.key?(:description)
          @expression = args[:expression] if args.key?(:expression)
          @location = args[:location] if args.key?(:location)
          @title = args[:title] if args.key?(:title)
        end
      end
      
      # Specifies how de-identification of a FHIR store should be handled.
      class FhirConfig
        include Google::Apis::Core::Hashable
      
        # Specifies FHIR paths to match and how to transform them. Any field that
        # is not matched by a FieldMetadata will be passed through to the output
        # dataset unmodified. All extensions are removed in the output.
        # Corresponds to the JSON property `fieldMetadataList`
        # @return [Array<Google::Apis::HealthcareV1alpha2::FieldMetadata>]
        attr_accessor :field_metadata_list
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @field_metadata_list = args[:field_metadata_list] if args.key?(:field_metadata_list)
        end
      end
      
      # Represents a FHIR store.
      class FhirStore
        include Google::Apis::Core::Hashable
      
        # Whether to disable referential integrity in this FHIR store. This field is
        # immutable after FHIR store creation.
        # The default value is false, meaning that the API will enforce referential
        # integrity and fail the requests that will result in inconsistent state in
        # the FHIR store.
        # When this field is set to true, the API will skip referential integrity
        # check. Consequently, operations that rely on references, such as
        # GetPatientEverything, will not return all the results if broken references
        # exist.
        # Corresponds to the JSON property `disableReferentialIntegrity`
        # @return [Boolean]
        attr_accessor :disable_referential_integrity
        alias_method :disable_referential_integrity?, :disable_referential_integrity
      
        # Whether to disable resource versioning for this FHIR store. This field can
        # not be changed after the creation of FHIR store.
        # If set to false, which is the default behavior, all write operations will
        # cause historical versions to be recorded automatically. The historical
        # versions can be fetched through the history APIs, but cannot be updated.
        # If set to true, no historical versions will be kept. The server will send
        # back errors for attempts to read the historical versions.
        # Corresponds to the JSON property `disableResourceVersioning`
        # @return [Boolean]
        attr_accessor :disable_resource_versioning
        alias_method :disable_resource_versioning?, :disable_resource_versioning
      
        # Whether to allow the bulk import API to accept history bundles and directly
        # insert historical resource versions into the FHIR store. Importing resource
        # histories creates resource interactions that appear to have occurred in the
        # past, which clients may not want to allow. If set to false, history bundles
        # within an import will fail with an error.
        # Corresponds to the JSON property `enableHistoryImport`
        # @return [Boolean]
        attr_accessor :enable_history_import
        alias_method :enable_history_import?, :enable_history_import
      
        # Whether this FHIR store has the [updateCreate
        # capability](https://www.hl7.org/fhir/capabilitystatement-definitions.html#
        # CapabilityStatement.rest.resource.updateCreate).
        # This determines if the client can use an Update operation to create a new
        # resource with a client-specified ID. If false, all IDs are server-assigned
        # through the Create operation and attempts to Update a non-existent resource
        # will return errors. Please treat the audit logs with appropriate levels of
        # care if client-specified resource IDs contain sensitive data such as
        # patient identifiers, those IDs will be part of the FHIR resource path
        # recorded in Cloud audit logs and Cloud Pub/Sub notifications.
        # Corresponds to the JSON property `enableUpdateCreate`
        # @return [Boolean]
        attr_accessor :enable_update_create
        alias_method :enable_update_create?, :enable_update_create
      
        # User-supplied key-value pairs used to organize FHIR stores.
        # Label keys must be between 1 and 63 characters long, have a UTF-8 encoding
        # of maximum 128 bytes, and must conform to the
        # following PCRE regular expression:
        # \p`Ll`\p`Lo``0,62`
        # Label values are optional, must be between 1 and 63 characters long, have
        # a UTF-8 encoding of maximum 128 bytes, and must conform to the
        # following PCRE regular expression: [\p`Ll`\p`Lo`\p`N`_-]`0,63`
        # No more than 64 labels can be associated with a given store.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # Output only. Resource name of the FHIR store, of the form
        # `projects/`project_id`/datasets/`dataset_id`/fhirStores/`fhir_store_id``.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Specifies where notifications should be sent upon changes to a data store.
        # Corresponds to the JSON property `notificationConfig`
        # @return [Google::Apis::HealthcareV1alpha2::NotificationConfig]
        attr_accessor :notification_config
      
        # A list of streaming configs that configure the destinations of streaming
        # export for every resource mutation in this FHIR store. Each store is
        # allowed to have up to 10 streaming configs.
        # After a new config is added, the next resource mutation will be streamed to
        # the new location in addition to the existing ones.
        # When a location is removed from the list, the server will simply stop
        # streaming to that location. Before adding a new config, you must add the
        # required
        # [`bigquery.dataEditor`](https://cloud.google.com/bigquery/docs/access-control#
        # bigquery.dataEditor)
        # role to your project's **Cloud Healthcare Service Agent**
        # [service account](https://cloud.google.com/iam/docs/service-accounts).
        # Some lag (typically on the order of dozens of seconds) is expected before
        # the results show up in the streaming destination.
        # Corresponds to the JSON property `streamConfigs`
        # @return [Array<Google::Apis::HealthcareV1alpha2::StreamConfig>]
        attr_accessor :stream_configs
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @disable_referential_integrity = args[:disable_referential_integrity] if args.key?(:disable_referential_integrity)
          @disable_resource_versioning = args[:disable_resource_versioning] if args.key?(:disable_resource_versioning)
          @enable_history_import = args[:enable_history_import] if args.key?(:enable_history_import)
          @enable_update_create = args[:enable_update_create] if args.key?(:enable_update_create)
          @labels = args[:labels] if args.key?(:labels)
          @name = args[:name] if args.key?(:name)
          @notification_config = args[:notification_config] if args.key?(:notification_config)
          @stream_configs = args[:stream_configs] if args.key?(:stream_configs)
        end
      end
      
      # Specifies FHIR paths to match, and how to handle de-identification of
      # matching fields.
      class FieldMetadata
        include Google::Apis::Core::Hashable
      
        # Deidentify action for one field.
        # Corresponds to the JSON property `action`
        # @return [String]
        attr_accessor :action
      
        # List of paths to FHIR fields to be redacted. Each path is a
        # period-separated list where each component is either a field name or
        # FHIR type name, for example: Patient, HumanName.
        # For "choice" types (those defined in the FHIR spec with the form:
        # field[x]) we use two separate components. e.g. "deceasedAge.unit" is
        # matched by "Deceased.Age.unit".
        # Supported types are: AdministrativeGenderCode, Code, Date, DateTime,
        # Decimal, HumanName, Id, LanguageCode, Markdown, MimeTypeCode, Oid,
        # String, Uri, Uuid, Xhtml.
        # Corresponds to the JSON property `paths`
        # @return [Array<String>]
        attr_accessor :paths
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @action = args[:action] if args.key?(:action)
          @paths = args[:paths] if args.key?(:paths)
        end
      end
      
      # 
      class Finding
        include Google::Apis::Core::Hashable
      
        # Zero-based ending index of the found text, exclusively.
        # Corresponds to the JSON property `end`
        # @return [Fixnum]
        attr_accessor :end
      
        # The type of information stored in this text range (e.g. HumanName,
        # BirthDate, Address, etc.)
        # Corresponds to the JSON property `infoType`
        # @return [String]
        attr_accessor :info_type
      
        # Zero-based starting index of the found text, inclusively.
        # Corresponds to the JSON property `start`
        # @return [Fixnum]
        attr_accessor :start
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @end = args[:end] if args.key?(:end)
          @info_type = args[:info_type] if args.key?(:info_type)
          @start = args[:start] if args.key?(:start)
        end
      end
      
      # Request message for `GetIamPolicy` method.
      class GetIamPolicyRequest
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # The BigQuery table where the output should be written.
      class GoogleCloudHealthcareV1alpha2DicomBigQueryDestination
        include Google::Apis::Core::Hashable
      
        # If the destination table already exists and this flag is `TRUE`, the table
        # will be overwritten by the contents of the DICOM store. If the flag is not
        # set and the destination table already exists, the export call returns an
        # error.
        # Corresponds to the JSON property `force`
        # @return [Boolean]
        attr_accessor :force
        alias_method :force?, :force
      
        # BigQuery URI to a table, up to 2000 characters long, in the format
        # `bq://projectId.bqDatasetId.tableId`
        # Corresponds to the JSON property `tableUri`
        # @return [String]
        attr_accessor :table_uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @force = args[:force] if args.key?(:force)
          @table_uri = args[:table_uri] if args.key?(:table_uri)
        end
      end
      
      # The Cloud Storage location where the output should be written, and the export
      # configuration.
      class GoogleCloudHealthcareV1alpha2DicomGcsDestination
        include Google::Apis::Core::Hashable
      
        # MIME types supported by DICOM spec.
        # Each file will be written in the following format:
        # `.../`study_id`/`series_id`/`instance_id`[/`frame_number`].`extension``
        # The frame_number component will exist only for multi-frame instances.
        # Refer to the DICOM conformance statement for permissible MIME types:
        # https://cloud.google.com/healthcare/docs/dicom#wado-rs
        # The following extensions will be used for output files:
        # application/dicom -> .dcm
        # image/jpeg -> .jpg
        # image/png -> .png
        # If unspecified, the instances will be exported in their original
        # DICOM format.
        # Corresponds to the JSON property `mimeType`
        # @return [String]
        attr_accessor :mime_type
      
        # The Cloud Storage destination to export to.
        # URI for a Cloud Storage directory where result files should be written (in
        # the format `gs://`bucket-id`/`path/to/destination/dir``). If there is no
        # trailing slash, the service will append one when composing the object path.
        # The user is responsible for creating the Cloud Storage bucket referenced in
        # `uri_prefix`.
        # Corresponds to the JSON property `uriPrefix`
        # @return [String]
        attr_accessor :uri_prefix
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @mime_type = args[:mime_type] if args.key?(:mime_type)
          @uri_prefix = args[:uri_prefix] if args.key?(:uri_prefix)
        end
      end
      
      # Specifies the configuration for importing data from Cloud Storage.
      class GoogleCloudHealthcareV1alpha2DicomGcsSource
        include Google::Apis::Core::Hashable
      
        # Points to a Cloud Storage URI containing file(s) with
        # content only. The URI must be in the following format:
        # `gs://`bucket_id`/`object_id``. The URI can include wildcards in
        # `object_id` and thus identify multiple files. Supported wildcards:
        # '*' to match 0 or more non-separator characters
        # '**' to match 0 or more characters (including separators). Must be used at
        # the end of a path and with no other wildcards in the
        # path. Can also be used with a file extension (such as .dcm), which
        # imports all files with the extension in the specified directory and
        # its sub-directories. For example,
        # `gs://my-bucket/my-directory/**.dcm` imports all files with .dcm
        # extensions in `my-directory/` and its sub-directories.
        # '?' to match 1 character
        # All other URI formats are invalid.
        # Files matching the wildcard are expected to contain content only, no
        # metadata.
        # Corresponds to the JSON property `uri`
        # @return [String]
        attr_accessor :uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @uri = args[:uri] if args.key?(:uri)
        end
      end
      
      # The configuration for exporting to BigQuery.
      class GoogleCloudHealthcareV1alpha2FhirBigQueryDestination
        include Google::Apis::Core::Hashable
      
        # BigQuery URI to a dataset, up to 2000 characters long, in the format
        # `bq://projectId.bqDatasetId`
        # Corresponds to the JSON property `datasetUri`
        # @return [String]
        attr_accessor :dataset_uri
      
        # Configuration for the FHIR BigQuery and Cloud Storage schema. Determines
        # how the server generates the schema.
        # Corresponds to the JSON property `schemaConfig`
        # @return [Google::Apis::HealthcareV1alpha2::SchemaConfig]
        attr_accessor :schema_config
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @dataset_uri = args[:dataset_uri] if args.key?(:dataset_uri)
          @schema_config = args[:schema_config] if args.key?(:schema_config)
        end
      end
      
      # Final response of exporting resources.
      # This structure will be included in the
      # response to describe the detailed
      # outcome. It will only be included when the operation finishes.
      class GoogleCloudHealthcareV1alpha2FhirRestExportResourcesResponse
        include Google::Apis::Core::Hashable
      
        # The name of the FHIR store where resources have been exported, in the
        # format
        # `projects/`project_id`/locations/`location_id`/datasets/`dataset_id`/
        # fhirStores/`fhir_store_id``.
        # Corresponds to the JSON property `fhirStore`
        # @return [String]
        attr_accessor :fhir_store
      
        # The total number of resources exported from the requested FHIR store.
        # Corresponds to the JSON property `resourceCount`
        # @return [Fixnum]
        attr_accessor :resource_count
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @fhir_store = args[:fhir_store] if args.key?(:fhir_store)
          @resource_count = args[:resource_count] if args.key?(:resource_count)
        end
      end
      
      # The configuration for exporting to Cloud Storage.
      class GoogleCloudHealthcareV1alpha2FhirRestGcsDestination
        include Google::Apis::Core::Hashable
      
        # URI for a Cloud Storage directory where result files should be written (in
        # the format `gs://`bucket-id`/`path/to/destination/dir``). If there is no
        # trailing slash, the service will append one when composing the object path.
        # The user is responsible for creating the Cloud Storage bucket referenced in
        # `uri_prefix`.
        # Corresponds to the JSON property `uriPrefix`
        # @return [String]
        attr_accessor :uri_prefix
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @uri_prefix = args[:uri_prefix] if args.key?(:uri_prefix)
        end
      end
      
      # Specifies the Cloud Storage destination where errors will be recorded.
      class GoogleCloudHealthcareV1alpha2FhirRestGcsErrorDestination
        include Google::Apis::Core::Hashable
      
        # URI for a Cloud Storage directory to which error report files should be
        # written (in the format `gs://`bucket-id`/`path/to/destination/dir``). If
        # there is no trailing slash, the service will append one when composing the
        # object path. The user is responsible for creating the Cloud Storage bucket
        # referenced in `uri_prefix`.
        # Corresponds to the JSON property `uriPrefix`
        # @return [String]
        attr_accessor :uri_prefix
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @uri_prefix = args[:uri_prefix] if args.key?(:uri_prefix)
        end
      end
      
      # Specifies the configuration for importing data from Cloud Storage.
      class GoogleCloudHealthcareV1alpha2FhirRestGcsSource
        include Google::Apis::Core::Hashable
      
        # Points to a Cloud Storage URI containing file(s) to import.
        # The URI must be in the following format: `gs://`bucket_id`/`object_id``.
        # The URI can include wildcards in `object_id` and thus identify multiple
        # files. Supported wildcards:
        # *  `*` to match 0 or more non-separator characters
        # *  `**` to match 0 or more characters (including separators). Must be used
        # at the end of a path and with no other wildcards in the
        # path. Can also be used with a file extension (such as .ndjson), which
        # imports all files with the extension in the specified directory and
        # its sub-directories. For example, `gs://my-bucket/my-directory/**.ndjson`
        # imports all files with `.ndjson` extensions in `my-directory/` and its
        # sub-directories.
        # *  `?` to match 1 character
        # Files matching the wildcard are expected to contain content only, no
        # metadata.
        # Corresponds to the JSON property `uri`
        # @return [String]
        attr_accessor :uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @uri = args[:uri] if args.key?(:uri)
        end
      end
      
      # Error response of importing resources.
      # This structure will be included in the
      # error details to describe the
      # detailed error. It will only be included when the operation finishes with
      # some failure.
      class GoogleCloudHealthcareV1alpha2FhirRestImportResourcesErrorDetails
        include Google::Apis::Core::Hashable
      
        # The number of resources that had errors.
        # Corresponds to the JSON property `errorCount`
        # @return [Fixnum]
        attr_accessor :error_count
      
        # The name of the FHIR store where resources have been imported, in the
        # format
        # `projects/`project_id`/locations/`location_id`/datasets/`dataset_id`/
        # fhirStores/`fhir_store_id``.
        # Corresponds to the JSON property `fhirStore`
        # @return [String]
        attr_accessor :fhir_store
      
        # The total number of resources included in the source data. This is the sum
        # of the success and error counts.
        # Corresponds to the JSON property `inputSize`
        # @return [Fixnum]
        attr_accessor :input_size
      
        # The number of resources that have been imported.
        # Corresponds to the JSON property `successCount`
        # @return [Fixnum]
        attr_accessor :success_count
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @error_count = args[:error_count] if args.key?(:error_count)
          @fhir_store = args[:fhir_store] if args.key?(:fhir_store)
          @input_size = args[:input_size] if args.key?(:input_size)
          @success_count = args[:success_count] if args.key?(:success_count)
        end
      end
      
      # Final response of importing resources.
      # This structure will be included in the
      # response to describe the detailed
      # outcome. It will only be included when the operation finishes successfully.
      class GoogleCloudHealthcareV1alpha2FhirRestImportResourcesResponse
        include Google::Apis::Core::Hashable
      
        # The name of the FHIR store where the resources have been imported, in the
        # format
        # `projects/`project_id`/locations/`location_id`/datasets/`dataset_id`/
        # fhirStores/`fhir_store_id``.
        # Corresponds to the JSON property `fhirStore`
        # @return [String]
        attr_accessor :fhir_store
      
        # The total number of resources included in the source data.
        # Corresponds to the JSON property `inputSize`
        # @return [Fixnum]
        attr_accessor :input_size
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @fhir_store = args[:fhir_store] if args.key?(:fhir_store)
          @input_size = args[:input_size] if args.key?(:input_size)
        end
      end
      
      # Represents an HL7v2 store.
      class Hl7V2Store
        include Google::Apis::Core::Hashable
      
        # User-supplied key-value pairs used to organize HL7v2 stores.
        # Label keys must be between 1 and 63 characters long, have a UTF-8 encoding
        # of maximum 128 bytes, and must conform to the
        # following PCRE regular expression:
        # \p`Ll`\p`Lo``0,62`
        # Label values are optional, must be between 1 and 63 characters long, have
        # a UTF-8 encoding of maximum 128 bytes, and must conform to the
        # following PCRE regular expression: [\p`Ll`\p`Lo`\p`N`_-]`0,63`
        # No more than 64 labels can be associated with a given store.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # Output only. Resource name of the HL7v2 store, of the form
        # `projects/`project_id`/datasets/`dataset_id`/hl7V2Stores/`hl7v2_store_id``.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Specifies where notifications should be sent upon changes to a data store.
        # Corresponds to the JSON property `notificationConfig`
        # @return [Google::Apis::HealthcareV1alpha2::NotificationConfig]
        attr_accessor :notification_config
      
        # The configuration for the parser. It determines how the server parses the
        # messages.
        # Corresponds to the JSON property `parserConfig`
        # @return [Google::Apis::HealthcareV1alpha2::ParserConfig]
        attr_accessor :parser_config
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @labels = args[:labels] if args.key?(:labels)
          @name = args[:name] if args.key?(:name)
          @notification_config = args[:notification_config] if args.key?(:notification_config)
          @parser_config = args[:parser_config] if args.key?(:parser_config)
        end
      end
      
      # Message that represents an arbitrary HTTP body. It should only be used for
      # payload formats that can't be represented as JSON, such as raw binary or
      # an HTML page.
      # This message can be used both in streaming and non-streaming API methods in
      # the request as well as the response.
      # It can be used as a top-level request field, which is convenient if one
      # wants to extract parameters from either the URL or HTTP template into the
      # request fields and also want access to the raw HTTP body.
      # Example:
      # message GetResourceRequest `
      # // A unique request id.
      # string request_id = 1;
      # // The raw HTTP body is bound to this field.
      # google.api.HttpBody http_body = 2;
      # `
      # service ResourceService `
      # rpc GetResource(GetResourceRequest) returns (google.api.HttpBody);
      # rpc UpdateResource(google.api.HttpBody) returns
      # (google.protobuf.Empty);
      # `
      # Example with streaming methods:
      # service CaldavService `
      # rpc GetCalendar(stream google.api.HttpBody)
      # returns (stream google.api.HttpBody);
      # rpc UpdateCalendar(stream google.api.HttpBody)
      # returns (stream google.api.HttpBody);
      # `
      # Use of this type only changes how the request and response bodies are
      # handled, all other features will continue to work unchanged.
      class HttpBody
        include Google::Apis::Core::Hashable
      
        # The HTTP Content-Type header value specifying the content type of the body.
        # Corresponds to the JSON property `contentType`
        # @return [String]
        attr_accessor :content_type
      
        # The HTTP request/response body as raw binary.
        # Corresponds to the JSON property `data`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :data
      
        # Application specific response metadata. Must be set in the first response
        # for streaming APIs.
        # Corresponds to the JSON property `extensions`
        # @return [Array<Hash<String,Object>>]
        attr_accessor :extensions
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @content_type = args[:content_type] if args.key?(:content_type)
          @data = args[:data] if args.key?(:data)
          @extensions = args[:extensions] if args.key?(:extensions)
        end
      end
      
      # Image annotation.
      class ImageAnnotation
        include Google::Apis::Core::Hashable
      
        # The list of polygons outlining the sensitive regions in the image.
        # Corresponds to the JSON property `boundingPolys`
        # @return [Array<Google::Apis::HealthcareV1alpha2::BoundingPoly>]
        attr_accessor :bounding_polys
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @bounding_polys = args[:bounding_polys] if args.key?(:bounding_polys)
        end
      end
      
      # Specifies how de-identification of image pixel should be handled.
      class ImageConfig
        include Google::Apis::Core::Hashable
      
        # Determines how to redact text from image.
        # Corresponds to the JSON property `textRedactionMode`
        # @return [String]
        attr_accessor :text_redaction_mode
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @text_redaction_mode = args[:text_redaction_mode] if args.key?(:text_redaction_mode)
        end
      end
      
      # Returns the errors encountered during DICOM store import.
      class ImportDicomDataErrorDetails
        include Google::Apis::Core::Hashable
      
        # Deprecated. Use only for debugging purposes.
        # Contains sample errors encountered in imports of individual resources
        # (for example, a Cloud Storage object).
        # Corresponds to the JSON property `sampleErrors`
        # @return [Array<Google::Apis::HealthcareV1alpha2::ErrorDetail>]
        attr_accessor :sample_errors
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @sample_errors = args[:sample_errors] if args.key?(:sample_errors)
        end
      end
      
      # Imports data into the specified DICOM store.
      # Returns an error if any of the files to import are not DICOM files. This
      # API will accept duplicate DICOM instances, by simply ignoring the newly
      # pushed instance (it will not overwrite).
      class ImportDicomDataRequest
        include Google::Apis::Core::Hashable
      
        # Specifies the configuration for importing data from Cloud Storage.
        # Corresponds to the JSON property `gcsSource`
        # @return [Google::Apis::HealthcareV1alpha2::GoogleCloudHealthcareV1alpha2DicomGcsSource]
        attr_accessor :gcs_source
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @gcs_source = args[:gcs_source] if args.key?(:gcs_source)
        end
      end
      
      # Request to import resources.
      class ImportResourcesRequest
        include Google::Apis::Core::Hashable
      
        # The content structure in the source location. If not specified, the server
        # treats the input source files as BUNDLE.
        # Corresponds to the JSON property `contentStructure`
        # @return [String]
        attr_accessor :content_structure
      
        # Specifies the Cloud Storage destination where errors will be recorded.
        # Corresponds to the JSON property `gcsErrorDestination`
        # @return [Google::Apis::HealthcareV1alpha2::GoogleCloudHealthcareV1alpha2FhirRestGcsErrorDestination]
        attr_accessor :gcs_error_destination
      
        # Specifies the configuration for importing data from Cloud Storage.
        # Corresponds to the JSON property `gcsSource`
        # @return [Google::Apis::HealthcareV1alpha2::GoogleCloudHealthcareV1alpha2FhirRestGcsSource]
        attr_accessor :gcs_source
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @content_structure = args[:content_structure] if args.key?(:content_structure)
          @gcs_error_destination = args[:gcs_error_destination] if args.key?(:gcs_error_destination)
          @gcs_source = args[:gcs_source] if args.key?(:gcs_source)
        end
      end
      
      # A transformation to apply to text that is identified as a specific
      # info_type.
      class InfoTypeTransformation
        include Google::Apis::Core::Hashable
      
        # Mask a string by replacing its characters with a fixed character.
        # Corresponds to the JSON property `characterMaskConfig`
        # @return [Google::Apis::HealthcareV1alpha2::CharacterMaskConfig]
        attr_accessor :character_mask_config
      
        # Pseudonymization method that generates surrogates via cryptographic hashing.
        # Uses SHA-256.
        # Outputs a base64-encoded representation of the hashed output
        # (for example, `L7k0BHmF1ha5U3NfGykjro4xWi1MPVQPjhMAZbSV9mM=`).
        # Corresponds to the JSON property `cryptoHashConfig`
        # @return [Google::Apis::HealthcareV1alpha2::CryptoHashConfig]
        attr_accessor :crypto_hash_config
      
        # Shift a date forward or backward in time by a random amount which is
        # consistent for a given patient and crypto key combination.
        # Corresponds to the JSON property `dateShiftConfig`
        # @return [Google::Apis::HealthcareV1alpha2::DateShiftConfig]
        attr_accessor :date_shift_config
      
        # InfoTypes to apply this transformation to. If this is not specified, the
        # transformation applies to any info_type.
        # Corresponds to the JSON property `infoTypes`
        # @return [Array<String>]
        attr_accessor :info_types
      
        # Define how to redact sensitive values. Default behaviour is erase,
        # e.g. "My name is Jake." becomes "My name is ."
        # Corresponds to the JSON property `redactConfig`
        # @return [Google::Apis::HealthcareV1alpha2::RedactConfig]
        attr_accessor :redact_config
      
        # When using the INSPECT_AND_TRANSFORM action, each match is replaced with
        # the name of the info_type. For example, "My name is Jake" becomes "My name is
        # [PERSON_NAME]." The TRANSFORM action is equivalent to redacting.
        # Corresponds to the JSON property `replaceWithInfoTypeConfig`
        # @return [Google::Apis::HealthcareV1alpha2::ReplaceWithInfoTypeConfig]
        attr_accessor :replace_with_info_type_config
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @character_mask_config = args[:character_mask_config] if args.key?(:character_mask_config)
          @crypto_hash_config = args[:crypto_hash_config] if args.key?(:crypto_hash_config)
          @date_shift_config = args[:date_shift_config] if args.key?(:date_shift_config)
          @info_types = args[:info_types] if args.key?(:info_types)
          @redact_config = args[:redact_config] if args.key?(:redact_config)
          @replace_with_info_type_config = args[:replace_with_info_type_config] if args.key?(:replace_with_info_type_config)
        end
      end
      
      # Ingests a message into the specified HL7v2 store.
      class IngestMessageRequest
        include Google::Apis::Core::Hashable
      
        # A complete HL7v2 message.
        # See http://www.hl7.org/implement/standards/index.cfm?ref=common for details
        # on the standard.
        # Corresponds to the JSON property `message`
        # @return [Google::Apis::HealthcareV1alpha2::Message]
        attr_accessor :message
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @message = args[:message] if args.key?(:message)
        end
      end
      
      # Acknowledges that a message has been ingested into the specified
      # HL7v2 store.
      class IngestMessageResponse
        include Google::Apis::Core::Hashable
      
        # HL7v2 ACK message.
        # Corresponds to the JSON property `hl7Ack`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :hl7_ack
      
        # A complete HL7v2 message.
        # See http://www.hl7.org/implement/standards/index.cfm?ref=common for details
        # on the standard.
        # Corresponds to the JSON property `message`
        # @return [Google::Apis::HealthcareV1alpha2::Message]
        attr_accessor :message
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @hl7_ack = args[:hl7_ack] if args.key?(:hl7_ack)
          @message = args[:message] if args.key?(:message)
        end
      end
      
      # Lists the Annotation stores
      # in the given dataset.
      class ListAnnotationStoresResponse
        include Google::Apis::Core::Hashable
      
        # The returned Annotation stores. Won't be more Annotation stores than the
        # value of page_size in the request.
        # Corresponds to the JSON property `annotationStores`
        # @return [Array<Google::Apis::HealthcareV1alpha2::AnnotationStore>]
        attr_accessor :annotation_stores
      
        # Token to retrieve the next page of results or empty if there are no more
        # results in the list.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @annotation_stores = args[:annotation_stores] if args.key?(:annotation_stores)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # Lists the Annotations in the specified
      # Annotation store.
      class ListAnnotationsResponse
        include Google::Apis::Core::Hashable
      
        # The returned Annotations names. Won't be more values than the value of
        # page_size in the request.
        # Corresponds to the JSON property `annotations`
        # @return [Array<String>]
        attr_accessor :annotations
      
        # Token to retrieve the next page of results or empty if there are no more
        # results in the list.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @annotations = args[:annotations] if args.key?(:annotations)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # Lists the available datasets.
      class ListDatasetsResponse
        include Google::Apis::Core::Hashable
      
        # The first page of datasets.
        # Corresponds to the JSON property `datasets`
        # @return [Array<Google::Apis::HealthcareV1alpha2::Dataset>]
        attr_accessor :datasets
      
        # Token to retrieve the next page of results, or empty if there are no
        # more results in the list.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @datasets = args[:datasets] if args.key?(:datasets)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # Lists the DICOM stores in the given dataset.
      class ListDicomStoresResponse
        include Google::Apis::Core::Hashable
      
        # The returned DICOM stores. Won't be more DICOM stores than the value of
        # page_size in the request.
        # Corresponds to the JSON property `dicomStores`
        # @return [Array<Google::Apis::HealthcareV1alpha2::DicomStore>]
        attr_accessor :dicom_stores
      
        # Token to retrieve the next page of results or empty if there are no more
        # results in the list.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @dicom_stores = args[:dicom_stores] if args.key?(:dicom_stores)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # Lists the FHIR stores in the given dataset.
      class ListFhirStoresResponse
        include Google::Apis::Core::Hashable
      
        # The returned FHIR stores. Won't be more FHIR stores than the value of
        # page_size in the request.
        # Corresponds to the JSON property `fhirStores`
        # @return [Array<Google::Apis::HealthcareV1alpha2::FhirStore>]
        attr_accessor :fhir_stores
      
        # Token to retrieve the next page of results or empty if there are no more
        # results in the list.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @fhir_stores = args[:fhir_stores] if args.key?(:fhir_stores)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # Lists the HL7v2 stores in the given dataset.
      class ListHl7V2StoresResponse
        include Google::Apis::Core::Hashable
      
        # The returned HL7v2 stores. Won't be more HL7v2 stores than the value of
        # page_size in the request.
        # Corresponds to the JSON property `hl7V2Stores`
        # @return [Array<Google::Apis::HealthcareV1alpha2::Hl7V2Store>]
        attr_accessor :hl7_v2_stores
      
        # Token to retrieve the next page of results or empty if there are no more
        # results in the list.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @hl7_v2_stores = args[:hl7_v2_stores] if args.key?(:hl7_v2_stores)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # The response message for Locations.ListLocations.
      class ListLocationsResponse
        include Google::Apis::Core::Hashable
      
        # A list of locations that matches the specified filter in the request.
        # Corresponds to the JSON property `locations`
        # @return [Array<Google::Apis::HealthcareV1alpha2::Location>]
        attr_accessor :locations
      
        # The standard List next-page token.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @locations = args[:locations] if args.key?(:locations)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # Lists the messages in the specified HL7v2 store.
      class ListMessagesResponse
        include Google::Apis::Core::Hashable
      
        # The returned message names. Won't be more values than the value of
        # page_size in the request.
        # Corresponds to the JSON property `messages`
        # @return [Array<String>]
        attr_accessor :messages
      
        # Token to retrieve the next page of results or empty if there are no more
        # results in the list.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @messages = args[:messages] if args.key?(:messages)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # The response message for Operations.ListOperations.
      class ListOperationsResponse
        include Google::Apis::Core::Hashable
      
        # The standard List next-page token.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # A list of operations that matches the specified filter in the request.
        # Corresponds to the JSON property `operations`
        # @return [Array<Google::Apis::HealthcareV1alpha2::Operation>]
        attr_accessor :operations
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @operations = args[:operations] if args.key?(:operations)
        end
      end
      
      # A resource that represents Google Cloud Platform location.
      class Location
        include Google::Apis::Core::Hashable
      
        # The friendly name for this location, typically a nearby city name.
        # For example, "Tokyo".
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Cross-service attributes for the location. For example
        # `"cloud.googleapis.com/region": "us-east1"`
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # The canonical id for this location. For example: `"us-east1"`.
        # Corresponds to the JSON property `locationId`
        # @return [String]
        attr_accessor :location_id
      
        # Service-specific metadata. For example the available capacity at the given
        # location.
        # Corresponds to the JSON property `metadata`
        # @return [Hash<String,Object>]
        attr_accessor :metadata
      
        # Resource name for the location, which may vary between implementations.
        # For example: `"projects/example-project/locations/us-east1"`
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @display_name = args[:display_name] if args.key?(:display_name)
          @labels = args[:labels] if args.key?(:labels)
          @location_id = args[:location_id] if args.key?(:location_id)
          @metadata = args[:metadata] if args.key?(:metadata)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # A complete HL7v2 message.
      # See http://www.hl7.org/implement/standards/index.cfm?ref=common for details
      # on the standard.
      class Message
        include Google::Apis::Core::Hashable
      
        # Output only. The datetime when the message was created. Set by the server.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Raw message bytes.
        # Corresponds to the JSON property `data`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :data
      
        # User-supplied key-value pairs used to organize HL7v2 stores.
        # Label keys must be between 1 and 63 characters long, have a UTF-8 encoding
        # of maximum 128 bytes, and must conform to the
        # following PCRE regular expression:
        # \p`Ll`\p`Lo``0,62`
        # Label values are optional, must be between 1 and 63 characters long, have
        # a UTF-8 encoding of maximum 128 bytes, and must conform to the
        # following PCRE regular expression: [\p`Ll`\p`Lo`\p`N`_-]`0,63`
        # No more than 64 labels can be associated with a given store.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # The message type and trigger event for this message. MSH-9.
        # Corresponds to the JSON property `messageType`
        # @return [String]
        attr_accessor :message_type
      
        # Resource name of the Message, of the form
        # `projects/`project_id`/datasets/`dataset_id`/hl7V2Stores/`hl7_v2_store_id`/
        # messages/`message_id``.
        # Assigned by the server.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The content of a HL7v2 message in a structured format.
        # Corresponds to the JSON property `parsedData`
        # @return [Google::Apis::HealthcareV1alpha2::ParsedData]
        attr_accessor :parsed_data
      
        # All patient IDs listed in the PID-2, PID-3, and PID-4 segments of this
        # message.
        # Corresponds to the JSON property `patientIds`
        # @return [Array<Google::Apis::HealthcareV1alpha2::PatientId>]
        attr_accessor :patient_ids
      
        # The hospital that this message came from. MSH-4.
        # Corresponds to the JSON property `sendFacility`
        # @return [String]
        attr_accessor :send_facility
      
        # The datetime the sending application sent this message. MSH-7.
        # Corresponds to the JSON property `sendTime`
        # @return [String]
        attr_accessor :send_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @data = args[:data] if args.key?(:data)
          @labels = args[:labels] if args.key?(:labels)
          @message_type = args[:message_type] if args.key?(:message_type)
          @name = args[:name] if args.key?(:name)
          @parsed_data = args[:parsed_data] if args.key?(:parsed_data)
          @patient_ids = args[:patient_ids] if args.key?(:patient_ids)
          @send_facility = args[:send_facility] if args.key?(:send_facility)
          @send_time = args[:send_time] if args.key?(:send_time)
        end
      end
      
      # Specifies where notifications should be sent upon changes to a data store.
      class NotificationConfig
        include Google::Apis::Core::Hashable
      
        # The [Cloud Pub/Sub](https://cloud.google.com/pubsub/docs/) topic that
        # notifications of changes are published on. Supplied by the client.
        # PubsubMessage.Data will contain the resource name.
        # PubsubMessage.MessageId is the ID of this message. It is guaranteed to be
        # unique within the topic.
        # PubsubMessage.PublishTime is the time at which the message was published.
        # Notifications are only sent if the topic is
        # non-empty. [Topic
        # names](https://cloud.google.com/pubsub/docs/overview#names) must be scoped
        # to a project. cloud-healthcare@system.gserviceaccount.com must have
        # publisher permissions on the given Cloud Pub/Sub topic. Not having adequate
        # permissions will cause the calls that send notifications to fail.
        # Corresponds to the JSON property `pubsubTopic`
        # @return [String]
        attr_accessor :pubsub_topic
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @pubsub_topic = args[:pubsub_topic] if args.key?(:pubsub_topic)
        end
      end
      
      # This resource represents a long-running operation that is the result of a
      # network API call.
      class Operation
        include Google::Apis::Core::Hashable
      
        # If the value is `false`, it means the operation is still in progress.
        # If `true`, the operation is completed, and either `error` or `response` is
        # available.
        # Corresponds to the JSON property `done`
        # @return [Boolean]
        attr_accessor :done
        alias_method :done?, :done
      
        # The `Status` type defines a logical error model that is suitable for
        # different programming environments, including REST APIs and RPC APIs. It is
        # used by [gRPC](https://github.com/grpc). Each `Status` message contains
        # three pieces of data: error code, error message, and error details.
        # You can find out more about this error model and how to work with it in the
        # [API Design Guide](https://cloud.google.com/apis/design/errors).
        # Corresponds to the JSON property `error`
        # @return [Google::Apis::HealthcareV1alpha2::Status]
        attr_accessor :error
      
        # Service-specific metadata associated with the operation.  It typically
        # contains progress information and common metadata such as create time.
        # Some services might not provide such metadata.  Any method that returns a
        # long-running operation should document the metadata type, if any.
        # Corresponds to the JSON property `metadata`
        # @return [Hash<String,Object>]
        attr_accessor :metadata
      
        # The server-assigned name, which is only unique within the same service that
        # originally returns it. If you use the default HTTP mapping, the
        # `name` should be a resource name ending with `operations/`unique_id``.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The normal response of the operation in case of success.  If the original
        # method returns no data on success, such as `Delete`, the response is
        # `google.protobuf.Empty`.  If the original method is standard
        # `Get`/`Create`/`Update`, the response should be the resource.  For other
        # methods, the response should have the type `XxxResponse`, where `Xxx`
        # is the original method name.  For example, if the original method name
        # is `TakeSnapshot()`, the inferred response type is
        # `TakeSnapshotResponse`.
        # Corresponds to the JSON property `response`
        # @return [Hash<String,Object>]
        attr_accessor :response
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @done = args[:done] if args.key?(:done)
          @error = args[:error] if args.key?(:error)
          @metadata = args[:metadata] if args.key?(:metadata)
          @name = args[:name] if args.key?(:name)
          @response = args[:response] if args.key?(:response)
        end
      end
      
      # OperationMetadata provides information about the operation execution.
      # Returned in the long-running operation's metadata field.
      class OperationMetadata
        include Google::Apis::Core::Hashable
      
        # The name of the API method that initiated the operation.
        # Corresponds to the JSON property `apiMethodName`
        # @return [String]
        attr_accessor :api_method_name
      
        # ProgressCounter provides counters to describe an operation's progress.
        # Corresponds to the JSON property `counter`
        # @return [Google::Apis::HealthcareV1alpha2::ProgressCounter]
        attr_accessor :counter
      
        # The time at which the operation was created by the API.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # The time at which execution was completed.
        # Corresponds to the JSON property `endTime`
        # @return [String]
        attr_accessor :end_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @api_method_name = args[:api_method_name] if args.key?(:api_method_name)
          @counter = args[:counter] if args.key?(:counter)
          @create_time = args[:create_time] if args.key?(:create_time)
          @end_time = args[:end_time] if args.key?(:end_time)
        end
      end
      
      # The content of a HL7v2 message in a structured format.
      class ParsedData
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `segments`
        # @return [Array<Google::Apis::HealthcareV1alpha2::Segment>]
        attr_accessor :segments
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @segments = args[:segments] if args.key?(:segments)
        end
      end
      
      # The configuration for the parser. It determines how the server parses the
      # messages.
      class ParserConfig
        include Google::Apis::Core::Hashable
      
        # Determines whether messages with no header are allowed.
        # Corresponds to the JSON property `allowNullHeader`
        # @return [Boolean]
        attr_accessor :allow_null_header
        alias_method :allow_null_header?, :allow_null_header
      
        # Byte(s) to be used as the segment terminator. If this is unset, '\r' will
        # be used as the segment terminator, matching the HL7 version 2
        # specification.
        # Corresponds to the JSON property `segmentTerminator`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :segment_terminator
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @allow_null_header = args[:allow_null_header] if args.key?(:allow_null_header)
          @segment_terminator = args[:segment_terminator] if args.key?(:segment_terminator)
        end
      end
      
      # A patient identifier and associated type.
      class PatientId
        include Google::Apis::Core::Hashable
      
        # ID type, e.g. MRN or NHS.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        # The patient's unique identifier.
        # Corresponds to the JSON property `value`
        # @return [String]
        attr_accessor :value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @type = args[:type] if args.key?(:type)
          @value = args[:value] if args.key?(:value)
        end
      end
      
      # Defines an Identity and Access Management (IAM) policy. It is used to
      # specify access control policies for Cloud Platform resources.
      # A `Policy` consists of a list of `bindings`. A `binding` binds a list of
      # `members` to a `role`, where the members can be user accounts, Google groups,
      # Google domains, and service accounts. A `role` is a named list of permissions
      # defined by IAM.
      # **JSON Example**
      # `
      # "bindings": [
      # `
      # "role": "roles/owner",
      # "members": [
      # "user:mike@example.com",
      # "group:admins@example.com",
      # "domain:google.com",
      # "serviceAccount:my-other-app@appspot.gserviceaccount.com"
      # ]
      # `,
      # `
      # "role": "roles/viewer",
      # "members": ["user:sean@example.com"]
      # `
      # ]
      # `
      # **YAML Example**
      # bindings:
      # - members:
      # - user:mike@example.com
      # - group:admins@example.com
      # - domain:google.com
      # - serviceAccount:my-other-app@appspot.gserviceaccount.com
      # role: roles/owner
      # - members:
      # - user:sean@example.com
      # role: roles/viewer
      # For a description of IAM and its features, see the
      # [IAM developer's guide](https://cloud.google.com/iam/docs).
      class Policy
        include Google::Apis::Core::Hashable
      
        # Specifies cloud audit logging configuration for this policy.
        # Corresponds to the JSON property `auditConfigs`
        # @return [Array<Google::Apis::HealthcareV1alpha2::AuditConfig>]
        attr_accessor :audit_configs
      
        # Associates a list of `members` to a `role`.
        # `bindings` with no members will result in an error.
        # Corresponds to the JSON property `bindings`
        # @return [Array<Google::Apis::HealthcareV1alpha2::Binding>]
        attr_accessor :bindings
      
        # `etag` is used for optimistic concurrency control as a way to help
        # prevent simultaneous updates of a policy from overwriting each other.
        # It is strongly suggested that systems make use of the `etag` in the
        # read-modify-write cycle to perform policy updates in order to avoid race
        # conditions: An `etag` is returned in the response to `getIamPolicy`, and
        # systems are expected to put that etag in the request to `setIamPolicy` to
        # ensure that their change will be applied to the same version of the policy.
        # If no `etag` is provided in the call to `setIamPolicy`, then the existing
        # policy is overwritten blindly.
        # Corresponds to the JSON property `etag`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :etag
      
        # Deprecated.
        # Corresponds to the JSON property `version`
        # @return [Fixnum]
        attr_accessor :version
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @audit_configs = args[:audit_configs] if args.key?(:audit_configs)
          @bindings = args[:bindings] if args.key?(:bindings)
          @etag = args[:etag] if args.key?(:etag)
          @version = args[:version] if args.key?(:version)
        end
      end
      
      # ProgressCounter provides counters to describe an operation's progress.
      class ProgressCounter
        include Google::Apis::Core::Hashable
      
        # The number of units that failed in the operation.
        # Corresponds to the JSON property `failure`
        # @return [Fixnum]
        attr_accessor :failure
      
        # The number of units that are pending in the operation.
        # Corresponds to the JSON property `pending`
        # @return [Fixnum]
        attr_accessor :pending
      
        # The number of units that succeeded in the operation.
        # Corresponds to the JSON property `success`
        # @return [Fixnum]
        attr_accessor :success
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @failure = args[:failure] if args.key?(:failure)
          @pending = args[:pending] if args.key?(:pending)
          @success = args[:success] if args.key?(:success)
        end
      end
      
      # Define how to redact sensitive values. Default behaviour is erase,
      # e.g. "My name is Jake." becomes "My name is ."
      class RedactConfig
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # When using the INSPECT_AND_TRANSFORM action, each match is replaced with
      # the name of the info_type. For example, "My name is Jake" becomes "My name is
      # [PERSON_NAME]." The TRANSFORM action is equivalent to redacting.
      class ReplaceWithInfoTypeConfig
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Resource level annotation.
      class ResourceAnnotation
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `label`
        # @return [String]
        attr_accessor :label
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @label = args[:label] if args.key?(:label)
        end
      end
      
      # Configuration for the FHIR BigQuery and Cloud Storage schema. Determines
      # how the server generates the schema.
      class SchemaConfig
        include Google::Apis::Core::Hashable
      
        # The depth for all recursive structures in the output analytics
        # schema. For example, `concept` in the CodeSystem resource is a recursive
        # structure; when the depth is 2, the CodeSystem table will have a column
        # called `concept.concept` but not `concept.concept.concept`. If not
        # specified or set to 0, the server will use the default value 2.
        # Corresponds to the JSON property `recursiveStructureDepth`
        # @return [Fixnum]
        attr_accessor :recursive_structure_depth
      
        # Specifies the output schema type. If unspecified, the default is
        # `LOSSLESS`.
        # Corresponds to the JSON property `schemaType`
        # @return [String]
        attr_accessor :schema_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @recursive_structure_depth = args[:recursive_structure_depth] if args.key?(:recursive_structure_depth)
          @schema_type = args[:schema_type] if args.key?(:schema_type)
        end
      end
      
      # Request to search the resources in the specified FHIR store.
      class SearchResourcesRequest
        include Google::Apis::Core::Hashable
      
        # The FHIR resource type to search, such as Patient or Observation. For a
        # complete list, see the [FHIR Resource
        # Index](http://hl7.org/implement/standards/fhir/STU3/resourcelist.html).
        # Corresponds to the JSON property `resourceType`
        # @return [String]
        attr_accessor :resource_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @resource_type = args[:resource_type] if args.key?(:resource_type)
        end
      end
      
      # A segment in a structured format.
      class Segment
        include Google::Apis::Core::Hashable
      
        # A mapping from the positional location to the value.
        # The key string uses zero-based indexes separated by dots to identify
        # Fields, components and sub-components. A bracket notation is also used to
        # identify different instances of a repeated field.
        # Regex for key: (\d+)(\[\d+\])?(.\d+)?(.\d+)?
        # Examples of (key, value) pairs:
        # - (0.1, "foo"): Component 1 of Field 0 has the value "foo".
        # - (1.1.2, "bar"): Sub-component 2 of Component 1 of field 1 has the value
        # "bar".
        # - (1[2].1, "baz"): Component 1 of Instance 2 of Field 1, which is repeated,
        # has the value "baz".
        # Corresponds to the JSON property `fields`
        # @return [Hash<String,String>]
        attr_accessor :fields
      
        # A string that indicates the type of segment, e.g., EVN, PID.
        # Corresponds to the JSON property `segmentId`
        # @return [String]
        attr_accessor :segment_id
      
        # Set ID for segments that can be in a set. This can be empty if it is
        # missing or it is not applicable.
        # Corresponds to the JSON property `setId`
        # @return [String]
        attr_accessor :set_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @fields = args[:fields] if args.key?(:fields)
          @segment_id = args[:segment_id] if args.key?(:segment_id)
          @set_id = args[:set_id] if args.key?(:set_id)
        end
      end
      
      # A TextAnnotation specifies a text range that includes sensitive information.
      class SensitiveTextAnnotation
        include Google::Apis::Core::Hashable
      
        # Maps from a resource slice (e.g. FHIR resource field path) to a set of
        # sensitive text findings. For example,
        # Appointment.Narrative text1 --> `findings_1, findings_2, findings_3`
        # Corresponds to the JSON property `details`
        # @return [Hash<String,Google::Apis::HealthcareV1alpha2::Detail>]
        attr_accessor :details
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @details = args[:details] if args.key?(:details)
        end
      end
      
      # Request message for `SetIamPolicy` method.
      class SetIamPolicyRequest
        include Google::Apis::Core::Hashable
      
        # Defines an Identity and Access Management (IAM) policy. It is used to
        # specify access control policies for Cloud Platform resources.
        # A `Policy` consists of a list of `bindings`. A `binding` binds a list of
        # `members` to a `role`, where the members can be user accounts, Google groups,
        # Google domains, and service accounts. A `role` is a named list of permissions
        # defined by IAM.
        # **JSON Example**
        # `
        # "bindings": [
        # `
        # "role": "roles/owner",
        # "members": [
        # "user:mike@example.com",
        # "group:admins@example.com",
        # "domain:google.com",
        # "serviceAccount:my-other-app@appspot.gserviceaccount.com"
        # ]
        # `,
        # `
        # "role": "roles/viewer",
        # "members": ["user:sean@example.com"]
        # `
        # ]
        # `
        # **YAML Example**
        # bindings:
        # - members:
        # - user:mike@example.com
        # - group:admins@example.com
        # - domain:google.com
        # - serviceAccount:my-other-app@appspot.gserviceaccount.com
        # role: roles/owner
        # - members:
        # - user:sean@example.com
        # role: roles/viewer
        # For a description of IAM and its features, see the
        # [IAM developer's guide](https://cloud.google.com/iam/docs).
        # Corresponds to the JSON property `policy`
        # @return [Google::Apis::HealthcareV1alpha2::Policy]
        attr_accessor :policy
      
        # OPTIONAL: A FieldMask specifying which fields of the policy to modify. Only
        # the fields in the mask will be modified. If no mask is provided, the
        # following default mask is used:
        # paths: "bindings, etag"
        # This field is only used by Cloud IAM.
        # Corresponds to the JSON property `updateMask`
        # @return [String]
        attr_accessor :update_mask
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @policy = args[:policy] if args.key?(:policy)
          @update_mask = args[:update_mask] if args.key?(:update_mask)
        end
      end
      
      # The `Status` type defines a logical error model that is suitable for
      # different programming environments, including REST APIs and RPC APIs. It is
      # used by [gRPC](https://github.com/grpc). Each `Status` message contains
      # three pieces of data: error code, error message, and error details.
      # You can find out more about this error model and how to work with it in the
      # [API Design Guide](https://cloud.google.com/apis/design/errors).
      class Status
        include Google::Apis::Core::Hashable
      
        # The status code, which should be an enum value of google.rpc.Code.
        # Corresponds to the JSON property `code`
        # @return [Fixnum]
        attr_accessor :code
      
        # A list of messages that carry the error details.  There is a common set of
        # message types for APIs to use.
        # Corresponds to the JSON property `details`
        # @return [Array<Hash<String,Object>>]
        attr_accessor :details
      
        # A developer-facing error message, which should be in English. Any
        # user-facing error message should be localized and sent in the
        # google.rpc.Status.details field, or localized by the client.
        # Corresponds to the JSON property `message`
        # @return [String]
        attr_accessor :message
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @code = args[:code] if args.key?(:code)
          @details = args[:details] if args.key?(:details)
          @message = args[:message] if args.key?(:message)
        end
      end
      
      # This structure contains configuration for streaming FHIR export.
      class StreamConfig
        include Google::Apis::Core::Hashable
      
        # The configuration for exporting to BigQuery.
        # Corresponds to the JSON property `bigqueryDestination`
        # @return [Google::Apis::HealthcareV1alpha2::GoogleCloudHealthcareV1alpha2FhirBigQueryDestination]
        attr_accessor :bigquery_destination
      
        # Supply a FHIR resource type (such as "Patient" or "Observation").
        # See https://www.hl7.org/fhir/valueset-resource-types.html for a list of
        # all FHIR resource types.
        # The server will treat an empty list as an intent to stream all the
        # supported resource types in this FHIR store.
        # Corresponds to the JSON property `resourceTypes`
        # @return [Array<String>]
        attr_accessor :resource_types
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @bigquery_destination = args[:bigquery_destination] if args.key?(:bigquery_destination)
          @resource_types = args[:resource_types] if args.key?(:resource_types)
        end
      end
      
      # List of tags to be filtered.
      class TagFilterList
        include Google::Apis::Core::Hashable
      
        # Tags to be filtered. Tags must be DICOM Data Elements, File Meta
        # Elements, or Directory Structuring Elements, as defined at:
        # http://dicom.nema.org/medical/dicom/current/output/html/part06.html#table_6-1,.
        # They may be provided by "Keyword" or "Tag". For example "PatientID",
        # "00100010".
        # Corresponds to the JSON property `tags`
        # @return [Array<String>]
        attr_accessor :tags
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @tags = args[:tags] if args.key?(:tags)
        end
      end
      
      # Request message for `TestIamPermissions` method.
      class TestIamPermissionsRequest
        include Google::Apis::Core::Hashable
      
        # The set of permissions to check for the `resource`. Permissions with
        # wildcards (such as '*' or 'storage.*') are not allowed. For more
        # information see
        # [IAM Overview](https://cloud.google.com/iam/docs/overview#permissions).
        # Corresponds to the JSON property `permissions`
        # @return [Array<String>]
        attr_accessor :permissions
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @permissions = args[:permissions] if args.key?(:permissions)
        end
      end
      
      # Response message for `TestIamPermissions` method.
      class TestIamPermissionsResponse
        include Google::Apis::Core::Hashable
      
        # A subset of `TestPermissionsRequest.permissions` that the caller is
        # allowed.
        # Corresponds to the JSON property `permissions`
        # @return [Array<String>]
        attr_accessor :permissions
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @permissions = args[:permissions] if args.key?(:permissions)
        end
      end
      
      # 
      class TextConfig
        include Google::Apis::Core::Hashable
      
        # Experimental de-identification config to use. For internal use only.
        # If not specified, it is ignored and standard DLP is used.
        # Corresponds to the JSON property `experimentalConfig`
        # @return [String]
        attr_accessor :experimental_config
      
        # The transformations to apply to the detected data.
        # Corresponds to the JSON property `transformations`
        # @return [Array<Google::Apis::HealthcareV1alpha2::InfoTypeTransformation>]
        attr_accessor :transformations
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @experimental_config = args[:experimental_config] if args.key?(:experimental_config)
          @transformations = args[:transformations] if args.key?(:transformations)
        end
      end
      
      # A 2D coordinate in an image. The origin is the top-left.
      class Vertex
        include Google::Apis::Core::Hashable
      
        # X coordinate.
        # Corresponds to the JSON property `x`
        # @return [Float]
        attr_accessor :x
      
        # Y coordinate.
        # Corresponds to the JSON property `y`
        # @return [Float]
        attr_accessor :y
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @x = args[:x] if args.key?(:x)
          @y = args[:y] if args.key?(:y)
        end
      end
    end
  end
end
