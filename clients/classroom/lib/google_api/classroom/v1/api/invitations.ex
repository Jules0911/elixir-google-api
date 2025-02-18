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

defmodule GoogleApi.Classroom.V1.Api.Invitations do
  @moduledoc """
  API calls for all endpoints tagged `Invitations`.
  """

  alias GoogleApi.Classroom.V1.Connection
  alias GoogleApi.Gax.{Request, Response}

  @doc """
  Accepts an invitation, removing it and adding the invited user to the
  teachers or students (as appropriate) of the specified course. Only the
  invited user may accept an invitation.

  This method returns the following error codes:

  * `PERMISSION_DENIED` if the requesting user is not permitted to accept the
  requested invitation or for access errors.
  * `FAILED_PRECONDITION` for the following request errors:
      * CourseMemberLimitReached
      * CourseNotModifiable
      * CourseTeacherLimitReached
      * UserGroupsMembershipLimitReached
  * `NOT_FOUND` if no invitation exists with the requested ID.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.Classroom.V1.Connection.t`) - Connection to server
  *   `id` (*type:* `String.t`) - Identifier of the invitation to accept.
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

  *   `{:ok, %GoogleApi.Classroom.V1.Model.Empty{}}` on success
  *   `{:error, info}` on failure
  """
  @spec classroom_invitations_accept(Tesla.Env.client(), String.t(), keyword(), keyword()) ::
          {:ok, GoogleApi.Classroom.V1.Model.Empty.t()} | {:error, Tesla.Env.t()}
  def classroom_invitations_accept(connection, id, optional_params \\ [], opts \\ []) do
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
      |> Request.method(:post)
      |> Request.url("/v1/invitations/{id}:accept", %{
        "id" => URI.encode(id, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.Classroom.V1.Model.Empty{}])
  end

  @doc """
  Creates an invitation. Only one invitation for a user and course may exist
  at a time. Delete and re-create an invitation to make changes.

  This method returns the following error codes:

  * `PERMISSION_DENIED` if the requesting user is not permitted to create
  invitations for this course or for access errors.
  * `NOT_FOUND` if the course or the user does not exist.
  * `FAILED_PRECONDITION` if the requested user's account is disabled or if
  the user already has this role or a role with greater permissions.
  * `ALREADY_EXISTS` if an invitation for the specified user and course
  already exists.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.Classroom.V1.Connection.t`) - Connection to server
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
      *   `:body` (*type:* `GoogleApi.Classroom.V1.Model.Invitation.t`) - 
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.Classroom.V1.Model.Invitation{}}` on success
  *   `{:error, info}` on failure
  """
  @spec classroom_invitations_create(Tesla.Env.client(), keyword(), keyword()) ::
          {:ok, GoogleApi.Classroom.V1.Model.Invitation.t()} | {:error, Tesla.Env.t()}
  def classroom_invitations_create(connection, optional_params \\ [], opts \\ []) do
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
      |> Request.url("/v1/invitations", %{})
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.Classroom.V1.Model.Invitation{}])
  end

  @doc """
  Deletes an invitation.

  This method returns the following error codes:

  * `PERMISSION_DENIED` if the requesting user is not permitted to delete the
  requested invitation or for access errors.
  * `NOT_FOUND` if no invitation exists with the requested ID.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.Classroom.V1.Connection.t`) - Connection to server
  *   `id` (*type:* `String.t`) - Identifier of the invitation to delete.
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

  *   `{:ok, %GoogleApi.Classroom.V1.Model.Empty{}}` on success
  *   `{:error, info}` on failure
  """
  @spec classroom_invitations_delete(Tesla.Env.client(), String.t(), keyword(), keyword()) ::
          {:ok, GoogleApi.Classroom.V1.Model.Empty.t()} | {:error, Tesla.Env.t()}
  def classroom_invitations_delete(connection, id, optional_params \\ [], opts \\ []) do
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
      |> Request.method(:delete)
      |> Request.url("/v1/invitations/{id}", %{
        "id" => URI.encode(id, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.Classroom.V1.Model.Empty{}])
  end

  @doc """
  Returns an invitation.

  This method returns the following error codes:

  * `PERMISSION_DENIED` if the requesting user is not permitted to view the
  requested invitation or for access errors.
  * `NOT_FOUND` if no invitation exists with the requested ID.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.Classroom.V1.Connection.t`) - Connection to server
  *   `id` (*type:* `String.t`) - Identifier of the invitation to return.
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

  *   `{:ok, %GoogleApi.Classroom.V1.Model.Invitation{}}` on success
  *   `{:error, info}` on failure
  """
  @spec classroom_invitations_get(Tesla.Env.client(), String.t(), keyword(), keyword()) ::
          {:ok, GoogleApi.Classroom.V1.Model.Invitation.t()} | {:error, Tesla.Env.t()}
  def classroom_invitations_get(connection, id, optional_params \\ [], opts \\ []) do
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
      |> Request.url("/v1/invitations/{id}", %{
        "id" => URI.encode(id, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.Classroom.V1.Model.Invitation{}])
  end

  @doc """
  Returns a list of invitations that the requesting user is permitted to
  view, restricted to those that match the list request.

  *Note:* At least one of `user_id` or `course_id` must be supplied. Both
  fields can be supplied.

  This method returns the following error codes:

  * `PERMISSION_DENIED` for access errors.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.Classroom.V1.Connection.t`) - Connection to server
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
      *   `:courseId` (*type:* `String.t`) - Restricts returned invitations to those for a course with the specified
          identifier.
      *   `:pageSize` (*type:* `integer()`) - Maximum number of items to return. Zero means no maximum.

          The server may return fewer than the specified number of results.
      *   `:pageToken` (*type:* `String.t`) - nextPageToken
          value returned from a previous
          list call, indicating
          that the subsequent page of results should be returned.

          The list request must be
          otherwise identical to the one that resulted in this token.
      *   `:userId` (*type:* `String.t`) - Restricts returned invitations to those for a specific user. The identifier
          can be one of the following:

          * the numeric identifier for the user
          * the email address of the user
          * the string literal `"me"`, indicating the requesting user
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.Classroom.V1.Model.ListInvitationsResponse{}}` on success
  *   `{:error, info}` on failure
  """
  @spec classroom_invitations_list(Tesla.Env.client(), keyword(), keyword()) ::
          {:ok, GoogleApi.Classroom.V1.Model.ListInvitationsResponse.t()}
          | {:error, Tesla.Env.t()}
  def classroom_invitations_list(connection, optional_params \\ [], opts \\ []) do
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
      :courseId => :query,
      :pageSize => :query,
      :pageToken => :query,
      :userId => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/v1/invitations", %{})
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.Classroom.V1.Model.ListInvitationsResponse{}])
  end
end
