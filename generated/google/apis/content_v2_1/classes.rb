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
    module ContentV2_1
      
      # Account data. After the creation of a new account it may take a few minutes
      # before it is fully operational. The methods delete, insert, patch, and update
      # require the admin role.
      class Account
        include Google::Apis::Core::Hashable
      
        # List of linked Ads accounts that are active or pending approval. To create a
        # new link request, add a new link with status active to the list. It will
        # remain in a pending state until approved or rejected either in the Ads
        # interface or through the AdWords API. To delete an active link, or to cancel a
        # link request, remove it from the list.
        # Corresponds to the JSON property `adsLinks`
        # @return [Array<Google::Apis::ContentV2_1::AccountAdsLink>]
        attr_accessor :ads_links
      
        # Indicates whether the merchant sells adult content.
        # Corresponds to the JSON property `adultContent`
        # @return [Boolean]
        attr_accessor :adult_content
        alias_method :adult_content?, :adult_content
      
        # The business information of the account.
        # Corresponds to the JSON property `businessInformation`
        # @return [Google::Apis::ContentV2_1::AccountBusinessInformation]
        attr_accessor :business_information
      
        # The GMB account which is linked or in the process of being linked with the
        # Merchant Center account.
        # Corresponds to the JSON property `googleMyBusinessLink`
        # @return [Google::Apis::ContentV2_1::AccountGoogleMyBusinessLink]
        attr_accessor :google_my_business_link
      
        # Merchant Center account ID.
        # Corresponds to the JSON property `id`
        # @return [Fixnum]
        attr_accessor :id
      
        # Identifies what kind of resource this is. Value: the fixed string "content#
        # account".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Display name for the account.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Client-specific, locally-unique, internal ID for the child account.
        # Corresponds to the JSON property `sellerId`
        # @return [String]
        attr_accessor :seller_id
      
        # Users with access to the account. Every account (except for subaccounts) must
        # have at least one admin user.
        # Corresponds to the JSON property `users`
        # @return [Array<Google::Apis::ContentV2_1::AccountUser>]
        attr_accessor :users
      
        # The merchant's website.
        # Corresponds to the JSON property `websiteUrl`
        # @return [String]
        attr_accessor :website_url
      
        # List of linked YouTube channels that are active or pending approval. To create
        # a new link request, add a new link with status active to the list. It will
        # remain in a pending state until approved or rejected in the YT Creator Studio
        # interface. To delete an active link, or to cancel a link request, remove it
        # from the list.
        # Corresponds to the JSON property `youtubeChannelLinks`
        # @return [Array<Google::Apis::ContentV2_1::AccountYouTubeChannelLink>]
        attr_accessor :youtube_channel_links
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @ads_links = args[:ads_links] if args.key?(:ads_links)
          @adult_content = args[:adult_content] if args.key?(:adult_content)
          @business_information = args[:business_information] if args.key?(:business_information)
          @google_my_business_link = args[:google_my_business_link] if args.key?(:google_my_business_link)
          @id = args[:id] if args.key?(:id)
          @kind = args[:kind] if args.key?(:kind)
          @name = args[:name] if args.key?(:name)
          @seller_id = args[:seller_id] if args.key?(:seller_id)
          @users = args[:users] if args.key?(:users)
          @website_url = args[:website_url] if args.key?(:website_url)
          @youtube_channel_links = args[:youtube_channel_links] if args.key?(:youtube_channel_links)
        end
      end
      
      # 
      class AccountAddress
        include Google::Apis::Core::Hashable
      
        # CLDR country code (e.g. "US").
        # Corresponds to the JSON property `country`
        # @return [String]
        attr_accessor :country
      
        # City, town or commune. May also include dependent localities or sublocalities (
        # e.g. neighborhoods or suburbs).
        # Corresponds to the JSON property `locality`
        # @return [String]
        attr_accessor :locality
      
        # Postal code or ZIP (e.g. "94043").
        # Corresponds to the JSON property `postalCode`
        # @return [String]
        attr_accessor :postal_code
      
        # Top-level administrative subdivision of the country. For example, a state like
        # California ("CA") or a province like Quebec ("QC").
        # Corresponds to the JSON property `region`
        # @return [String]
        attr_accessor :region
      
        # Street-level part of the address.
        # Corresponds to the JSON property `streetAddress`
        # @return [String]
        attr_accessor :street_address
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @country = args[:country] if args.key?(:country)
          @locality = args[:locality] if args.key?(:locality)
          @postal_code = args[:postal_code] if args.key?(:postal_code)
          @region = args[:region] if args.key?(:region)
          @street_address = args[:street_address] if args.key?(:street_address)
        end
      end
      
      # 
      class AccountAdsLink
        include Google::Apis::Core::Hashable
      
        # Customer ID of the Ads account.
        # Corresponds to the JSON property `adsId`
        # @return [Fixnum]
        attr_accessor :ads_id
      
        # Status of the link between this Merchant Center account and the Ads account.
        # Upon retrieval, it represents the actual status of the link and can be either
        # active if it was approved in Google Ads or pending if it's pending approval.
        # Upon insertion, it represents the intended status of the link. Re-uploading a
        # link with status active when it's still pending or with status pending when it'
        # s already active will have no effect: the status will remain unchanged. Re-
        # uploading a link with deprecated status inactive is equivalent to not
        # submitting the link at all and will delete the link if it was active or cancel
        # the link request if it was pending.
        # Corresponds to the JSON property `status`
        # @return [String]
        attr_accessor :status
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @ads_id = args[:ads_id] if args.key?(:ads_id)
          @status = args[:status] if args.key?(:status)
        end
      end
      
      # 
      class AccountBusinessInformation
        include Google::Apis::Core::Hashable
      
        # The address of the business.
        # Corresponds to the JSON property `address`
        # @return [Google::Apis::ContentV2_1::AccountAddress]
        attr_accessor :address
      
        # The customer service information of the business.
        # Corresponds to the JSON property `customerService`
        # @return [Google::Apis::ContentV2_1::AccountCustomerService]
        attr_accessor :customer_service
      
        # The phone number of the business.
        # Corresponds to the JSON property `phoneNumber`
        # @return [String]
        attr_accessor :phone_number
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @address = args[:address] if args.key?(:address)
          @customer_service = args[:customer_service] if args.key?(:customer_service)
          @phone_number = args[:phone_number] if args.key?(:phone_number)
        end
      end
      
      # 
      class AccountCustomerService
        include Google::Apis::Core::Hashable
      
        # Customer service email.
        # Corresponds to the JSON property `email`
        # @return [String]
        attr_accessor :email
      
        # Customer service phone number.
        # Corresponds to the JSON property `phoneNumber`
        # @return [String]
        attr_accessor :phone_number
      
        # Customer service URL.
        # Corresponds to the JSON property `url`
        # @return [String]
        attr_accessor :url
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @email = args[:email] if args.key?(:email)
          @phone_number = args[:phone_number] if args.key?(:phone_number)
          @url = args[:url] if args.key?(:url)
        end
      end
      
      # 
      class AccountGoogleMyBusinessLink
        include Google::Apis::Core::Hashable
      
        # The GMB email address of which a specific account within a GMB account. A
        # sample account within a GMB account could be a business account with set of
        # locations, managed under the GMB account.
        # Corresponds to the JSON property `gmbEmail`
        # @return [String]
        attr_accessor :gmb_email
      
        # Status of the link between this Merchant Center account and the GMB account.
        # Corresponds to the JSON property `status`
        # @return [String]
        attr_accessor :status
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @gmb_email = args[:gmb_email] if args.key?(:gmb_email)
          @status = args[:status] if args.key?(:status)
        end
      end
      
      # 
      class AccountIdentifier
        include Google::Apis::Core::Hashable
      
        # The aggregator ID, set for aggregators and subaccounts (in that case, it
        # represents the aggregator of the subaccount).
        # Corresponds to the JSON property `aggregatorId`
        # @return [Fixnum]
        attr_accessor :aggregator_id
      
        # The merchant account ID, set for individual accounts and subaccounts.
        # Corresponds to the JSON property `merchantId`
        # @return [Fixnum]
        attr_accessor :merchant_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @aggregator_id = args[:aggregator_id] if args.key?(:aggregator_id)
          @merchant_id = args[:merchant_id] if args.key?(:merchant_id)
        end
      end
      
      # The status of an account, i.e., information about its products, which is
      # computed offline and not returned immediately at insertion time.
      class AccountStatus
        include Google::Apis::Core::Hashable
      
        # The ID of the account for which the status is reported.
        # Corresponds to the JSON property `accountId`
        # @return [String]
        attr_accessor :account_id
      
        # A list of account level issues.
        # Corresponds to the JSON property `accountLevelIssues`
        # @return [Array<Google::Apis::ContentV2_1::AccountStatusAccountLevelIssue>]
        attr_accessor :account_level_issues
      
        # Identifies what kind of resource this is. Value: the fixed string "content#
        # accountStatus".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # List of product-related data by channel, destination, and country. Data in
        # this field may be delayed by up to 30 minutes.
        # Corresponds to the JSON property `products`
        # @return [Array<Google::Apis::ContentV2_1::AccountStatusProducts>]
        attr_accessor :products
      
        # Whether the account's website is claimed or not.
        # Corresponds to the JSON property `websiteClaimed`
        # @return [Boolean]
        attr_accessor :website_claimed
        alias_method :website_claimed?, :website_claimed
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @account_id = args[:account_id] if args.key?(:account_id)
          @account_level_issues = args[:account_level_issues] if args.key?(:account_level_issues)
          @kind = args[:kind] if args.key?(:kind)
          @products = args[:products] if args.key?(:products)
          @website_claimed = args[:website_claimed] if args.key?(:website_claimed)
        end
      end
      
      # 
      class AccountStatusAccountLevelIssue
        include Google::Apis::Core::Hashable
      
        # Country for which this issue is reported.
        # Corresponds to the JSON property `country`
        # @return [String]
        attr_accessor :country
      
        # The destination the issue applies to.
        # Corresponds to the JSON property `destination`
        # @return [String]
        attr_accessor :destination
      
        # Additional details about the issue.
        # Corresponds to the JSON property `detail`
        # @return [String]
        attr_accessor :detail
      
        # The URL of a web page to help resolving this issue.
        # Corresponds to the JSON property `documentation`
        # @return [String]
        attr_accessor :documentation
      
        # Issue identifier.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Severity of the issue.
        # Corresponds to the JSON property `severity`
        # @return [String]
        attr_accessor :severity
      
        # Short description of the issue.
        # Corresponds to the JSON property `title`
        # @return [String]
        attr_accessor :title
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @country = args[:country] if args.key?(:country)
          @destination = args[:destination] if args.key?(:destination)
          @detail = args[:detail] if args.key?(:detail)
          @documentation = args[:documentation] if args.key?(:documentation)
          @id = args[:id] if args.key?(:id)
          @severity = args[:severity] if args.key?(:severity)
          @title = args[:title] if args.key?(:title)
        end
      end
      
      # 
      class AccountStatusItemLevelIssue
        include Google::Apis::Core::Hashable
      
        # The attribute's name, if the issue is caused by a single attribute.
        # Corresponds to the JSON property `attributeName`
        # @return [String]
        attr_accessor :attribute_name
      
        # The error code of the issue.
        # Corresponds to the JSON property `code`
        # @return [String]
        attr_accessor :code
      
        # A short issue description in English.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # A detailed issue description in English.
        # Corresponds to the JSON property `detail`
        # @return [String]
        attr_accessor :detail
      
        # The URL of a web page to help with resolving this issue.
        # Corresponds to the JSON property `documentation`
        # @return [String]
        attr_accessor :documentation
      
        # Number of items with this issue.
        # Corresponds to the JSON property `numItems`
        # @return [Fixnum]
        attr_accessor :num_items
      
        # Whether the issue can be resolved by the merchant.
        # Corresponds to the JSON property `resolution`
        # @return [String]
        attr_accessor :resolution
      
        # How this issue affects serving of the offer.
        # Corresponds to the JSON property `servability`
        # @return [String]
        attr_accessor :servability
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @attribute_name = args[:attribute_name] if args.key?(:attribute_name)
          @code = args[:code] if args.key?(:code)
          @description = args[:description] if args.key?(:description)
          @detail = args[:detail] if args.key?(:detail)
          @documentation = args[:documentation] if args.key?(:documentation)
          @num_items = args[:num_items] if args.key?(:num_items)
          @resolution = args[:resolution] if args.key?(:resolution)
          @servability = args[:servability] if args.key?(:servability)
        end
      end
      
      # 
      class AccountStatusProducts
        include Google::Apis::Core::Hashable
      
        # The channel the data applies to.
        # Corresponds to the JSON property `channel`
        # @return [String]
        attr_accessor :channel
      
        # The country the data applies to.
        # Corresponds to the JSON property `country`
        # @return [String]
        attr_accessor :country
      
        # The destination the data applies to.
        # Corresponds to the JSON property `destination`
        # @return [String]
        attr_accessor :destination
      
        # List of item-level issues.
        # Corresponds to the JSON property `itemLevelIssues`
        # @return [Array<Google::Apis::ContentV2_1::AccountStatusItemLevelIssue>]
        attr_accessor :item_level_issues
      
        # Aggregated product statistics.
        # Corresponds to the JSON property `statistics`
        # @return [Google::Apis::ContentV2_1::AccountStatusStatistics]
        attr_accessor :statistics
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @channel = args[:channel] if args.key?(:channel)
          @country = args[:country] if args.key?(:country)
          @destination = args[:destination] if args.key?(:destination)
          @item_level_issues = args[:item_level_issues] if args.key?(:item_level_issues)
          @statistics = args[:statistics] if args.key?(:statistics)
        end
      end
      
      # 
      class AccountStatusStatistics
        include Google::Apis::Core::Hashable
      
        # Number of active offers.
        # Corresponds to the JSON property `active`
        # @return [Fixnum]
        attr_accessor :active
      
        # Number of disapproved offers.
        # Corresponds to the JSON property `disapproved`
        # @return [Fixnum]
        attr_accessor :disapproved
      
        # Number of expiring offers.
        # Corresponds to the JSON property `expiring`
        # @return [Fixnum]
        attr_accessor :expiring
      
        # Number of pending offers.
        # Corresponds to the JSON property `pending`
        # @return [Fixnum]
        attr_accessor :pending
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @active = args[:active] if args.key?(:active)
          @disapproved = args[:disapproved] if args.key?(:disapproved)
          @expiring = args[:expiring] if args.key?(:expiring)
          @pending = args[:pending] if args.key?(:pending)
        end
      end
      
      # The tax settings of a merchant account. All methods require the admin role.
      class AccountTax
        include Google::Apis::Core::Hashable
      
        # The ID of the account to which these account tax settings belong.
        # Corresponds to the JSON property `accountId`
        # @return [Fixnum]
        attr_accessor :account_id
      
        # Identifies what kind of resource this is. Value: the fixed string "content#
        # accountTax".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Tax rules. Updating the tax rules will enable US taxes (not reversible).
        # Defining no rules is equivalent to not charging tax at all.
        # Corresponds to the JSON property `rules`
        # @return [Array<Google::Apis::ContentV2_1::AccountTaxTaxRule>]
        attr_accessor :rules
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @account_id = args[:account_id] if args.key?(:account_id)
          @kind = args[:kind] if args.key?(:kind)
          @rules = args[:rules] if args.key?(:rules)
        end
      end
      
      # Tax calculation rule to apply in a state or province (USA only).
      class AccountTaxTaxRule
        include Google::Apis::Core::Hashable
      
        # Country code in which tax is applicable.
        # Corresponds to the JSON property `country`
        # @return [String]
        attr_accessor :country
      
        # State (or province) is which the tax is applicable, described by its location
        # ID (also called criteria ID).
        # Corresponds to the JSON property `locationId`
        # @return [Fixnum]
        attr_accessor :location_id
      
        # Explicit tax rate in percent, represented as a floating point number without
        # the percentage character. Must not be negative.
        # Corresponds to the JSON property `ratePercent`
        # @return [String]
        attr_accessor :rate_percent
      
        # If true, shipping charges are also taxed.
        # Corresponds to the JSON property `shippingTaxed`
        # @return [Boolean]
        attr_accessor :shipping_taxed
        alias_method :shipping_taxed?, :shipping_taxed
      
        # Whether the tax rate is taken from a global tax table or specified explicitly.
        # Corresponds to the JSON property `useGlobalRate`
        # @return [Boolean]
        attr_accessor :use_global_rate
        alias_method :use_global_rate?, :use_global_rate
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @country = args[:country] if args.key?(:country)
          @location_id = args[:location_id] if args.key?(:location_id)
          @rate_percent = args[:rate_percent] if args.key?(:rate_percent)
          @shipping_taxed = args[:shipping_taxed] if args.key?(:shipping_taxed)
          @use_global_rate = args[:use_global_rate] if args.key?(:use_global_rate)
        end
      end
      
      # 
      class AccountUser
        include Google::Apis::Core::Hashable
      
        # Whether user is an admin.
        # Corresponds to the JSON property `admin`
        # @return [Boolean]
        attr_accessor :admin
        alias_method :admin?, :admin
      
        # User's email address.
        # Corresponds to the JSON property `emailAddress`
        # @return [String]
        attr_accessor :email_address
      
        # Whether user is an order manager.
        # Corresponds to the JSON property `orderManager`
        # @return [Boolean]
        attr_accessor :order_manager
        alias_method :order_manager?, :order_manager
      
        # Whether user can access payment statements.
        # Corresponds to the JSON property `paymentsAnalyst`
        # @return [Boolean]
        attr_accessor :payments_analyst
        alias_method :payments_analyst?, :payments_analyst
      
        # Whether user can manage payment settings.
        # Corresponds to the JSON property `paymentsManager`
        # @return [Boolean]
        attr_accessor :payments_manager
        alias_method :payments_manager?, :payments_manager
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @admin = args[:admin] if args.key?(:admin)
          @email_address = args[:email_address] if args.key?(:email_address)
          @order_manager = args[:order_manager] if args.key?(:order_manager)
          @payments_analyst = args[:payments_analyst] if args.key?(:payments_analyst)
          @payments_manager = args[:payments_manager] if args.key?(:payments_manager)
        end
      end
      
      # 
      class AccountYouTubeChannelLink
        include Google::Apis::Core::Hashable
      
        # Channel ID.
        # Corresponds to the JSON property `channelId`
        # @return [String]
        attr_accessor :channel_id
      
        # Status of the link between this Merchant Center account and the YouTube
        # channel. Upon retrieval, it represents the actual status of the link and can
        # be either active if it was approved in YT Creator Studio or pending if it's
        # pending approval. Upon insertion, it represents the intended status of the
        # link. Re-uploading a link with status active when it's still pending or with
        # status pending when it's already active will have no effect: the status will
        # remain unchanged. Re-uploading a link with deprecated status inactive is
        # equivalent to not submitting the link at all and will delete the link if it
        # was active or cancel the link request if it was pending.
        # Corresponds to the JSON property `status`
        # @return [String]
        attr_accessor :status
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @channel_id = args[:channel_id] if args.key?(:channel_id)
          @status = args[:status] if args.key?(:status)
        end
      end
      
      # 
      class AccountsAuthInfoResponse
        include Google::Apis::Core::Hashable
      
        # The account identifiers corresponding to the authenticated user.
        # - For an individual account: only the merchant ID is defined
        # - For an aggregator: only the aggregator ID is defined
        # - For a subaccount of an MCA: both the merchant ID and the aggregator ID are
        # defined.
        # Corresponds to the JSON property `accountIdentifiers`
        # @return [Array<Google::Apis::ContentV2_1::AccountIdentifier>]
        attr_accessor :account_identifiers
      
        # Identifies what kind of resource this is. Value: the fixed string "content#
        # accountsAuthInfoResponse".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @account_identifiers = args[:account_identifiers] if args.key?(:account_identifiers)
          @kind = args[:kind] if args.key?(:kind)
        end
      end
      
      # 
      class AccountsClaimWebsiteResponse
        include Google::Apis::Core::Hashable
      
        # Identifies what kind of resource this is. Value: the fixed string "content#
        # accountsClaimWebsiteResponse".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @kind = args[:kind] if args.key?(:kind)
        end
      end
      
      # 
      class AccountsCustomBatchRequest
        include Google::Apis::Core::Hashable
      
        # The request entries to be processed in the batch.
        # Corresponds to the JSON property `entries`
        # @return [Array<Google::Apis::ContentV2_1::AccountsCustomBatchRequestEntry>]
        attr_accessor :entries
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @entries = args[:entries] if args.key?(:entries)
        end
      end
      
      # A batch entry encoding a single non-batch accounts request.
      class AccountsCustomBatchRequestEntry
        include Google::Apis::Core::Hashable
      
        # Account data. After the creation of a new account it may take a few minutes
        # before it is fully operational. The methods delete, insert, patch, and update
        # require the admin role.
        # Corresponds to the JSON property `account`
        # @return [Google::Apis::ContentV2_1::Account]
        attr_accessor :account
      
        # The ID of the targeted account. Only defined if the method is not insert.
        # Corresponds to the JSON property `accountId`
        # @return [Fixnum]
        attr_accessor :account_id
      
        # An entry ID, unique within the batch request.
        # Corresponds to the JSON property `batchId`
        # @return [Fixnum]
        attr_accessor :batch_id
      
        # Whether the account should be deleted if the account has offers. Only
        # applicable if the method is delete.
        # Corresponds to the JSON property `force`
        # @return [Boolean]
        attr_accessor :force
        alias_method :force?, :force
      
        # Details about the link request.
        # Corresponds to the JSON property `linkRequest`
        # @return [Google::Apis::ContentV2_1::AccountsCustomBatchRequestEntryLinkRequest]
        attr_accessor :link_request
      
        # The ID of the managing account.
        # Corresponds to the JSON property `merchantId`
        # @return [Fixnum]
        attr_accessor :merchant_id
      
        # The method of the batch entry.
        # Corresponds to the JSON property `method`
        # @return [String]
        attr_accessor :method_prop
      
        # Only applicable if the method is claimwebsite. Indicates whether or not to
        # take the claim from another account in case there is a conflict.
        # Corresponds to the JSON property `overwrite`
        # @return [Boolean]
        attr_accessor :overwrite
        alias_method :overwrite?, :overwrite
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @account = args[:account] if args.key?(:account)
          @account_id = args[:account_id] if args.key?(:account_id)
          @batch_id = args[:batch_id] if args.key?(:batch_id)
          @force = args[:force] if args.key?(:force)
          @link_request = args[:link_request] if args.key?(:link_request)
          @merchant_id = args[:merchant_id] if args.key?(:merchant_id)
          @method_prop = args[:method_prop] if args.key?(:method_prop)
          @overwrite = args[:overwrite] if args.key?(:overwrite)
        end
      end
      
      # 
      class AccountsCustomBatchRequestEntryLinkRequest
        include Google::Apis::Core::Hashable
      
        # Action to perform for this link. The "request" action is only available to
        # select merchants.
        # Corresponds to the JSON property `action`
        # @return [String]
        attr_accessor :action
      
        # Type of the link between the two accounts.
        # Corresponds to the JSON property `linkType`
        # @return [String]
        attr_accessor :link_type
      
        # The ID of the linked account.
        # Corresponds to the JSON property `linkedAccountId`
        # @return [String]
        attr_accessor :linked_account_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @action = args[:action] if args.key?(:action)
          @link_type = args[:link_type] if args.key?(:link_type)
          @linked_account_id = args[:linked_account_id] if args.key?(:linked_account_id)
        end
      end
      
      # 
      class AccountsCustomBatchResponse
        include Google::Apis::Core::Hashable
      
        # The result of the execution of the batch requests.
        # Corresponds to the JSON property `entries`
        # @return [Array<Google::Apis::ContentV2_1::AccountsCustomBatchResponseEntry>]
        attr_accessor :entries
      
        # Identifies what kind of resource this is. Value: the fixed string "content#
        # accountsCustomBatchResponse".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @entries = args[:entries] if args.key?(:entries)
          @kind = args[:kind] if args.key?(:kind)
        end
      end
      
      # A batch entry encoding a single non-batch accounts response.
      class AccountsCustomBatchResponseEntry
        include Google::Apis::Core::Hashable
      
        # Account data. After the creation of a new account it may take a few minutes
        # before it is fully operational. The methods delete, insert, patch, and update
        # require the admin role.
        # Corresponds to the JSON property `account`
        # @return [Google::Apis::ContentV2_1::Account]
        attr_accessor :account
      
        # The ID of the request entry this entry responds to.
        # Corresponds to the JSON property `batchId`
        # @return [Fixnum]
        attr_accessor :batch_id
      
        # A list of errors returned by a failed batch entry.
        # Corresponds to the JSON property `errors`
        # @return [Google::Apis::ContentV2_1::Errors]
        attr_accessor :errors
      
        # Identifies what kind of resource this is. Value: the fixed string "content#
        # accountsCustomBatchResponseEntry".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @account = args[:account] if args.key?(:account)
          @batch_id = args[:batch_id] if args.key?(:batch_id)
          @errors = args[:errors] if args.key?(:errors)
          @kind = args[:kind] if args.key?(:kind)
        end
      end
      
      # 
      class AccountsLinkRequest
        include Google::Apis::Core::Hashable
      
        # Action to perform for this link. The "request" action is only available to
        # select merchants.
        # Corresponds to the JSON property `action`
        # @return [String]
        attr_accessor :action
      
        # Type of the link between the two accounts.
        # Corresponds to the JSON property `linkType`
        # @return [String]
        attr_accessor :link_type
      
        # The ID of the linked account.
        # Corresponds to the JSON property `linkedAccountId`
        # @return [String]
        attr_accessor :linked_account_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @action = args[:action] if args.key?(:action)
          @link_type = args[:link_type] if args.key?(:link_type)
          @linked_account_id = args[:linked_account_id] if args.key?(:linked_account_id)
        end
      end
      
      # 
      class AccountsLinkResponse
        include Google::Apis::Core::Hashable
      
        # Identifies what kind of resource this is. Value: the fixed string "content#
        # accountsLinkResponse".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @kind = args[:kind] if args.key?(:kind)
        end
      end
      
      # 
      class AccountsListResponse
        include Google::Apis::Core::Hashable
      
        # Identifies what kind of resource this is. Value: the fixed string "content#
        # accountsListResponse".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The token for the retrieval of the next page of accounts.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # 
        # Corresponds to the JSON property `resources`
        # @return [Array<Google::Apis::ContentV2_1::Account>]
        attr_accessor :resources
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @kind = args[:kind] if args.key?(:kind)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @resources = args[:resources] if args.key?(:resources)
        end
      end
      
      # 
      class AccountstatusesCustomBatchRequest
        include Google::Apis::Core::Hashable
      
        # The request entries to be processed in the batch.
        # Corresponds to the JSON property `entries`
        # @return [Array<Google::Apis::ContentV2_1::AccountstatusesCustomBatchRequestEntry>]
        attr_accessor :entries
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @entries = args[:entries] if args.key?(:entries)
        end
      end
      
      # A batch entry encoding a single non-batch accountstatuses request.
      class AccountstatusesCustomBatchRequestEntry
        include Google::Apis::Core::Hashable
      
        # The ID of the (sub-)account whose status to get.
        # Corresponds to the JSON property `accountId`
        # @return [Fixnum]
        attr_accessor :account_id
      
        # An entry ID, unique within the batch request.
        # Corresponds to the JSON property `batchId`
        # @return [Fixnum]
        attr_accessor :batch_id
      
        # If set, only issues for the specified destinations are returned, otherwise
        # only issues for the Shopping destination.
        # Corresponds to the JSON property `destinations`
        # @return [Array<String>]
        attr_accessor :destinations
      
        # The ID of the managing account.
        # Corresponds to the JSON property `merchantId`
        # @return [Fixnum]
        attr_accessor :merchant_id
      
        # The method (get).
        # Corresponds to the JSON property `method`
        # @return [String]
        attr_accessor :method_prop
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @account_id = args[:account_id] if args.key?(:account_id)
          @batch_id = args[:batch_id] if args.key?(:batch_id)
          @destinations = args[:destinations] if args.key?(:destinations)
          @merchant_id = args[:merchant_id] if args.key?(:merchant_id)
          @method_prop = args[:method_prop] if args.key?(:method_prop)
        end
      end
      
      # 
      class AccountstatusesCustomBatchResponse
        include Google::Apis::Core::Hashable
      
        # The result of the execution of the batch requests.
        # Corresponds to the JSON property `entries`
        # @return [Array<Google::Apis::ContentV2_1::AccountstatusesCustomBatchResponseEntry>]
        attr_accessor :entries
      
        # Identifies what kind of resource this is. Value: the fixed string "content#
        # accountstatusesCustomBatchResponse".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @entries = args[:entries] if args.key?(:entries)
          @kind = args[:kind] if args.key?(:kind)
        end
      end
      
      # A batch entry encoding a single non-batch accountstatuses response.
      class AccountstatusesCustomBatchResponseEntry
        include Google::Apis::Core::Hashable
      
        # The status of an account, i.e., information about its products, which is
        # computed offline and not returned immediately at insertion time.
        # Corresponds to the JSON property `accountStatus`
        # @return [Google::Apis::ContentV2_1::AccountStatus]
        attr_accessor :account_status
      
        # The ID of the request entry this entry responds to.
        # Corresponds to the JSON property `batchId`
        # @return [Fixnum]
        attr_accessor :batch_id
      
        # A list of errors returned by a failed batch entry.
        # Corresponds to the JSON property `errors`
        # @return [Google::Apis::ContentV2_1::Errors]
        attr_accessor :errors
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @account_status = args[:account_status] if args.key?(:account_status)
          @batch_id = args[:batch_id] if args.key?(:batch_id)
          @errors = args[:errors] if args.key?(:errors)
        end
      end
      
      # 
      class AccountstatusesListResponse
        include Google::Apis::Core::Hashable
      
        # Identifies what kind of resource this is. Value: the fixed string "content#
        # accountstatusesListResponse".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The token for the retrieval of the next page of account statuses.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # 
        # Corresponds to the JSON property `resources`
        # @return [Array<Google::Apis::ContentV2_1::AccountStatus>]
        attr_accessor :resources
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @kind = args[:kind] if args.key?(:kind)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @resources = args[:resources] if args.key?(:resources)
        end
      end
      
      # 
      class AccounttaxCustomBatchRequest
        include Google::Apis::Core::Hashable
      
        # The request entries to be processed in the batch.
        # Corresponds to the JSON property `entries`
        # @return [Array<Google::Apis::ContentV2_1::AccounttaxCustomBatchRequestEntry>]
        attr_accessor :entries
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @entries = args[:entries] if args.key?(:entries)
        end
      end
      
      # A batch entry encoding a single non-batch accounttax request.
      class AccounttaxCustomBatchRequestEntry
        include Google::Apis::Core::Hashable
      
        # The ID of the account for which to get/update account tax settings.
        # Corresponds to the JSON property `accountId`
        # @return [Fixnum]
        attr_accessor :account_id
      
        # The tax settings of a merchant account. All methods require the admin role.
        # Corresponds to the JSON property `accountTax`
        # @return [Google::Apis::ContentV2_1::AccountTax]
        attr_accessor :account_tax
      
        # An entry ID, unique within the batch request.
        # Corresponds to the JSON property `batchId`
        # @return [Fixnum]
        attr_accessor :batch_id
      
        # The ID of the managing account.
        # Corresponds to the JSON property `merchantId`
        # @return [Fixnum]
        attr_accessor :merchant_id
      
        # 
        # Corresponds to the JSON property `method`
        # @return [String]
        attr_accessor :method_prop
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @account_id = args[:account_id] if args.key?(:account_id)
          @account_tax = args[:account_tax] if args.key?(:account_tax)
          @batch_id = args[:batch_id] if args.key?(:batch_id)
          @merchant_id = args[:merchant_id] if args.key?(:merchant_id)
          @method_prop = args[:method_prop] if args.key?(:method_prop)
        end
      end
      
      # 
      class AccounttaxCustomBatchResponse
        include Google::Apis::Core::Hashable
      
        # The result of the execution of the batch requests.
        # Corresponds to the JSON property `entries`
        # @return [Array<Google::Apis::ContentV2_1::AccounttaxCustomBatchResponseEntry>]
        attr_accessor :entries
      
        # Identifies what kind of resource this is. Value: the fixed string "content#
        # accounttaxCustomBatchResponse".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @entries = args[:entries] if args.key?(:entries)
          @kind = args[:kind] if args.key?(:kind)
        end
      end
      
      # A batch entry encoding a single non-batch accounttax response.
      class AccounttaxCustomBatchResponseEntry
        include Google::Apis::Core::Hashable
      
        # The tax settings of a merchant account. All methods require the admin role.
        # Corresponds to the JSON property `accountTax`
        # @return [Google::Apis::ContentV2_1::AccountTax]
        attr_accessor :account_tax
      
        # The ID of the request entry this entry responds to.
        # Corresponds to the JSON property `batchId`
        # @return [Fixnum]
        attr_accessor :batch_id
      
        # A list of errors returned by a failed batch entry.
        # Corresponds to the JSON property `errors`
        # @return [Google::Apis::ContentV2_1::Errors]
        attr_accessor :errors
      
        # Identifies what kind of resource this is. Value: the fixed string "content#
        # accounttaxCustomBatchResponseEntry".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @account_tax = args[:account_tax] if args.key?(:account_tax)
          @batch_id = args[:batch_id] if args.key?(:batch_id)
          @errors = args[:errors] if args.key?(:errors)
          @kind = args[:kind] if args.key?(:kind)
        end
      end
      
      # 
      class AccounttaxListResponse
        include Google::Apis::Core::Hashable
      
        # Identifies what kind of resource this is. Value: the fixed string "content#
        # accounttaxListResponse".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The token for the retrieval of the next page of account tax settings.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # 
        # Corresponds to the JSON property `resources`
        # @return [Array<Google::Apis::ContentV2_1::AccountTax>]
        attr_accessor :resources
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @kind = args[:kind] if args.key?(:kind)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @resources = args[:resources] if args.key?(:resources)
        end
      end
      
      # 
      class Amount
        include Google::Apis::Core::Hashable
      
        # [required] The pre-tax or post-tax price depending on the location of the
        # order.
        # Corresponds to the JSON property `priceAmount`
        # @return [Google::Apis::ContentV2_1::Price]
        attr_accessor :price_amount
      
        # [required] Tax value.
        # Corresponds to the JSON property `taxAmount`
        # @return [Google::Apis::ContentV2_1::Price]
        attr_accessor :tax_amount
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @price_amount = args[:price_amount] if args.key?(:price_amount)
          @tax_amount = args[:tax_amount] if args.key?(:tax_amount)
        end
      end
      
      # 
      class CarrierRate
        include Google::Apis::Core::Hashable
      
        # Carrier service, such as "UPS" or "Fedex". The list of supported carriers can
        # be retrieved via the getSupportedCarriers method. Required.
        # Corresponds to the JSON property `carrierName`
        # @return [String]
        attr_accessor :carrier_name
      
        # Carrier service, such as "ground" or "2 days". The list of supported services
        # for a carrier can be retrieved via the getSupportedCarriers method. Required.
        # Corresponds to the JSON property `carrierService`
        # @return [String]
        attr_accessor :carrier_service
      
        # Additive shipping rate modifier. Can be negative. For example ` "value": "1", "
        # currency" : "USD" ` adds $1 to the rate, ` "value": "-3", "currency" : "USD" `
        # removes $3 from the rate. Optional.
        # Corresponds to the JSON property `flatAdjustment`
        # @return [Google::Apis::ContentV2_1::Price]
        attr_accessor :flat_adjustment
      
        # Name of the carrier rate. Must be unique per rate group. Required.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Shipping origin for this carrier rate. Required.
        # Corresponds to the JSON property `originPostalCode`
        # @return [String]
        attr_accessor :origin_postal_code
      
        # Multiplicative shipping rate modifier as a number in decimal notation. Can be
        # negative. For example "5.4" increases the rate by 5.4%, "-3" decreases the
        # rate by 3%. Optional.
        # Corresponds to the JSON property `percentageAdjustment`
        # @return [String]
        attr_accessor :percentage_adjustment
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @carrier_name = args[:carrier_name] if args.key?(:carrier_name)
          @carrier_service = args[:carrier_service] if args.key?(:carrier_service)
          @flat_adjustment = args[:flat_adjustment] if args.key?(:flat_adjustment)
          @name = args[:name] if args.key?(:name)
          @origin_postal_code = args[:origin_postal_code] if args.key?(:origin_postal_code)
          @percentage_adjustment = args[:percentage_adjustment] if args.key?(:percentage_adjustment)
        end
      end
      
      # 
      class CarriersCarrier
        include Google::Apis::Core::Hashable
      
        # The CLDR country code of the carrier (e.g., "US"). Always present.
        # Corresponds to the JSON property `country`
        # @return [String]
        attr_accessor :country
      
        # The name of the carrier (e.g., "UPS"). Always present.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # A list of supported services (e.g., "ground") for that carrier. Contains at
        # least one service.
        # Corresponds to the JSON property `services`
        # @return [Array<String>]
        attr_accessor :services
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @country = args[:country] if args.key?(:country)
          @name = args[:name] if args.key?(:name)
          @services = args[:services] if args.key?(:services)
        end
      end
      
      # 
      class CustomAttribute
        include Google::Apis::Core::Hashable
      
        # Subattributes within this attribute group. Exactly one of value or groupValues
        # must be provided.
        # Corresponds to the JSON property `groupValues`
        # @return [Array<Google::Apis::ContentV2_1::CustomAttribute>]
        attr_accessor :group_values
      
        # The name of the attribute. Underscores will be replaced by spaces upon
        # insertion.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The value of the attribute.
        # Corresponds to the JSON property `value`
        # @return [String]
        attr_accessor :value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @group_values = args[:group_values] if args.key?(:group_values)
          @name = args[:name] if args.key?(:name)
          @value = args[:value] if args.key?(:value)
        end
      end
      
      # 
      class CustomerReturnReason
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # 
        # Corresponds to the JSON property `reasonCode`
        # @return [String]
        attr_accessor :reason_code
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @description = args[:description] if args.key?(:description)
          @reason_code = args[:reason_code] if args.key?(:reason_code)
        end
      end
      
      # 
      class CutoffTime
        include Google::Apis::Core::Hashable
      
        # Hour of the cutoff time until which an order has to be placed to be processed
        # in the same day. Required.
        # Corresponds to the JSON property `hour`
        # @return [Fixnum]
        attr_accessor :hour
      
        # Minute of the cutoff time until which an order has to be placed to be
        # processed in the same day. Required.
        # Corresponds to the JSON property `minute`
        # @return [Fixnum]
        attr_accessor :minute
      
        # Timezone identifier for the cutoff time. A list of identifiers can be found in
        # the AdWords API documentation. E.g. "Europe/Zurich". Required.
        # Corresponds to the JSON property `timezone`
        # @return [String]
        attr_accessor :timezone
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @hour = args[:hour] if args.key?(:hour)
          @minute = args[:minute] if args.key?(:minute)
          @timezone = args[:timezone] if args.key?(:timezone)
        end
      end
      
      # Datafeed configuration data.
      class Datafeed
        include Google::Apis::Core::Hashable
      
        # The two-letter ISO 639-1 language in which the attributes are defined in the
        # data feed.
        # Corresponds to the JSON property `attributeLanguage`
        # @return [String]
        attr_accessor :attribute_language
      
        # The type of data feed. For product inventory feeds, only feeds for local
        # stores, not online stores, are supported.
        # Corresponds to the JSON property `contentType`
        # @return [String]
        attr_accessor :content_type
      
        # The required fields vary based on the frequency of fetching. For a monthly
        # fetch schedule, day_of_month and hour are required. For a weekly fetch
        # schedule, weekday and hour are required. For a daily fetch schedule, only hour
        # is required.
        # Corresponds to the JSON property `fetchSchedule`
        # @return [Google::Apis::ContentV2_1::DatafeedFetchSchedule]
        attr_accessor :fetch_schedule
      
        # The filename of the feed. All feeds must have a unique file name.
        # Corresponds to the JSON property `fileName`
        # @return [String]
        attr_accessor :file_name
      
        # Format of the feed file.
        # Corresponds to the JSON property `format`
        # @return [Google::Apis::ContentV2_1::DatafeedFormat]
        attr_accessor :format
      
        # The ID of the data feed.
        # Corresponds to the JSON property `id`
        # @return [Fixnum]
        attr_accessor :id
      
        # Identifies what kind of resource this is. Value: the fixed string "content#
        # datafeed".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # A descriptive name of the data feed.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The targets this feed should apply to (country, language, destinations).
        # Corresponds to the JSON property `targets`
        # @return [Array<Google::Apis::ContentV2_1::DatafeedTarget>]
        attr_accessor :targets
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @attribute_language = args[:attribute_language] if args.key?(:attribute_language)
          @content_type = args[:content_type] if args.key?(:content_type)
          @fetch_schedule = args[:fetch_schedule] if args.key?(:fetch_schedule)
          @file_name = args[:file_name] if args.key?(:file_name)
          @format = args[:format] if args.key?(:format)
          @id = args[:id] if args.key?(:id)
          @kind = args[:kind] if args.key?(:kind)
          @name = args[:name] if args.key?(:name)
          @targets = args[:targets] if args.key?(:targets)
        end
      end
      
      # The required fields vary based on the frequency of fetching. For a monthly
      # fetch schedule, day_of_month and hour are required. For a weekly fetch
      # schedule, weekday and hour are required. For a daily fetch schedule, only hour
      # is required.
      class DatafeedFetchSchedule
        include Google::Apis::Core::Hashable
      
        # The day of the month the feed file should be fetched (1-31).
        # Corresponds to the JSON property `dayOfMonth`
        # @return [Fixnum]
        attr_accessor :day_of_month
      
        # The URL where the feed file can be fetched. Google Merchant Center will
        # support automatic scheduled uploads using the HTTP, HTTPS, FTP, or SFTP
        # protocols, so the value will need to be a valid link using one of those four
        # protocols.
        # Corresponds to the JSON property `fetchUrl`
        # @return [String]
        attr_accessor :fetch_url
      
        # The hour of the day the feed file should be fetched (0-23).
        # Corresponds to the JSON property `hour`
        # @return [Fixnum]
        attr_accessor :hour
      
        # The minute of the hour the feed file should be fetched (0-59). Read-only.
        # Corresponds to the JSON property `minuteOfHour`
        # @return [Fixnum]
        attr_accessor :minute_of_hour
      
        # An optional password for fetch_url.
        # Corresponds to the JSON property `password`
        # @return [String]
        attr_accessor :password
      
        # Whether the scheduled fetch is paused or not.
        # Corresponds to the JSON property `paused`
        # @return [Boolean]
        attr_accessor :paused
        alias_method :paused?, :paused
      
        # Time zone used for schedule. UTC by default. E.g., "America/Los_Angeles".
        # Corresponds to the JSON property `timeZone`
        # @return [String]
        attr_accessor :time_zone
      
        # An optional user name for fetch_url.
        # Corresponds to the JSON property `username`
        # @return [String]
        attr_accessor :username
      
        # The day of the week the feed file should be fetched.
        # Corresponds to the JSON property `weekday`
        # @return [String]
        attr_accessor :weekday
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @day_of_month = args[:day_of_month] if args.key?(:day_of_month)
          @fetch_url = args[:fetch_url] if args.key?(:fetch_url)
          @hour = args[:hour] if args.key?(:hour)
          @minute_of_hour = args[:minute_of_hour] if args.key?(:minute_of_hour)
          @password = args[:password] if args.key?(:password)
          @paused = args[:paused] if args.key?(:paused)
          @time_zone = args[:time_zone] if args.key?(:time_zone)
          @username = args[:username] if args.key?(:username)
          @weekday = args[:weekday] if args.key?(:weekday)
        end
      end
      
      # 
      class DatafeedFormat
        include Google::Apis::Core::Hashable
      
        # Delimiter for the separation of values in a delimiter-separated values feed.
        # If not specified, the delimiter will be auto-detected. Ignored for non-DSV
        # data feeds.
        # Corresponds to the JSON property `columnDelimiter`
        # @return [String]
        attr_accessor :column_delimiter
      
        # Character encoding scheme of the data feed. If not specified, the encoding
        # will be auto-detected.
        # Corresponds to the JSON property `fileEncoding`
        # @return [String]
        attr_accessor :file_encoding
      
        # Specifies how double quotes are interpreted. If not specified, the mode will
        # be auto-detected. Ignored for non-DSV data feeds.
        # Corresponds to the JSON property `quotingMode`
        # @return [String]
        attr_accessor :quoting_mode
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @column_delimiter = args[:column_delimiter] if args.key?(:column_delimiter)
          @file_encoding = args[:file_encoding] if args.key?(:file_encoding)
          @quoting_mode = args[:quoting_mode] if args.key?(:quoting_mode)
        end
      end
      
      # The status of a datafeed, i.e., the result of the last retrieval of the
      # datafeed computed asynchronously when the feed processing is finished.
      class DatafeedStatus
        include Google::Apis::Core::Hashable
      
        # The country for which the status is reported, represented as a  CLDR territory
        # code.
        # Corresponds to the JSON property `country`
        # @return [String]
        attr_accessor :country
      
        # The ID of the feed for which the status is reported.
        # Corresponds to the JSON property `datafeedId`
        # @return [Fixnum]
        attr_accessor :datafeed_id
      
        # The list of errors occurring in the feed.
        # Corresponds to the JSON property `errors`
        # @return [Array<Google::Apis::ContentV2_1::DatafeedStatusError>]
        attr_accessor :errors
      
        # The number of items in the feed that were processed.
        # Corresponds to the JSON property `itemsTotal`
        # @return [Fixnum]
        attr_accessor :items_total
      
        # The number of items in the feed that were valid.
        # Corresponds to the JSON property `itemsValid`
        # @return [Fixnum]
        attr_accessor :items_valid
      
        # Identifies what kind of resource this is. Value: the fixed string "content#
        # datafeedStatus".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The two-letter ISO 639-1 language for which the status is reported.
        # Corresponds to the JSON property `language`
        # @return [String]
        attr_accessor :language
      
        # The last date at which the feed was uploaded.
        # Corresponds to the JSON property `lastUploadDate`
        # @return [String]
        attr_accessor :last_upload_date
      
        # The processing status of the feed.
        # Corresponds to the JSON property `processingStatus`
        # @return [String]
        attr_accessor :processing_status
      
        # The list of errors occurring in the feed.
        # Corresponds to the JSON property `warnings`
        # @return [Array<Google::Apis::ContentV2_1::DatafeedStatusError>]
        attr_accessor :warnings
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @country = args[:country] if args.key?(:country)
          @datafeed_id = args[:datafeed_id] if args.key?(:datafeed_id)
          @errors = args[:errors] if args.key?(:errors)
          @items_total = args[:items_total] if args.key?(:items_total)
          @items_valid = args[:items_valid] if args.key?(:items_valid)
          @kind = args[:kind] if args.key?(:kind)
          @language = args[:language] if args.key?(:language)
          @last_upload_date = args[:last_upload_date] if args.key?(:last_upload_date)
          @processing_status = args[:processing_status] if args.key?(:processing_status)
          @warnings = args[:warnings] if args.key?(:warnings)
        end
      end
      
      # An error occurring in the feed, like "invalid price".
      class DatafeedStatusError
        include Google::Apis::Core::Hashable
      
        # The code of the error, e.g., "validation/invalid_value".
        # Corresponds to the JSON property `code`
        # @return [String]
        attr_accessor :code
      
        # The number of occurrences of the error in the feed.
        # Corresponds to the JSON property `count`
        # @return [Fixnum]
        attr_accessor :count
      
        # A list of example occurrences of the error, grouped by product.
        # Corresponds to the JSON property `examples`
        # @return [Array<Google::Apis::ContentV2_1::DatafeedStatusExample>]
        attr_accessor :examples
      
        # The error message, e.g., "Invalid price".
        # Corresponds to the JSON property `message`
        # @return [String]
        attr_accessor :message
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @code = args[:code] if args.key?(:code)
          @count = args[:count] if args.key?(:count)
          @examples = args[:examples] if args.key?(:examples)
          @message = args[:message] if args.key?(:message)
        end
      end
      
      # An example occurrence for a particular error.
      class DatafeedStatusExample
        include Google::Apis::Core::Hashable
      
        # The ID of the example item.
        # Corresponds to the JSON property `itemId`
        # @return [String]
        attr_accessor :item_id
      
        # Line number in the data feed where the example is found.
        # Corresponds to the JSON property `lineNumber`
        # @return [Fixnum]
        attr_accessor :line_number
      
        # The problematic value.
        # Corresponds to the JSON property `value`
        # @return [String]
        attr_accessor :value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @item_id = args[:item_id] if args.key?(:item_id)
          @line_number = args[:line_number] if args.key?(:line_number)
          @value = args[:value] if args.key?(:value)
        end
      end
      
      # 
      class DatafeedTarget
        include Google::Apis::Core::Hashable
      
        # The country where the items in the feed will be included in the search index,
        # represented as a  CLDR territory code.
        # Corresponds to the JSON property `country`
        # @return [String]
        attr_accessor :country
      
        # The list of destinations to exclude for this target (corresponds to unchecked
        # check boxes in Merchant Center).
        # Corresponds to the JSON property `excludedDestinations`
        # @return [Array<String>]
        attr_accessor :excluded_destinations
      
        # The list of destinations to include for this target (corresponds to checked
        # check boxes in Merchant Center). Default destinations are always included
        # unless provided in the excluded_destination field.
        # Corresponds to the JSON property `includedDestinations`
        # @return [Array<String>]
        attr_accessor :included_destinations
      
        # The two-letter ISO 639-1 language of the items in the feed. Must be a valid
        # language for targets[].country.
        # Corresponds to the JSON property `language`
        # @return [String]
        attr_accessor :language
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @country = args[:country] if args.key?(:country)
          @excluded_destinations = args[:excluded_destinations] if args.key?(:excluded_destinations)
          @included_destinations = args[:included_destinations] if args.key?(:included_destinations)
          @language = args[:language] if args.key?(:language)
        end
      end
      
      # 
      class DatafeedsCustomBatchRequest
        include Google::Apis::Core::Hashable
      
        # The request entries to be processed in the batch.
        # Corresponds to the JSON property `entries`
        # @return [Array<Google::Apis::ContentV2_1::DatafeedsCustomBatchRequestEntry>]
        attr_accessor :entries
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @entries = args[:entries] if args.key?(:entries)
        end
      end
      
      # A batch entry encoding a single non-batch datafeeds request.
      class DatafeedsCustomBatchRequestEntry
        include Google::Apis::Core::Hashable
      
        # An entry ID, unique within the batch request.
        # Corresponds to the JSON property `batchId`
        # @return [Fixnum]
        attr_accessor :batch_id
      
        # Datafeed configuration data.
        # Corresponds to the JSON property `datafeed`
        # @return [Google::Apis::ContentV2_1::Datafeed]
        attr_accessor :datafeed
      
        # The ID of the data feed to get, delete or fetch.
        # Corresponds to the JSON property `datafeedId`
        # @return [Fixnum]
        attr_accessor :datafeed_id
      
        # The ID of the managing account.
        # Corresponds to the JSON property `merchantId`
        # @return [Fixnum]
        attr_accessor :merchant_id
      
        # 
        # Corresponds to the JSON property `method`
        # @return [String]
        attr_accessor :method_prop
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @batch_id = args[:batch_id] if args.key?(:batch_id)
          @datafeed = args[:datafeed] if args.key?(:datafeed)
          @datafeed_id = args[:datafeed_id] if args.key?(:datafeed_id)
          @merchant_id = args[:merchant_id] if args.key?(:merchant_id)
          @method_prop = args[:method_prop] if args.key?(:method_prop)
        end
      end
      
      # 
      class DatafeedsCustomBatchResponse
        include Google::Apis::Core::Hashable
      
        # The result of the execution of the batch requests.
        # Corresponds to the JSON property `entries`
        # @return [Array<Google::Apis::ContentV2_1::DatafeedsCustomBatchResponseEntry>]
        attr_accessor :entries
      
        # Identifies what kind of resource this is. Value: the fixed string "content#
        # datafeedsCustomBatchResponse".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @entries = args[:entries] if args.key?(:entries)
          @kind = args[:kind] if args.key?(:kind)
        end
      end
      
      # A batch entry encoding a single non-batch datafeeds response.
      class DatafeedsCustomBatchResponseEntry
        include Google::Apis::Core::Hashable
      
        # The ID of the request entry this entry responds to.
        # Corresponds to the JSON property `batchId`
        # @return [Fixnum]
        attr_accessor :batch_id
      
        # Datafeed configuration data.
        # Corresponds to the JSON property `datafeed`
        # @return [Google::Apis::ContentV2_1::Datafeed]
        attr_accessor :datafeed
      
        # A list of errors returned by a failed batch entry.
        # Corresponds to the JSON property `errors`
        # @return [Google::Apis::ContentV2_1::Errors]
        attr_accessor :errors
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @batch_id = args[:batch_id] if args.key?(:batch_id)
          @datafeed = args[:datafeed] if args.key?(:datafeed)
          @errors = args[:errors] if args.key?(:errors)
        end
      end
      
      # 
      class DatafeedsFetchNowResponse
        include Google::Apis::Core::Hashable
      
        # Identifies what kind of resource this is. Value: the fixed string "content#
        # datafeedsFetchNowResponse".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @kind = args[:kind] if args.key?(:kind)
        end
      end
      
      # 
      class DatafeedsListResponse
        include Google::Apis::Core::Hashable
      
        # Identifies what kind of resource this is. Value: the fixed string "content#
        # datafeedsListResponse".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The token for the retrieval of the next page of datafeeds.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # 
        # Corresponds to the JSON property `resources`
        # @return [Array<Google::Apis::ContentV2_1::Datafeed>]
        attr_accessor :resources
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @kind = args[:kind] if args.key?(:kind)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @resources = args[:resources] if args.key?(:resources)
        end
      end
      
      # 
      class DatafeedstatusesCustomBatchRequest
        include Google::Apis::Core::Hashable
      
        # The request entries to be processed in the batch.
        # Corresponds to the JSON property `entries`
        # @return [Array<Google::Apis::ContentV2_1::DatafeedstatusesCustomBatchRequestEntry>]
        attr_accessor :entries
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @entries = args[:entries] if args.key?(:entries)
        end
      end
      
      # A batch entry encoding a single non-batch datafeedstatuses request.
      class DatafeedstatusesCustomBatchRequestEntry
        include Google::Apis::Core::Hashable
      
        # An entry ID, unique within the batch request.
        # Corresponds to the JSON property `batchId`
        # @return [Fixnum]
        attr_accessor :batch_id
      
        # The country for which to get the datafeed status. If this parameter is
        # provided then language must also be provided. Note that for multi-target
        # datafeeds this parameter is required.
        # Corresponds to the JSON property `country`
        # @return [String]
        attr_accessor :country
      
        # The ID of the data feed to get.
        # Corresponds to the JSON property `datafeedId`
        # @return [Fixnum]
        attr_accessor :datafeed_id
      
        # The language for which to get the datafeed status. If this parameter is
        # provided then country must also be provided. Note that for multi-target
        # datafeeds this parameter is required.
        # Corresponds to the JSON property `language`
        # @return [String]
        attr_accessor :language
      
        # The ID of the managing account.
        # Corresponds to the JSON property `merchantId`
        # @return [Fixnum]
        attr_accessor :merchant_id
      
        # 
        # Corresponds to the JSON property `method`
        # @return [String]
        attr_accessor :method_prop
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @batch_id = args[:batch_id] if args.key?(:batch_id)
          @country = args[:country] if args.key?(:country)
          @datafeed_id = args[:datafeed_id] if args.key?(:datafeed_id)
          @language = args[:language] if args.key?(:language)
          @merchant_id = args[:merchant_id] if args.key?(:merchant_id)
          @method_prop = args[:method_prop] if args.key?(:method_prop)
        end
      end
      
      # 
      class DatafeedstatusesCustomBatchResponse
        include Google::Apis::Core::Hashable
      
        # The result of the execution of the batch requests.
        # Corresponds to the JSON property `entries`
        # @return [Array<Google::Apis::ContentV2_1::DatafeedstatusesCustomBatchResponseEntry>]
        attr_accessor :entries
      
        # Identifies what kind of resource this is. Value: the fixed string "content#
        # datafeedstatusesCustomBatchResponse".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @entries = args[:entries] if args.key?(:entries)
          @kind = args[:kind] if args.key?(:kind)
        end
      end
      
      # A batch entry encoding a single non-batch datafeedstatuses response.
      class DatafeedstatusesCustomBatchResponseEntry
        include Google::Apis::Core::Hashable
      
        # The ID of the request entry this entry responds to.
        # Corresponds to the JSON property `batchId`
        # @return [Fixnum]
        attr_accessor :batch_id
      
        # The status of a datafeed, i.e., the result of the last retrieval of the
        # datafeed computed asynchronously when the feed processing is finished.
        # Corresponds to the JSON property `datafeedStatus`
        # @return [Google::Apis::ContentV2_1::DatafeedStatus]
        attr_accessor :datafeed_status
      
        # A list of errors returned by a failed batch entry.
        # Corresponds to the JSON property `errors`
        # @return [Google::Apis::ContentV2_1::Errors]
        attr_accessor :errors
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @batch_id = args[:batch_id] if args.key?(:batch_id)
          @datafeed_status = args[:datafeed_status] if args.key?(:datafeed_status)
          @errors = args[:errors] if args.key?(:errors)
        end
      end
      
      # 
      class DatafeedstatusesListResponse
        include Google::Apis::Core::Hashable
      
        # Identifies what kind of resource this is. Value: the fixed string "content#
        # datafeedstatusesListResponse".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The token for the retrieval of the next page of datafeed statuses.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # 
        # Corresponds to the JSON property `resources`
        # @return [Array<Google::Apis::ContentV2_1::DatafeedStatus>]
        attr_accessor :resources
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @kind = args[:kind] if args.key?(:kind)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @resources = args[:resources] if args.key?(:resources)
        end
      end
      
      # 
      class DeliveryTime
        include Google::Apis::Core::Hashable
      
        # Business days cutoff time definition. If not configured the cutoff time will
        # be defaulted to 8AM PST.
        # Corresponds to the JSON property `cutoffTime`
        # @return [Google::Apis::ContentV2_1::CutoffTime]
        attr_accessor :cutoff_time
      
        # Holiday cutoff definitions. If configured, they specify order cutoff times for
        # holiday-specific shipping.
        # Corresponds to the JSON property `holidayCutoffs`
        # @return [Array<Google::Apis::ContentV2_1::HolidayCutoff>]
        attr_accessor :holiday_cutoffs
      
        # Maximum number of business days spent before an order is shipped. 0 means same
        # day shipped, 1 means next day shipped. Must be greater than or equal to
        # minHandlingTimeInDays.
        # Corresponds to the JSON property `maxHandlingTimeInDays`
        # @return [Fixnum]
        attr_accessor :max_handling_time_in_days
      
        # Maximum number of business days that is spent in transit. 0 means same day
        # delivery, 1 means next day delivery. Must be greater than or equal to
        # minTransitTimeInDays.
        # Corresponds to the JSON property `maxTransitTimeInDays`
        # @return [Fixnum]
        attr_accessor :max_transit_time_in_days
      
        # Minimum number of business days spent before an order is shipped. 0 means same
        # day shipped, 1 means next day shipped.
        # Corresponds to the JSON property `minHandlingTimeInDays`
        # @return [Fixnum]
        attr_accessor :min_handling_time_in_days
      
        # Minimum number of business days that is spent in transit. 0 means same day
        # delivery, 1 means next day delivery. Either `min,max`transitTimeInDays or
        # transitTimeTable must be set, but not both.
        # Corresponds to the JSON property `minTransitTimeInDays`
        # @return [Fixnum]
        attr_accessor :min_transit_time_in_days
      
        # Transit time table, number of business days spent in transit based on row and
        # column dimensions. Either `min,max`transitTimeInDays or transitTimeTable can
        # be set, but not both.
        # Corresponds to the JSON property `transitTimeTable`
        # @return [Google::Apis::ContentV2_1::TransitTable]
        attr_accessor :transit_time_table
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cutoff_time = args[:cutoff_time] if args.key?(:cutoff_time)
          @holiday_cutoffs = args[:holiday_cutoffs] if args.key?(:holiday_cutoffs)
          @max_handling_time_in_days = args[:max_handling_time_in_days] if args.key?(:max_handling_time_in_days)
          @max_transit_time_in_days = args[:max_transit_time_in_days] if args.key?(:max_transit_time_in_days)
          @min_handling_time_in_days = args[:min_handling_time_in_days] if args.key?(:min_handling_time_in_days)
          @min_transit_time_in_days = args[:min_transit_time_in_days] if args.key?(:min_transit_time_in_days)
          @transit_time_table = args[:transit_time_table] if args.key?(:transit_time_table)
        end
      end
      
      # An error returned by the API.
      class Error
        include Google::Apis::Core::Hashable
      
        # The domain of the error.
        # Corresponds to the JSON property `domain`
        # @return [String]
        attr_accessor :domain
      
        # A description of the error.
        # Corresponds to the JSON property `message`
        # @return [String]
        attr_accessor :message
      
        # The error code.
        # Corresponds to the JSON property `reason`
        # @return [String]
        attr_accessor :reason
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @domain = args[:domain] if args.key?(:domain)
          @message = args[:message] if args.key?(:message)
          @reason = args[:reason] if args.key?(:reason)
        end
      end
      
      # A list of errors returned by a failed batch entry.
      class Errors
        include Google::Apis::Core::Hashable
      
        # The HTTP status of the first error in errors.
        # Corresponds to the JSON property `code`
        # @return [Fixnum]
        attr_accessor :code
      
        # A list of errors.
        # Corresponds to the JSON property `errors`
        # @return [Array<Google::Apis::ContentV2_1::Error>]
        attr_accessor :errors
      
        # The message of the first error in errors.
        # Corresponds to the JSON property `message`
        # @return [String]
        attr_accessor :message
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @code = args[:code] if args.key?(:code)
          @errors = args[:errors] if args.key?(:errors)
          @message = args[:message] if args.key?(:message)
        end
      end
      
      # 
      class GmbAccounts
        include Google::Apis::Core::Hashable
      
        # The ID of the account.
        # Corresponds to the JSON property `accountId`
        # @return [Fixnum]
        attr_accessor :account_id
      
        # A list of GMB accounts which are available to the merchant.
        # Corresponds to the JSON property `gmbAccounts`
        # @return [Array<Google::Apis::ContentV2_1::GmbAccountsGmbAccount>]
        attr_accessor :gmb_accounts
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @account_id = args[:account_id] if args.key?(:account_id)
          @gmb_accounts = args[:gmb_accounts] if args.key?(:gmb_accounts)
        end
      end
      
      # 
      class GmbAccountsGmbAccount
        include Google::Apis::Core::Hashable
      
        # The email which identifies the GMB account.
        # Corresponds to the JSON property `email`
        # @return [String]
        attr_accessor :email
      
        # Number of listings under this account.
        # Corresponds to the JSON property `listingCount`
        # @return [Fixnum]
        attr_accessor :listing_count
      
        # The name of the GMB account.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The type of the GMB account (User or Business).
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @email = args[:email] if args.key?(:email)
          @listing_count = args[:listing_count] if args.key?(:listing_count)
          @name = args[:name] if args.key?(:name)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # A non-empty list of row or column headers for a table. Exactly one of prices,
      # weights, numItems, postalCodeGroupNames, or location must be set.
      class Headers
        include Google::Apis::Core::Hashable
      
        # A list of location ID sets. Must be non-empty. Can only be set if all other
        # fields are not set.
        # Corresponds to the JSON property `locations`
        # @return [Array<Google::Apis::ContentV2_1::LocationIdSet>]
        attr_accessor :locations
      
        # A list of inclusive number of items upper bounds. The last value can be "
        # infinity". For example ["10", "50", "infinity"] represents the headers "<= 10
        # items", " 50 items". Must be non-empty. Can only be set if all other fields
        # are not set.
        # Corresponds to the JSON property `numberOfItems`
        # @return [Array<String>]
        attr_accessor :number_of_items
      
        # A list of postal group names. The last value can be "all other locations".
        # Example: ["zone 1", "zone 2", "all other locations"]. The referred postal code
        # groups must match the delivery country of the service. Must be non-empty. Can
        # only be set if all other fields are not set.
        # Corresponds to the JSON property `postalCodeGroupNames`
        # @return [Array<String>]
        attr_accessor :postal_code_group_names
      
        # A list of inclusive order price upper bounds. The last price's value can be "
        # infinity". For example [`"value": "10", "currency": "USD"`, `"value": "500", "
        # currency": "USD"`, `"value": "infinity", "currency": "USD"`] represents the
        # headers "<= $10", " $500". All prices within a service must have the same
        # currency. Must be non-empty. Can only be set if all other fields are not set.
        # Corresponds to the JSON property `prices`
        # @return [Array<Google::Apis::ContentV2_1::Price>]
        attr_accessor :prices
      
        # A list of inclusive order weight upper bounds. The last weight's value can be "
        # infinity". For example [`"value": "10", "unit": "kg"`, `"value": "50", "unit":
        # "kg"`, `"value": "infinity", "unit": "kg"`] represents the headers "<= 10kg", "
        # 50kg". All weights within a service must have the same unit. Must be non-
        # empty. Can only be set if all other fields are not set.
        # Corresponds to the JSON property `weights`
        # @return [Array<Google::Apis::ContentV2_1::Weight>]
        attr_accessor :weights
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @locations = args[:locations] if args.key?(:locations)
          @number_of_items = args[:number_of_items] if args.key?(:number_of_items)
          @postal_code_group_names = args[:postal_code_group_names] if args.key?(:postal_code_group_names)
          @prices = args[:prices] if args.key?(:prices)
          @weights = args[:weights] if args.key?(:weights)
        end
      end
      
      # 
      class HolidayCutoff
        include Google::Apis::Core::Hashable
      
        # Date of the order deadline, in ISO 8601 format. E.g. "2016-11-29" for 29th
        # November 2016. Required.
        # Corresponds to the JSON property `deadlineDate`
        # @return [String]
        attr_accessor :deadline_date
      
        # Hour of the day on the deadline date until which the order has to be placed to
        # qualify for the delivery guarantee. Possible values are: 0 (midnight), 1, ...,
        # 12 (noon), 13, ..., 23. Required.
        # Corresponds to the JSON property `deadlineHour`
        # @return [Fixnum]
        attr_accessor :deadline_hour
      
        # Timezone identifier for the deadline hour. A list of identifiers can be found
        # in  the AdWords API documentation. E.g. "Europe/Zurich". Required.
        # Corresponds to the JSON property `deadlineTimezone`
        # @return [String]
        attr_accessor :deadline_timezone
      
        # Unique identifier for the holiday. Required.
        # Corresponds to the JSON property `holidayId`
        # @return [String]
        attr_accessor :holiday_id
      
        # Date on which the deadline will become visible to consumers in ISO 8601 format.
        # E.g. "2016-10-31" for 31st October 2016. Required.
        # Corresponds to the JSON property `visibleFromDate`
        # @return [String]
        attr_accessor :visible_from_date
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @deadline_date = args[:deadline_date] if args.key?(:deadline_date)
          @deadline_hour = args[:deadline_hour] if args.key?(:deadline_hour)
          @deadline_timezone = args[:deadline_timezone] if args.key?(:deadline_timezone)
          @holiday_id = args[:holiday_id] if args.key?(:holiday_id)
          @visible_from_date = args[:visible_from_date] if args.key?(:visible_from_date)
        end
      end
      
      # 
      class HolidaysHoliday
        include Google::Apis::Core::Hashable
      
        # The CLDR territory code of the country in which the holiday is available. E.g.
        # "US", "DE", "GB". A holiday cutoff can only be configured in a shipping
        # settings service with matching delivery country. Always present.
        # Corresponds to the JSON property `countryCode`
        # @return [String]
        attr_accessor :country_code
      
        # Date of the holiday, in ISO 8601 format. E.g. "2016-12-25" for Christmas 2016.
        # Always present.
        # Corresponds to the JSON property `date`
        # @return [String]
        attr_accessor :date
      
        # Date on which the order has to arrive at the customer's, in ISO 8601 format. E.
        # g. "2016-12-24" for 24th December 2016. Always present.
        # Corresponds to the JSON property `deliveryGuaranteeDate`
        # @return [String]
        attr_accessor :delivery_guarantee_date
      
        # Hour of the day in the delivery location's timezone on the guaranteed delivery
        # date by which the order has to arrive at the customer's. Possible values are:
        # 0 (midnight), 1, ..., 12 (noon), 13, ..., 23. Always present.
        # Corresponds to the JSON property `deliveryGuaranteeHour`
        # @return [Fixnum]
        attr_accessor :delivery_guarantee_hour
      
        # Unique identifier for the holiday to be used when configuring holiday cutoffs.
        # Always present.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # The holiday type. Always present.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @country_code = args[:country_code] if args.key?(:country_code)
          @date = args[:date] if args.key?(:date)
          @delivery_guarantee_date = args[:delivery_guarantee_date] if args.key?(:delivery_guarantee_date)
          @delivery_guarantee_hour = args[:delivery_guarantee_hour] if args.key?(:delivery_guarantee_hour)
          @id = args[:id] if args.key?(:id)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # 
      class Installment
        include Google::Apis::Core::Hashable
      
        # The amount the buyer has to pay per month.
        # Corresponds to the JSON property `amount`
        # @return [Google::Apis::ContentV2_1::Price]
        attr_accessor :amount
      
        # The number of installments the buyer has to pay.
        # Corresponds to the JSON property `months`
        # @return [Fixnum]
        attr_accessor :months
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @amount = args[:amount] if args.key?(:amount)
          @months = args[:months] if args.key?(:months)
        end
      end
      
      # 
      class InvoiceSummary
        include Google::Apis::Core::Hashable
      
        # Summary of the total amounts of the additional charges.
        # Corresponds to the JSON property `additionalChargeSummaries`
        # @return [Array<Google::Apis::ContentV2_1::InvoiceSummaryAdditionalChargeSummary>]
        attr_accessor :additional_charge_summaries
      
        # [required] Total price for the product.
        # Corresponds to the JSON property `productTotal`
        # @return [Google::Apis::ContentV2_1::Amount]
        attr_accessor :product_total
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @additional_charge_summaries = args[:additional_charge_summaries] if args.key?(:additional_charge_summaries)
          @product_total = args[:product_total] if args.key?(:product_total)
        end
      end
      
      # 
      class InvoiceSummaryAdditionalChargeSummary
        include Google::Apis::Core::Hashable
      
        # [required] Total additional charge for this type.
        # Corresponds to the JSON property `totalAmount`
        # @return [Google::Apis::ContentV2_1::Amount]
        attr_accessor :total_amount
      
        # [required] Type of the additional charge.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @total_amount = args[:total_amount] if args.key?(:total_amount)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # 
      class LiaAboutPageSettings
        include Google::Apis::Core::Hashable
      
        # The status of the verification process for the About page.
        # Corresponds to the JSON property `status`
        # @return [String]
        attr_accessor :status
      
        # The URL for the About page.
        # Corresponds to the JSON property `url`
        # @return [String]
        attr_accessor :url
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @status = args[:status] if args.key?(:status)
          @url = args[:url] if args.key?(:url)
        end
      end
      
      # 
      class LiaCountrySettings
        include Google::Apis::Core::Hashable
      
        # The settings for the About page.
        # Corresponds to the JSON property `about`
        # @return [Google::Apis::ContentV2_1::LiaAboutPageSettings]
        attr_accessor :about
      
        # CLDR country code (e.g. "US").
        # Corresponds to the JSON property `country`
        # @return [String]
        attr_accessor :country
      
        # The status of the "Merchant hosted local storefront" feature.
        # Corresponds to the JSON property `hostedLocalStorefrontActive`
        # @return [Boolean]
        attr_accessor :hosted_local_storefront_active
        alias_method :hosted_local_storefront_active?, :hosted_local_storefront_active
      
        # LIA inventory verification settings.
        # Corresponds to the JSON property `inventory`
        # @return [Google::Apis::ContentV2_1::LiaInventorySettings]
        attr_accessor :inventory
      
        # LIA "On Display To Order" settings.
        # Corresponds to the JSON property `onDisplayToOrder`
        # @return [Google::Apis::ContentV2_1::LiaOnDisplayToOrderSettings]
        attr_accessor :on_display_to_order
      
        # The POS data provider linked with this country.
        # Corresponds to the JSON property `posDataProvider`
        # @return [Google::Apis::ContentV2_1::LiaPosDataProvider]
        attr_accessor :pos_data_provider
      
        # The status of the "Store pickup" feature.
        # Corresponds to the JSON property `storePickupActive`
        # @return [Boolean]
        attr_accessor :store_pickup_active
        alias_method :store_pickup_active?, :store_pickup_active
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @about = args[:about] if args.key?(:about)
          @country = args[:country] if args.key?(:country)
          @hosted_local_storefront_active = args[:hosted_local_storefront_active] if args.key?(:hosted_local_storefront_active)
          @inventory = args[:inventory] if args.key?(:inventory)
          @on_display_to_order = args[:on_display_to_order] if args.key?(:on_display_to_order)
          @pos_data_provider = args[:pos_data_provider] if args.key?(:pos_data_provider)
          @store_pickup_active = args[:store_pickup_active] if args.key?(:store_pickup_active)
        end
      end
      
      # 
      class LiaInventorySettings
        include Google::Apis::Core::Hashable
      
        # The email of the contact for the inventory verification process.
        # Corresponds to the JSON property `inventoryVerificationContactEmail`
        # @return [String]
        attr_accessor :inventory_verification_contact_email
      
        # The name of the contact for the inventory verification process.
        # Corresponds to the JSON property `inventoryVerificationContactName`
        # @return [String]
        attr_accessor :inventory_verification_contact_name
      
        # The status of the verification contact.
        # Corresponds to the JSON property `inventoryVerificationContactStatus`
        # @return [String]
        attr_accessor :inventory_verification_contact_status
      
        # The status of the inventory verification process.
        # Corresponds to the JSON property `status`
        # @return [String]
        attr_accessor :status
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @inventory_verification_contact_email = args[:inventory_verification_contact_email] if args.key?(:inventory_verification_contact_email)
          @inventory_verification_contact_name = args[:inventory_verification_contact_name] if args.key?(:inventory_verification_contact_name)
          @inventory_verification_contact_status = args[:inventory_verification_contact_status] if args.key?(:inventory_verification_contact_status)
          @status = args[:status] if args.key?(:status)
        end
      end
      
      # 
      class LiaOnDisplayToOrderSettings
        include Google::Apis::Core::Hashable
      
        # Shipping cost and policy URL.
        # Corresponds to the JSON property `shippingCostPolicyUrl`
        # @return [String]
        attr_accessor :shipping_cost_policy_url
      
        # The status of the ?On display to order? feature.
        # Corresponds to the JSON property `status`
        # @return [String]
        attr_accessor :status
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @shipping_cost_policy_url = args[:shipping_cost_policy_url] if args.key?(:shipping_cost_policy_url)
          @status = args[:status] if args.key?(:status)
        end
      end
      
      # 
      class LiaPosDataProvider
        include Google::Apis::Core::Hashable
      
        # The ID of the POS data provider.
        # Corresponds to the JSON property `posDataProviderId`
        # @return [Fixnum]
        attr_accessor :pos_data_provider_id
      
        # The account ID by which this merchant is known to the POS data provider.
        # Corresponds to the JSON property `posExternalAccountId`
        # @return [String]
        attr_accessor :pos_external_account_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @pos_data_provider_id = args[:pos_data_provider_id] if args.key?(:pos_data_provider_id)
          @pos_external_account_id = args[:pos_external_account_id] if args.key?(:pos_external_account_id)
        end
      end
      
      # Local Inventory ads (LIA) settings. All methods except listposdataproviders
      # require the admin role.
      class LiaSettings
        include Google::Apis::Core::Hashable
      
        # The ID of the account to which these LIA settings belong. Ignored upon update,
        # always present in get request responses.
        # Corresponds to the JSON property `accountId`
        # @return [Fixnum]
        attr_accessor :account_id
      
        # The LIA settings for each country.
        # Corresponds to the JSON property `countrySettings`
        # @return [Array<Google::Apis::ContentV2_1::LiaCountrySettings>]
        attr_accessor :country_settings
      
        # Identifies what kind of resource this is. Value: the fixed string "content#
        # liaSettings".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @account_id = args[:account_id] if args.key?(:account_id)
          @country_settings = args[:country_settings] if args.key?(:country_settings)
          @kind = args[:kind] if args.key?(:kind)
        end
      end
      
      # 
      class LiasettingsCustomBatchRequest
        include Google::Apis::Core::Hashable
      
        # The request entries to be processed in the batch.
        # Corresponds to the JSON property `entries`
        # @return [Array<Google::Apis::ContentV2_1::LiasettingsCustomBatchRequestEntry>]
        attr_accessor :entries
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @entries = args[:entries] if args.key?(:entries)
        end
      end
      
      # 
      class LiasettingsCustomBatchRequestEntry
        include Google::Apis::Core::Hashable
      
        # The ID of the account for which to get/update account shipping settings.
        # Corresponds to the JSON property `accountId`
        # @return [Fixnum]
        attr_accessor :account_id
      
        # An entry ID, unique within the batch request.
        # Corresponds to the JSON property `batchId`
        # @return [Fixnum]
        attr_accessor :batch_id
      
        # Inventory validation contact email. Required only for
        # SetInventoryValidationContact.
        # Corresponds to the JSON property `contactEmail`
        # @return [String]
        attr_accessor :contact_email
      
        # Inventory validation contact name. Required only for
        # SetInventoryValidationContact.
        # Corresponds to the JSON property `contactName`
        # @return [String]
        attr_accessor :contact_name
      
        # The country code. Required only for RequestInventoryVerification.
        # Corresponds to the JSON property `country`
        # @return [String]
        attr_accessor :country
      
        # The GMB account. Required only for RequestGmbAccess.
        # Corresponds to the JSON property `gmbEmail`
        # @return [String]
        attr_accessor :gmb_email
      
        # Local Inventory ads (LIA) settings. All methods except listposdataproviders
        # require the admin role.
        # Corresponds to the JSON property `liaSettings`
        # @return [Google::Apis::ContentV2_1::LiaSettings]
        attr_accessor :lia_settings
      
        # The ID of the managing account.
        # Corresponds to the JSON property `merchantId`
        # @return [Fixnum]
        attr_accessor :merchant_id
      
        # 
        # Corresponds to the JSON property `method`
        # @return [String]
        attr_accessor :method_prop
      
        # The ID of POS data provider. Required only for SetPosProvider.
        # Corresponds to the JSON property `posDataProviderId`
        # @return [Fixnum]
        attr_accessor :pos_data_provider_id
      
        # The account ID by which this merchant is known to the POS provider.
        # Corresponds to the JSON property `posExternalAccountId`
        # @return [String]
        attr_accessor :pos_external_account_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @account_id = args[:account_id] if args.key?(:account_id)
          @batch_id = args[:batch_id] if args.key?(:batch_id)
          @contact_email = args[:contact_email] if args.key?(:contact_email)
          @contact_name = args[:contact_name] if args.key?(:contact_name)
          @country = args[:country] if args.key?(:country)
          @gmb_email = args[:gmb_email] if args.key?(:gmb_email)
          @lia_settings = args[:lia_settings] if args.key?(:lia_settings)
          @merchant_id = args[:merchant_id] if args.key?(:merchant_id)
          @method_prop = args[:method_prop] if args.key?(:method_prop)
          @pos_data_provider_id = args[:pos_data_provider_id] if args.key?(:pos_data_provider_id)
          @pos_external_account_id = args[:pos_external_account_id] if args.key?(:pos_external_account_id)
        end
      end
      
      # 
      class LiasettingsCustomBatchResponse
        include Google::Apis::Core::Hashable
      
        # The result of the execution of the batch requests.
        # Corresponds to the JSON property `entries`
        # @return [Array<Google::Apis::ContentV2_1::LiasettingsCustomBatchResponseEntry>]
        attr_accessor :entries
      
        # Identifies what kind of resource this is. Value: the fixed string "content#
        # liasettingsCustomBatchResponse".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @entries = args[:entries] if args.key?(:entries)
          @kind = args[:kind] if args.key?(:kind)
        end
      end
      
      # 
      class LiasettingsCustomBatchResponseEntry
        include Google::Apis::Core::Hashable
      
        # The ID of the request entry to which this entry responds.
        # Corresponds to the JSON property `batchId`
        # @return [Fixnum]
        attr_accessor :batch_id
      
        # A list of errors returned by a failed batch entry.
        # Corresponds to the JSON property `errors`
        # @return [Google::Apis::ContentV2_1::Errors]
        attr_accessor :errors
      
        # The the list of accessible GMB accounts.
        # Corresponds to the JSON property `gmbAccounts`
        # @return [Google::Apis::ContentV2_1::GmbAccounts]
        attr_accessor :gmb_accounts
      
        # Identifies what kind of resource this is. Value: the fixed string "content#
        # liasettingsCustomBatchResponseEntry".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Local Inventory ads (LIA) settings. All methods except listposdataproviders
        # require the admin role.
        # Corresponds to the JSON property `liaSettings`
        # @return [Google::Apis::ContentV2_1::LiaSettings]
        attr_accessor :lia_settings
      
        # The list of POS data providers.
        # Corresponds to the JSON property `posDataProviders`
        # @return [Array<Google::Apis::ContentV2_1::PosDataProviders>]
        attr_accessor :pos_data_providers
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @batch_id = args[:batch_id] if args.key?(:batch_id)
          @errors = args[:errors] if args.key?(:errors)
          @gmb_accounts = args[:gmb_accounts] if args.key?(:gmb_accounts)
          @kind = args[:kind] if args.key?(:kind)
          @lia_settings = args[:lia_settings] if args.key?(:lia_settings)
          @pos_data_providers = args[:pos_data_providers] if args.key?(:pos_data_providers)
        end
      end
      
      # 
      class LiasettingsGetAccessibleGmbAccountsResponse
        include Google::Apis::Core::Hashable
      
        # The ID of the account.
        # Corresponds to the JSON property `accountId`
        # @return [Fixnum]
        attr_accessor :account_id
      
        # A list of GMB accounts which are available to the merchant.
        # Corresponds to the JSON property `gmbAccounts`
        # @return [Array<Google::Apis::ContentV2_1::GmbAccountsGmbAccount>]
        attr_accessor :gmb_accounts
      
        # Identifies what kind of resource this is. Value: the fixed string "content#
        # liasettingsGetAccessibleGmbAccountsResponse".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @account_id = args[:account_id] if args.key?(:account_id)
          @gmb_accounts = args[:gmb_accounts] if args.key?(:gmb_accounts)
          @kind = args[:kind] if args.key?(:kind)
        end
      end
      
      # 
      class LiasettingsListPosDataProvidersResponse
        include Google::Apis::Core::Hashable
      
        # Identifies what kind of resource this is. Value: the fixed string "content#
        # liasettingsListPosDataProvidersResponse".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The list of POS data providers for each eligible country
        # Corresponds to the JSON property `posDataProviders`
        # @return [Array<Google::Apis::ContentV2_1::PosDataProviders>]
        attr_accessor :pos_data_providers
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @kind = args[:kind] if args.key?(:kind)
          @pos_data_providers = args[:pos_data_providers] if args.key?(:pos_data_providers)
        end
      end
      
      # 
      class LiasettingsListResponse
        include Google::Apis::Core::Hashable
      
        # Identifies what kind of resource this is. Value: the fixed string "content#
        # liasettingsListResponse".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The token for the retrieval of the next page of LIA settings.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # 
        # Corresponds to the JSON property `resources`
        # @return [Array<Google::Apis::ContentV2_1::LiaSettings>]
        attr_accessor :resources
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @kind = args[:kind] if args.key?(:kind)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @resources = args[:resources] if args.key?(:resources)
        end
      end
      
      # 
      class LiasettingsRequestGmbAccessResponse
        include Google::Apis::Core::Hashable
      
        # Identifies what kind of resource this is. Value: the fixed string "content#
        # liasettingsRequestGmbAccessResponse".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @kind = args[:kind] if args.key?(:kind)
        end
      end
      
      # 
      class LiasettingsRequestInventoryVerificationResponse
        include Google::Apis::Core::Hashable
      
        # Identifies what kind of resource this is. Value: the fixed string "content#
        # liasettingsRequestInventoryVerificationResponse".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @kind = args[:kind] if args.key?(:kind)
        end
      end
      
      # 
      class LiasettingsSetInventoryVerificationContactResponse
        include Google::Apis::Core::Hashable
      
        # Identifies what kind of resource this is. Value: the fixed string "content#
        # liasettingsSetInventoryVerificationContactResponse".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @kind = args[:kind] if args.key?(:kind)
        end
      end
      
      # 
      class LiasettingsSetPosDataProviderResponse
        include Google::Apis::Core::Hashable
      
        # Identifies what kind of resource this is. Value: the fixed string "content#
        # liasettingsSetPosDataProviderResponse".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @kind = args[:kind] if args.key?(:kind)
        end
      end
      
      # 
      class LocationIdSet
        include Google::Apis::Core::Hashable
      
        # A non-empty list of location IDs. They must all be of the same location type (
        # e.g., state).
        # Corresponds to the JSON property `locationIds`
        # @return [Array<String>]
        attr_accessor :location_ids
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @location_ids = args[:location_ids] if args.key?(:location_ids)
        end
      end
      
      # 
      class LoyaltyPoints
        include Google::Apis::Core::Hashable
      
        # Name of loyalty points program. It is recommended to limit the name to 12 full-
        # width characters or 24 Roman characters.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The retailer's loyalty points in absolute value.
        # Corresponds to the JSON property `pointsValue`
        # @return [Fixnum]
        attr_accessor :points_value
      
        # The ratio of a point when converted to currency. Google assumes currency based
        # on Merchant Center settings. If ratio is left out, it defaults to 1.0.
        # Corresponds to the JSON property `ratio`
        # @return [Float]
        attr_accessor :ratio
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] if args.key?(:name)
          @points_value = args[:points_value] if args.key?(:points_value)
          @ratio = args[:ratio] if args.key?(:ratio)
        end
      end
      
      # 
      class MerchantOrderReturn
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `creationDate`
        # @return [String]
        attr_accessor :creation_date
      
        # 
        # Corresponds to the JSON property `merchantOrderId`
        # @return [String]
        attr_accessor :merchant_order_id
      
        # 
        # Corresponds to the JSON property `orderId`
        # @return [String]
        attr_accessor :order_id
      
        # 
        # Corresponds to the JSON property `orderReturnId`
        # @return [String]
        attr_accessor :order_return_id
      
        # 
        # Corresponds to the JSON property `returnItems`
        # @return [Array<Google::Apis::ContentV2_1::MerchantOrderReturnItem>]
        attr_accessor :return_items
      
        # 
        # Corresponds to the JSON property `returnShipments`
        # @return [Array<Google::Apis::ContentV2_1::ReturnShipment>]
        attr_accessor :return_shipments
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @creation_date = args[:creation_date] if args.key?(:creation_date)
          @merchant_order_id = args[:merchant_order_id] if args.key?(:merchant_order_id)
          @order_id = args[:order_id] if args.key?(:order_id)
          @order_return_id = args[:order_return_id] if args.key?(:order_return_id)
          @return_items = args[:return_items] if args.key?(:return_items)
          @return_shipments = args[:return_shipments] if args.key?(:return_shipments)
        end
      end
      
      # 
      class MerchantOrderReturnItem
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `customerReturnReason`
        # @return [Google::Apis::ContentV2_1::CustomerReturnReason]
        attr_accessor :customer_return_reason
      
        # 
        # Corresponds to the JSON property `itemId`
        # @return [String]
        attr_accessor :item_id
      
        # 
        # Corresponds to the JSON property `merchantReturnReason`
        # @return [Google::Apis::ContentV2_1::RefundReason]
        attr_accessor :merchant_return_reason
      
        # 
        # Corresponds to the JSON property `product`
        # @return [Google::Apis::ContentV2_1::OrderLineItemProduct]
        attr_accessor :product
      
        # 
        # Corresponds to the JSON property `returnShipmentIds`
        # @return [Array<String>]
        attr_accessor :return_shipment_ids
      
        # 
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @customer_return_reason = args[:customer_return_reason] if args.key?(:customer_return_reason)
          @item_id = args[:item_id] if args.key?(:item_id)
          @merchant_return_reason = args[:merchant_return_reason] if args.key?(:merchant_return_reason)
          @product = args[:product] if args.key?(:product)
          @return_shipment_ids = args[:return_shipment_ids] if args.key?(:return_shipment_ids)
          @state = args[:state] if args.key?(:state)
        end
      end
      
      # Order. All methods require the order manager role.
      class Order
        include Google::Apis::Core::Hashable
      
        # Whether the order was acknowledged.
        # Corresponds to the JSON property `acknowledged`
        # @return [Boolean]
        attr_accessor :acknowledged
        alias_method :acknowledged?, :acknowledged
      
        # The billing address.
        # Corresponds to the JSON property `billingAddress`
        # @return [Google::Apis::ContentV2_1::OrderAddress]
        attr_accessor :billing_address
      
        # The details of the customer who placed the order.
        # Corresponds to the JSON property `customer`
        # @return [Google::Apis::ContentV2_1::OrderCustomer]
        attr_accessor :customer
      
        # Delivery details for shipments.
        # Corresponds to the JSON property `deliveryDetails`
        # @return [Google::Apis::ContentV2_1::OrderDeliveryDetails]
        attr_accessor :delivery_details
      
        # The REST ID of the order. Globally unique.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Identifies what kind of resource this is. Value: the fixed string "content#
        # order".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Line items that are ordered.
        # Corresponds to the JSON property `lineItems`
        # @return [Array<Google::Apis::ContentV2_1::OrderLineItem>]
        attr_accessor :line_items
      
        # 
        # Corresponds to the JSON property `merchantId`
        # @return [Fixnum]
        attr_accessor :merchant_id
      
        # Merchant-provided ID of the order.
        # Corresponds to the JSON property `merchantOrderId`
        # @return [String]
        attr_accessor :merchant_order_id
      
        # The net amount for the order (price part). For example, if an order was
        # originally for $100 and a refund was issued for $20, the net amount will be $
        # 80.
        # Corresponds to the JSON property `netPriceAmount`
        # @return [Google::Apis::ContentV2_1::Price]
        attr_accessor :net_price_amount
      
        # The net amount for the order (tax part). Note that in certain cases due to
        # taxable base adjustment netTaxAmount might not match to a sum of tax field
        # across all lineItems and refunds.
        # Corresponds to the JSON property `netTaxAmount`
        # @return [Google::Apis::ContentV2_1::Price]
        attr_accessor :net_tax_amount
      
        # The status of the payment.
        # Corresponds to the JSON property `paymentStatus`
        # @return [String]
        attr_accessor :payment_status
      
        # The date when the order was placed, in ISO 8601 format.
        # Corresponds to the JSON property `placedDate`
        # @return [String]
        attr_accessor :placed_date
      
        # Promotions associated with the order.
        # Corresponds to the JSON property `promotions`
        # @return [Array<Google::Apis::ContentV2_1::OrderPromotion>]
        attr_accessor :promotions
      
        # Refunds for the order.
        # Corresponds to the JSON property `refunds`
        # @return [Array<Google::Apis::ContentV2_1::OrderRefund>]
        attr_accessor :refunds
      
        # Shipments of the order.
        # Corresponds to the JSON property `shipments`
        # @return [Array<Google::Apis::ContentV2_1::OrderShipment>]
        attr_accessor :shipments
      
        # The total cost of shipping for all items.
        # Corresponds to the JSON property `shippingCost`
        # @return [Google::Apis::ContentV2_1::Price]
        attr_accessor :shipping_cost
      
        # The tax for the total shipping cost.
        # Corresponds to the JSON property `shippingCostTax`
        # @return [Google::Apis::ContentV2_1::Price]
        attr_accessor :shipping_cost_tax
      
        # The status of the order.
        # Corresponds to the JSON property `status`
        # @return [String]
        attr_accessor :status
      
        # The party responsible for collecting and remitting taxes.
        # Corresponds to the JSON property `taxCollector`
        # @return [String]
        attr_accessor :tax_collector
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @acknowledged = args[:acknowledged] if args.key?(:acknowledged)
          @billing_address = args[:billing_address] if args.key?(:billing_address)
          @customer = args[:customer] if args.key?(:customer)
          @delivery_details = args[:delivery_details] if args.key?(:delivery_details)
          @id = args[:id] if args.key?(:id)
          @kind = args[:kind] if args.key?(:kind)
          @line_items = args[:line_items] if args.key?(:line_items)
          @merchant_id = args[:merchant_id] if args.key?(:merchant_id)
          @merchant_order_id = args[:merchant_order_id] if args.key?(:merchant_order_id)
          @net_price_amount = args[:net_price_amount] if args.key?(:net_price_amount)
          @net_tax_amount = args[:net_tax_amount] if args.key?(:net_tax_amount)
          @payment_status = args[:payment_status] if args.key?(:payment_status)
          @placed_date = args[:placed_date] if args.key?(:placed_date)
          @promotions = args[:promotions] if args.key?(:promotions)
          @refunds = args[:refunds] if args.key?(:refunds)
          @shipments = args[:shipments] if args.key?(:shipments)
          @shipping_cost = args[:shipping_cost] if args.key?(:shipping_cost)
          @shipping_cost_tax = args[:shipping_cost_tax] if args.key?(:shipping_cost_tax)
          @status = args[:status] if args.key?(:status)
          @tax_collector = args[:tax_collector] if args.key?(:tax_collector)
        end
      end
      
      # 
      class OrderAddress
        include Google::Apis::Core::Hashable
      
        # CLDR country code (e.g. "US").
        # Corresponds to the JSON property `country`
        # @return [String]
        attr_accessor :country
      
        # Strings representing the lines of the printed label for mailing the order, for
        # example:
        # John Smith
        # 1600 Amphitheatre Parkway
        # Mountain View, CA, 94043
        # United States
        # Corresponds to the JSON property `fullAddress`
        # @return [Array<String>]
        attr_accessor :full_address
      
        # Whether the address is a post office box.
        # Corresponds to the JSON property `isPostOfficeBox`
        # @return [Boolean]
        attr_accessor :is_post_office_box
        alias_method :is_post_office_box?, :is_post_office_box
      
        # City, town or commune. May also include dependent localities or sublocalities (
        # e.g. neighborhoods or suburbs).
        # Corresponds to the JSON property `locality`
        # @return [String]
        attr_accessor :locality
      
        # Postal Code or ZIP (e.g. "94043").
        # Corresponds to the JSON property `postalCode`
        # @return [String]
        attr_accessor :postal_code
      
        # Name of the recipient.
        # Corresponds to the JSON property `recipientName`
        # @return [String]
        attr_accessor :recipient_name
      
        # Top-level administrative subdivision of the country. For example, a state like
        # California ("CA") or a province like Quebec ("QC").
        # Corresponds to the JSON property `region`
        # @return [String]
        attr_accessor :region
      
        # Street-level part of the address.
        # Corresponds to the JSON property `streetAddress`
        # @return [Array<String>]
        attr_accessor :street_address
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @country = args[:country] if args.key?(:country)
          @full_address = args[:full_address] if args.key?(:full_address)
          @is_post_office_box = args[:is_post_office_box] if args.key?(:is_post_office_box)
          @locality = args[:locality] if args.key?(:locality)
          @postal_code = args[:postal_code] if args.key?(:postal_code)
          @recipient_name = args[:recipient_name] if args.key?(:recipient_name)
          @region = args[:region] if args.key?(:region)
          @street_address = args[:street_address] if args.key?(:street_address)
        end
      end
      
      # 
      class OrderCancellation
        include Google::Apis::Core::Hashable
      
        # The actor that created the cancellation.
        # Corresponds to the JSON property `actor`
        # @return [String]
        attr_accessor :actor
      
        # Date on which the cancellation has been created, in ISO 8601 format.
        # Corresponds to the JSON property `creationDate`
        # @return [String]
        attr_accessor :creation_date
      
        # The quantity that was canceled.
        # Corresponds to the JSON property `quantity`
        # @return [Fixnum]
        attr_accessor :quantity
      
        # The reason for the cancellation. Orders that are cancelled with a noInventory
        # reason will lead to the removal of the product from Shopping Actions until you
        # make an update to that product. This will not affect your Shopping ads.
        # Corresponds to the JSON property `reason`
        # @return [String]
        attr_accessor :reason
      
        # The explanation of the reason.
        # Corresponds to the JSON property `reasonText`
        # @return [String]
        attr_accessor :reason_text
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @actor = args[:actor] if args.key?(:actor)
          @creation_date = args[:creation_date] if args.key?(:creation_date)
          @quantity = args[:quantity] if args.key?(:quantity)
          @reason = args[:reason] if args.key?(:reason)
          @reason_text = args[:reason_text] if args.key?(:reason_text)
        end
      end
      
      # 
      class OrderCustomer
        include Google::Apis::Core::Hashable
      
        # Full name of the customer.
        # Corresponds to the JSON property `fullName`
        # @return [String]
        attr_accessor :full_name
      
        # Customer's marketing preferences. Contains the marketing opt-in information
        # that is current at the time that the merchant call. User preference selections
        # can change from one order to the next so preferences must be checked with
        # every order.
        # Corresponds to the JSON property `marketingRightsInfo`
        # @return [Google::Apis::ContentV2_1::OrderCustomerMarketingRightsInfo]
        attr_accessor :marketing_rights_info
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @full_name = args[:full_name] if args.key?(:full_name)
          @marketing_rights_info = args[:marketing_rights_info] if args.key?(:marketing_rights_info)
        end
      end
      
      # 
      class OrderCustomerMarketingRightsInfo
        include Google::Apis::Core::Hashable
      
        # Last known customer selection regarding marketing preferences. In certain
        # cases this selection might not be known, so this field would be empty. If a
        # customer selected granted in their most recent order, they can be subscribed
        # to marketing emails. Customers who have chosen denied must not be subscribed,
        # or must be unsubscribed if already opted-in.
        # Corresponds to the JSON property `explicitMarketingPreference`
        # @return [String]
        attr_accessor :explicit_marketing_preference
      
        # Timestamp when last time marketing preference was updated. Could be empty, if
        # user wasn't offered a selection yet.
        # Corresponds to the JSON property `lastUpdatedTimestamp`
        # @return [String]
        attr_accessor :last_updated_timestamp
      
        # Email address that can be used for marketing purposes. The field may be empty
        # even if explicitMarketingPreference is 'granted'. This happens when retrieving
        # an old order from the customer who deleted their account.
        # Corresponds to the JSON property `marketingEmailAddress`
        # @return [String]
        attr_accessor :marketing_email_address
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @explicit_marketing_preference = args[:explicit_marketing_preference] if args.key?(:explicit_marketing_preference)
          @last_updated_timestamp = args[:last_updated_timestamp] if args.key?(:last_updated_timestamp)
          @marketing_email_address = args[:marketing_email_address] if args.key?(:marketing_email_address)
        end
      end
      
      # 
      class OrderDeliveryDetails
        include Google::Apis::Core::Hashable
      
        # The delivery address
        # Corresponds to the JSON property `address`
        # @return [Google::Apis::ContentV2_1::OrderAddress]
        attr_accessor :address
      
        # The phone number of the person receiving the delivery.
        # Corresponds to the JSON property `phoneNumber`
        # @return [String]
        attr_accessor :phone_number
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @address = args[:address] if args.key?(:address)
          @phone_number = args[:phone_number] if args.key?(:phone_number)
        end
      end
      
      # 
      class OrderLineItem
        include Google::Apis::Core::Hashable
      
        # Price and tax adjustments applied on the line item.
        # Corresponds to the JSON property `adjustments`
        # @return [Array<Google::Apis::ContentV2_1::OrderLineItemAdjustment>]
        attr_accessor :adjustments
      
        # Annotations that are attached to the line item.
        # Corresponds to the JSON property `annotations`
        # @return [Array<Google::Apis::ContentV2_1::OrderMerchantProvidedAnnotation>]
        attr_accessor :annotations
      
        # Cancellations of the line item.
        # Corresponds to the JSON property `cancellations`
        # @return [Array<Google::Apis::ContentV2_1::OrderCancellation>]
        attr_accessor :cancellations
      
        # The ID of the line item.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Total price for the line item. For example, if two items for $10 are purchased,
        # the total price will be $20.
        # Corresponds to the JSON property `price`
        # @return [Google::Apis::ContentV2_1::Price]
        attr_accessor :price
      
        # Product data as seen by customer from the time of the order placement. Note
        # that certain attributes values (e.g. title or gtin) might be reformatted and
        # no longer match values submitted via product feed.
        # Corresponds to the JSON property `product`
        # @return [Google::Apis::ContentV2_1::OrderLineItemProduct]
        attr_accessor :product
      
        # Number of items canceled.
        # Corresponds to the JSON property `quantityCanceled`
        # @return [Fixnum]
        attr_accessor :quantity_canceled
      
        # Number of items delivered.
        # Corresponds to the JSON property `quantityDelivered`
        # @return [Fixnum]
        attr_accessor :quantity_delivered
      
        # Number of items ordered.
        # Corresponds to the JSON property `quantityOrdered`
        # @return [Fixnum]
        attr_accessor :quantity_ordered
      
        # Number of items pending.
        # Corresponds to the JSON property `quantityPending`
        # @return [Fixnum]
        attr_accessor :quantity_pending
      
        # Number of items returned.
        # Corresponds to the JSON property `quantityReturned`
        # @return [Fixnum]
        attr_accessor :quantity_returned
      
        # Number of items shipped.
        # Corresponds to the JSON property `quantityShipped`
        # @return [Fixnum]
        attr_accessor :quantity_shipped
      
        # Details of the return policy for the line item.
        # Corresponds to the JSON property `returnInfo`
        # @return [Google::Apis::ContentV2_1::OrderLineItemReturnInfo]
        attr_accessor :return_info
      
        # Returns of the line item.
        # Corresponds to the JSON property `returns`
        # @return [Array<Google::Apis::ContentV2_1::OrderReturn>]
        attr_accessor :returns
      
        # Details of the requested shipping for the line item.
        # Corresponds to the JSON property `shippingDetails`
        # @return [Google::Apis::ContentV2_1::OrderLineItemShippingDetails]
        attr_accessor :shipping_details
      
        # Total tax amount for the line item. For example, if two items are purchased,
        # and each have a cost tax of $2, the total tax amount will be $4.
        # Corresponds to the JSON property `tax`
        # @return [Google::Apis::ContentV2_1::Price]
        attr_accessor :tax
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @adjustments = args[:adjustments] if args.key?(:adjustments)
          @annotations = args[:annotations] if args.key?(:annotations)
          @cancellations = args[:cancellations] if args.key?(:cancellations)
          @id = args[:id] if args.key?(:id)
          @price = args[:price] if args.key?(:price)
          @product = args[:product] if args.key?(:product)
          @quantity_canceled = args[:quantity_canceled] if args.key?(:quantity_canceled)
          @quantity_delivered = args[:quantity_delivered] if args.key?(:quantity_delivered)
          @quantity_ordered = args[:quantity_ordered] if args.key?(:quantity_ordered)
          @quantity_pending = args[:quantity_pending] if args.key?(:quantity_pending)
          @quantity_returned = args[:quantity_returned] if args.key?(:quantity_returned)
          @quantity_shipped = args[:quantity_shipped] if args.key?(:quantity_shipped)
          @return_info = args[:return_info] if args.key?(:return_info)
          @returns = args[:returns] if args.key?(:returns)
          @shipping_details = args[:shipping_details] if args.key?(:shipping_details)
          @tax = args[:tax] if args.key?(:tax)
        end
      end
      
      # 
      class OrderLineItemAdjustment
        include Google::Apis::Core::Hashable
      
        # Adjustment for total price of the line item.
        # Corresponds to the JSON property `priceAdjustment`
        # @return [Google::Apis::ContentV2_1::Price]
        attr_accessor :price_adjustment
      
        # Adjustment for total tax of the line item.
        # Corresponds to the JSON property `taxAdjustment`
        # @return [Google::Apis::ContentV2_1::Price]
        attr_accessor :tax_adjustment
      
        # Type of this adjustment.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @price_adjustment = args[:price_adjustment] if args.key?(:price_adjustment)
          @tax_adjustment = args[:tax_adjustment] if args.key?(:tax_adjustment)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # 
      class OrderLineItemProduct
        include Google::Apis::Core::Hashable
      
        # Brand of the item.
        # Corresponds to the JSON property `brand`
        # @return [String]
        attr_accessor :brand
      
        # Condition or state of the item.
        # Corresponds to the JSON property `condition`
        # @return [String]
        attr_accessor :condition
      
        # The two-letter ISO 639-1 language code for the item.
        # Corresponds to the JSON property `contentLanguage`
        # @return [String]
        attr_accessor :content_language
      
        # Associated fees at order creation time.
        # Corresponds to the JSON property `fees`
        # @return [Array<Google::Apis::ContentV2_1::OrderLineItemProductFee>]
        attr_accessor :fees
      
        # Global Trade Item Number (GTIN) of the item.
        # Corresponds to the JSON property `gtin`
        # @return [String]
        attr_accessor :gtin
      
        # The REST ID of the product.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # URL of an image of the item.
        # Corresponds to the JSON property `imageLink`
        # @return [String]
        attr_accessor :image_link
      
        # Shared identifier for all variants of the same product.
        # Corresponds to the JSON property `itemGroupId`
        # @return [String]
        attr_accessor :item_group_id
      
        # Manufacturer Part Number (MPN) of the item.
        # Corresponds to the JSON property `mpn`
        # @return [String]
        attr_accessor :mpn
      
        # An identifier of the item.
        # Corresponds to the JSON property `offerId`
        # @return [String]
        attr_accessor :offer_id
      
        # Price of the item.
        # Corresponds to the JSON property `price`
        # @return [Google::Apis::ContentV2_1::Price]
        attr_accessor :price
      
        # URL to the cached image shown to the user when order was placed.
        # Corresponds to the JSON property `shownImage`
        # @return [String]
        attr_accessor :shown_image
      
        # The CLDR territory code of the target country of the product.
        # Corresponds to the JSON property `targetCountry`
        # @return [String]
        attr_accessor :target_country
      
        # The title of the product.
        # Corresponds to the JSON property `title`
        # @return [String]
        attr_accessor :title
      
        # Variant attributes for the item. These are dimensions of the product, such as
        # color, gender, material, pattern, and size. You can find a comprehensive list
        # of variant attributes here.
        # Corresponds to the JSON property `variantAttributes`
        # @return [Array<Google::Apis::ContentV2_1::OrderLineItemProductVariantAttribute>]
        attr_accessor :variant_attributes
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @brand = args[:brand] if args.key?(:brand)
          @condition = args[:condition] if args.key?(:condition)
          @content_language = args[:content_language] if args.key?(:content_language)
          @fees = args[:fees] if args.key?(:fees)
          @gtin = args[:gtin] if args.key?(:gtin)
          @id = args[:id] if args.key?(:id)
          @image_link = args[:image_link] if args.key?(:image_link)
          @item_group_id = args[:item_group_id] if args.key?(:item_group_id)
          @mpn = args[:mpn] if args.key?(:mpn)
          @offer_id = args[:offer_id] if args.key?(:offer_id)
          @price = args[:price] if args.key?(:price)
          @shown_image = args[:shown_image] if args.key?(:shown_image)
          @target_country = args[:target_country] if args.key?(:target_country)
          @title = args[:title] if args.key?(:title)
          @variant_attributes = args[:variant_attributes] if args.key?(:variant_attributes)
        end
      end
      
      # 
      class OrderLineItemProductFee
        include Google::Apis::Core::Hashable
      
        # Amount of the fee.
        # Corresponds to the JSON property `amount`
        # @return [Google::Apis::ContentV2_1::Price]
        attr_accessor :amount
      
        # Name of the fee.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @amount = args[:amount] if args.key?(:amount)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # 
      class OrderLineItemProductVariantAttribute
        include Google::Apis::Core::Hashable
      
        # The dimension of the variant.
        # Corresponds to the JSON property `dimension`
        # @return [String]
        attr_accessor :dimension
      
        # The value for the dimension.
        # Corresponds to the JSON property `value`
        # @return [String]
        attr_accessor :value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @dimension = args[:dimension] if args.key?(:dimension)
          @value = args[:value] if args.key?(:value)
        end
      end
      
      # 
      class OrderLineItemReturnInfo
        include Google::Apis::Core::Hashable
      
        # How many days later the item can be returned.
        # Corresponds to the JSON property `daysToReturn`
        # @return [Fixnum]
        attr_accessor :days_to_return
      
        # Whether the item is returnable.
        # Corresponds to the JSON property `isReturnable`
        # @return [Boolean]
        attr_accessor :is_returnable
        alias_method :is_returnable?, :is_returnable
      
        # URL of the item return policy.
        # Corresponds to the JSON property `policyUrl`
        # @return [String]
        attr_accessor :policy_url
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @days_to_return = args[:days_to_return] if args.key?(:days_to_return)
          @is_returnable = args[:is_returnable] if args.key?(:is_returnable)
          @policy_url = args[:policy_url] if args.key?(:policy_url)
        end
      end
      
      # 
      class OrderLineItemShippingDetails
        include Google::Apis::Core::Hashable
      
        # The delivery by date, in ISO 8601 format.
        # Corresponds to the JSON property `deliverByDate`
        # @return [String]
        attr_accessor :deliver_by_date
      
        # Details of the shipping method.
        # Corresponds to the JSON property `method`
        # @return [Google::Apis::ContentV2_1::OrderLineItemShippingDetailsMethod]
        attr_accessor :method_prop
      
        # The ship by date, in ISO 8601 format.
        # Corresponds to the JSON property `shipByDate`
        # @return [String]
        attr_accessor :ship_by_date
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @deliver_by_date = args[:deliver_by_date] if args.key?(:deliver_by_date)
          @method_prop = args[:method_prop] if args.key?(:method_prop)
          @ship_by_date = args[:ship_by_date] if args.key?(:ship_by_date)
        end
      end
      
      # 
      class OrderLineItemShippingDetailsMethod
        include Google::Apis::Core::Hashable
      
        # The carrier for the shipping. Optional. See shipments[].carrier for a list of
        # acceptable values.
        # Corresponds to the JSON property `carrier`
        # @return [String]
        attr_accessor :carrier
      
        # Maximum transit time.
        # Corresponds to the JSON property `maxDaysInTransit`
        # @return [Fixnum]
        attr_accessor :max_days_in_transit
      
        # The name of the shipping method.
        # Corresponds to the JSON property `methodName`
        # @return [String]
        attr_accessor :method_name
      
        # Minimum transit time.
        # Corresponds to the JSON property `minDaysInTransit`
        # @return [Fixnum]
        attr_accessor :min_days_in_transit
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @carrier = args[:carrier] if args.key?(:carrier)
          @max_days_in_transit = args[:max_days_in_transit] if args.key?(:max_days_in_transit)
          @method_name = args[:method_name] if args.key?(:method_name)
          @min_days_in_transit = args[:min_days_in_transit] if args.key?(:min_days_in_transit)
        end
      end
      
      # 
      class OrderMerchantProvidedAnnotation
        include Google::Apis::Core::Hashable
      
        # Key for additional merchant provided (as key-value pairs) annotation about the
        # line item.
        # Corresponds to the JSON property `key`
        # @return [String]
        attr_accessor :key
      
        # Value for additional merchant provided (as key-value pairs) annotation about
        # the line item.
        # Corresponds to the JSON property `value`
        # @return [String]
        attr_accessor :value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @key = args[:key] if args.key?(:key)
          @value = args[:value] if args.key?(:value)
        end
      end
      
      # 
      class OrderPromotion
        include Google::Apis::Core::Hashable
      
        # Items which this promotion may be applied to. If empty, there are no
        # restrictions on applicable items and quantity.
        # Corresponds to the JSON property `applicableItems`
        # @return [Array<Google::Apis::ContentV2_1::OrderPromotionItem>]
        attr_accessor :applicable_items
      
        # Items which this promotion have been applied to.
        # Corresponds to the JSON property `appliedItems`
        # @return [Array<Google::Apis::ContentV2_1::OrderPromotionItem>]
        attr_accessor :applied_items
      
        # The party funding the promotion.
        # Corresponds to the JSON property `funder`
        # @return [String]
        attr_accessor :funder
      
        # This field is used to identify promotions within merchants' own systems.
        # Corresponds to the JSON property `merchantPromotionId`
        # @return [String]
        attr_accessor :merchant_promotion_id
      
        # Estimated discount applied to price. Amount is pre-tax or post-tax depending
        # on location of order.
        # Corresponds to the JSON property `priceValue`
        # @return [Google::Apis::ContentV2_1::Price]
        attr_accessor :price_value
      
        # A short title of the promotion to be shown on the checkout page.
        # Corresponds to the JSON property `shortTitle`
        # @return [String]
        attr_accessor :short_title
      
        # The category of the promotion.
        # Corresponds to the JSON property `subtype`
        # @return [String]
        attr_accessor :subtype
      
        # Estimated discount applied to tax (if allowed by law).
        # Corresponds to the JSON property `taxValue`
        # @return [Google::Apis::ContentV2_1::Price]
        attr_accessor :tax_value
      
        # The title of the promotion.
        # Corresponds to the JSON property `title`
        # @return [String]
        attr_accessor :title
      
        # The scope of the promotion.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @applicable_items = args[:applicable_items] if args.key?(:applicable_items)
          @applied_items = args[:applied_items] if args.key?(:applied_items)
          @funder = args[:funder] if args.key?(:funder)
          @merchant_promotion_id = args[:merchant_promotion_id] if args.key?(:merchant_promotion_id)
          @price_value = args[:price_value] if args.key?(:price_value)
          @short_title = args[:short_title] if args.key?(:short_title)
          @subtype = args[:subtype] if args.key?(:subtype)
          @tax_value = args[:tax_value] if args.key?(:tax_value)
          @title = args[:title] if args.key?(:title)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # 
      class OrderPromotionItem
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `lineItemId`
        # @return [String]
        attr_accessor :line_item_id
      
        # 
        # Corresponds to the JSON property `productId`
        # @return [String]
        attr_accessor :product_id
      
        # The quantity of the associated product.
        # Corresponds to the JSON property `quantity`
        # @return [Fixnum]
        attr_accessor :quantity
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @line_item_id = args[:line_item_id] if args.key?(:line_item_id)
          @product_id = args[:product_id] if args.key?(:product_id)
          @quantity = args[:quantity] if args.key?(:quantity)
        end
      end
      
      # 
      class OrderRefund
        include Google::Apis::Core::Hashable
      
        # The actor that created the refund.
        # Corresponds to the JSON property `actor`
        # @return [String]
        attr_accessor :actor
      
        # The amount that is refunded.
        # Corresponds to the JSON property `amount`
        # @return [Google::Apis::ContentV2_1::Price]
        attr_accessor :amount
      
        # Date on which the item has been created, in ISO 8601 format.
        # Corresponds to the JSON property `creationDate`
        # @return [String]
        attr_accessor :creation_date
      
        # The reason for the refund.
        # Corresponds to the JSON property `reason`
        # @return [String]
        attr_accessor :reason
      
        # The explanation of the reason.
        # Corresponds to the JSON property `reasonText`
        # @return [String]
        attr_accessor :reason_text
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @actor = args[:actor] if args.key?(:actor)
          @amount = args[:amount] if args.key?(:amount)
          @creation_date = args[:creation_date] if args.key?(:creation_date)
          @reason = args[:reason] if args.key?(:reason)
          @reason_text = args[:reason_text] if args.key?(:reason_text)
        end
      end
      
      # Order disbursement. All methods require the payment analyst role.
      class OrderReportDisbursement
        include Google::Apis::Core::Hashable
      
        # The disbursement amount.
        # Corresponds to the JSON property `disbursementAmount`
        # @return [Google::Apis::ContentV2_1::Price]
        attr_accessor :disbursement_amount
      
        # The disbursement date, in ISO 8601 format.
        # Corresponds to the JSON property `disbursementCreationDate`
        # @return [String]
        attr_accessor :disbursement_creation_date
      
        # The date the disbursement was initiated, in ISO 8601 format.
        # Corresponds to the JSON property `disbursementDate`
        # @return [String]
        attr_accessor :disbursement_date
      
        # The ID of the disbursement.
        # Corresponds to the JSON property `disbursementId`
        # @return [String]
        attr_accessor :disbursement_id
      
        # The ID of the managing account.
        # Corresponds to the JSON property `merchantId`
        # @return [Fixnum]
        attr_accessor :merchant_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @disbursement_amount = args[:disbursement_amount] if args.key?(:disbursement_amount)
          @disbursement_creation_date = args[:disbursement_creation_date] if args.key?(:disbursement_creation_date)
          @disbursement_date = args[:disbursement_date] if args.key?(:disbursement_date)
          @disbursement_id = args[:disbursement_id] if args.key?(:disbursement_id)
          @merchant_id = args[:merchant_id] if args.key?(:merchant_id)
        end
      end
      
      # 
      class OrderReportTransaction
        include Google::Apis::Core::Hashable
      
        # The disbursement amount.
        # Corresponds to the JSON property `disbursementAmount`
        # @return [Google::Apis::ContentV2_1::Price]
        attr_accessor :disbursement_amount
      
        # The date the disbursement was created, in ISO 8601 format.
        # Corresponds to the JSON property `disbursementCreationDate`
        # @return [String]
        attr_accessor :disbursement_creation_date
      
        # The date the disbursement was initiated, in ISO 8601 format.
        # Corresponds to the JSON property `disbursementDate`
        # @return [String]
        attr_accessor :disbursement_date
      
        # The ID of the disbursement.
        # Corresponds to the JSON property `disbursementId`
        # @return [String]
        attr_accessor :disbursement_id
      
        # The ID of the managing account.
        # Corresponds to the JSON property `merchantId`
        # @return [Fixnum]
        attr_accessor :merchant_id
      
        # Merchant-provided ID of the order.
        # Corresponds to the JSON property `merchantOrderId`
        # @return [String]
        attr_accessor :merchant_order_id
      
        # The ID of the order.
        # Corresponds to the JSON property `orderId`
        # @return [String]
        attr_accessor :order_id
      
        # Total amount for the items.
        # Corresponds to the JSON property `productAmount`
        # @return [Google::Apis::ContentV2_1::ProductAmount]
        attr_accessor :product_amount
      
        # The date of the transaction, in ISO 8601 format.
        # Corresponds to the JSON property `transactionDate`
        # @return [String]
        attr_accessor :transaction_date
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @disbursement_amount = args[:disbursement_amount] if args.key?(:disbursement_amount)
          @disbursement_creation_date = args[:disbursement_creation_date] if args.key?(:disbursement_creation_date)
          @disbursement_date = args[:disbursement_date] if args.key?(:disbursement_date)
          @disbursement_id = args[:disbursement_id] if args.key?(:disbursement_id)
          @merchant_id = args[:merchant_id] if args.key?(:merchant_id)
          @merchant_order_id = args[:merchant_order_id] if args.key?(:merchant_order_id)
          @order_id = args[:order_id] if args.key?(:order_id)
          @product_amount = args[:product_amount] if args.key?(:product_amount)
          @transaction_date = args[:transaction_date] if args.key?(:transaction_date)
        end
      end
      
      # 
      class OrderReturn
        include Google::Apis::Core::Hashable
      
        # The actor that created the refund.
        # Corresponds to the JSON property `actor`
        # @return [String]
        attr_accessor :actor
      
        # Date on which the item has been created, in ISO 8601 format.
        # Corresponds to the JSON property `creationDate`
        # @return [String]
        attr_accessor :creation_date
      
        # Quantity that is returned.
        # Corresponds to the JSON property `quantity`
        # @return [Fixnum]
        attr_accessor :quantity
      
        # The reason for the return.
        # Corresponds to the JSON property `reason`
        # @return [String]
        attr_accessor :reason
      
        # The explanation of the reason.
        # Corresponds to the JSON property `reasonText`
        # @return [String]
        attr_accessor :reason_text
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @actor = args[:actor] if args.key?(:actor)
          @creation_date = args[:creation_date] if args.key?(:creation_date)
          @quantity = args[:quantity] if args.key?(:quantity)
          @reason = args[:reason] if args.key?(:reason)
          @reason_text = args[:reason_text] if args.key?(:reason_text)
        end
      end
      
      # 
      class OrderShipment
        include Google::Apis::Core::Hashable
      
        # The carrier handling the shipment.
        # Acceptable values for US are:
        # - "gsx"
        # - "ups"
        # - "usps"
        # - "fedex"
        # - "dhl"
        # - "ecourier"
        # - "cxt"
        # - "google"
        # - "ontrac"
        # - "emsy"
        # - "ont"
        # - "deliv"
        # - "dynamex"
        # - "lasership"
        # - "mpx"
        # - "uds"
        # - "efw"
        # Acceptable values for FR are:
        # - "colissimo"
        # - "chronopost"
        # - "gls"
        # - "dpd"
        # - "bpost"
        # Corresponds to the JSON property `carrier`
        # @return [String]
        attr_accessor :carrier
      
        # Date on which the shipment has been created, in ISO 8601 format.
        # Corresponds to the JSON property `creationDate`
        # @return [String]
        attr_accessor :creation_date
      
        # Date on which the shipment has been delivered, in ISO 8601 format. Present
        # only if status is delivered
        # Corresponds to the JSON property `deliveryDate`
        # @return [String]
        attr_accessor :delivery_date
      
        # The ID of the shipment.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # The line items that are shipped.
        # Corresponds to the JSON property `lineItems`
        # @return [Array<Google::Apis::ContentV2_1::OrderShipmentLineItemShipment>]
        attr_accessor :line_items
      
        # The status of the shipment.
        # Corresponds to the JSON property `status`
        # @return [String]
        attr_accessor :status
      
        # The tracking ID for the shipment.
        # Corresponds to the JSON property `trackingId`
        # @return [String]
        attr_accessor :tracking_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @carrier = args[:carrier] if args.key?(:carrier)
          @creation_date = args[:creation_date] if args.key?(:creation_date)
          @delivery_date = args[:delivery_date] if args.key?(:delivery_date)
          @id = args[:id] if args.key?(:id)
          @line_items = args[:line_items] if args.key?(:line_items)
          @status = args[:status] if args.key?(:status)
          @tracking_id = args[:tracking_id] if args.key?(:tracking_id)
        end
      end
      
      # 
      class OrderShipmentLineItemShipment
        include Google::Apis::Core::Hashable
      
        # The ID of the line item that is shipped. Either lineItemId or productId is
        # required.
        # Corresponds to the JSON property `lineItemId`
        # @return [String]
        attr_accessor :line_item_id
      
        # The ID of the product to ship. This is the REST ID used in the products
        # service. Either lineItemId or productId is required.
        # Corresponds to the JSON property `productId`
        # @return [String]
        attr_accessor :product_id
      
        # The quantity that is shipped.
        # Corresponds to the JSON property `quantity`
        # @return [Fixnum]
        attr_accessor :quantity
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @line_item_id = args[:line_item_id] if args.key?(:line_item_id)
          @product_id = args[:product_id] if args.key?(:product_id)
          @quantity = args[:quantity] if args.key?(:quantity)
        end
      end
      
      # 
      class OrderinvoicesCreateChargeInvoiceRequest
        include Google::Apis::Core::Hashable
      
        # [required] The ID of the invoice.
        # Corresponds to the JSON property `invoiceId`
        # @return [String]
        attr_accessor :invoice_id
      
        # [required] Invoice summary.
        # Corresponds to the JSON property `invoiceSummary`
        # @return [Google::Apis::ContentV2_1::InvoiceSummary]
        attr_accessor :invoice_summary
      
        # [required] Invoice details per line item.
        # Corresponds to the JSON property `lineItemInvoices`
        # @return [Array<Google::Apis::ContentV2_1::ShipmentInvoiceLineItemInvoice>]
        attr_accessor :line_item_invoices
      
        # [required] The ID of the operation, unique across all operations for a given
        # order.
        # Corresponds to the JSON property `operationId`
        # @return [String]
        attr_accessor :operation_id
      
        # [required] ID of the shipment group. It is assigned by the merchant in the
        # shipLineItems method and is used to group multiple line items that have the
        # same kind of shipping charges.
        # Corresponds to the JSON property `shipmentGroupId`
        # @return [String]
        attr_accessor :shipment_group_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @invoice_id = args[:invoice_id] if args.key?(:invoice_id)
          @invoice_summary = args[:invoice_summary] if args.key?(:invoice_summary)
          @line_item_invoices = args[:line_item_invoices] if args.key?(:line_item_invoices)
          @operation_id = args[:operation_id] if args.key?(:operation_id)
          @shipment_group_id = args[:shipment_group_id] if args.key?(:shipment_group_id)
        end
      end
      
      # 
      class OrderinvoicesCreateChargeInvoiceResponse
        include Google::Apis::Core::Hashable
      
        # The status of the execution.
        # Corresponds to the JSON property `executionStatus`
        # @return [String]
        attr_accessor :execution_status
      
        # Identifies what kind of resource this is. Value: the fixed string "content#
        # orderinvoicesCreateChargeInvoiceResponse".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @execution_status = args[:execution_status] if args.key?(:execution_status)
          @kind = args[:kind] if args.key?(:kind)
        end
      end
      
      # 
      class OrderinvoicesCreateRefundInvoiceRequest
        include Google::Apis::Core::Hashable
      
        # [required] The ID of the invoice.
        # Corresponds to the JSON property `invoiceId`
        # @return [String]
        attr_accessor :invoice_id
      
        # [required] The ID of the operation, unique across all operations for a given
        # order.
        # Corresponds to the JSON property `operationId`
        # @return [String]
        attr_accessor :operation_id
      
        # Option to create a refund-only invoice. Exactly one of refundOnlyOption or
        # returnOption must be provided.
        # Corresponds to the JSON property `refundOnlyOption`
        # @return [Google::Apis::ContentV2_1::OrderinvoicesCustomBatchRequestEntryCreateRefundInvoiceRefundOption]
        attr_accessor :refund_only_option
      
        # Option to create an invoice for a refund and mark all items within the invoice
        # as returned. Exactly one of refundOnlyOption or returnOption must be provided.
        # Corresponds to the JSON property `returnOption`
        # @return [Google::Apis::ContentV2_1::OrderinvoicesCustomBatchRequestEntryCreateRefundInvoiceReturnOption]
        attr_accessor :return_option
      
        # Invoice details for different shipment groups.
        # Corresponds to the JSON property `shipmentInvoices`
        # @return [Array<Google::Apis::ContentV2_1::ShipmentInvoice>]
        attr_accessor :shipment_invoices
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @invoice_id = args[:invoice_id] if args.key?(:invoice_id)
          @operation_id = args[:operation_id] if args.key?(:operation_id)
          @refund_only_option = args[:refund_only_option] if args.key?(:refund_only_option)
          @return_option = args[:return_option] if args.key?(:return_option)
          @shipment_invoices = args[:shipment_invoices] if args.key?(:shipment_invoices)
        end
      end
      
      # 
      class OrderinvoicesCreateRefundInvoiceResponse
        include Google::Apis::Core::Hashable
      
        # The status of the execution.
        # Corresponds to the JSON property `executionStatus`
        # @return [String]
        attr_accessor :execution_status
      
        # Identifies what kind of resource this is. Value: the fixed string "content#
        # orderinvoicesCreateRefundInvoiceResponse".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @execution_status = args[:execution_status] if args.key?(:execution_status)
          @kind = args[:kind] if args.key?(:kind)
        end
      end
      
      # 
      class OrderinvoicesCustomBatchRequestEntryCreateRefundInvoiceRefundOption
        include Google::Apis::Core::Hashable
      
        # Optional description of the refund reason.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # [required] Reason for the refund.
        # Corresponds to the JSON property `reason`
        # @return [String]
        attr_accessor :reason
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @description = args[:description] if args.key?(:description)
          @reason = args[:reason] if args.key?(:reason)
        end
      end
      
      # 
      class OrderinvoicesCustomBatchRequestEntryCreateRefundInvoiceReturnOption
        include Google::Apis::Core::Hashable
      
        # Optional description of the return reason.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # [required] Reason for the return.
        # Corresponds to the JSON property `reason`
        # @return [String]
        attr_accessor :reason
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @description = args[:description] if args.key?(:description)
          @reason = args[:reason] if args.key?(:reason)
        end
      end
      
      # 
      class OrderreportsListDisbursementsResponse
        include Google::Apis::Core::Hashable
      
        # The list of disbursements.
        # Corresponds to the JSON property `disbursements`
        # @return [Array<Google::Apis::ContentV2_1::OrderReportDisbursement>]
        attr_accessor :disbursements
      
        # Identifies what kind of resource this is. Value: the fixed string "content#
        # orderreportsListDisbursementsResponse".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The token for the retrieval of the next page of disbursements.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @disbursements = args[:disbursements] if args.key?(:disbursements)
          @kind = args[:kind] if args.key?(:kind)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # 
      class OrderreportsListTransactionsResponse
        include Google::Apis::Core::Hashable
      
        # Identifies what kind of resource this is. Value: the fixed string "content#
        # orderreportsListTransactionsResponse".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The token for the retrieval of the next page of transactions.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The list of transactions.
        # Corresponds to the JSON property `transactions`
        # @return [Array<Google::Apis::ContentV2_1::OrderReportTransaction>]
        attr_accessor :transactions
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @kind = args[:kind] if args.key?(:kind)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @transactions = args[:transactions] if args.key?(:transactions)
        end
      end
      
      # 
      class OrderreturnsListResponse
        include Google::Apis::Core::Hashable
      
        # Identifies what kind of resource this is. Value: the fixed string "content#
        # orderreturnsListResponse".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The token for the retrieval of the next page of returns.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # 
        # Corresponds to the JSON property `resources`
        # @return [Array<Google::Apis::ContentV2_1::MerchantOrderReturn>]
        attr_accessor :resources
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @kind = args[:kind] if args.key?(:kind)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @resources = args[:resources] if args.key?(:resources)
        end
      end
      
      # 
      class OrdersAcknowledgeRequest
        include Google::Apis::Core::Hashable
      
        # The ID of the operation. Unique across all operations for a given order.
        # Corresponds to the JSON property `operationId`
        # @return [String]
        attr_accessor :operation_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @operation_id = args[:operation_id] if args.key?(:operation_id)
        end
      end
      
      # 
      class OrdersAcknowledgeResponse
        include Google::Apis::Core::Hashable
      
        # The status of the execution.
        # Corresponds to the JSON property `executionStatus`
        # @return [String]
        attr_accessor :execution_status
      
        # Identifies what kind of resource this is. Value: the fixed string "content#
        # ordersAcknowledgeResponse".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @execution_status = args[:execution_status] if args.key?(:execution_status)
          @kind = args[:kind] if args.key?(:kind)
        end
      end
      
      # 
      class OrdersAdvanceTestOrderResponse
        include Google::Apis::Core::Hashable
      
        # Identifies what kind of resource this is. Value: the fixed string "content#
        # ordersAdvanceTestOrderResponse".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @kind = args[:kind] if args.key?(:kind)
        end
      end
      
      # 
      class OrdersCancelLineItemRequest
        include Google::Apis::Core::Hashable
      
        # The ID of the line item to cancel. Either lineItemId or productId is required.
        # Corresponds to the JSON property `lineItemId`
        # @return [String]
        attr_accessor :line_item_id
      
        # The ID of the operation. Unique across all operations for a given order.
        # Corresponds to the JSON property `operationId`
        # @return [String]
        attr_accessor :operation_id
      
        # The ID of the product to cancel. This is the REST ID used in the products
        # service. Either lineItemId or productId is required.
        # Corresponds to the JSON property `productId`
        # @return [String]
        attr_accessor :product_id
      
        # The quantity to cancel.
        # Corresponds to the JSON property `quantity`
        # @return [Fixnum]
        attr_accessor :quantity
      
        # The reason for the cancellation.
        # Corresponds to the JSON property `reason`
        # @return [String]
        attr_accessor :reason
      
        # The explanation of the reason.
        # Corresponds to the JSON property `reasonText`
        # @return [String]
        attr_accessor :reason_text
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @line_item_id = args[:line_item_id] if args.key?(:line_item_id)
          @operation_id = args[:operation_id] if args.key?(:operation_id)
          @product_id = args[:product_id] if args.key?(:product_id)
          @quantity = args[:quantity] if args.key?(:quantity)
          @reason = args[:reason] if args.key?(:reason)
          @reason_text = args[:reason_text] if args.key?(:reason_text)
        end
      end
      
      # 
      class OrdersCancelLineItemResponse
        include Google::Apis::Core::Hashable
      
        # The status of the execution.
        # Corresponds to the JSON property `executionStatus`
        # @return [String]
        attr_accessor :execution_status
      
        # Identifies what kind of resource this is. Value: the fixed string "content#
        # ordersCancelLineItemResponse".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @execution_status = args[:execution_status] if args.key?(:execution_status)
          @kind = args[:kind] if args.key?(:kind)
        end
      end
      
      # 
      class OrdersCancelRequest
        include Google::Apis::Core::Hashable
      
        # The ID of the operation. Unique across all operations for a given order.
        # Corresponds to the JSON property `operationId`
        # @return [String]
        attr_accessor :operation_id
      
        # The reason for the cancellation.
        # Corresponds to the JSON property `reason`
        # @return [String]
        attr_accessor :reason
      
        # The explanation of the reason.
        # Corresponds to the JSON property `reasonText`
        # @return [String]
        attr_accessor :reason_text
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @operation_id = args[:operation_id] if args.key?(:operation_id)
          @reason = args[:reason] if args.key?(:reason)
          @reason_text = args[:reason_text] if args.key?(:reason_text)
        end
      end
      
      # 
      class OrdersCancelResponse
        include Google::Apis::Core::Hashable
      
        # The status of the execution.
        # Corresponds to the JSON property `executionStatus`
        # @return [String]
        attr_accessor :execution_status
      
        # Identifies what kind of resource this is. Value: the fixed string "content#
        # ordersCancelResponse".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @execution_status = args[:execution_status] if args.key?(:execution_status)
          @kind = args[:kind] if args.key?(:kind)
        end
      end
      
      # 
      class OrdersCancelTestOrderByCustomerRequest
        include Google::Apis::Core::Hashable
      
        # The reason for the cancellation.
        # Corresponds to the JSON property `reason`
        # @return [String]
        attr_accessor :reason
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @reason = args[:reason] if args.key?(:reason)
        end
      end
      
      # 
      class OrdersCancelTestOrderByCustomerResponse
        include Google::Apis::Core::Hashable
      
        # Identifies what kind of resource this is. Value: the fixed string "content#
        # ordersCancelTestOrderByCustomerResponse".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @kind = args[:kind] if args.key?(:kind)
        end
      end
      
      # 
      class OrdersCreateTestOrderRequest
        include Google::Apis::Core::Hashable
      
        # The  CLDR territory code of the country of the test order to create. Affects
        # the currency and addresses of orders created via template_name, or the
        # addresses of orders created via test_order.
        # Acceptable values are:
        # - "US"
        # - "FR"  Defaults to US.
        # Corresponds to the JSON property `country`
        # @return [String]
        attr_accessor :country
      
        # The test order template to use. Specify as an alternative to testOrder as a
        # shortcut for retrieving a template and then creating an order using that
        # template.
        # Corresponds to the JSON property `templateName`
        # @return [String]
        attr_accessor :template_name
      
        # The test order to create.
        # Corresponds to the JSON property `testOrder`
        # @return [Google::Apis::ContentV2_1::TestOrder]
        attr_accessor :test_order
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @country = args[:country] if args.key?(:country)
          @template_name = args[:template_name] if args.key?(:template_name)
          @test_order = args[:test_order] if args.key?(:test_order)
        end
      end
      
      # 
      class OrdersCreateTestOrderResponse
        include Google::Apis::Core::Hashable
      
        # Identifies what kind of resource this is. Value: the fixed string "content#
        # ordersCreateTestOrderResponse".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The ID of the newly created test order.
        # Corresponds to the JSON property `orderId`
        # @return [String]
        attr_accessor :order_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @kind = args[:kind] if args.key?(:kind)
          @order_id = args[:order_id] if args.key?(:order_id)
        end
      end
      
      # 
      class OrdersCreateTestReturnRequest
        include Google::Apis::Core::Hashable
      
        # Returned items.
        # Corresponds to the JSON property `items`
        # @return [Array<Google::Apis::ContentV2_1::OrdersCustomBatchRequestEntryCreateTestReturnReturnItem>]
        attr_accessor :items
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @items = args[:items] if args.key?(:items)
        end
      end
      
      # 
      class OrdersCreateTestReturnResponse
        include Google::Apis::Core::Hashable
      
        # Identifies what kind of resource this is. Value: the fixed string "content#
        # ordersCreateTestReturnResponse".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The ID of the newly created test order return.
        # Corresponds to the JSON property `returnId`
        # @return [String]
        attr_accessor :return_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @kind = args[:kind] if args.key?(:kind)
          @return_id = args[:return_id] if args.key?(:return_id)
        end
      end
      
      # 
      class OrdersCustomBatchRequestEntryCreateTestReturnReturnItem
        include Google::Apis::Core::Hashable
      
        # The ID of the line item to return.
        # Corresponds to the JSON property `lineItemId`
        # @return [String]
        attr_accessor :line_item_id
      
        # Quantity that is returned.
        # Corresponds to the JSON property `quantity`
        # @return [Fixnum]
        attr_accessor :quantity
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @line_item_id = args[:line_item_id] if args.key?(:line_item_id)
          @quantity = args[:quantity] if args.key?(:quantity)
        end
      end
      
      # 
      class OrdersCustomBatchRequestEntryShipLineItemsShipmentInfo
        include Google::Apis::Core::Hashable
      
        # The carrier handling the shipment. See shipments[].carrier in the  Orders
        # resource representation for a list of acceptable values.
        # Corresponds to the JSON property `carrier`
        # @return [String]
        attr_accessor :carrier
      
        # The ID of the shipment. This is assigned by the merchant and is unique to each
        # shipment.
        # Corresponds to the JSON property `shipmentId`
        # @return [String]
        attr_accessor :shipment_id
      
        # The tracking ID for the shipment.
        # Corresponds to the JSON property `trackingId`
        # @return [String]
        attr_accessor :tracking_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @carrier = args[:carrier] if args.key?(:carrier)
          @shipment_id = args[:shipment_id] if args.key?(:shipment_id)
          @tracking_id = args[:tracking_id] if args.key?(:tracking_id)
        end
      end
      
      # 
      class OrdersGetByMerchantOrderIdResponse
        include Google::Apis::Core::Hashable
      
        # Identifies what kind of resource this is. Value: the fixed string "content#
        # ordersGetByMerchantOrderIdResponse".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Order. All methods require the order manager role.
        # Corresponds to the JSON property `order`
        # @return [Google::Apis::ContentV2_1::Order]
        attr_accessor :order
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @kind = args[:kind] if args.key?(:kind)
          @order = args[:order] if args.key?(:order)
        end
      end
      
      # 
      class OrdersGetTestOrderTemplateResponse
        include Google::Apis::Core::Hashable
      
        # Identifies what kind of resource this is. Value: the fixed string "content#
        # ordersGetTestOrderTemplateResponse".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The requested test order template.
        # Corresponds to the JSON property `template`
        # @return [Google::Apis::ContentV2_1::TestOrder]
        attr_accessor :template
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @kind = args[:kind] if args.key?(:kind)
          @template = args[:template] if args.key?(:template)
        end
      end
      
      # 
      class OrdersInStoreRefundLineItemRequest
        include Google::Apis::Core::Hashable
      
        # The ID of the line item to return. Either lineItemId or productId is required.
        # Corresponds to the JSON property `lineItemId`
        # @return [String]
        attr_accessor :line_item_id
      
        # The ID of the operation. Unique across all operations for a given order.
        # Corresponds to the JSON property `operationId`
        # @return [String]
        attr_accessor :operation_id
      
        # The amount to be refunded. This may be pre-tax or post-tax depending on the
        # location of the order. Required.
        # Corresponds to the JSON property `priceAmount`
        # @return [Google::Apis::ContentV2_1::Price]
        attr_accessor :price_amount
      
        # The ID of the product to return. This is the REST ID used in the products
        # service. Either lineItemId or productId is required.
        # Corresponds to the JSON property `productId`
        # @return [String]
        attr_accessor :product_id
      
        # The quantity to return and refund.
        # Corresponds to the JSON property `quantity`
        # @return [Fixnum]
        attr_accessor :quantity
      
        # The reason for the return.
        # Corresponds to the JSON property `reason`
        # @return [String]
        attr_accessor :reason
      
        # The explanation of the reason.
        # Corresponds to the JSON property `reasonText`
        # @return [String]
        attr_accessor :reason_text
      
        # The amount of tax to be refunded. Required.
        # Corresponds to the JSON property `taxAmount`
        # @return [Google::Apis::ContentV2_1::Price]
        attr_accessor :tax_amount
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @line_item_id = args[:line_item_id] if args.key?(:line_item_id)
          @operation_id = args[:operation_id] if args.key?(:operation_id)
          @price_amount = args[:price_amount] if args.key?(:price_amount)
          @product_id = args[:product_id] if args.key?(:product_id)
          @quantity = args[:quantity] if args.key?(:quantity)
          @reason = args[:reason] if args.key?(:reason)
          @reason_text = args[:reason_text] if args.key?(:reason_text)
          @tax_amount = args[:tax_amount] if args.key?(:tax_amount)
        end
      end
      
      # 
      class OrdersInStoreRefundLineItemResponse
        include Google::Apis::Core::Hashable
      
        # The status of the execution.
        # Corresponds to the JSON property `executionStatus`
        # @return [String]
        attr_accessor :execution_status
      
        # Identifies what kind of resource this is. Value: the fixed string "content#
        # ordersInStoreRefundLineItemResponse".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @execution_status = args[:execution_status] if args.key?(:execution_status)
          @kind = args[:kind] if args.key?(:kind)
        end
      end
      
      # 
      class OrdersListResponse
        include Google::Apis::Core::Hashable
      
        # Identifies what kind of resource this is. Value: the fixed string "content#
        # ordersListResponse".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The token for the retrieval of the next page of orders.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # 
        # Corresponds to the JSON property `resources`
        # @return [Array<Google::Apis::ContentV2_1::Order>]
        attr_accessor :resources
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @kind = args[:kind] if args.key?(:kind)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @resources = args[:resources] if args.key?(:resources)
        end
      end
      
      # 
      class OrdersRejectReturnLineItemRequest
        include Google::Apis::Core::Hashable
      
        # The ID of the line item to return. Either lineItemId or productId is required.
        # Corresponds to the JSON property `lineItemId`
        # @return [String]
        attr_accessor :line_item_id
      
        # The ID of the operation. Unique across all operations for a given order.
        # Corresponds to the JSON property `operationId`
        # @return [String]
        attr_accessor :operation_id
      
        # The ID of the product to return. This is the REST ID used in the products
        # service. Either lineItemId or productId is required.
        # Corresponds to the JSON property `productId`
        # @return [String]
        attr_accessor :product_id
      
        # The quantity to return and refund.
        # Corresponds to the JSON property `quantity`
        # @return [Fixnum]
        attr_accessor :quantity
      
        # The reason for the return.
        # Corresponds to the JSON property `reason`
        # @return [String]
        attr_accessor :reason
      
        # The explanation of the reason.
        # Corresponds to the JSON property `reasonText`
        # @return [String]
        attr_accessor :reason_text
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @line_item_id = args[:line_item_id] if args.key?(:line_item_id)
          @operation_id = args[:operation_id] if args.key?(:operation_id)
          @product_id = args[:product_id] if args.key?(:product_id)
          @quantity = args[:quantity] if args.key?(:quantity)
          @reason = args[:reason] if args.key?(:reason)
          @reason_text = args[:reason_text] if args.key?(:reason_text)
        end
      end
      
      # 
      class OrdersRejectReturnLineItemResponse
        include Google::Apis::Core::Hashable
      
        # The status of the execution.
        # Corresponds to the JSON property `executionStatus`
        # @return [String]
        attr_accessor :execution_status
      
        # Identifies what kind of resource this is. Value: the fixed string "content#
        # ordersRejectReturnLineItemResponse".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @execution_status = args[:execution_status] if args.key?(:execution_status)
          @kind = args[:kind] if args.key?(:kind)
        end
      end
      
      # 
      class OrdersReturnRefundLineItemRequest
        include Google::Apis::Core::Hashable
      
        # The ID of the line item to return. Either lineItemId or productId is required.
        # Corresponds to the JSON property `lineItemId`
        # @return [String]
        attr_accessor :line_item_id
      
        # The ID of the operation. Unique across all operations for a given order.
        # Corresponds to the JSON property `operationId`
        # @return [String]
        attr_accessor :operation_id
      
        # The amount to be refunded. This may be pre-tax or post-tax depending on the
        # location of the order. If omitted, refundless return is assumed.
        # Corresponds to the JSON property `priceAmount`
        # @return [Google::Apis::ContentV2_1::Price]
        attr_accessor :price_amount
      
        # The ID of the product to return. This is the REST ID used in the products
        # service. Either lineItemId or productId is required.
        # Corresponds to the JSON property `productId`
        # @return [String]
        attr_accessor :product_id
      
        # The quantity to return and refund.
        # Corresponds to the JSON property `quantity`
        # @return [Fixnum]
        attr_accessor :quantity
      
        # The reason for the return.
        # Corresponds to the JSON property `reason`
        # @return [String]
        attr_accessor :reason
      
        # The explanation of the reason.
        # Corresponds to the JSON property `reasonText`
        # @return [String]
        attr_accessor :reason_text
      
        # The amount of tax to be refunded. Optional, but if filled, then priceAmount
        # must be set. Calculated automatically if not provided.
        # Corresponds to the JSON property `taxAmount`
        # @return [Google::Apis::ContentV2_1::Price]
        attr_accessor :tax_amount
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @line_item_id = args[:line_item_id] if args.key?(:line_item_id)
          @operation_id = args[:operation_id] if args.key?(:operation_id)
          @price_amount = args[:price_amount] if args.key?(:price_amount)
          @product_id = args[:product_id] if args.key?(:product_id)
          @quantity = args[:quantity] if args.key?(:quantity)
          @reason = args[:reason] if args.key?(:reason)
          @reason_text = args[:reason_text] if args.key?(:reason_text)
          @tax_amount = args[:tax_amount] if args.key?(:tax_amount)
        end
      end
      
      # 
      class OrdersReturnRefundLineItemResponse
        include Google::Apis::Core::Hashable
      
        # The status of the execution.
        # Corresponds to the JSON property `executionStatus`
        # @return [String]
        attr_accessor :execution_status
      
        # Identifies what kind of resource this is. Value: the fixed string "content#
        # ordersReturnRefundLineItemResponse".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @execution_status = args[:execution_status] if args.key?(:execution_status)
          @kind = args[:kind] if args.key?(:kind)
        end
      end
      
      # 
      class OrdersSetLineItemMetadataRequest
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `annotations`
        # @return [Array<Google::Apis::ContentV2_1::OrderMerchantProvidedAnnotation>]
        attr_accessor :annotations
      
        # The ID of the line item to set metadata. Either lineItemId or productId is
        # required.
        # Corresponds to the JSON property `lineItemId`
        # @return [String]
        attr_accessor :line_item_id
      
        # The ID of the operation. Unique across all operations for a given order.
        # Corresponds to the JSON property `operationId`
        # @return [String]
        attr_accessor :operation_id
      
        # The ID of the product to set metadata. This is the REST ID used in the
        # products service. Either lineItemId or productId is required.
        # Corresponds to the JSON property `productId`
        # @return [String]
        attr_accessor :product_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @annotations = args[:annotations] if args.key?(:annotations)
          @line_item_id = args[:line_item_id] if args.key?(:line_item_id)
          @operation_id = args[:operation_id] if args.key?(:operation_id)
          @product_id = args[:product_id] if args.key?(:product_id)
        end
      end
      
      # 
      class OrdersSetLineItemMetadataResponse
        include Google::Apis::Core::Hashable
      
        # The status of the execution.
        # Corresponds to the JSON property `executionStatus`
        # @return [String]
        attr_accessor :execution_status
      
        # Identifies what kind of resource this is. Value: the fixed string "content#
        # ordersSetLineItemMetadataResponse".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @execution_status = args[:execution_status] if args.key?(:execution_status)
          @kind = args[:kind] if args.key?(:kind)
        end
      end
      
      # 
      class OrdersShipLineItemsRequest
        include Google::Apis::Core::Hashable
      
        # Line items to ship.
        # Corresponds to the JSON property `lineItems`
        # @return [Array<Google::Apis::ContentV2_1::OrderShipmentLineItemShipment>]
        attr_accessor :line_items
      
        # The ID of the operation. Unique across all operations for a given order.
        # Corresponds to the JSON property `operationId`
        # @return [String]
        attr_accessor :operation_id
      
        # ID of the shipment group. Required for orders that use the orderinvoices
        # service.
        # Corresponds to the JSON property `shipmentGroupId`
        # @return [String]
        attr_accessor :shipment_group_id
      
        # Shipment information. This field is repeated because a single line item can be
        # shipped in several packages (and have several tracking IDs).
        # Corresponds to the JSON property `shipmentInfos`
        # @return [Array<Google::Apis::ContentV2_1::OrdersCustomBatchRequestEntryShipLineItemsShipmentInfo>]
        attr_accessor :shipment_infos
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @line_items = args[:line_items] if args.key?(:line_items)
          @operation_id = args[:operation_id] if args.key?(:operation_id)
          @shipment_group_id = args[:shipment_group_id] if args.key?(:shipment_group_id)
          @shipment_infos = args[:shipment_infos] if args.key?(:shipment_infos)
        end
      end
      
      # 
      class OrdersShipLineItemsResponse
        include Google::Apis::Core::Hashable
      
        # The status of the execution.
        # Corresponds to the JSON property `executionStatus`
        # @return [String]
        attr_accessor :execution_status
      
        # Identifies what kind of resource this is. Value: the fixed string "content#
        # ordersShipLineItemsResponse".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @execution_status = args[:execution_status] if args.key?(:execution_status)
          @kind = args[:kind] if args.key?(:kind)
        end
      end
      
      # 
      class OrdersUpdateLineItemShippingDetailsRequest
        include Google::Apis::Core::Hashable
      
        # Updated delivery by date, in ISO 8601 format. If not specified only ship by
        # date is updated.
        # Provided date should be within 1 year timeframe and can not be a date in the
        # past.
        # Corresponds to the JSON property `deliverByDate`
        # @return [String]
        attr_accessor :deliver_by_date
      
        # The ID of the line item to set metadata. Either lineItemId or productId is
        # required.
        # Corresponds to the JSON property `lineItemId`
        # @return [String]
        attr_accessor :line_item_id
      
        # The ID of the operation. Unique across all operations for a given order.
        # Corresponds to the JSON property `operationId`
        # @return [String]
        attr_accessor :operation_id
      
        # The ID of the product to set metadata. This is the REST ID used in the
        # products service. Either lineItemId or productId is required.
        # Corresponds to the JSON property `productId`
        # @return [String]
        attr_accessor :product_id
      
        # Updated ship by date, in ISO 8601 format. If not specified only deliver by
        # date is updated.
        # Provided date should be within 1 year timeframe and can not be a date in the
        # past.
        # Corresponds to the JSON property `shipByDate`
        # @return [String]
        attr_accessor :ship_by_date
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @deliver_by_date = args[:deliver_by_date] if args.key?(:deliver_by_date)
          @line_item_id = args[:line_item_id] if args.key?(:line_item_id)
          @operation_id = args[:operation_id] if args.key?(:operation_id)
          @product_id = args[:product_id] if args.key?(:product_id)
          @ship_by_date = args[:ship_by_date] if args.key?(:ship_by_date)
        end
      end
      
      # 
      class OrdersUpdateLineItemShippingDetailsResponse
        include Google::Apis::Core::Hashable
      
        # The status of the execution.
        # Corresponds to the JSON property `executionStatus`
        # @return [String]
        attr_accessor :execution_status
      
        # Identifies what kind of resource this is. Value: the fixed string "content#
        # ordersUpdateLineItemShippingDetailsResponse".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @execution_status = args[:execution_status] if args.key?(:execution_status)
          @kind = args[:kind] if args.key?(:kind)
        end
      end
      
      # 
      class OrdersUpdateMerchantOrderIdRequest
        include Google::Apis::Core::Hashable
      
        # The merchant order id to be assigned to the order. Must be unique per merchant.
        # Corresponds to the JSON property `merchantOrderId`
        # @return [String]
        attr_accessor :merchant_order_id
      
        # The ID of the operation. Unique across all operations for a given order.
        # Corresponds to the JSON property `operationId`
        # @return [String]
        attr_accessor :operation_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @merchant_order_id = args[:merchant_order_id] if args.key?(:merchant_order_id)
          @operation_id = args[:operation_id] if args.key?(:operation_id)
        end
      end
      
      # 
      class OrdersUpdateMerchantOrderIdResponse
        include Google::Apis::Core::Hashable
      
        # The status of the execution.
        # Corresponds to the JSON property `executionStatus`
        # @return [String]
        attr_accessor :execution_status
      
        # Identifies what kind of resource this is. Value: the fixed string "content#
        # ordersUpdateMerchantOrderIdResponse".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @execution_status = args[:execution_status] if args.key?(:execution_status)
          @kind = args[:kind] if args.key?(:kind)
        end
      end
      
      # 
      class OrdersUpdateShipmentRequest
        include Google::Apis::Core::Hashable
      
        # The carrier handling the shipment. Not updated if missing. See shipments[].
        # carrier in the  Orders resource representation for a list of acceptable values.
        # Corresponds to the JSON property `carrier`
        # @return [String]
        attr_accessor :carrier
      
        # Date on which the shipment has been delivered, in ISO 8601 format. Optional
        # and can be provided only if status is delivered.
        # Corresponds to the JSON property `deliveryDate`
        # @return [String]
        attr_accessor :delivery_date
      
        # The ID of the operation. Unique across all operations for a given order.
        # Corresponds to the JSON property `operationId`
        # @return [String]
        attr_accessor :operation_id
      
        # The ID of the shipment.
        # Corresponds to the JSON property `shipmentId`
        # @return [String]
        attr_accessor :shipment_id
      
        # New status for the shipment. Not updated if missing.
        # Corresponds to the JSON property `status`
        # @return [String]
        attr_accessor :status
      
        # The tracking ID for the shipment. Not updated if missing.
        # Corresponds to the JSON property `trackingId`
        # @return [String]
        attr_accessor :tracking_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @carrier = args[:carrier] if args.key?(:carrier)
          @delivery_date = args[:delivery_date] if args.key?(:delivery_date)
          @operation_id = args[:operation_id] if args.key?(:operation_id)
          @shipment_id = args[:shipment_id] if args.key?(:shipment_id)
          @status = args[:status] if args.key?(:status)
          @tracking_id = args[:tracking_id] if args.key?(:tracking_id)
        end
      end
      
      # 
      class OrdersUpdateShipmentResponse
        include Google::Apis::Core::Hashable
      
        # The status of the execution.
        # Corresponds to the JSON property `executionStatus`
        # @return [String]
        attr_accessor :execution_status
      
        # Identifies what kind of resource this is. Value: the fixed string "content#
        # ordersUpdateShipmentResponse".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @execution_status = args[:execution_status] if args.key?(:execution_status)
          @kind = args[:kind] if args.key?(:kind)
        end
      end
      
      # 
      class PosCustomBatchRequest
        include Google::Apis::Core::Hashable
      
        # The request entries to be processed in the batch.
        # Corresponds to the JSON property `entries`
        # @return [Array<Google::Apis::ContentV2_1::PosCustomBatchRequestEntry>]
        attr_accessor :entries
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @entries = args[:entries] if args.key?(:entries)
        end
      end
      
      # 
      class PosCustomBatchRequestEntry
        include Google::Apis::Core::Hashable
      
        # An entry ID, unique within the batch request.
        # Corresponds to the JSON property `batchId`
        # @return [Fixnum]
        attr_accessor :batch_id
      
        # The absolute quantity of an item available at the given store.
        # Corresponds to the JSON property `inventory`
        # @return [Google::Apis::ContentV2_1::PosInventory]
        attr_accessor :inventory
      
        # The ID of the POS data provider.
        # Corresponds to the JSON property `merchantId`
        # @return [Fixnum]
        attr_accessor :merchant_id
      
        # 
        # Corresponds to the JSON property `method`
        # @return [String]
        attr_accessor :method_prop
      
        # The change of the available quantity of an item at the given store.
        # Corresponds to the JSON property `sale`
        # @return [Google::Apis::ContentV2_1::PosSale]
        attr_accessor :sale
      
        # Store resource.
        # Corresponds to the JSON property `store`
        # @return [Google::Apis::ContentV2_1::PosStore]
        attr_accessor :store
      
        # The store code. Set this only if the method is delete or get.
        # Corresponds to the JSON property `storeCode`
        # @return [String]
        attr_accessor :store_code
      
        # The ID of the account for which to get/submit data.
        # Corresponds to the JSON property `targetMerchantId`
        # @return [Fixnum]
        attr_accessor :target_merchant_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @batch_id = args[:batch_id] if args.key?(:batch_id)
          @inventory = args[:inventory] if args.key?(:inventory)
          @merchant_id = args[:merchant_id] if args.key?(:merchant_id)
          @method_prop = args[:method_prop] if args.key?(:method_prop)
          @sale = args[:sale] if args.key?(:sale)
          @store = args[:store] if args.key?(:store)
          @store_code = args[:store_code] if args.key?(:store_code)
          @target_merchant_id = args[:target_merchant_id] if args.key?(:target_merchant_id)
        end
      end
      
      # 
      class PosCustomBatchResponse
        include Google::Apis::Core::Hashable
      
        # The result of the execution of the batch requests.
        # Corresponds to the JSON property `entries`
        # @return [Array<Google::Apis::ContentV2_1::PosCustomBatchResponseEntry>]
        attr_accessor :entries
      
        # Identifies what kind of resource this is. Value: the fixed string "content#
        # posCustomBatchResponse".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @entries = args[:entries] if args.key?(:entries)
          @kind = args[:kind] if args.key?(:kind)
        end
      end
      
      # 
      class PosCustomBatchResponseEntry
        include Google::Apis::Core::Hashable
      
        # The ID of the request entry to which this entry responds.
        # Corresponds to the JSON property `batchId`
        # @return [Fixnum]
        attr_accessor :batch_id
      
        # A list of errors returned by a failed batch entry.
        # Corresponds to the JSON property `errors`
        # @return [Google::Apis::ContentV2_1::Errors]
        attr_accessor :errors
      
        # The absolute quantity of an item available at the given store.
        # Corresponds to the JSON property `inventory`
        # @return [Google::Apis::ContentV2_1::PosInventory]
        attr_accessor :inventory
      
        # Identifies what kind of resource this is. Value: the fixed string "content#
        # posCustomBatchResponseEntry".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The change of the available quantity of an item at the given store.
        # Corresponds to the JSON property `sale`
        # @return [Google::Apis::ContentV2_1::PosSale]
        attr_accessor :sale
      
        # Store resource.
        # Corresponds to the JSON property `store`
        # @return [Google::Apis::ContentV2_1::PosStore]
        attr_accessor :store
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @batch_id = args[:batch_id] if args.key?(:batch_id)
          @errors = args[:errors] if args.key?(:errors)
          @inventory = args[:inventory] if args.key?(:inventory)
          @kind = args[:kind] if args.key?(:kind)
          @sale = args[:sale] if args.key?(:sale)
          @store = args[:store] if args.key?(:store)
        end
      end
      
      # 
      class PosDataProviders
        include Google::Apis::Core::Hashable
      
        # Country code.
        # Corresponds to the JSON property `country`
        # @return [String]
        attr_accessor :country
      
        # A list of POS data providers.
        # Corresponds to the JSON property `posDataProviders`
        # @return [Array<Google::Apis::ContentV2_1::PosDataProvidersPosDataProvider>]
        attr_accessor :pos_data_providers
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @country = args[:country] if args.key?(:country)
          @pos_data_providers = args[:pos_data_providers] if args.key?(:pos_data_providers)
        end
      end
      
      # 
      class PosDataProvidersPosDataProvider
        include Google::Apis::Core::Hashable
      
        # The display name of Pos data Provider.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # The full name of this POS data Provider.
        # Corresponds to the JSON property `fullName`
        # @return [String]
        attr_accessor :full_name
      
        # The ID of the account.
        # Corresponds to the JSON property `providerId`
        # @return [Fixnum]
        attr_accessor :provider_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @display_name = args[:display_name] if args.key?(:display_name)
          @full_name = args[:full_name] if args.key?(:full_name)
          @provider_id = args[:provider_id] if args.key?(:provider_id)
        end
      end
      
      # The absolute quantity of an item available at the given store.
      class PosInventory
        include Google::Apis::Core::Hashable
      
        # The two-letter ISO 639-1 language code for the item.
        # Corresponds to the JSON property `contentLanguage`
        # @return [String]
        attr_accessor :content_language
      
        # Global Trade Item Number.
        # Corresponds to the JSON property `gtin`
        # @return [String]
        attr_accessor :gtin
      
        # A unique identifier for the item.
        # Corresponds to the JSON property `itemId`
        # @return [String]
        attr_accessor :item_id
      
        # Identifies what kind of resource this is. Value: the fixed string "content#
        # posInventory".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The current price of the item.
        # Corresponds to the JSON property `price`
        # @return [Google::Apis::ContentV2_1::Price]
        attr_accessor :price
      
        # The available quantity of the item.
        # Corresponds to the JSON property `quantity`
        # @return [Fixnum]
        attr_accessor :quantity
      
        # The identifier of the merchant's store. Either a storeCode inserted via the
        # API or the code of the store in Google My Business.
        # Corresponds to the JSON property `storeCode`
        # @return [String]
        attr_accessor :store_code
      
        # The CLDR territory code for the item.
        # Corresponds to the JSON property `targetCountry`
        # @return [String]
        attr_accessor :target_country
      
        # The inventory timestamp, in ISO 8601 format.
        # Corresponds to the JSON property `timestamp`
        # @return [String]
        attr_accessor :timestamp
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @content_language = args[:content_language] if args.key?(:content_language)
          @gtin = args[:gtin] if args.key?(:gtin)
          @item_id = args[:item_id] if args.key?(:item_id)
          @kind = args[:kind] if args.key?(:kind)
          @price = args[:price] if args.key?(:price)
          @quantity = args[:quantity] if args.key?(:quantity)
          @store_code = args[:store_code] if args.key?(:store_code)
          @target_country = args[:target_country] if args.key?(:target_country)
          @timestamp = args[:timestamp] if args.key?(:timestamp)
        end
      end
      
      # 
      class PosInventoryRequest
        include Google::Apis::Core::Hashable
      
        # The two-letter ISO 639-1 language code for the item.
        # Corresponds to the JSON property `contentLanguage`
        # @return [String]
        attr_accessor :content_language
      
        # Global Trade Item Number.
        # Corresponds to the JSON property `gtin`
        # @return [String]
        attr_accessor :gtin
      
        # A unique identifier for the item.
        # Corresponds to the JSON property `itemId`
        # @return [String]
        attr_accessor :item_id
      
        # The current price of the item.
        # Corresponds to the JSON property `price`
        # @return [Google::Apis::ContentV2_1::Price]
        attr_accessor :price
      
        # The available quantity of the item.
        # Corresponds to the JSON property `quantity`
        # @return [Fixnum]
        attr_accessor :quantity
      
        # The identifier of the merchant's store. Either a storeCode inserted via the
        # API or the code of the store in Google My Business.
        # Corresponds to the JSON property `storeCode`
        # @return [String]
        attr_accessor :store_code
      
        # The CLDR territory code for the item.
        # Corresponds to the JSON property `targetCountry`
        # @return [String]
        attr_accessor :target_country
      
        # The inventory timestamp, in ISO 8601 format.
        # Corresponds to the JSON property `timestamp`
        # @return [String]
        attr_accessor :timestamp
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @content_language = args[:content_language] if args.key?(:content_language)
          @gtin = args[:gtin] if args.key?(:gtin)
          @item_id = args[:item_id] if args.key?(:item_id)
          @price = args[:price] if args.key?(:price)
          @quantity = args[:quantity] if args.key?(:quantity)
          @store_code = args[:store_code] if args.key?(:store_code)
          @target_country = args[:target_country] if args.key?(:target_country)
          @timestamp = args[:timestamp] if args.key?(:timestamp)
        end
      end
      
      # 
      class PosInventoryResponse
        include Google::Apis::Core::Hashable
      
        # The two-letter ISO 639-1 language code for the item.
        # Corresponds to the JSON property `contentLanguage`
        # @return [String]
        attr_accessor :content_language
      
        # Global Trade Item Number.
        # Corresponds to the JSON property `gtin`
        # @return [String]
        attr_accessor :gtin
      
        # A unique identifier for the item.
        # Corresponds to the JSON property `itemId`
        # @return [String]
        attr_accessor :item_id
      
        # Identifies what kind of resource this is. Value: the fixed string "content#
        # posInventoryResponse".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The current price of the item.
        # Corresponds to the JSON property `price`
        # @return [Google::Apis::ContentV2_1::Price]
        attr_accessor :price
      
        # The available quantity of the item.
        # Corresponds to the JSON property `quantity`
        # @return [Fixnum]
        attr_accessor :quantity
      
        # The identifier of the merchant's store. Either a storeCode inserted via the
        # API or the code of the store in Google My Business.
        # Corresponds to the JSON property `storeCode`
        # @return [String]
        attr_accessor :store_code
      
        # The CLDR territory code for the item.
        # Corresponds to the JSON property `targetCountry`
        # @return [String]
        attr_accessor :target_country
      
        # The inventory timestamp, in ISO 8601 format.
        # Corresponds to the JSON property `timestamp`
        # @return [String]
        attr_accessor :timestamp
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @content_language = args[:content_language] if args.key?(:content_language)
          @gtin = args[:gtin] if args.key?(:gtin)
          @item_id = args[:item_id] if args.key?(:item_id)
          @kind = args[:kind] if args.key?(:kind)
          @price = args[:price] if args.key?(:price)
          @quantity = args[:quantity] if args.key?(:quantity)
          @store_code = args[:store_code] if args.key?(:store_code)
          @target_country = args[:target_country] if args.key?(:target_country)
          @timestamp = args[:timestamp] if args.key?(:timestamp)
        end
      end
      
      # 
      class PosListResponse
        include Google::Apis::Core::Hashable
      
        # Identifies what kind of resource this is. Value: the fixed string "content#
        # posListResponse".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # 
        # Corresponds to the JSON property `resources`
        # @return [Array<Google::Apis::ContentV2_1::PosStore>]
        attr_accessor :resources
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @kind = args[:kind] if args.key?(:kind)
          @resources = args[:resources] if args.key?(:resources)
        end
      end
      
      # The change of the available quantity of an item at the given store.
      class PosSale
        include Google::Apis::Core::Hashable
      
        # The two-letter ISO 639-1 language code for the item.
        # Corresponds to the JSON property `contentLanguage`
        # @return [String]
        attr_accessor :content_language
      
        # Global Trade Item Number.
        # Corresponds to the JSON property `gtin`
        # @return [String]
        attr_accessor :gtin
      
        # A unique identifier for the item.
        # Corresponds to the JSON property `itemId`
        # @return [String]
        attr_accessor :item_id
      
        # Identifies what kind of resource this is. Value: the fixed string "content#
        # posSale".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The price of the item.
        # Corresponds to the JSON property `price`
        # @return [Google::Apis::ContentV2_1::Price]
        attr_accessor :price
      
        # The relative change of the available quantity. Negative for items returned.
        # Corresponds to the JSON property `quantity`
        # @return [Fixnum]
        attr_accessor :quantity
      
        # A unique ID to group items from the same sale event.
        # Corresponds to the JSON property `saleId`
        # @return [String]
        attr_accessor :sale_id
      
        # The identifier of the merchant's store. Either a storeCode inserted via the
        # API or the code of the store in Google My Business.
        # Corresponds to the JSON property `storeCode`
        # @return [String]
        attr_accessor :store_code
      
        # The CLDR territory code for the item.
        # Corresponds to the JSON property `targetCountry`
        # @return [String]
        attr_accessor :target_country
      
        # The inventory timestamp, in ISO 8601 format.
        # Corresponds to the JSON property `timestamp`
        # @return [String]
        attr_accessor :timestamp
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @content_language = args[:content_language] if args.key?(:content_language)
          @gtin = args[:gtin] if args.key?(:gtin)
          @item_id = args[:item_id] if args.key?(:item_id)
          @kind = args[:kind] if args.key?(:kind)
          @price = args[:price] if args.key?(:price)
          @quantity = args[:quantity] if args.key?(:quantity)
          @sale_id = args[:sale_id] if args.key?(:sale_id)
          @store_code = args[:store_code] if args.key?(:store_code)
          @target_country = args[:target_country] if args.key?(:target_country)
          @timestamp = args[:timestamp] if args.key?(:timestamp)
        end
      end
      
      # 
      class PosSaleRequest
        include Google::Apis::Core::Hashable
      
        # The two-letter ISO 639-1 language code for the item.
        # Corresponds to the JSON property `contentLanguage`
        # @return [String]
        attr_accessor :content_language
      
        # Global Trade Item Number.
        # Corresponds to the JSON property `gtin`
        # @return [String]
        attr_accessor :gtin
      
        # A unique identifier for the item.
        # Corresponds to the JSON property `itemId`
        # @return [String]
        attr_accessor :item_id
      
        # The price of the item.
        # Corresponds to the JSON property `price`
        # @return [Google::Apis::ContentV2_1::Price]
        attr_accessor :price
      
        # The relative change of the available quantity. Negative for items returned.
        # Corresponds to the JSON property `quantity`
        # @return [Fixnum]
        attr_accessor :quantity
      
        # A unique ID to group items from the same sale event.
        # Corresponds to the JSON property `saleId`
        # @return [String]
        attr_accessor :sale_id
      
        # The identifier of the merchant's store. Either a storeCode inserted via the
        # API or the code of the store in Google My Business.
        # Corresponds to the JSON property `storeCode`
        # @return [String]
        attr_accessor :store_code
      
        # The CLDR territory code for the item.
        # Corresponds to the JSON property `targetCountry`
        # @return [String]
        attr_accessor :target_country
      
        # The inventory timestamp, in ISO 8601 format.
        # Corresponds to the JSON property `timestamp`
        # @return [String]
        attr_accessor :timestamp
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @content_language = args[:content_language] if args.key?(:content_language)
          @gtin = args[:gtin] if args.key?(:gtin)
          @item_id = args[:item_id] if args.key?(:item_id)
          @price = args[:price] if args.key?(:price)
          @quantity = args[:quantity] if args.key?(:quantity)
          @sale_id = args[:sale_id] if args.key?(:sale_id)
          @store_code = args[:store_code] if args.key?(:store_code)
          @target_country = args[:target_country] if args.key?(:target_country)
          @timestamp = args[:timestamp] if args.key?(:timestamp)
        end
      end
      
      # 
      class PosSaleResponse
        include Google::Apis::Core::Hashable
      
        # The two-letter ISO 639-1 language code for the item.
        # Corresponds to the JSON property `contentLanguage`
        # @return [String]
        attr_accessor :content_language
      
        # Global Trade Item Number.
        # Corresponds to the JSON property `gtin`
        # @return [String]
        attr_accessor :gtin
      
        # A unique identifier for the item.
        # Corresponds to the JSON property `itemId`
        # @return [String]
        attr_accessor :item_id
      
        # Identifies what kind of resource this is. Value: the fixed string "content#
        # posSaleResponse".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The price of the item.
        # Corresponds to the JSON property `price`
        # @return [Google::Apis::ContentV2_1::Price]
        attr_accessor :price
      
        # The relative change of the available quantity. Negative for items returned.
        # Corresponds to the JSON property `quantity`
        # @return [Fixnum]
        attr_accessor :quantity
      
        # A unique ID to group items from the same sale event.
        # Corresponds to the JSON property `saleId`
        # @return [String]
        attr_accessor :sale_id
      
        # The identifier of the merchant's store. Either a storeCode inserted via the
        # API or the code of the store in Google My Business.
        # Corresponds to the JSON property `storeCode`
        # @return [String]
        attr_accessor :store_code
      
        # The CLDR territory code for the item.
        # Corresponds to the JSON property `targetCountry`
        # @return [String]
        attr_accessor :target_country
      
        # The inventory timestamp, in ISO 8601 format.
        # Corresponds to the JSON property `timestamp`
        # @return [String]
        attr_accessor :timestamp
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @content_language = args[:content_language] if args.key?(:content_language)
          @gtin = args[:gtin] if args.key?(:gtin)
          @item_id = args[:item_id] if args.key?(:item_id)
          @kind = args[:kind] if args.key?(:kind)
          @price = args[:price] if args.key?(:price)
          @quantity = args[:quantity] if args.key?(:quantity)
          @sale_id = args[:sale_id] if args.key?(:sale_id)
          @store_code = args[:store_code] if args.key?(:store_code)
          @target_country = args[:target_country] if args.key?(:target_country)
          @timestamp = args[:timestamp] if args.key?(:timestamp)
        end
      end
      
      # Store resource.
      class PosStore
        include Google::Apis::Core::Hashable
      
        # Identifies what kind of resource this is. Value: the fixed string "content#
        # posStore".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The street address of the store.
        # Corresponds to the JSON property `storeAddress`
        # @return [String]
        attr_accessor :store_address
      
        # A store identifier that is unique for the given merchant.
        # Corresponds to the JSON property `storeCode`
        # @return [String]
        attr_accessor :store_code
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @kind = args[:kind] if args.key?(:kind)
          @store_address = args[:store_address] if args.key?(:store_address)
          @store_code = args[:store_code] if args.key?(:store_code)
        end
      end
      
      # 
      class PostalCodeGroup
        include Google::Apis::Core::Hashable
      
        # The CLDR territory code of the country the postal code group applies to.
        # Required.
        # Corresponds to the JSON property `country`
        # @return [String]
        attr_accessor :country
      
        # The name of the postal code group, referred to in headers. Required.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # A range of postal codes. Required.
        # Corresponds to the JSON property `postalCodeRanges`
        # @return [Array<Google::Apis::ContentV2_1::PostalCodeRange>]
        attr_accessor :postal_code_ranges
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @country = args[:country] if args.key?(:country)
          @name = args[:name] if args.key?(:name)
          @postal_code_ranges = args[:postal_code_ranges] if args.key?(:postal_code_ranges)
        end
      end
      
      # 
      class PostalCodeRange
        include Google::Apis::Core::Hashable
      
        # A postal code or a pattern of the form prefix* denoting the inclusive lower
        # bound of the range defining the area. Examples values: "94108", "9410*", "9*".
        # Required.
        # Corresponds to the JSON property `postalCodeRangeBegin`
        # @return [String]
        attr_accessor :postal_code_range_begin
      
        # A postal code or a pattern of the form prefix* denoting the inclusive upper
        # bound of the range defining the area. It must have the same length as
        # postalCodeRangeBegin: if postalCodeRangeBegin is a postal code then
        # postalCodeRangeEnd must be a postal code too; if postalCodeRangeBegin is a
        # pattern then postalCodeRangeEnd must be a pattern with the same prefix length.
        # Optional: if not set, then the area is defined as being all the postal codes
        # matching postalCodeRangeBegin.
        # Corresponds to the JSON property `postalCodeRangeEnd`
        # @return [String]
        attr_accessor :postal_code_range_end
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @postal_code_range_begin = args[:postal_code_range_begin] if args.key?(:postal_code_range_begin)
          @postal_code_range_end = args[:postal_code_range_end] if args.key?(:postal_code_range_end)
        end
      end
      
      # 
      class Price
        include Google::Apis::Core::Hashable
      
        # The currency of the price.
        # Corresponds to the JSON property `currency`
        # @return [String]
        attr_accessor :currency
      
        # The price represented as a number.
        # Corresponds to the JSON property `value`
        # @return [String]
        attr_accessor :value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @currency = args[:currency] if args.key?(:currency)
          @value = args[:value] if args.key?(:value)
        end
      end
      
      # Product data. After inserting, updating, or deleting a product, it may take
      # several minutes before changes take effect.
      class Product
        include Google::Apis::Core::Hashable
      
        # Additional URLs of images of the item.
        # Corresponds to the JSON property `additionalImageLinks`
        # @return [Array<String>]
        attr_accessor :additional_image_links
      
        # Used to group items in an arbitrary way. Only for CPA%, discouraged otherwise.
        # Corresponds to the JSON property `adsGrouping`
        # @return [String]
        attr_accessor :ads_grouping
      
        # Similar to ads_grouping, but only works on CPC.
        # Corresponds to the JSON property `adsLabels`
        # @return [Array<String>]
        attr_accessor :ads_labels
      
        # Allows advertisers to override the item URL when the product is shown within
        # the context of Product Ads.
        # Corresponds to the JSON property `adsRedirect`
        # @return [String]
        attr_accessor :ads_redirect
      
        # Set to true if the item is targeted towards adults.
        # Corresponds to the JSON property `adult`
        # @return [Boolean]
        attr_accessor :adult
        alias_method :adult?, :adult
      
        # Target age group of the item.
        # Corresponds to the JSON property `ageGroup`
        # @return [String]
        attr_accessor :age_group
      
        # Availability status of the item.
        # Corresponds to the JSON property `availability`
        # @return [String]
        attr_accessor :availability
      
        # The day a pre-ordered product becomes available for delivery, in ISO 8601
        # format.
        # Corresponds to the JSON property `availabilityDate`
        # @return [String]
        attr_accessor :availability_date
      
        # Brand of the item.
        # Corresponds to the JSON property `brand`
        # @return [String]
        attr_accessor :brand
      
        # The item's channel (online or local).
        # Corresponds to the JSON property `channel`
        # @return [String]
        attr_accessor :channel
      
        # Color of the item.
        # Corresponds to the JSON property `color`
        # @return [String]
        attr_accessor :color
      
        # Condition or state of the item.
        # Corresponds to the JSON property `condition`
        # @return [String]
        attr_accessor :condition
      
        # The two-letter ISO 639-1 language code for the item.
        # Corresponds to the JSON property `contentLanguage`
        # @return [String]
        attr_accessor :content_language
      
        # Cost of goods sold. Used for gross profit reporting.
        # Corresponds to the JSON property `costOfGoodsSold`
        # @return [Google::Apis::ContentV2_1::Price]
        attr_accessor :cost_of_goods_sold
      
        # A list of custom (merchant-provided) attributes. It can also be used for
        # submitting any attribute of the feed specification in its generic form (e.g., `
        # "name": "size type", "value": "regular" `). This is useful for submitting
        # attributes not explicitly exposed by the API.
        # Corresponds to the JSON property `customAttributes`
        # @return [Array<Google::Apis::ContentV2_1::CustomAttribute>]
        attr_accessor :custom_attributes
      
        # Custom label 0 for custom grouping of items in a Shopping campaign.
        # Corresponds to the JSON property `customLabel0`
        # @return [String]
        attr_accessor :custom_label0
      
        # Custom label 1 for custom grouping of items in a Shopping campaign.
        # Corresponds to the JSON property `customLabel1`
        # @return [String]
        attr_accessor :custom_label1
      
        # Custom label 2 for custom grouping of items in a Shopping campaign.
        # Corresponds to the JSON property `customLabel2`
        # @return [String]
        attr_accessor :custom_label2
      
        # Custom label 3 for custom grouping of items in a Shopping campaign.
        # Corresponds to the JSON property `customLabel3`
        # @return [String]
        attr_accessor :custom_label3
      
        # Custom label 4 for custom grouping of items in a Shopping campaign.
        # Corresponds to the JSON property `customLabel4`
        # @return [String]
        attr_accessor :custom_label4
      
        # Description of the item.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # An identifier for an item for dynamic remarketing campaigns.
        # Corresponds to the JSON property `displayAdsId`
        # @return [String]
        attr_accessor :display_ads_id
      
        # URL directly to your item's landing page for dynamic remarketing campaigns.
        # Corresponds to the JSON property `displayAdsLink`
        # @return [String]
        attr_accessor :display_ads_link
      
        # Advertiser-specified recommendations.
        # Corresponds to the JSON property `displayAdsSimilarIds`
        # @return [Array<String>]
        attr_accessor :display_ads_similar_ids
      
        # Title of an item for dynamic remarketing campaigns.
        # Corresponds to the JSON property `displayAdsTitle`
        # @return [String]
        attr_accessor :display_ads_title
      
        # Offer margin for dynamic remarketing campaigns.
        # Corresponds to the JSON property `displayAdsValue`
        # @return [Float]
        attr_accessor :display_ads_value
      
        # The energy efficiency class as defined in EU directive 2010/30/EU.
        # Corresponds to the JSON property `energyEfficiencyClass`
        # @return [String]
        attr_accessor :energy_efficiency_class
      
        # The list of destinations to exclude for this target (corresponds to unchecked
        # check boxes in Merchant Center).
        # Corresponds to the JSON property `excludedDestinations`
        # @return [Array<String>]
        attr_accessor :excluded_destinations
      
        # Date on which the item should expire, as specified upon insertion, in ISO 8601
        # format. The actual expiration date in Google Shopping is exposed in
        # productstatuses as googleExpirationDate and might be earlier if expirationDate
        # is too far in the future.
        # Corresponds to the JSON property `expirationDate`
        # @return [String]
        attr_accessor :expiration_date
      
        # Target gender of the item.
        # Corresponds to the JSON property `gender`
        # @return [String]
        attr_accessor :gender
      
        # Google's category of the item (see Google product taxonomy).
        # Corresponds to the JSON property `googleProductCategory`
        # @return [String]
        attr_accessor :google_product_category
      
        # Global Trade Item Number (GTIN) of the item.
        # Corresponds to the JSON property `gtin`
        # @return [String]
        attr_accessor :gtin
      
        # The REST ID of the product. Content API methods that operate on products take
        # this as their productId parameter.
        # The REST ID for a product is of the form channel:contentLanguage:targetCountry:
        # offerId.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # False when the item does not have unique product identifiers appropriate to
        # its category, such as GTIN, MPN, and brand. Required according to the Unique
        # Product Identifier Rules for all target countries except for Canada.
        # Corresponds to the JSON property `identifierExists`
        # @return [Boolean]
        attr_accessor :identifier_exists
        alias_method :identifier_exists?, :identifier_exists
      
        # URL of an image of the item.
        # Corresponds to the JSON property `imageLink`
        # @return [String]
        attr_accessor :image_link
      
        # The list of destinations to include for this target (corresponds to checked
        # check boxes in Merchant Center). Default destinations are always included
        # unless provided in the excluded_destination field.
        # Corresponds to the JSON property `includedDestinations`
        # @return [Array<String>]
        attr_accessor :included_destinations
      
        # Number and amount of installments to pay for an item. Brazil only.
        # Corresponds to the JSON property `installment`
        # @return [Google::Apis::ContentV2_1::Installment]
        attr_accessor :installment
      
        # Whether the item is a merchant-defined bundle. A bundle is a custom grouping
        # of different products sold by a merchant for a single price.
        # Corresponds to the JSON property `isBundle`
        # @return [Boolean]
        attr_accessor :is_bundle
        alias_method :is_bundle?, :is_bundle
      
        # Shared identifier for all variants of the same product.
        # Corresponds to the JSON property `itemGroupId`
        # @return [String]
        attr_accessor :item_group_id
      
        # Identifies what kind of resource this is. Value: the fixed string "content#
        # product".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # URL directly linking to your item's page on your website.
        # Corresponds to the JSON property `link`
        # @return [String]
        attr_accessor :link
      
        # Loyalty points that users receive after purchasing the item. Japan only.
        # Corresponds to the JSON property `loyaltyPoints`
        # @return [Google::Apis::ContentV2_1::LoyaltyPoints]
        attr_accessor :loyalty_points
      
        # The material of which the item is made.
        # Corresponds to the JSON property `material`
        # @return [String]
        attr_accessor :material
      
        # The energy efficiency class as defined in EU directive 2010/30/EU.
        # Corresponds to the JSON property `maxEnergyEfficiencyClass`
        # @return [String]
        attr_accessor :max_energy_efficiency_class
      
        # Maximal product handling time (in business days).
        # Corresponds to the JSON property `maxHandlingTime`
        # @return [Fixnum]
        attr_accessor :max_handling_time
      
        # The energy efficiency class as defined in EU directive 2010/30/EU.
        # Corresponds to the JSON property `minEnergyEfficiencyClass`
        # @return [String]
        attr_accessor :min_energy_efficiency_class
      
        # Minimal product handling time (in business days).
        # Corresponds to the JSON property `minHandlingTime`
        # @return [Fixnum]
        attr_accessor :min_handling_time
      
        # Link to a mobile-optimized version of the landing page.
        # Corresponds to the JSON property `mobileLink`
        # @return [String]
        attr_accessor :mobile_link
      
        # Manufacturer Part Number (MPN) of the item.
        # Corresponds to the JSON property `mpn`
        # @return [String]
        attr_accessor :mpn
      
        # The number of identical products in a merchant-defined multipack.
        # Corresponds to the JSON property `multipack`
        # @return [Fixnum]
        attr_accessor :multipack
      
        # A unique identifier for the item. Leading and trailing whitespaces are
        # stripped and multiple whitespaces are replaced by a single whitespace upon
        # submission. Only valid unicode characters are accepted. See the products feed
        # specification for details.
        # Note: Content API methods that operate on products take the REST ID of the
        # product, not this identifier.
        # Corresponds to the JSON property `offerId`
        # @return [String]
        attr_accessor :offer_id
      
        # The item's pattern (e.g. polka dots).
        # Corresponds to the JSON property `pattern`
        # @return [String]
        attr_accessor :pattern
      
        # Price of the item.
        # Corresponds to the JSON property `price`
        # @return [Google::Apis::ContentV2_1::Price]
        attr_accessor :price
      
        # Categories of the item (formatted as in products data specification).
        # Corresponds to the JSON property `productTypes`
        # @return [Array<String>]
        attr_accessor :product_types
      
        # The unique ID of a promotion.
        # Corresponds to the JSON property `promotionIds`
        # @return [Array<String>]
        attr_accessor :promotion_ids
      
        # Advertised sale price of the item.
        # Corresponds to the JSON property `salePrice`
        # @return [Google::Apis::ContentV2_1::Price]
        attr_accessor :sale_price
      
        # Date range during which the item is on sale (see products data specification).
        # Corresponds to the JSON property `salePriceEffectiveDate`
        # @return [String]
        attr_accessor :sale_price_effective_date
      
        # The quantity of the product that is available for selling on Google. Supported
        # only for online products.
        # Corresponds to the JSON property `sellOnGoogleQuantity`
        # @return [Fixnum]
        attr_accessor :sell_on_google_quantity
      
        # Shipping rules.
        # Corresponds to the JSON property `shipping`
        # @return [Array<Google::Apis::ContentV2_1::ProductShipping>]
        attr_accessor :shipping
      
        # Height of the item for shipping.
        # Corresponds to the JSON property `shippingHeight`
        # @return [Google::Apis::ContentV2_1::ProductShippingDimension]
        attr_accessor :shipping_height
      
        # The shipping label of the product, used to group product in account-level
        # shipping rules.
        # Corresponds to the JSON property `shippingLabel`
        # @return [String]
        attr_accessor :shipping_label
      
        # Length of the item for shipping.
        # Corresponds to the JSON property `shippingLength`
        # @return [Google::Apis::ContentV2_1::ProductShippingDimension]
        attr_accessor :shipping_length
      
        # Weight of the item for shipping.
        # Corresponds to the JSON property `shippingWeight`
        # @return [Google::Apis::ContentV2_1::ProductShippingWeight]
        attr_accessor :shipping_weight
      
        # Width of the item for shipping.
        # Corresponds to the JSON property `shippingWidth`
        # @return [Google::Apis::ContentV2_1::ProductShippingDimension]
        attr_accessor :shipping_width
      
        # System in which the size is specified. Recommended for apparel items.
        # Corresponds to the JSON property `sizeSystem`
        # @return [String]
        attr_accessor :size_system
      
        # The cut of the item. Recommended for apparel items.
        # Corresponds to the JSON property `sizeType`
        # @return [String]
        attr_accessor :size_type
      
        # Size of the item.
        # Corresponds to the JSON property `sizes`
        # @return [Array<String>]
        attr_accessor :sizes
      
        # The source of the offer, i.e., how the offer was created.
        # Corresponds to the JSON property `source`
        # @return [String]
        attr_accessor :source
      
        # The CLDR territory code for the item.
        # Corresponds to the JSON property `targetCountry`
        # @return [String]
        attr_accessor :target_country
      
        # The tax category of the product, used to configure detailed tax nexus in
        # account-level tax settings.
        # Corresponds to the JSON property `taxCategory`
        # @return [String]
        attr_accessor :tax_category
      
        # Tax information.
        # Corresponds to the JSON property `taxes`
        # @return [Array<Google::Apis::ContentV2_1::ProductTax>]
        attr_accessor :taxes
      
        # Title of the item.
        # Corresponds to the JSON property `title`
        # @return [String]
        attr_accessor :title
      
        # The transit time label of the product, used to group product in account-level
        # transit time tables.
        # Corresponds to the JSON property `transitTimeLabel`
        # @return [String]
        attr_accessor :transit_time_label
      
        # The preference of the denominator of the unit price.
        # Corresponds to the JSON property `unitPricingBaseMeasure`
        # @return [Google::Apis::ContentV2_1::ProductUnitPricingBaseMeasure]
        attr_accessor :unit_pricing_base_measure
      
        # The measure and dimension of an item.
        # Corresponds to the JSON property `unitPricingMeasure`
        # @return [Google::Apis::ContentV2_1::ProductUnitPricingMeasure]
        attr_accessor :unit_pricing_measure
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @additional_image_links = args[:additional_image_links] if args.key?(:additional_image_links)
          @ads_grouping = args[:ads_grouping] if args.key?(:ads_grouping)
          @ads_labels = args[:ads_labels] if args.key?(:ads_labels)
          @ads_redirect = args[:ads_redirect] if args.key?(:ads_redirect)
          @adult = args[:adult] if args.key?(:adult)
          @age_group = args[:age_group] if args.key?(:age_group)
          @availability = args[:availability] if args.key?(:availability)
          @availability_date = args[:availability_date] if args.key?(:availability_date)
          @brand = args[:brand] if args.key?(:brand)
          @channel = args[:channel] if args.key?(:channel)
          @color = args[:color] if args.key?(:color)
          @condition = args[:condition] if args.key?(:condition)
          @content_language = args[:content_language] if args.key?(:content_language)
          @cost_of_goods_sold = args[:cost_of_goods_sold] if args.key?(:cost_of_goods_sold)
          @custom_attributes = args[:custom_attributes] if args.key?(:custom_attributes)
          @custom_label0 = args[:custom_label0] if args.key?(:custom_label0)
          @custom_label1 = args[:custom_label1] if args.key?(:custom_label1)
          @custom_label2 = args[:custom_label2] if args.key?(:custom_label2)
          @custom_label3 = args[:custom_label3] if args.key?(:custom_label3)
          @custom_label4 = args[:custom_label4] if args.key?(:custom_label4)
          @description = args[:description] if args.key?(:description)
          @display_ads_id = args[:display_ads_id] if args.key?(:display_ads_id)
          @display_ads_link = args[:display_ads_link] if args.key?(:display_ads_link)
          @display_ads_similar_ids = args[:display_ads_similar_ids] if args.key?(:display_ads_similar_ids)
          @display_ads_title = args[:display_ads_title] if args.key?(:display_ads_title)
          @display_ads_value = args[:display_ads_value] if args.key?(:display_ads_value)
          @energy_efficiency_class = args[:energy_efficiency_class] if args.key?(:energy_efficiency_class)
          @excluded_destinations = args[:excluded_destinations] if args.key?(:excluded_destinations)
          @expiration_date = args[:expiration_date] if args.key?(:expiration_date)
          @gender = args[:gender] if args.key?(:gender)
          @google_product_category = args[:google_product_category] if args.key?(:google_product_category)
          @gtin = args[:gtin] if args.key?(:gtin)
          @id = args[:id] if args.key?(:id)
          @identifier_exists = args[:identifier_exists] if args.key?(:identifier_exists)
          @image_link = args[:image_link] if args.key?(:image_link)
          @included_destinations = args[:included_destinations] if args.key?(:included_destinations)
          @installment = args[:installment] if args.key?(:installment)
          @is_bundle = args[:is_bundle] if args.key?(:is_bundle)
          @item_group_id = args[:item_group_id] if args.key?(:item_group_id)
          @kind = args[:kind] if args.key?(:kind)
          @link = args[:link] if args.key?(:link)
          @loyalty_points = args[:loyalty_points] if args.key?(:loyalty_points)
          @material = args[:material] if args.key?(:material)
          @max_energy_efficiency_class = args[:max_energy_efficiency_class] if args.key?(:max_energy_efficiency_class)
          @max_handling_time = args[:max_handling_time] if args.key?(:max_handling_time)
          @min_energy_efficiency_class = args[:min_energy_efficiency_class] if args.key?(:min_energy_efficiency_class)
          @min_handling_time = args[:min_handling_time] if args.key?(:min_handling_time)
          @mobile_link = args[:mobile_link] if args.key?(:mobile_link)
          @mpn = args[:mpn] if args.key?(:mpn)
          @multipack = args[:multipack] if args.key?(:multipack)
          @offer_id = args[:offer_id] if args.key?(:offer_id)
          @pattern = args[:pattern] if args.key?(:pattern)
          @price = args[:price] if args.key?(:price)
          @product_types = args[:product_types] if args.key?(:product_types)
          @promotion_ids = args[:promotion_ids] if args.key?(:promotion_ids)
          @sale_price = args[:sale_price] if args.key?(:sale_price)
          @sale_price_effective_date = args[:sale_price_effective_date] if args.key?(:sale_price_effective_date)
          @sell_on_google_quantity = args[:sell_on_google_quantity] if args.key?(:sell_on_google_quantity)
          @shipping = args[:shipping] if args.key?(:shipping)
          @shipping_height = args[:shipping_height] if args.key?(:shipping_height)
          @shipping_label = args[:shipping_label] if args.key?(:shipping_label)
          @shipping_length = args[:shipping_length] if args.key?(:shipping_length)
          @shipping_weight = args[:shipping_weight] if args.key?(:shipping_weight)
          @shipping_width = args[:shipping_width] if args.key?(:shipping_width)
          @size_system = args[:size_system] if args.key?(:size_system)
          @size_type = args[:size_type] if args.key?(:size_type)
          @sizes = args[:sizes] if args.key?(:sizes)
          @source = args[:source] if args.key?(:source)
          @target_country = args[:target_country] if args.key?(:target_country)
          @tax_category = args[:tax_category] if args.key?(:tax_category)
          @taxes = args[:taxes] if args.key?(:taxes)
          @title = args[:title] if args.key?(:title)
          @transit_time_label = args[:transit_time_label] if args.key?(:transit_time_label)
          @unit_pricing_base_measure = args[:unit_pricing_base_measure] if args.key?(:unit_pricing_base_measure)
          @unit_pricing_measure = args[:unit_pricing_measure] if args.key?(:unit_pricing_measure)
        end
      end
      
      # 
      class ProductAmount
        include Google::Apis::Core::Hashable
      
        # The pre-tax or post-tax price depending on the location of the order.
        # Corresponds to the JSON property `priceAmount`
        # @return [Google::Apis::ContentV2_1::Price]
        attr_accessor :price_amount
      
        # Remitted tax value.
        # Corresponds to the JSON property `remittedTaxAmount`
        # @return [Google::Apis::ContentV2_1::Price]
        attr_accessor :remitted_tax_amount
      
        # Tax value.
        # Corresponds to the JSON property `taxAmount`
        # @return [Google::Apis::ContentV2_1::Price]
        attr_accessor :tax_amount
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @price_amount = args[:price_amount] if args.key?(:price_amount)
          @remitted_tax_amount = args[:remitted_tax_amount] if args.key?(:remitted_tax_amount)
          @tax_amount = args[:tax_amount] if args.key?(:tax_amount)
        end
      end
      
      # 
      class ProductShipping
        include Google::Apis::Core::Hashable
      
        # The CLDR territory code of the country to which an item will ship.
        # Corresponds to the JSON property `country`
        # @return [String]
        attr_accessor :country
      
        # The location where the shipping is applicable, represented by a location group
        # name.
        # Corresponds to the JSON property `locationGroupName`
        # @return [String]
        attr_accessor :location_group_name
      
        # The numeric ID of a location that the shipping rate applies to as defined in
        # the AdWords API.
        # Corresponds to the JSON property `locationId`
        # @return [Fixnum]
        attr_accessor :location_id
      
        # The postal code range that the shipping rate applies to, represented by a
        # postal code, a postal code prefix followed by a * wildcard, a range between
        # two postal codes or two postal code prefixes of equal length.
        # Corresponds to the JSON property `postalCode`
        # @return [String]
        attr_accessor :postal_code
      
        # Fixed shipping price, represented as a number.
        # Corresponds to the JSON property `price`
        # @return [Google::Apis::ContentV2_1::Price]
        attr_accessor :price
      
        # The geographic region to which a shipping rate applies.
        # Corresponds to the JSON property `region`
        # @return [String]
        attr_accessor :region
      
        # A free-form description of the service class or delivery speed.
        # Corresponds to the JSON property `service`
        # @return [String]
        attr_accessor :service
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @country = args[:country] if args.key?(:country)
          @location_group_name = args[:location_group_name] if args.key?(:location_group_name)
          @location_id = args[:location_id] if args.key?(:location_id)
          @postal_code = args[:postal_code] if args.key?(:postal_code)
          @price = args[:price] if args.key?(:price)
          @region = args[:region] if args.key?(:region)
          @service = args[:service] if args.key?(:service)
        end
      end
      
      # 
      class ProductShippingDimension
        include Google::Apis::Core::Hashable
      
        # The unit of value.
        # Corresponds to the JSON property `unit`
        # @return [String]
        attr_accessor :unit
      
        # The dimension of the product used to calculate the shipping cost of the item.
        # Corresponds to the JSON property `value`
        # @return [Float]
        attr_accessor :value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @unit = args[:unit] if args.key?(:unit)
          @value = args[:value] if args.key?(:value)
        end
      end
      
      # 
      class ProductShippingWeight
        include Google::Apis::Core::Hashable
      
        # The unit of value.
        # Corresponds to the JSON property `unit`
        # @return [String]
        attr_accessor :unit
      
        # The weight of the product used to calculate the shipping cost of the item.
        # Corresponds to the JSON property `value`
        # @return [Float]
        attr_accessor :value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @unit = args[:unit] if args.key?(:unit)
          @value = args[:value] if args.key?(:value)
        end
      end
      
      # The status of a product, i.e., information about a product computed
      # asynchronously.
      class ProductStatus
        include Google::Apis::Core::Hashable
      
        # Date on which the item has been created, in ISO 8601 format.
        # Corresponds to the JSON property `creationDate`
        # @return [String]
        attr_accessor :creation_date
      
        # The intended destinations for the product.
        # Corresponds to the JSON property `destinationStatuses`
        # @return [Array<Google::Apis::ContentV2_1::ProductStatusDestinationStatus>]
        attr_accessor :destination_statuses
      
        # Date on which the item expires in Google Shopping, in ISO 8601 format.
        # Corresponds to the JSON property `googleExpirationDate`
        # @return [String]
        attr_accessor :google_expiration_date
      
        # A list of all issues associated with the product.
        # Corresponds to the JSON property `itemLevelIssues`
        # @return [Array<Google::Apis::ContentV2_1::ProductStatusItemLevelIssue>]
        attr_accessor :item_level_issues
      
        # Identifies what kind of resource this is. Value: the fixed string "content#
        # productStatus".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Date on which the item has been last updated, in ISO 8601 format.
        # Corresponds to the JSON property `lastUpdateDate`
        # @return [String]
        attr_accessor :last_update_date
      
        # The link to the product.
        # Corresponds to the JSON property `link`
        # @return [String]
        attr_accessor :link
      
        # The ID of the product for which status is reported.
        # Corresponds to the JSON property `productId`
        # @return [String]
        attr_accessor :product_id
      
        # The title of the product.
        # Corresponds to the JSON property `title`
        # @return [String]
        attr_accessor :title
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @creation_date = args[:creation_date] if args.key?(:creation_date)
          @destination_statuses = args[:destination_statuses] if args.key?(:destination_statuses)
          @google_expiration_date = args[:google_expiration_date] if args.key?(:google_expiration_date)
          @item_level_issues = args[:item_level_issues] if args.key?(:item_level_issues)
          @kind = args[:kind] if args.key?(:kind)
          @last_update_date = args[:last_update_date] if args.key?(:last_update_date)
          @link = args[:link] if args.key?(:link)
          @product_id = args[:product_id] if args.key?(:product_id)
          @title = args[:title] if args.key?(:title)
        end
      end
      
      # 
      class ProductStatusDestinationStatus
        include Google::Apis::Core::Hashable
      
        # The name of the destination
        # Corresponds to the JSON property `destination`
        # @return [String]
        attr_accessor :destination
      
        # 
        # Corresponds to the JSON property `status`
        # @return [String]
        attr_accessor :status
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @destination = args[:destination] if args.key?(:destination)
          @status = args[:status] if args.key?(:status)
        end
      end
      
      # 
      class ProductStatusItemLevelIssue
        include Google::Apis::Core::Hashable
      
        # The attribute's name, if the issue is caused by a single attribute.
        # Corresponds to the JSON property `attributeName`
        # @return [String]
        attr_accessor :attribute_name
      
        # The error code of the issue.
        # Corresponds to the JSON property `code`
        # @return [String]
        attr_accessor :code
      
        # A short issue description in English.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # The destination the issue applies to.
        # Corresponds to the JSON property `destination`
        # @return [String]
        attr_accessor :destination
      
        # A detailed issue description in English.
        # Corresponds to the JSON property `detail`
        # @return [String]
        attr_accessor :detail
      
        # The URL of a web page to help with resolving this issue.
        # Corresponds to the JSON property `documentation`
        # @return [String]
        attr_accessor :documentation
      
        # Whether the issue can be resolved by the merchant.
        # Corresponds to the JSON property `resolution`
        # @return [String]
        attr_accessor :resolution
      
        # How this issue affects serving of the offer.
        # Corresponds to the JSON property `servability`
        # @return [String]
        attr_accessor :servability
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @attribute_name = args[:attribute_name] if args.key?(:attribute_name)
          @code = args[:code] if args.key?(:code)
          @description = args[:description] if args.key?(:description)
          @destination = args[:destination] if args.key?(:destination)
          @detail = args[:detail] if args.key?(:detail)
          @documentation = args[:documentation] if args.key?(:documentation)
          @resolution = args[:resolution] if args.key?(:resolution)
          @servability = args[:servability] if args.key?(:servability)
        end
      end
      
      # 
      class ProductTax
        include Google::Apis::Core::Hashable
      
        # The country within which the item is taxed, specified as a CLDR territory code.
        # Corresponds to the JSON property `country`
        # @return [String]
        attr_accessor :country
      
        # The numeric ID of a location that the tax rate applies to as defined in the
        # AdWords API.
        # Corresponds to the JSON property `locationId`
        # @return [Fixnum]
        attr_accessor :location_id
      
        # The postal code range that the tax rate applies to, represented by a ZIP code,
        # a ZIP code prefix using * wildcard, a range between two ZIP codes or two ZIP
        # code prefixes of equal length. Examples: 94114, 94*, 94002-95460, 94*-95*.
        # Corresponds to the JSON property `postalCode`
        # @return [String]
        attr_accessor :postal_code
      
        # The percentage of tax rate that applies to the item price.
        # Corresponds to the JSON property `rate`
        # @return [Float]
        attr_accessor :rate
      
        # The geographic region to which the tax rate applies.
        # Corresponds to the JSON property `region`
        # @return [String]
        attr_accessor :region
      
        # Set to true if tax is charged on shipping.
        # Corresponds to the JSON property `taxShip`
        # @return [Boolean]
        attr_accessor :tax_ship
        alias_method :tax_ship?, :tax_ship
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @country = args[:country] if args.key?(:country)
          @location_id = args[:location_id] if args.key?(:location_id)
          @postal_code = args[:postal_code] if args.key?(:postal_code)
          @rate = args[:rate] if args.key?(:rate)
          @region = args[:region] if args.key?(:region)
          @tax_ship = args[:tax_ship] if args.key?(:tax_ship)
        end
      end
      
      # 
      class ProductUnitPricingBaseMeasure
        include Google::Apis::Core::Hashable
      
        # The unit of the denominator.
        # Corresponds to the JSON property `unit`
        # @return [String]
        attr_accessor :unit
      
        # The denominator of the unit price.
        # Corresponds to the JSON property `value`
        # @return [Fixnum]
        attr_accessor :value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @unit = args[:unit] if args.key?(:unit)
          @value = args[:value] if args.key?(:value)
        end
      end
      
      # 
      class ProductUnitPricingMeasure
        include Google::Apis::Core::Hashable
      
        # The unit of the measure.
        # Corresponds to the JSON property `unit`
        # @return [String]
        attr_accessor :unit
      
        # The measure of an item.
        # Corresponds to the JSON property `value`
        # @return [Float]
        attr_accessor :value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @unit = args[:unit] if args.key?(:unit)
          @value = args[:value] if args.key?(:value)
        end
      end
      
      # 
      class ProductsCustomBatchRequest
        include Google::Apis::Core::Hashable
      
        # The request entries to be processed in the batch.
        # Corresponds to the JSON property `entries`
        # @return [Array<Google::Apis::ContentV2_1::ProductsCustomBatchRequestEntry>]
        attr_accessor :entries
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @entries = args[:entries] if args.key?(:entries)
        end
      end
      
      # A batch entry encoding a single non-batch products request.
      class ProductsCustomBatchRequestEntry
        include Google::Apis::Core::Hashable
      
        # An entry ID, unique within the batch request.
        # Corresponds to the JSON property `batchId`
        # @return [Fixnum]
        attr_accessor :batch_id
      
        # The ID of the managing account.
        # Corresponds to the JSON property `merchantId`
        # @return [Fixnum]
        attr_accessor :merchant_id
      
        # 
        # Corresponds to the JSON property `method`
        # @return [String]
        attr_accessor :method_prop
      
        # Product data. After inserting, updating, or deleting a product, it may take
        # several minutes before changes take effect.
        # Corresponds to the JSON property `product`
        # @return [Google::Apis::ContentV2_1::Product]
        attr_accessor :product
      
        # The ID of the product to get or delete. Only defined if the method is get or
        # delete.
        # Corresponds to the JSON property `productId`
        # @return [String]
        attr_accessor :product_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @batch_id = args[:batch_id] if args.key?(:batch_id)
          @merchant_id = args[:merchant_id] if args.key?(:merchant_id)
          @method_prop = args[:method_prop] if args.key?(:method_prop)
          @product = args[:product] if args.key?(:product)
          @product_id = args[:product_id] if args.key?(:product_id)
        end
      end
      
      # 
      class ProductsCustomBatchResponse
        include Google::Apis::Core::Hashable
      
        # The result of the execution of the batch requests.
        # Corresponds to the JSON property `entries`
        # @return [Array<Google::Apis::ContentV2_1::ProductsCustomBatchResponseEntry>]
        attr_accessor :entries
      
        # Identifies what kind of resource this is. Value: the fixed string "content#
        # productsCustomBatchResponse".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @entries = args[:entries] if args.key?(:entries)
          @kind = args[:kind] if args.key?(:kind)
        end
      end
      
      # A batch entry encoding a single non-batch products response.
      class ProductsCustomBatchResponseEntry
        include Google::Apis::Core::Hashable
      
        # The ID of the request entry this entry responds to.
        # Corresponds to the JSON property `batchId`
        # @return [Fixnum]
        attr_accessor :batch_id
      
        # A list of errors returned by a failed batch entry.
        # Corresponds to the JSON property `errors`
        # @return [Google::Apis::ContentV2_1::Errors]
        attr_accessor :errors
      
        # Identifies what kind of resource this is. Value: the fixed string "content#
        # productsCustomBatchResponseEntry".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Product data. After inserting, updating, or deleting a product, it may take
        # several minutes before changes take effect.
        # Corresponds to the JSON property `product`
        # @return [Google::Apis::ContentV2_1::Product]
        attr_accessor :product
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @batch_id = args[:batch_id] if args.key?(:batch_id)
          @errors = args[:errors] if args.key?(:errors)
          @kind = args[:kind] if args.key?(:kind)
          @product = args[:product] if args.key?(:product)
        end
      end
      
      # 
      class ProductsListResponse
        include Google::Apis::Core::Hashable
      
        # Identifies what kind of resource this is. Value: the fixed string "content#
        # productsListResponse".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The token for the retrieval of the next page of products.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # 
        # Corresponds to the JSON property `resources`
        # @return [Array<Google::Apis::ContentV2_1::Product>]
        attr_accessor :resources
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @kind = args[:kind] if args.key?(:kind)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @resources = args[:resources] if args.key?(:resources)
        end
      end
      
      # 
      class ProductstatusesCustomBatchRequest
        include Google::Apis::Core::Hashable
      
        # The request entries to be processed in the batch.
        # Corresponds to the JSON property `entries`
        # @return [Array<Google::Apis::ContentV2_1::ProductstatusesCustomBatchRequestEntry>]
        attr_accessor :entries
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @entries = args[:entries] if args.key?(:entries)
        end
      end
      
      # A batch entry encoding a single non-batch productstatuses request.
      class ProductstatusesCustomBatchRequestEntry
        include Google::Apis::Core::Hashable
      
        # An entry ID, unique within the batch request.
        # Corresponds to the JSON property `batchId`
        # @return [Fixnum]
        attr_accessor :batch_id
      
        # If set, only issues for the specified destinations are returned, otherwise
        # only issues for the Shopping destination.
        # Corresponds to the JSON property `destinations`
        # @return [Array<String>]
        attr_accessor :destinations
      
        # 
        # Corresponds to the JSON property `includeAttributes`
        # @return [Boolean]
        attr_accessor :include_attributes
        alias_method :include_attributes?, :include_attributes
      
        # The ID of the managing account.
        # Corresponds to the JSON property `merchantId`
        # @return [Fixnum]
        attr_accessor :merchant_id
      
        # 
        # Corresponds to the JSON property `method`
        # @return [String]
        attr_accessor :method_prop
      
        # The ID of the product whose status to get.
        # Corresponds to the JSON property `productId`
        # @return [String]
        attr_accessor :product_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @batch_id = args[:batch_id] if args.key?(:batch_id)
          @destinations = args[:destinations] if args.key?(:destinations)
          @include_attributes = args[:include_attributes] if args.key?(:include_attributes)
          @merchant_id = args[:merchant_id] if args.key?(:merchant_id)
          @method_prop = args[:method_prop] if args.key?(:method_prop)
          @product_id = args[:product_id] if args.key?(:product_id)
        end
      end
      
      # 
      class ProductstatusesCustomBatchResponse
        include Google::Apis::Core::Hashable
      
        # The result of the execution of the batch requests.
        # Corresponds to the JSON property `entries`
        # @return [Array<Google::Apis::ContentV2_1::ProductstatusesCustomBatchResponseEntry>]
        attr_accessor :entries
      
        # Identifies what kind of resource this is. Value: the fixed string "content#
        # productstatusesCustomBatchResponse".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @entries = args[:entries] if args.key?(:entries)
          @kind = args[:kind] if args.key?(:kind)
        end
      end
      
      # A batch entry encoding a single non-batch productstatuses response.
      class ProductstatusesCustomBatchResponseEntry
        include Google::Apis::Core::Hashable
      
        # The ID of the request entry this entry responds to.
        # Corresponds to the JSON property `batchId`
        # @return [Fixnum]
        attr_accessor :batch_id
      
        # A list of errors returned by a failed batch entry.
        # Corresponds to the JSON property `errors`
        # @return [Google::Apis::ContentV2_1::Errors]
        attr_accessor :errors
      
        # Identifies what kind of resource this is. Value: the fixed string "content#
        # productstatusesCustomBatchResponseEntry".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The status of a product, i.e., information about a product computed
        # asynchronously.
        # Corresponds to the JSON property `productStatus`
        # @return [Google::Apis::ContentV2_1::ProductStatus]
        attr_accessor :product_status
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @batch_id = args[:batch_id] if args.key?(:batch_id)
          @errors = args[:errors] if args.key?(:errors)
          @kind = args[:kind] if args.key?(:kind)
          @product_status = args[:product_status] if args.key?(:product_status)
        end
      end
      
      # 
      class ProductstatusesListResponse
        include Google::Apis::Core::Hashable
      
        # Identifies what kind of resource this is. Value: the fixed string "content#
        # productstatusesListResponse".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The token for the retrieval of the next page of products statuses.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # 
        # Corresponds to the JSON property `resources`
        # @return [Array<Google::Apis::ContentV2_1::ProductStatus>]
        attr_accessor :resources
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @kind = args[:kind] if args.key?(:kind)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @resources = args[:resources] if args.key?(:resources)
        end
      end
      
      # 
      class RateGroup
        include Google::Apis::Core::Hashable
      
        # A list of shipping labels defining the products to which this rate group
        # applies to. This is a disjunction: only one of the labels has to match for the
        # rate group to apply. May only be empty for the last rate group of a service.
        # Required.
        # Corresponds to the JSON property `applicableShippingLabels`
        # @return [Array<String>]
        attr_accessor :applicable_shipping_labels
      
        # A list of carrier rates that can be referred to by mainTable or singleValue.
        # Corresponds to the JSON property `carrierRates`
        # @return [Array<Google::Apis::ContentV2_1::CarrierRate>]
        attr_accessor :carrier_rates
      
        # A table defining the rate group, when singleValue is not expressive enough.
        # Can only be set if singleValue is not set.
        # Corresponds to the JSON property `mainTable`
        # @return [Google::Apis::ContentV2_1::Table]
        attr_accessor :main_table
      
        # Name of the rate group. Optional. If set has to be unique within shipping
        # service.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The single value of a rate group or the value of a rate group table's cell.
        # Exactly one of noShipping, flatRate, pricePercentage, carrierRateName,
        # subtableName must be set.
        # Corresponds to the JSON property `singleValue`
        # @return [Google::Apis::ContentV2_1::Value]
        attr_accessor :single_value
      
        # A list of subtables referred to by mainTable. Can only be set if mainTable is
        # set.
        # Corresponds to the JSON property `subtables`
        # @return [Array<Google::Apis::ContentV2_1::Table>]
        attr_accessor :subtables
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @applicable_shipping_labels = args[:applicable_shipping_labels] if args.key?(:applicable_shipping_labels)
          @carrier_rates = args[:carrier_rates] if args.key?(:carrier_rates)
          @main_table = args[:main_table] if args.key?(:main_table)
          @name = args[:name] if args.key?(:name)
          @single_value = args[:single_value] if args.key?(:single_value)
          @subtables = args[:subtables] if args.key?(:subtables)
        end
      end
      
      # 
      class RefundReason
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # 
        # Corresponds to the JSON property `reasonCode`
        # @return [String]
        attr_accessor :reason_code
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @description = args[:description] if args.key?(:description)
          @reason_code = args[:reason_code] if args.key?(:reason_code)
        end
      end
      
      # Regional inventory resource. contains the regional name and all attributes
      # which are overridden for the specified region.
      class RegionalInventory
        include Google::Apis::Core::Hashable
      
        # The availability of the product.
        # Corresponds to the JSON property `availability`
        # @return [String]
        attr_accessor :availability
      
        # A list of custom (merchant-provided) attributes. It can also be used for
        # submitting any attribute of the feed specification in its generic form.
        # Corresponds to the JSON property `customAttributes`
        # @return [Array<Google::Apis::ContentV2_1::CustomAttribute>]
        attr_accessor :custom_attributes
      
        # Identifies what kind of resource this is. Value: the fixed string "content#
        # regionalInventory".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The price of the product.
        # Corresponds to the JSON property `price`
        # @return [Google::Apis::ContentV2_1::Price]
        attr_accessor :price
      
        # The ID (name) of the region.
        # Corresponds to the JSON property `regionId`
        # @return [String]
        attr_accessor :region_id
      
        # The sale price of the product. Mandatory if sale_price_effective_date is
        # defined.
        # Corresponds to the JSON property `salePrice`
        # @return [Google::Apis::ContentV2_1::Price]
        attr_accessor :sale_price
      
        # A date range represented by a pair of ISO 8601 dates separated by a space,
        # comma, or slash. Both dates might be specified as 'null' if undecided.
        # Corresponds to the JSON property `salePriceEffectiveDate`
        # @return [String]
        attr_accessor :sale_price_effective_date
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @availability = args[:availability] if args.key?(:availability)
          @custom_attributes = args[:custom_attributes] if args.key?(:custom_attributes)
          @kind = args[:kind] if args.key?(:kind)
          @price = args[:price] if args.key?(:price)
          @region_id = args[:region_id] if args.key?(:region_id)
          @sale_price = args[:sale_price] if args.key?(:sale_price)
          @sale_price_effective_date = args[:sale_price_effective_date] if args.key?(:sale_price_effective_date)
        end
      end
      
      # 
      class RegionalinventoryCustomBatchRequest
        include Google::Apis::Core::Hashable
      
        # The request entries to be processed in the batch.
        # Corresponds to the JSON property `entries`
        # @return [Array<Google::Apis::ContentV2_1::RegionalinventoryCustomBatchRequestEntry>]
        attr_accessor :entries
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @entries = args[:entries] if args.key?(:entries)
        end
      end
      
      # A batch entry encoding a single non-batch regional inventory request.
      class RegionalinventoryCustomBatchRequestEntry
        include Google::Apis::Core::Hashable
      
        # An entry ID, unique within the batch request.
        # Corresponds to the JSON property `batchId`
        # @return [Fixnum]
        attr_accessor :batch_id
      
        # The ID of the managing account.
        # Corresponds to the JSON property `merchantId`
        # @return [Fixnum]
        attr_accessor :merchant_id
      
        # 
        # Corresponds to the JSON property `method`
        # @return [String]
        attr_accessor :method_prop
      
        # The ID of the product for which to update price and availability.
        # Corresponds to the JSON property `productId`
        # @return [String]
        attr_accessor :product_id
      
        # Regional inventory resource. contains the regional name and all attributes
        # which are overridden for the specified region.
        # Corresponds to the JSON property `regionalInventory`
        # @return [Google::Apis::ContentV2_1::RegionalInventory]
        attr_accessor :regional_inventory
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @batch_id = args[:batch_id] if args.key?(:batch_id)
          @merchant_id = args[:merchant_id] if args.key?(:merchant_id)
          @method_prop = args[:method_prop] if args.key?(:method_prop)
          @product_id = args[:product_id] if args.key?(:product_id)
          @regional_inventory = args[:regional_inventory] if args.key?(:regional_inventory)
        end
      end
      
      # 
      class RegionalinventoryCustomBatchResponse
        include Google::Apis::Core::Hashable
      
        # The result of the execution of the batch requests.
        # Corresponds to the JSON property `entries`
        # @return [Array<Google::Apis::ContentV2_1::RegionalinventoryCustomBatchResponseEntry>]
        attr_accessor :entries
      
        # Identifies what kind of resource this is. Value: the fixed string "content#
        # regionalinventoryCustomBatchResponse".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @entries = args[:entries] if args.key?(:entries)
          @kind = args[:kind] if args.key?(:kind)
        end
      end
      
      # A batch entry encoding a single non-batch regional inventory response.
      class RegionalinventoryCustomBatchResponseEntry
        include Google::Apis::Core::Hashable
      
        # The ID of the request entry this entry responds to.
        # Corresponds to the JSON property `batchId`
        # @return [Fixnum]
        attr_accessor :batch_id
      
        # A list of errors returned by a failed batch entry.
        # Corresponds to the JSON property `errors`
        # @return [Google::Apis::ContentV2_1::Errors]
        attr_accessor :errors
      
        # Identifies what kind of resource this is. Value: the fixed string "content#
        # regionalinventoryCustomBatchResponseEntry".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Regional inventory resource. contains the regional name and all attributes
        # which are overridden for the specified region.
        # Corresponds to the JSON property `regionalInventory`
        # @return [Google::Apis::ContentV2_1::RegionalInventory]
        attr_accessor :regional_inventory
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @batch_id = args[:batch_id] if args.key?(:batch_id)
          @errors = args[:errors] if args.key?(:errors)
          @kind = args[:kind] if args.key?(:kind)
          @regional_inventory = args[:regional_inventory] if args.key?(:regional_inventory)
        end
      end
      
      # 
      class ReturnShipment
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `creationDate`
        # @return [String]
        attr_accessor :creation_date
      
        # 
        # Corresponds to the JSON property `deliveryDate`
        # @return [String]
        attr_accessor :delivery_date
      
        # 
        # Corresponds to the JSON property `returnMethodType`
        # @return [String]
        attr_accessor :return_method_type
      
        # 
        # Corresponds to the JSON property `shipmentId`
        # @return [String]
        attr_accessor :shipment_id
      
        # 
        # Corresponds to the JSON property `shipmentTrackingInfos`
        # @return [Array<Google::Apis::ContentV2_1::ShipmentTrackingInfo>]
        attr_accessor :shipment_tracking_infos
      
        # 
        # Corresponds to the JSON property `shippingDate`
        # @return [String]
        attr_accessor :shipping_date
      
        # 
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @creation_date = args[:creation_date] if args.key?(:creation_date)
          @delivery_date = args[:delivery_date] if args.key?(:delivery_date)
          @return_method_type = args[:return_method_type] if args.key?(:return_method_type)
          @shipment_id = args[:shipment_id] if args.key?(:shipment_id)
          @shipment_tracking_infos = args[:shipment_tracking_infos] if args.key?(:shipment_tracking_infos)
          @shipping_date = args[:shipping_date] if args.key?(:shipping_date)
          @state = args[:state] if args.key?(:state)
        end
      end
      
      # 
      class Row
        include Google::Apis::Core::Hashable
      
        # The list of cells that constitute the row. Must have the same length as
        # columnHeaders for two-dimensional tables, a length of 1 for one-dimensional
        # tables. Required.
        # Corresponds to the JSON property `cells`
        # @return [Array<Google::Apis::ContentV2_1::Value>]
        attr_accessor :cells
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cells = args[:cells] if args.key?(:cells)
        end
      end
      
      # 
      class Service
        include Google::Apis::Core::Hashable
      
        # A boolean exposing the active status of the shipping service. Required.
        # Corresponds to the JSON property `active`
        # @return [Boolean]
        attr_accessor :active
        alias_method :active?, :active
      
        # The CLDR code of the currency to which this service applies. Must match that
        # of the prices in rate groups.
        # Corresponds to the JSON property `currency`
        # @return [String]
        attr_accessor :currency
      
        # The CLDR territory code of the country to which the service applies. Required.
        # Corresponds to the JSON property `deliveryCountry`
        # @return [String]
        attr_accessor :delivery_country
      
        # Time spent in various aspects from order to the delivery of the product.
        # Required.
        # Corresponds to the JSON property `deliveryTime`
        # @return [Google::Apis::ContentV2_1::DeliveryTime]
        attr_accessor :delivery_time
      
        # Eligibility for this service.
        # Corresponds to the JSON property `eligibility`
        # @return [String]
        attr_accessor :eligibility
      
        # Minimum order value for this service. If set, indicates that customers will
        # have to spend at least this amount. All prices within a service must have the
        # same currency.
        # Corresponds to the JSON property `minimumOrderValue`
        # @return [Google::Apis::ContentV2_1::Price]
        attr_accessor :minimum_order_value
      
        # Free-form name of the service. Must be unique within target account. Required.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Shipping rate group definitions. Only the last one is allowed to have an empty
        # applicableShippingLabels, which means "everything else". The other
        # applicableShippingLabels must not overlap.
        # Corresponds to the JSON property `rateGroups`
        # @return [Array<Google::Apis::ContentV2_1::RateGroup>]
        attr_accessor :rate_groups
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @active = args[:active] if args.key?(:active)
          @currency = args[:currency] if args.key?(:currency)
          @delivery_country = args[:delivery_country] if args.key?(:delivery_country)
          @delivery_time = args[:delivery_time] if args.key?(:delivery_time)
          @eligibility = args[:eligibility] if args.key?(:eligibility)
          @minimum_order_value = args[:minimum_order_value] if args.key?(:minimum_order_value)
          @name = args[:name] if args.key?(:name)
          @rate_groups = args[:rate_groups] if args.key?(:rate_groups)
        end
      end
      
      # 
      class ShipmentInvoice
        include Google::Apis::Core::Hashable
      
        # [required] Invoice summary.
        # Corresponds to the JSON property `invoiceSummary`
        # @return [Google::Apis::ContentV2_1::InvoiceSummary]
        attr_accessor :invoice_summary
      
        # [required] Invoice details per line item.
        # Corresponds to the JSON property `lineItemInvoices`
        # @return [Array<Google::Apis::ContentV2_1::ShipmentInvoiceLineItemInvoice>]
        attr_accessor :line_item_invoices
      
        # [required] ID of the shipment group. It is assigned by the merchant in the
        # shipLineItems method and is used to group multiple line items that have the
        # same kind of shipping charges.
        # Corresponds to the JSON property `shipmentGroupId`
        # @return [String]
        attr_accessor :shipment_group_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @invoice_summary = args[:invoice_summary] if args.key?(:invoice_summary)
          @line_item_invoices = args[:line_item_invoices] if args.key?(:line_item_invoices)
          @shipment_group_id = args[:shipment_group_id] if args.key?(:shipment_group_id)
        end
      end
      
      # 
      class ShipmentInvoiceLineItemInvoice
        include Google::Apis::Core::Hashable
      
        # ID of the line item. Either lineItemId or productId must be set.
        # Corresponds to the JSON property `lineItemId`
        # @return [String]
        attr_accessor :line_item_id
      
        # ID of the product. This is the REST ID used in the products service. Either
        # lineItemId or productId must be set.
        # Corresponds to the JSON property `productId`
        # @return [String]
        attr_accessor :product_id
      
        # [required] The shipment unit ID is assigned by the merchant and defines
        # individual quantities within a line item. The same ID can be assigned to units
        # that are the same while units that differ must be assigned a different ID (for
        # example: free or promotional units).
        # Corresponds to the JSON property `shipmentUnitIds`
        # @return [Array<String>]
        attr_accessor :shipment_unit_ids
      
        # [required] Invoice details for a single unit.
        # Corresponds to the JSON property `unitInvoice`
        # @return [Google::Apis::ContentV2_1::UnitInvoice]
        attr_accessor :unit_invoice
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @line_item_id = args[:line_item_id] if args.key?(:line_item_id)
          @product_id = args[:product_id] if args.key?(:product_id)
          @shipment_unit_ids = args[:shipment_unit_ids] if args.key?(:shipment_unit_ids)
          @unit_invoice = args[:unit_invoice] if args.key?(:unit_invoice)
        end
      end
      
      # 
      class ShipmentTrackingInfo
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `carrier`
        # @return [String]
        attr_accessor :carrier
      
        # 
        # Corresponds to the JSON property `trackingNumber`
        # @return [String]
        attr_accessor :tracking_number
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @carrier = args[:carrier] if args.key?(:carrier)
          @tracking_number = args[:tracking_number] if args.key?(:tracking_number)
        end
      end
      
      # The merchant account's shipping settings. All methods except
      # getsupportedcarriers and getsupportedholidays require the admin role.
      class ShippingSettings
        include Google::Apis::Core::Hashable
      
        # The ID of the account to which these account shipping settings belong. Ignored
        # upon update, always present in get request responses.
        # Corresponds to the JSON property `accountId`
        # @return [Fixnum]
        attr_accessor :account_id
      
        # A list of postal code groups that can be referred to in services. Optional.
        # Corresponds to the JSON property `postalCodeGroups`
        # @return [Array<Google::Apis::ContentV2_1::PostalCodeGroup>]
        attr_accessor :postal_code_groups
      
        # The target account's list of services. Optional.
        # Corresponds to the JSON property `services`
        # @return [Array<Google::Apis::ContentV2_1::Service>]
        attr_accessor :services
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @account_id = args[:account_id] if args.key?(:account_id)
          @postal_code_groups = args[:postal_code_groups] if args.key?(:postal_code_groups)
          @services = args[:services] if args.key?(:services)
        end
      end
      
      # 
      class ShippingsettingsCustomBatchRequest
        include Google::Apis::Core::Hashable
      
        # The request entries to be processed in the batch.
        # Corresponds to the JSON property `entries`
        # @return [Array<Google::Apis::ContentV2_1::ShippingsettingsCustomBatchRequestEntry>]
        attr_accessor :entries
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @entries = args[:entries] if args.key?(:entries)
        end
      end
      
      # A batch entry encoding a single non-batch shippingsettings request.
      class ShippingsettingsCustomBatchRequestEntry
        include Google::Apis::Core::Hashable
      
        # The ID of the account for which to get/update account shipping settings.
        # Corresponds to the JSON property `accountId`
        # @return [Fixnum]
        attr_accessor :account_id
      
        # An entry ID, unique within the batch request.
        # Corresponds to the JSON property `batchId`
        # @return [Fixnum]
        attr_accessor :batch_id
      
        # The ID of the managing account.
        # Corresponds to the JSON property `merchantId`
        # @return [Fixnum]
        attr_accessor :merchant_id
      
        # 
        # Corresponds to the JSON property `method`
        # @return [String]
        attr_accessor :method_prop
      
        # The merchant account's shipping settings. All methods except
        # getsupportedcarriers and getsupportedholidays require the admin role.
        # Corresponds to the JSON property `shippingSettings`
        # @return [Google::Apis::ContentV2_1::ShippingSettings]
        attr_accessor :shipping_settings
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @account_id = args[:account_id] if args.key?(:account_id)
          @batch_id = args[:batch_id] if args.key?(:batch_id)
          @merchant_id = args[:merchant_id] if args.key?(:merchant_id)
          @method_prop = args[:method_prop] if args.key?(:method_prop)
          @shipping_settings = args[:shipping_settings] if args.key?(:shipping_settings)
        end
      end
      
      # 
      class ShippingsettingsCustomBatchResponse
        include Google::Apis::Core::Hashable
      
        # The result of the execution of the batch requests.
        # Corresponds to the JSON property `entries`
        # @return [Array<Google::Apis::ContentV2_1::ShippingsettingsCustomBatchResponseEntry>]
        attr_accessor :entries
      
        # Identifies what kind of resource this is. Value: the fixed string "content#
        # shippingsettingsCustomBatchResponse".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @entries = args[:entries] if args.key?(:entries)
          @kind = args[:kind] if args.key?(:kind)
        end
      end
      
      # A batch entry encoding a single non-batch shipping settings response.
      class ShippingsettingsCustomBatchResponseEntry
        include Google::Apis::Core::Hashable
      
        # The ID of the request entry to which this entry responds.
        # Corresponds to the JSON property `batchId`
        # @return [Fixnum]
        attr_accessor :batch_id
      
        # A list of errors returned by a failed batch entry.
        # Corresponds to the JSON property `errors`
        # @return [Google::Apis::ContentV2_1::Errors]
        attr_accessor :errors
      
        # Identifies what kind of resource this is. Value: the fixed string "content#
        # shippingsettingsCustomBatchResponseEntry".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The merchant account's shipping settings. All methods except
        # getsupportedcarriers and getsupportedholidays require the admin role.
        # Corresponds to the JSON property `shippingSettings`
        # @return [Google::Apis::ContentV2_1::ShippingSettings]
        attr_accessor :shipping_settings
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @batch_id = args[:batch_id] if args.key?(:batch_id)
          @errors = args[:errors] if args.key?(:errors)
          @kind = args[:kind] if args.key?(:kind)
          @shipping_settings = args[:shipping_settings] if args.key?(:shipping_settings)
        end
      end
      
      # 
      class ShippingsettingsGetSupportedCarriersResponse
        include Google::Apis::Core::Hashable
      
        # A list of supported carriers. May be empty.
        # Corresponds to the JSON property `carriers`
        # @return [Array<Google::Apis::ContentV2_1::CarriersCarrier>]
        attr_accessor :carriers
      
        # Identifies what kind of resource this is. Value: the fixed string "content#
        # shippingsettingsGetSupportedCarriersResponse".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @carriers = args[:carriers] if args.key?(:carriers)
          @kind = args[:kind] if args.key?(:kind)
        end
      end
      
      # 
      class ShippingsettingsGetSupportedHolidaysResponse
        include Google::Apis::Core::Hashable
      
        # A list of holidays applicable for delivery guarantees. May be empty.
        # Corresponds to the JSON property `holidays`
        # @return [Array<Google::Apis::ContentV2_1::HolidaysHoliday>]
        attr_accessor :holidays
      
        # Identifies what kind of resource this is. Value: the fixed string "content#
        # shippingsettingsGetSupportedHolidaysResponse".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @holidays = args[:holidays] if args.key?(:holidays)
          @kind = args[:kind] if args.key?(:kind)
        end
      end
      
      # 
      class ShippingsettingsListResponse
        include Google::Apis::Core::Hashable
      
        # Identifies what kind of resource this is. Value: the fixed string "content#
        # shippingsettingsListResponse".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The token for the retrieval of the next page of shipping settings.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # 
        # Corresponds to the JSON property `resources`
        # @return [Array<Google::Apis::ContentV2_1::ShippingSettings>]
        attr_accessor :resources
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @kind = args[:kind] if args.key?(:kind)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @resources = args[:resources] if args.key?(:resources)
        end
      end
      
      # 
      class Table
        include Google::Apis::Core::Hashable
      
        # A non-empty list of row or column headers for a table. Exactly one of prices,
        # weights, numItems, postalCodeGroupNames, or location must be set.
        # Corresponds to the JSON property `columnHeaders`
        # @return [Google::Apis::ContentV2_1::Headers]
        attr_accessor :column_headers
      
        # Name of the table. Required for subtables, ignored for the main table.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # A non-empty list of row or column headers for a table. Exactly one of prices,
        # weights, numItems, postalCodeGroupNames, or location must be set.
        # Corresponds to the JSON property `rowHeaders`
        # @return [Google::Apis::ContentV2_1::Headers]
        attr_accessor :row_headers
      
        # The list of rows that constitute the table. Must have the same length as
        # rowHeaders. Required.
        # Corresponds to the JSON property `rows`
        # @return [Array<Google::Apis::ContentV2_1::Row>]
        attr_accessor :rows
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @column_headers = args[:column_headers] if args.key?(:column_headers)
          @name = args[:name] if args.key?(:name)
          @row_headers = args[:row_headers] if args.key?(:row_headers)
          @rows = args[:rows] if args.key?(:rows)
        end
      end
      
      # 
      class TestOrder
        include Google::Apis::Core::Hashable
      
        # Whether the orderinvoices service should support this order.
        # Corresponds to the JSON property `enableOrderinvoices`
        # @return [Boolean]
        attr_accessor :enable_orderinvoices
        alias_method :enable_orderinvoices?, :enable_orderinvoices
      
        # Identifies what kind of resource this is. Value: the fixed string "content#
        # testOrder".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Line items that are ordered. At least one line item must be provided.
        # Corresponds to the JSON property `lineItems`
        # @return [Array<Google::Apis::ContentV2_1::TestOrderLineItem>]
        attr_accessor :line_items
      
        # Determines if test order must be pulled by merchant or pushed to merchant via
        # push integration.
        # Corresponds to the JSON property `notificationMode`
        # @return [String]
        attr_accessor :notification_mode
      
        # The billing address.
        # Corresponds to the JSON property `predefinedBillingAddress`
        # @return [String]
        attr_accessor :predefined_billing_address
      
        # Identifier of one of the predefined delivery addresses for the delivery.
        # Corresponds to the JSON property `predefinedDeliveryAddress`
        # @return [String]
        attr_accessor :predefined_delivery_address
      
        # Email address of the customer.
        # Corresponds to the JSON property `predefinedEmail`
        # @return [String]
        attr_accessor :predefined_email
      
        # Promotions associated with the order.
        # Corresponds to the JSON property `promotions`
        # @return [Array<Google::Apis::ContentV2_1::OrderPromotion>]
        attr_accessor :promotions
      
        # The price of shipping for all items. Shipping tax is automatically calculated
        # for MFL orders. For non-MFL orders, tax settings from Merchant Center are
        # applied. Note that shipping is not taxed in certain states.
        # Corresponds to the JSON property `shippingCost`
        # @return [Google::Apis::ContentV2_1::Price]
        attr_accessor :shipping_cost
      
        # The requested shipping option.
        # Corresponds to the JSON property `shippingOption`
        # @return [String]
        attr_accessor :shipping_option
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @enable_orderinvoices = args[:enable_orderinvoices] if args.key?(:enable_orderinvoices)
          @kind = args[:kind] if args.key?(:kind)
          @line_items = args[:line_items] if args.key?(:line_items)
          @notification_mode = args[:notification_mode] if args.key?(:notification_mode)
          @predefined_billing_address = args[:predefined_billing_address] if args.key?(:predefined_billing_address)
          @predefined_delivery_address = args[:predefined_delivery_address] if args.key?(:predefined_delivery_address)
          @predefined_email = args[:predefined_email] if args.key?(:predefined_email)
          @promotions = args[:promotions] if args.key?(:promotions)
          @shipping_cost = args[:shipping_cost] if args.key?(:shipping_cost)
          @shipping_option = args[:shipping_option] if args.key?(:shipping_option)
        end
      end
      
      # 
      class TestOrderLineItem
        include Google::Apis::Core::Hashable
      
        # Product data from the time of the order placement.
        # Corresponds to the JSON property `product`
        # @return [Google::Apis::ContentV2_1::TestOrderLineItemProduct]
        attr_accessor :product
      
        # Number of items ordered.
        # Corresponds to the JSON property `quantityOrdered`
        # @return [Fixnum]
        attr_accessor :quantity_ordered
      
        # Details of the return policy for the line item.
        # Corresponds to the JSON property `returnInfo`
        # @return [Google::Apis::ContentV2_1::OrderLineItemReturnInfo]
        attr_accessor :return_info
      
        # Details of the requested shipping for the line item.
        # Corresponds to the JSON property `shippingDetails`
        # @return [Google::Apis::ContentV2_1::OrderLineItemShippingDetails]
        attr_accessor :shipping_details
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @product = args[:product] if args.key?(:product)
          @quantity_ordered = args[:quantity_ordered] if args.key?(:quantity_ordered)
          @return_info = args[:return_info] if args.key?(:return_info)
          @shipping_details = args[:shipping_details] if args.key?(:shipping_details)
        end
      end
      
      # 
      class TestOrderLineItemProduct
        include Google::Apis::Core::Hashable
      
        # Brand of the item.
        # Corresponds to the JSON property `brand`
        # @return [String]
        attr_accessor :brand
      
        # Condition or state of the item.
        # Corresponds to the JSON property `condition`
        # @return [String]
        attr_accessor :condition
      
        # The two-letter ISO 639-1 language code for the item.
        # Corresponds to the JSON property `contentLanguage`
        # @return [String]
        attr_accessor :content_language
      
        # Fees for the item. Optional.
        # Corresponds to the JSON property `fees`
        # @return [Array<Google::Apis::ContentV2_1::OrderLineItemProductFee>]
        attr_accessor :fees
      
        # Global Trade Item Number (GTIN) of the item. Optional.
        # Corresponds to the JSON property `gtin`
        # @return [String]
        attr_accessor :gtin
      
        # URL of an image of the item.
        # Corresponds to the JSON property `imageLink`
        # @return [String]
        attr_accessor :image_link
      
        # Shared identifier for all variants of the same product. Optional.
        # Corresponds to the JSON property `itemGroupId`
        # @return [String]
        attr_accessor :item_group_id
      
        # Manufacturer Part Number (MPN) of the item. Optional.
        # Corresponds to the JSON property `mpn`
        # @return [String]
        attr_accessor :mpn
      
        # An identifier of the item.
        # Corresponds to the JSON property `offerId`
        # @return [String]
        attr_accessor :offer_id
      
        # The price for the product. Tax is automatically calculated for MFL orders. For
        # non-MFL orders, tax settings from Merchant Center are applied.
        # Corresponds to the JSON property `price`
        # @return [Google::Apis::ContentV2_1::Price]
        attr_accessor :price
      
        # The CLDR territory code of the target country of the product.
        # Corresponds to the JSON property `targetCountry`
        # @return [String]
        attr_accessor :target_country
      
        # The title of the product.
        # Corresponds to the JSON property `title`
        # @return [String]
        attr_accessor :title
      
        # Variant attributes for the item. Optional.
        # Corresponds to the JSON property `variantAttributes`
        # @return [Array<Google::Apis::ContentV2_1::OrderLineItemProductVariantAttribute>]
        attr_accessor :variant_attributes
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @brand = args[:brand] if args.key?(:brand)
          @condition = args[:condition] if args.key?(:condition)
          @content_language = args[:content_language] if args.key?(:content_language)
          @fees = args[:fees] if args.key?(:fees)
          @gtin = args[:gtin] if args.key?(:gtin)
          @image_link = args[:image_link] if args.key?(:image_link)
          @item_group_id = args[:item_group_id] if args.key?(:item_group_id)
          @mpn = args[:mpn] if args.key?(:mpn)
          @offer_id = args[:offer_id] if args.key?(:offer_id)
          @price = args[:price] if args.key?(:price)
          @target_country = args[:target_country] if args.key?(:target_country)
          @title = args[:title] if args.key?(:title)
          @variant_attributes = args[:variant_attributes] if args.key?(:variant_attributes)
        end
      end
      
      # 
      class TransitTable
        include Google::Apis::Core::Hashable
      
        # A list of postal group names. The last value can be "all other locations".
        # Example: ["zone 1", "zone 2", "all other locations"]. The referred postal code
        # groups must match the delivery country of the service.
        # Corresponds to the JSON property `postalCodeGroupNames`
        # @return [Array<String>]
        attr_accessor :postal_code_group_names
      
        # 
        # Corresponds to the JSON property `rows`
        # @return [Array<Google::Apis::ContentV2_1::TransitTableTransitTimeRow>]
        attr_accessor :rows
      
        # A list of transit time labels. The last value can be "all other labels".
        # Example: ["food", "electronics", "all other labels"].
        # Corresponds to the JSON property `transitTimeLabels`
        # @return [Array<String>]
        attr_accessor :transit_time_labels
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @postal_code_group_names = args[:postal_code_group_names] if args.key?(:postal_code_group_names)
          @rows = args[:rows] if args.key?(:rows)
          @transit_time_labels = args[:transit_time_labels] if args.key?(:transit_time_labels)
        end
      end
      
      # 
      class TransitTableTransitTimeRow
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `values`
        # @return [Array<Google::Apis::ContentV2_1::TransitTableTransitTimeRowTransitTimeValue>]
        attr_accessor :values
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @values = args[:values] if args.key?(:values)
        end
      end
      
      # 
      class TransitTableTransitTimeRowTransitTimeValue
        include Google::Apis::Core::Hashable
      
        # Must be greater than or equal to minTransitTimeInDays.
        # Corresponds to the JSON property `maxTransitTimeInDays`
        # @return [Fixnum]
        attr_accessor :max_transit_time_in_days
      
        # Transit time range (min-max) in business days. 0 means same day delivery, 1
        # means next day delivery.
        # Corresponds to the JSON property `minTransitTimeInDays`
        # @return [Fixnum]
        attr_accessor :min_transit_time_in_days
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @max_transit_time_in_days = args[:max_transit_time_in_days] if args.key?(:max_transit_time_in_days)
          @min_transit_time_in_days = args[:min_transit_time_in_days] if args.key?(:min_transit_time_in_days)
        end
      end
      
      # 
      class UnitInvoice
        include Google::Apis::Core::Hashable
      
        # Additional charges for a unit, e.g. shipping costs.
        # Corresponds to the JSON property `additionalCharges`
        # @return [Array<Google::Apis::ContentV2_1::UnitInvoiceAdditionalCharge>]
        attr_accessor :additional_charges
      
        # [required] Pre-tax or post-tax price of the unit depending on the locality of
        # the order.
        # Corresponds to the JSON property `unitPrice`
        # @return [Google::Apis::ContentV2_1::Price]
        attr_accessor :unit_price
      
        # Tax amounts to apply to the unit price.
        # Corresponds to the JSON property `unitPriceTaxes`
        # @return [Array<Google::Apis::ContentV2_1::UnitInvoiceTaxLine>]
        attr_accessor :unit_price_taxes
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @additional_charges = args[:additional_charges] if args.key?(:additional_charges)
          @unit_price = args[:unit_price] if args.key?(:unit_price)
          @unit_price_taxes = args[:unit_price_taxes] if args.key?(:unit_price_taxes)
        end
      end
      
      # 
      class UnitInvoiceAdditionalCharge
        include Google::Apis::Core::Hashable
      
        # [required] Amount of the additional charge.
        # Corresponds to the JSON property `additionalChargeAmount`
        # @return [Google::Apis::ContentV2_1::Amount]
        attr_accessor :additional_charge_amount
      
        # [required] Type of the additional charge.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @additional_charge_amount = args[:additional_charge_amount] if args.key?(:additional_charge_amount)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # 
      class UnitInvoiceTaxLine
        include Google::Apis::Core::Hashable
      
        # [required] Tax amount for the tax type.
        # Corresponds to the JSON property `taxAmount`
        # @return [Google::Apis::ContentV2_1::Price]
        attr_accessor :tax_amount
      
        # Optional name of the tax type. This should only be provided if taxType is
        # otherFeeTax.
        # Corresponds to the JSON property `taxName`
        # @return [String]
        attr_accessor :tax_name
      
        # [required] Type of the tax.
        # Corresponds to the JSON property `taxType`
        # @return [String]
        attr_accessor :tax_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @tax_amount = args[:tax_amount] if args.key?(:tax_amount)
          @tax_name = args[:tax_name] if args.key?(:tax_name)
          @tax_type = args[:tax_type] if args.key?(:tax_type)
        end
      end
      
      # The single value of a rate group or the value of a rate group table's cell.
      # Exactly one of noShipping, flatRate, pricePercentage, carrierRateName,
      # subtableName must be set.
      class Value
        include Google::Apis::Core::Hashable
      
        # The name of a carrier rate referring to a carrier rate defined in the same
        # rate group. Can only be set if all other fields are not set.
        # Corresponds to the JSON property `carrierRateName`
        # @return [String]
        attr_accessor :carrier_rate_name
      
        # A flat rate. Can only be set if all other fields are not set.
        # Corresponds to the JSON property `flatRate`
        # @return [Google::Apis::ContentV2_1::Price]
        attr_accessor :flat_rate
      
        # If true, then the product can't ship. Must be true when set, can only be set
        # if all other fields are not set.
        # Corresponds to the JSON property `noShipping`
        # @return [Boolean]
        attr_accessor :no_shipping
        alias_method :no_shipping?, :no_shipping
      
        # A percentage of the price represented as a number in decimal notation (e.g., "
        # 5.4"). Can only be set if all other fields are not set.
        # Corresponds to the JSON property `pricePercentage`
        # @return [String]
        attr_accessor :price_percentage
      
        # The name of a subtable. Can only be set in table cells (i.e., not for single
        # values), and only if all other fields are not set.
        # Corresponds to the JSON property `subtableName`
        # @return [String]
        attr_accessor :subtable_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @carrier_rate_name = args[:carrier_rate_name] if args.key?(:carrier_rate_name)
          @flat_rate = args[:flat_rate] if args.key?(:flat_rate)
          @no_shipping = args[:no_shipping] if args.key?(:no_shipping)
          @price_percentage = args[:price_percentage] if args.key?(:price_percentage)
          @subtable_name = args[:subtable_name] if args.key?(:subtable_name)
        end
      end
      
      # 
      class Weight
        include Google::Apis::Core::Hashable
      
        # The weight unit.
        # Corresponds to the JSON property `unit`
        # @return [String]
        attr_accessor :unit
      
        # The weight represented as a number.
        # Corresponds to the JSON property `value`
        # @return [String]
        attr_accessor :value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @unit = args[:unit] if args.key?(:unit)
          @value = args[:value] if args.key?(:value)
        end
      end
    end
  end
end
