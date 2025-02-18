# Copyright 2019 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the &quot;License&quot;);
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an &quot;AS IS&quot; BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# NOTE: This class is auto generated by the elixir code generator program.
# Do not edit the class manually.

defmodule GoogleApi.CloudBilling.V1.Api.BillingAccounts do
  @moduledoc """
  API calls for all endpoints tagged `BillingAccounts`.
  """

  alias GoogleApi.CloudBilling.V1.Connection
  alias GoogleApi.Gax.{Request, Response}

  @doc """
  Creates a billing account.
  This method can only be used to create
  [billing subaccounts](https://cloud.google.com/billing/docs/concepts)
  by GCP resellers.
  When creating a subaccount, the current authenticated user must have the
  `billing.accounts.update` IAM permission on the master account, which is
  typically given to billing account
  [administrators](https://cloud.google.com/billing/docs/how-to/billing-access).
  This method will return an error if the master account has not been
  provisioned as a reseller account.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.CloudBilling.V1.Connection.t`) - Connection to server
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:"$.xgafv"` (*type:* `String.t`) - V1 error format.
      *   `:access_token` (*type:* `String.t`) - OAuth access token.
      *   `:alt` (*type:* `String.t`) - Data format for response.
      *   `:callback` (*type:* `String.t`) - JSONP
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:oauth_token` (*type:* `String.t`) - OAuth 2.0 token for the current user.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.
      *   `:uploadType` (*type:* `String.t`) - Legacy upload protocol for media (e.g. "media", "multipart").
      *   `:upload_protocol` (*type:* `String.t`) - Upload protocol for media (e.g. "raw", "multipart").
      *   `:body` (*type:* `GoogleApi.CloudBilling.V1.Model.BillingAccount.t`) - 
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.CloudBilling.V1.Model.BillingAccount{}}` on success
  *   `{:error, info}` on failure
  """
  @spec cloudbilling_billing_accounts_create(Tesla.Env.client(), keyword(), keyword()) ::
          {:ok, GoogleApi.CloudBilling.V1.Model.BillingAccount.t()} | {:error, Tesla.Env.t()}
  def cloudbilling_billing_accounts_create(connection, optional_params \\ [], opts \\ []) do
    optional_params_config = %{
      :"$.xgafv" => :query,
      :access_token => :query,
      :alt => :query,
      :callback => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :uploadType => :query,
      :upload_protocol => :query,
      :body => :body
    }

    request =
      Request.new()
      |> Request.method(:post)
      |> Request.url("/v1/billingAccounts", %{})
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.CloudBilling.V1.Model.BillingAccount{}])
  end

  @doc """
  Gets information about a billing account. The current authenticated user
  must be a [viewer of the billing
  account](https://cloud.google.com/billing/docs/how-to/billing-access).

  ## Parameters

  *   `connection` (*type:* `GoogleApi.CloudBilling.V1.Connection.t`) - Connection to server
  *   `name` (*type:* `String.t`) - The resource name of the billing account to retrieve. For example,
      `billingAccounts/012345-567890-ABCDEF`.
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:"$.xgafv"` (*type:* `String.t`) - V1 error format.
      *   `:access_token` (*type:* `String.t`) - OAuth access token.
      *   `:alt` (*type:* `String.t`) - Data format for response.
      *   `:callback` (*type:* `String.t`) - JSONP
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:oauth_token` (*type:* `String.t`) - OAuth 2.0 token for the current user.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.
      *   `:uploadType` (*type:* `String.t`) - Legacy upload protocol for media (e.g. "media", "multipart").
      *   `:upload_protocol` (*type:* `String.t`) - Upload protocol for media (e.g. "raw", "multipart").
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.CloudBilling.V1.Model.BillingAccount{}}` on success
  *   `{:error, info}` on failure
  """
  @spec cloudbilling_billing_accounts_get(Tesla.Env.client(), String.t(), keyword(), keyword()) ::
          {:ok, GoogleApi.CloudBilling.V1.Model.BillingAccount.t()} | {:error, Tesla.Env.t()}
  def cloudbilling_billing_accounts_get(connection, name, optional_params \\ [], opts \\ []) do
    optional_params_config = %{
      :"$.xgafv" => :query,
      :access_token => :query,
      :alt => :query,
      :callback => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :uploadType => :query,
      :upload_protocol => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/v1/{+name}", %{
        "name" => URI.encode(name, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.CloudBilling.V1.Model.BillingAccount{}])
  end

  @doc """
  Gets the access control policy for a billing account.
  The caller must have the `billing.accounts.getIamPolicy` permission on the
  account, which is often given to billing account
  [viewers](https://cloud.google.com/billing/docs/how-to/billing-access).

  ## Parameters

  *   `connection` (*type:* `GoogleApi.CloudBilling.V1.Connection.t`) - Connection to server
  *   `resource` (*type:* `String.t`) - REQUIRED: The resource for which the policy is being requested.
      See the operation documentation for the appropriate value for this field.
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:"$.xgafv"` (*type:* `String.t`) - V1 error format.
      *   `:access_token` (*type:* `String.t`) - OAuth access token.
      *   `:alt` (*type:* `String.t`) - Data format for response.
      *   `:callback` (*type:* `String.t`) - JSONP
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:oauth_token` (*type:* `String.t`) - OAuth 2.0 token for the current user.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.
      *   `:uploadType` (*type:* `String.t`) - Legacy upload protocol for media (e.g. "media", "multipart").
      *   `:upload_protocol` (*type:* `String.t`) - Upload protocol for media (e.g. "raw", "multipart").
      *   `:"options.requestedPolicyVersion"` (*type:* `integer()`) - Optional. The policy format version to be returned.
          Acceptable values are 0 and 1.
          If the value is 0, or the field is omitted, policy format version 1 will be
          returned.
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.CloudBilling.V1.Model.Policy{}}` on success
  *   `{:error, info}` on failure
  """
  @spec cloudbilling_billing_accounts_get_iam_policy(
          Tesla.Env.client(),
          String.t(),
          keyword(),
          keyword()
        ) :: {:ok, GoogleApi.CloudBilling.V1.Model.Policy.t()} | {:error, Tesla.Env.t()}
  def cloudbilling_billing_accounts_get_iam_policy(
        connection,
        resource,
        optional_params \\ [],
        opts \\ []
      ) do
    optional_params_config = %{
      :"$.xgafv" => :query,
      :access_token => :query,
      :alt => :query,
      :callback => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :uploadType => :query,
      :upload_protocol => :query,
      :"options.requestedPolicyVersion" => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/v1/{+resource}:getIamPolicy", %{
        "resource" => URI.encode(resource, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.CloudBilling.V1.Model.Policy{}])
  end

  @doc """
  Lists the billing accounts that the current authenticated user has
  permission to
  [view](https://cloud.google.com/billing/docs/how-to/billing-access).

  ## Parameters

  *   `connection` (*type:* `GoogleApi.CloudBilling.V1.Connection.t`) - Connection to server
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:"$.xgafv"` (*type:* `String.t`) - V1 error format.
      *   `:access_token` (*type:* `String.t`) - OAuth access token.
      *   `:alt` (*type:* `String.t`) - Data format for response.
      *   `:callback` (*type:* `String.t`) - JSONP
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:oauth_token` (*type:* `String.t`) - OAuth 2.0 token for the current user.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.
      *   `:uploadType` (*type:* `String.t`) - Legacy upload protocol for media (e.g. "media", "multipart").
      *   `:upload_protocol` (*type:* `String.t`) - Upload protocol for media (e.g. "raw", "multipart").
      *   `:filter` (*type:* `String.t`) - Options for how to filter the returned billing accounts.
          Currently this only supports filtering for
          [subaccounts](https://cloud.google.com/billing/docs/concepts) under a
          single provided reseller billing account.
          (e.g. "master_billing_account=billingAccounts/012345-678901-ABCDEF").
          Boolean algebra and other fields are not currently supported.
      *   `:pageSize` (*type:* `integer()`) - Requested page size. The maximum page size is 100; this is also the
          default.
      *   `:pageToken` (*type:* `String.t`) - A token identifying a page of results to return. This should be a
          `next_page_token` value returned from a previous `ListBillingAccounts`
          call. If unspecified, the first page of results is returned.
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.CloudBilling.V1.Model.ListBillingAccountsResponse{}}` on success
  *   `{:error, info}` on failure
  """
  @spec cloudbilling_billing_accounts_list(Tesla.Env.client(), keyword(), keyword()) ::
          {:ok, GoogleApi.CloudBilling.V1.Model.ListBillingAccountsResponse.t()}
          | {:error, Tesla.Env.t()}
  def cloudbilling_billing_accounts_list(connection, optional_params \\ [], opts \\ []) do
    optional_params_config = %{
      :"$.xgafv" => :query,
      :access_token => :query,
      :alt => :query,
      :callback => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :uploadType => :query,
      :upload_protocol => :query,
      :filter => :query,
      :pageSize => :query,
      :pageToken => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/v1/billingAccounts", %{})
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(
      opts ++ [struct: %GoogleApi.CloudBilling.V1.Model.ListBillingAccountsResponse{}]
    )
  end

  @doc """
  Updates a billing account's fields.
  Currently the only field that can be edited is `display_name`.
  The current authenticated user must have the `billing.accounts.update`
  IAM permission, which is typically given to the
  [administrator](https://cloud.google.com/billing/docs/how-to/billing-access)
  of the billing account.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.CloudBilling.V1.Connection.t`) - Connection to server
  *   `name` (*type:* `String.t`) - The name of the billing account resource to be updated.
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:"$.xgafv"` (*type:* `String.t`) - V1 error format.
      *   `:access_token` (*type:* `String.t`) - OAuth access token.
      *   `:alt` (*type:* `String.t`) - Data format for response.
      *   `:callback` (*type:* `String.t`) - JSONP
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:oauth_token` (*type:* `String.t`) - OAuth 2.0 token for the current user.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.
      *   `:uploadType` (*type:* `String.t`) - Legacy upload protocol for media (e.g. "media", "multipart").
      *   `:upload_protocol` (*type:* `String.t`) - Upload protocol for media (e.g. "raw", "multipart").
      *   `:updateMask` (*type:* `String.t`) - The update mask applied to the resource.
          Only "display_name" is currently supported.
      *   `:body` (*type:* `GoogleApi.CloudBilling.V1.Model.BillingAccount.t`) - 
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.CloudBilling.V1.Model.BillingAccount{}}` on success
  *   `{:error, info}` on failure
  """
  @spec cloudbilling_billing_accounts_patch(Tesla.Env.client(), String.t(), keyword(), keyword()) ::
          {:ok, GoogleApi.CloudBilling.V1.Model.BillingAccount.t()} | {:error, Tesla.Env.t()}
  def cloudbilling_billing_accounts_patch(connection, name, optional_params \\ [], opts \\ []) do
    optional_params_config = %{
      :"$.xgafv" => :query,
      :access_token => :query,
      :alt => :query,
      :callback => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :uploadType => :query,
      :upload_protocol => :query,
      :updateMask => :query,
      :body => :body
    }

    request =
      Request.new()
      |> Request.method(:patch)
      |> Request.url("/v1/{+name}", %{
        "name" => URI.encode(name, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.CloudBilling.V1.Model.BillingAccount{}])
  end

  @doc """
  Sets the access control policy for a billing account. Replaces any existing
  policy.
  The caller must have the `billing.accounts.setIamPolicy` permission on the
  account, which is often given to billing account
  [administrators](https://cloud.google.com/billing/docs/how-to/billing-access).

  ## Parameters

  *   `connection` (*type:* `GoogleApi.CloudBilling.V1.Connection.t`) - Connection to server
  *   `resource` (*type:* `String.t`) - REQUIRED: The resource for which the policy is being specified.
      See the operation documentation for the appropriate value for this field.
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:"$.xgafv"` (*type:* `String.t`) - V1 error format.
      *   `:access_token` (*type:* `String.t`) - OAuth access token.
      *   `:alt` (*type:* `String.t`) - Data format for response.
      *   `:callback` (*type:* `String.t`) - JSONP
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:oauth_token` (*type:* `String.t`) - OAuth 2.0 token for the current user.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.
      *   `:uploadType` (*type:* `String.t`) - Legacy upload protocol for media (e.g. "media", "multipart").
      *   `:upload_protocol` (*type:* `String.t`) - Upload protocol for media (e.g. "raw", "multipart").
      *   `:body` (*type:* `GoogleApi.CloudBilling.V1.Model.SetIamPolicyRequest.t`) - 
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.CloudBilling.V1.Model.Policy{}}` on success
  *   `{:error, info}` on failure
  """
  @spec cloudbilling_billing_accounts_set_iam_policy(
          Tesla.Env.client(),
          String.t(),
          keyword(),
          keyword()
        ) :: {:ok, GoogleApi.CloudBilling.V1.Model.Policy.t()} | {:error, Tesla.Env.t()}
  def cloudbilling_billing_accounts_set_iam_policy(
        connection,
        resource,
        optional_params \\ [],
        opts \\ []
      ) do
    optional_params_config = %{
      :"$.xgafv" => :query,
      :access_token => :query,
      :alt => :query,
      :callback => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :uploadType => :query,
      :upload_protocol => :query,
      :body => :body
    }

    request =
      Request.new()
      |> Request.method(:post)
      |> Request.url("/v1/{+resource}:setIamPolicy", %{
        "resource" => URI.encode(resource, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.CloudBilling.V1.Model.Policy{}])
  end

  @doc """
  Tests the access control policy for a billing account. This method takes
  the resource and a set of permissions as input and returns the subset of
  the input permissions that the caller is allowed for that resource.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.CloudBilling.V1.Connection.t`) - Connection to server
  *   `resource` (*type:* `String.t`) - REQUIRED: The resource for which the policy detail is being requested.
      See the operation documentation for the appropriate value for this field.
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:"$.xgafv"` (*type:* `String.t`) - V1 error format.
      *   `:access_token` (*type:* `String.t`) - OAuth access token.
      *   `:alt` (*type:* `String.t`) - Data format for response.
      *   `:callback` (*type:* `String.t`) - JSONP
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:oauth_token` (*type:* `String.t`) - OAuth 2.0 token for the current user.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.
      *   `:uploadType` (*type:* `String.t`) - Legacy upload protocol for media (e.g. "media", "multipart").
      *   `:upload_protocol` (*type:* `String.t`) - Upload protocol for media (e.g. "raw", "multipart").
      *   `:body` (*type:* `GoogleApi.CloudBilling.V1.Model.TestIamPermissionsRequest.t`) - 
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.CloudBilling.V1.Model.TestIamPermissionsResponse{}}` on success
  *   `{:error, info}` on failure
  """
  @spec cloudbilling_billing_accounts_test_iam_permissions(
          Tesla.Env.client(),
          String.t(),
          keyword(),
          keyword()
        ) ::
          {:ok, GoogleApi.CloudBilling.V1.Model.TestIamPermissionsResponse.t()}
          | {:error, Tesla.Env.t()}
  def cloudbilling_billing_accounts_test_iam_permissions(
        connection,
        resource,
        optional_params \\ [],
        opts \\ []
      ) do
    optional_params_config = %{
      :"$.xgafv" => :query,
      :access_token => :query,
      :alt => :query,
      :callback => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :uploadType => :query,
      :upload_protocol => :query,
      :body => :body
    }

    request =
      Request.new()
      |> Request.method(:post)
      |> Request.url("/v1/{+resource}:testIamPermissions", %{
        "resource" => URI.encode(resource, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(
      opts ++ [struct: %GoogleApi.CloudBilling.V1.Model.TestIamPermissionsResponse{}]
    )
  end

  @doc """
  Lists the projects associated with a billing account. The current
  authenticated user must have the `billing.resourceAssociations.list` IAM
  permission, which is often given to billing account
  [viewers](https://cloud.google.com/billing/docs/how-to/billing-access).

  ## Parameters

  *   `connection` (*type:* `GoogleApi.CloudBilling.V1.Connection.t`) - Connection to server
  *   `name` (*type:* `String.t`) - The resource name of the billing account associated with the projects that
      you want to list. For example, `billingAccounts/012345-567890-ABCDEF`.
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:"$.xgafv"` (*type:* `String.t`) - V1 error format.
      *   `:access_token` (*type:* `String.t`) - OAuth access token.
      *   `:alt` (*type:* `String.t`) - Data format for response.
      *   `:callback` (*type:* `String.t`) - JSONP
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:oauth_token` (*type:* `String.t`) - OAuth 2.0 token for the current user.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.
      *   `:uploadType` (*type:* `String.t`) - Legacy upload protocol for media (e.g. "media", "multipart").
      *   `:upload_protocol` (*type:* `String.t`) - Upload protocol for media (e.g. "raw", "multipart").
      *   `:pageSize` (*type:* `integer()`) - Requested page size. The maximum page size is 100; this is also the
          default.
      *   `:pageToken` (*type:* `String.t`) - A token identifying a page of results to be returned. This should be a
          `next_page_token` value returned from a previous `ListProjectBillingInfo`
          call. If unspecified, the first page of results is returned.
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.CloudBilling.V1.Model.ListProjectBillingInfoResponse{}}` on success
  *   `{:error, info}` on failure
  """
  @spec cloudbilling_billing_accounts_projects_list(
          Tesla.Env.client(),
          String.t(),
          keyword(),
          keyword()
        ) ::
          {:ok, GoogleApi.CloudBilling.V1.Model.ListProjectBillingInfoResponse.t()}
          | {:error, Tesla.Env.t()}
  def cloudbilling_billing_accounts_projects_list(
        connection,
        name,
        optional_params \\ [],
        opts \\ []
      ) do
    optional_params_config = %{
      :"$.xgafv" => :query,
      :access_token => :query,
      :alt => :query,
      :callback => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :uploadType => :query,
      :upload_protocol => :query,
      :pageSize => :query,
      :pageToken => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/v1/{+name}/projects", %{
        "name" => URI.encode(name, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(
      opts ++ [struct: %GoogleApi.CloudBilling.V1.Model.ListProjectBillingInfoResponse{}]
    )
  end
end
