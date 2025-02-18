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

defmodule GoogleApi.IAM.V1.Api.Organizations do
  @moduledoc """
  API calls for all endpoints tagged `Organizations`.
  """

  alias GoogleApi.IAM.V1.Connection
  alias GoogleApi.Gax.{Request, Response}

  @doc """
  Creates a new Role.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.IAM.V1.Connection.t`) - Connection to server
  *   `organizations_id` (*type:* `String.t`) - Part of `parent`. The `parent` parameter's value depends on the target resource for the
      request, namely
      [`projects`](/iam/reference/rest/v1/projects.roles) or
      [`organizations`](/iam/reference/rest/v1/organizations.roles). Each
      resource type's `parent` value format is described below:

      * [`projects.roles.create()`](/iam/reference/rest/v1/projects.roles/create):
        `projects/{PROJECT_ID}`. This method creates project-level
        [custom roles](/iam/docs/understanding-custom-roles).
        Example request URL:
        `https://iam.googleapis.com/v1/projects/{PROJECT_ID}/roles`

      * [`organizations.roles.create()`](/iam/reference/rest/v1/organizations.roles/create):
        `organizations/{ORGANIZATION_ID}`. This method creates organization-level
        [custom roles](/iam/docs/understanding-custom-roles). Example request
        URL:
        `https://iam.googleapis.com/v1/organizations/{ORGANIZATION_ID}/roles`

      Note: Wildcard (*) values are invalid; you must specify a complete project
      ID or organization ID.
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
      *   `:body` (*type:* `GoogleApi.IAM.V1.Model.CreateRoleRequest.t`) - 
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.IAM.V1.Model.Role{}}` on success
  *   `{:error, info}` on failure
  """
  @spec iam_organizations_roles_create(Tesla.Env.client(), String.t(), keyword(), keyword()) ::
          {:ok, GoogleApi.IAM.V1.Model.Role.t()} | {:error, Tesla.Env.t()}
  def iam_organizations_roles_create(
        connection,
        organizations_id,
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
      |> Request.url("/v1/organizations/{organizationsId}/roles", %{
        "organizationsId" => URI.encode(organizations_id, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.IAM.V1.Model.Role{}])
  end

  @doc """
  Soft deletes a role. The role is suspended and cannot be used to create new
  IAM Policy Bindings.
  The Role will not be included in `ListRoles()` unless `show_deleted` is set
  in the `ListRolesRequest`. The Role contains the deleted boolean set.
  Existing Bindings remains, but are inactive. The Role can be undeleted
  within 7 days. After 7 days the Role is deleted and all Bindings associated
  with the role are removed.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.IAM.V1.Connection.t`) - Connection to server
  *   `organizations_id` (*type:* `String.t`) - Part of `name`. The `name` parameter's value depends on the target resource for the
      request, namely
      [`projects`](/iam/reference/rest/v1/projects.roles) or
      [`organizations`](/iam/reference/rest/v1/organizations.roles). Each
      resource type's `name` value format is described below:

      * [`projects.roles.delete()`](/iam/reference/rest/v1/projects.roles/delete):
        `projects/{PROJECT_ID}/roles/{CUSTOM_ROLE_ID}`. This method deletes only
        [custom roles](/iam/docs/understanding-custom-roles) that have been
        created at the project level. Example request URL:
        `https://iam.googleapis.com/v1/projects/{PROJECT_ID}/roles/{CUSTOM_ROLE_ID}`

      * [`organizations.roles.delete()`](/iam/reference/rest/v1/organizations.roles/delete):
        `organizations/{ORGANIZATION_ID}/roles/{CUSTOM_ROLE_ID}`. This method
        deletes only [custom roles](/iam/docs/understanding-custom-roles) that
        have been created at the organization level. Example request URL:
        `https://iam.googleapis.com/v1/organizations/{ORGANIZATION_ID}/roles/{CUSTOM_ROLE_ID}`

      Note: Wildcard (*) values are invalid; you must specify a complete project
      ID or organization ID.
  *   `roles_id` (*type:* `String.t`) - Part of `name`. See documentation of `organizationsId`.
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
      *   `:etag` (*type:* `String.t`) - Used to perform a consistent read-modify-write.
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.IAM.V1.Model.Role{}}` on success
  *   `{:error, info}` on failure
  """
  @spec iam_organizations_roles_delete(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          keyword(),
          keyword()
        ) :: {:ok, GoogleApi.IAM.V1.Model.Role.t()} | {:error, Tesla.Env.t()}
  def iam_organizations_roles_delete(
        connection,
        organizations_id,
        roles_id,
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
      :etag => :query
    }

    request =
      Request.new()
      |> Request.method(:delete)
      |> Request.url("/v1/organizations/{organizationsId}/roles/{rolesId}", %{
        "organizationsId" => URI.encode(organizations_id, &URI.char_unreserved?/1),
        "rolesId" => URI.encode(roles_id, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.IAM.V1.Model.Role{}])
  end

  @doc """
  Gets a Role definition.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.IAM.V1.Connection.t`) - Connection to server
  *   `organizations_id` (*type:* `String.t`) - Part of `name`. The `name` parameter's value depends on the target resource for the
      request, namely
      [`roles`](/iam/reference/rest/v1/roles),
      [`projects`](/iam/reference/rest/v1/projects.roles), or
      [`organizations`](/iam/reference/rest/v1/organizations.roles). Each
      resource type's `name` value format is described below:

      * [`roles.get()`](/iam/reference/rest/v1/roles/get): `roles/{ROLE_NAME}`.
        This method returns results from all
        [predefined roles](/iam/docs/understanding-roles#predefined_roles) in
        Cloud IAM. Example request URL:
        `https://iam.googleapis.com/v1/roles/{ROLE_NAME}`

      * [`projects.roles.get()`](/iam/reference/rest/v1/projects.roles/get):
        `projects/{PROJECT_ID}/roles/{CUSTOM_ROLE_ID}`. This method returns only
        [custom roles](/iam/docs/understanding-custom-roles) that have been
        created at the project level. Example request URL:
        `https://iam.googleapis.com/v1/projects/{PROJECT_ID}/roles/{CUSTOM_ROLE_ID}`

      * [`organizations.roles.get()`](/iam/reference/rest/v1/organizations.roles/get):
        `organizations/{ORGANIZATION_ID}/roles/{CUSTOM_ROLE_ID}`. This method
        returns only [custom roles](/iam/docs/understanding-custom-roles) that
        have been created at the organization level. Example request URL:
        `https://iam.googleapis.com/v1/organizations/{ORGANIZATION_ID}/roles/{CUSTOM_ROLE_ID}`

      Note: Wildcard (*) values are invalid; you must specify a complete project
      ID or organization ID.
  *   `roles_id` (*type:* `String.t`) - Part of `name`. See documentation of `organizationsId`.
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

  *   `{:ok, %GoogleApi.IAM.V1.Model.Role{}}` on success
  *   `{:error, info}` on failure
  """
  @spec iam_organizations_roles_get(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          keyword(),
          keyword()
        ) :: {:ok, GoogleApi.IAM.V1.Model.Role.t()} | {:error, Tesla.Env.t()}
  def iam_organizations_roles_get(
        connection,
        organizations_id,
        roles_id,
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
      :upload_protocol => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/v1/organizations/{organizationsId}/roles/{rolesId}", %{
        "organizationsId" => URI.encode(organizations_id, &URI.char_unreserved?/1),
        "rolesId" => URI.encode(roles_id, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.IAM.V1.Model.Role{}])
  end

  @doc """
  Lists the Roles defined on a resource.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.IAM.V1.Connection.t`) - Connection to server
  *   `organizations_id` (*type:* `String.t`) - Part of `parent`. The `parent` parameter's value depends on the target resource for the
      request, namely
      [`roles`](/iam/reference/rest/v1/roles),
      [`projects`](/iam/reference/rest/v1/projects.roles), or
      [`organizations`](/iam/reference/rest/v1/organizations.roles). Each
      resource type's `parent` value format is described below:

      * [`roles.list()`](/iam/reference/rest/v1/roles/list): An empty string.
        This method doesn't require a resource; it simply returns all
        [predefined roles](/iam/docs/understanding-roles#predefined_roles) in
        Cloud IAM. Example request URL:
        `https://iam.googleapis.com/v1/roles`

      * [`projects.roles.list()`](/iam/reference/rest/v1/projects.roles/list):
        `projects/{PROJECT_ID}`. This method lists all project-level
        [custom roles](/iam/docs/understanding-custom-roles).
        Example request URL:
        `https://iam.googleapis.com/v1/projects/{PROJECT_ID}/roles`

      * [`organizations.roles.list()`](/iam/reference/rest/v1/organizations.roles/list):
        `organizations/{ORGANIZATION_ID}`. This method lists all
        organization-level [custom roles](/iam/docs/understanding-custom-roles).
        Example request URL:
        `https://iam.googleapis.com/v1/organizations/{ORGANIZATION_ID}/roles`

      Note: Wildcard (*) values are invalid; you must specify a complete project
      ID or organization ID.
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
      *   `:pageSize` (*type:* `integer()`) - Optional limit on the number of roles to include in the response.
      *   `:pageToken` (*type:* `String.t`) - Optional pagination token returned in an earlier ListRolesResponse.
      *   `:showDeleted` (*type:* `boolean()`) - Include Roles that have been deleted.
      *   `:view` (*type:* `String.t`) - Optional view for the returned Role objects. When `FULL` is specified,
          the `includedPermissions` field is returned, which includes a list of all
          permissions in the role. The default value is `BASIC`, which does not
          return the `includedPermissions` field.
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.IAM.V1.Model.ListRolesResponse{}}` on success
  *   `{:error, info}` on failure
  """
  @spec iam_organizations_roles_list(Tesla.Env.client(), String.t(), keyword(), keyword()) ::
          {:ok, GoogleApi.IAM.V1.Model.ListRolesResponse.t()} | {:error, Tesla.Env.t()}
  def iam_organizations_roles_list(
        connection,
        organizations_id,
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
      :pageToken => :query,
      :showDeleted => :query,
      :view => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/v1/organizations/{organizationsId}/roles", %{
        "organizationsId" => URI.encode(organizations_id, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.IAM.V1.Model.ListRolesResponse{}])
  end

  @doc """
  Updates a Role definition.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.IAM.V1.Connection.t`) - Connection to server
  *   `organizations_id` (*type:* `String.t`) - Part of `name`. The `name` parameter's value depends on the target resource for the
      request, namely
      [`projects`](/iam/reference/rest/v1/projects.roles) or
      [`organizations`](/iam/reference/rest/v1/organizations.roles). Each
      resource type's `name` value format is described below:

      * [`projects.roles.patch()`](/iam/reference/rest/v1/projects.roles/patch):
        `projects/{PROJECT_ID}/roles/{CUSTOM_ROLE_ID}`. This method updates only
        [custom roles](/iam/docs/understanding-custom-roles) that have been
        created at the project level. Example request URL:
        `https://iam.googleapis.com/v1/projects/{PROJECT_ID}/roles/{CUSTOM_ROLE_ID}`

      * [`organizations.roles.patch()`](/iam/reference/rest/v1/organizations.roles/patch):
        `organizations/{ORGANIZATION_ID}/roles/{CUSTOM_ROLE_ID}`. This method
        updates only [custom roles](/iam/docs/understanding-custom-roles) that
        have been created at the organization level. Example request URL:
        `https://iam.googleapis.com/v1/organizations/{ORGANIZATION_ID}/roles/{CUSTOM_ROLE_ID}`

      Note: Wildcard (*) values are invalid; you must specify a complete project
      ID or organization ID.
  *   `roles_id` (*type:* `String.t`) - Part of `name`. See documentation of `organizationsId`.
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
      *   `:updateMask` (*type:* `String.t`) - A mask describing which fields in the Role have changed.
      *   `:body` (*type:* `GoogleApi.IAM.V1.Model.Role.t`) - 
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.IAM.V1.Model.Role{}}` on success
  *   `{:error, info}` on failure
  """
  @spec iam_organizations_roles_patch(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          keyword(),
          keyword()
        ) :: {:ok, GoogleApi.IAM.V1.Model.Role.t()} | {:error, Tesla.Env.t()}
  def iam_organizations_roles_patch(
        connection,
        organizations_id,
        roles_id,
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
      :updateMask => :query,
      :body => :body
    }

    request =
      Request.new()
      |> Request.method(:patch)
      |> Request.url("/v1/organizations/{organizationsId}/roles/{rolesId}", %{
        "organizationsId" => URI.encode(organizations_id, &URI.char_unreserved?/1),
        "rolesId" => URI.encode(roles_id, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.IAM.V1.Model.Role{}])
  end

  @doc """
  Undelete a Role, bringing it back in its previous state.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.IAM.V1.Connection.t`) - Connection to server
  *   `organizations_id` (*type:* `String.t`) - Part of `name`. The `name` parameter's value depends on the target resource for the
      request, namely
      [`projects`](/iam/reference/rest/v1/projects.roles) or
      [`organizations`](/iam/reference/rest/v1/organizations.roles). Each
      resource type's `name` value format is described below:

      * [`projects.roles.undelete()`](/iam/reference/rest/v1/projects.roles/undelete):
        `projects/{PROJECT_ID}/roles/{CUSTOM_ROLE_ID}`. This method undeletes
        only [custom roles](/iam/docs/understanding-custom-roles) that have been
        created at the project level. Example request URL:
        `https://iam.googleapis.com/v1/projects/{PROJECT_ID}/roles/{CUSTOM_ROLE_ID}`

      * [`organizations.roles.undelete()`](/iam/reference/rest/v1/organizations.roles/undelete):
        `organizations/{ORGANIZATION_ID}/roles/{CUSTOM_ROLE_ID}`. This method
        undeletes only [custom roles](/iam/docs/understanding-custom-roles) that
        have been created at the organization level. Example request URL:
        `https://iam.googleapis.com/v1/organizations/{ORGANIZATION_ID}/roles/{CUSTOM_ROLE_ID}`

      Note: Wildcard (*) values are invalid; you must specify a complete project
      ID or organization ID.
  *   `roles_id` (*type:* `String.t`) - Part of `name`. See documentation of `organizationsId`.
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
      *   `:body` (*type:* `GoogleApi.IAM.V1.Model.UndeleteRoleRequest.t`) - 
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.IAM.V1.Model.Role{}}` on success
  *   `{:error, info}` on failure
  """
  @spec iam_organizations_roles_undelete(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          keyword(),
          keyword()
        ) :: {:ok, GoogleApi.IAM.V1.Model.Role.t()} | {:error, Tesla.Env.t()}
  def iam_organizations_roles_undelete(
        connection,
        organizations_id,
        roles_id,
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
      |> Request.url("/v1/organizations/{organizationsId}/roles/{rolesId}:undelete", %{
        "organizationsId" => URI.encode(organizations_id, &URI.char_unreserved?/1),
        "rolesId" => URI.encode(roles_id, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.IAM.V1.Model.Role{}])
  end
end
