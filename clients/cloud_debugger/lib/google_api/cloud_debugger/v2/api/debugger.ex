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

defmodule GoogleApi.CloudDebugger.V2.Api.Debugger do
  @moduledoc """
  API calls for all endpoints tagged `Debugger`.
  """

  alias GoogleApi.CloudDebugger.V2.Connection
  alias GoogleApi.Gax.{Request, Response}

  @doc """
  Lists all the debuggees that the user has access to.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.CloudDebugger.V2.Connection.t`) - Connection to server
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
      *   `:clientVersion` (*type:* `String.t`) - The client version making the call.
          Schema: `domain/type/version` (e.g., `google.com/intellij/v1`).
      *   `:includeInactive` (*type:* `boolean()`) - When set to `true`, the result includes all debuggees. Otherwise, the
          result includes only debuggees that are active.
      *   `:project` (*type:* `String.t`) - Project number of a Google Cloud project whose debuggees to list.
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.CloudDebugger.V2.Model.ListDebuggeesResponse{}}` on success
  *   `{:error, info}` on failure
  """
  @spec clouddebugger_debugger_debuggees_list(Tesla.Env.client(), keyword(), keyword()) ::
          {:ok, GoogleApi.CloudDebugger.V2.Model.ListDebuggeesResponse.t()}
          | {:error, Tesla.Env.t()}
  def clouddebugger_debugger_debuggees_list(connection, optional_params \\ [], opts \\ []) do
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
      :clientVersion => :query,
      :includeInactive => :query,
      :project => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/v2/debugger/debuggees", %{})
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(
      opts ++ [struct: %GoogleApi.CloudDebugger.V2.Model.ListDebuggeesResponse{}]
    )
  end

  @doc """
  Deletes the breakpoint from the debuggee.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.CloudDebugger.V2.Connection.t`) - Connection to server
  *   `debuggee_id` (*type:* `String.t`) - ID of the debuggee whose breakpoint to delete.
  *   `breakpoint_id` (*type:* `String.t`) - ID of the breakpoint to delete.
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
      *   `:clientVersion` (*type:* `String.t`) - The client version making the call.
          Schema: `domain/type/version` (e.g., `google.com/intellij/v1`).
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.CloudDebugger.V2.Model.Empty{}}` on success
  *   `{:error, info}` on failure
  """
  @spec clouddebugger_debugger_debuggees_breakpoints_delete(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          keyword(),
          keyword()
        ) :: {:ok, GoogleApi.CloudDebugger.V2.Model.Empty.t()} | {:error, Tesla.Env.t()}
  def clouddebugger_debugger_debuggees_breakpoints_delete(
        connection,
        debuggee_id,
        breakpoint_id,
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
      :clientVersion => :query
    }

    request =
      Request.new()
      |> Request.method(:delete)
      |> Request.url("/v2/debugger/debuggees/{debuggeeId}/breakpoints/{breakpointId}", %{
        "debuggeeId" => URI.encode(debuggee_id, &URI.char_unreserved?/1),
        "breakpointId" => URI.encode(breakpoint_id, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.CloudDebugger.V2.Model.Empty{}])
  end

  @doc """
  Gets breakpoint information.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.CloudDebugger.V2.Connection.t`) - Connection to server
  *   `debuggee_id` (*type:* `String.t`) - ID of the debuggee whose breakpoint to get.
  *   `breakpoint_id` (*type:* `String.t`) - ID of the breakpoint to get.
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
      *   `:clientVersion` (*type:* `String.t`) - The client version making the call.
          Schema: `domain/type/version` (e.g., `google.com/intellij/v1`).
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.CloudDebugger.V2.Model.GetBreakpointResponse{}}` on success
  *   `{:error, info}` on failure
  """
  @spec clouddebugger_debugger_debuggees_breakpoints_get(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          keyword(),
          keyword()
        ) ::
          {:ok, GoogleApi.CloudDebugger.V2.Model.GetBreakpointResponse.t()}
          | {:error, Tesla.Env.t()}
  def clouddebugger_debugger_debuggees_breakpoints_get(
        connection,
        debuggee_id,
        breakpoint_id,
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
      :clientVersion => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/v2/debugger/debuggees/{debuggeeId}/breakpoints/{breakpointId}", %{
        "debuggeeId" => URI.encode(debuggee_id, &URI.char_unreserved?/1),
        "breakpointId" => URI.encode(breakpoint_id, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(
      opts ++ [struct: %GoogleApi.CloudDebugger.V2.Model.GetBreakpointResponse{}]
    )
  end

  @doc """
  Lists all breakpoints for the debuggee.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.CloudDebugger.V2.Connection.t`) - Connection to server
  *   `debuggee_id` (*type:* `String.t`) - ID of the debuggee whose breakpoints to list.
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
      *   `:"action.value"` (*type:* `String.t`) - Only breakpoints with the specified action will pass the filter.
      *   `:clientVersion` (*type:* `String.t`) - The client version making the call.
          Schema: `domain/type/version` (e.g., `google.com/intellij/v1`).
      *   `:includeAllUsers` (*type:* `boolean()`) - When set to `true`, the response includes the list of breakpoints set by
          any user. Otherwise, it includes only breakpoints set by the caller.
      *   `:includeInactive` (*type:* `boolean()`) - When set to `true`, the response includes active and inactive
          breakpoints. Otherwise, it includes only active breakpoints.
      *   `:stripResults` (*type:* `boolean()`) - This field is deprecated. The following fields are always stripped out of
          the result: `stack_frames`, `evaluated_expressions` and `variable_table`.
      *   `:waitToken` (*type:* `String.t`) - A wait token that, if specified, blocks the call until the breakpoints
          list has changed, or a server selected timeout has expired.  The value
          should be set from the last response. The error code
          `google.rpc.Code.ABORTED` (RPC) is returned on wait timeout, which
          should be called again with the same `wait_token`.
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.CloudDebugger.V2.Model.ListBreakpointsResponse{}}` on success
  *   `{:error, info}` on failure
  """
  @spec clouddebugger_debugger_debuggees_breakpoints_list(
          Tesla.Env.client(),
          String.t(),
          keyword(),
          keyword()
        ) ::
          {:ok, GoogleApi.CloudDebugger.V2.Model.ListBreakpointsResponse.t()}
          | {:error, Tesla.Env.t()}
  def clouddebugger_debugger_debuggees_breakpoints_list(
        connection,
        debuggee_id,
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
      :"action.value" => :query,
      :clientVersion => :query,
      :includeAllUsers => :query,
      :includeInactive => :query,
      :stripResults => :query,
      :waitToken => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/v2/debugger/debuggees/{debuggeeId}/breakpoints", %{
        "debuggeeId" => URI.encode(debuggee_id, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(
      opts ++ [struct: %GoogleApi.CloudDebugger.V2.Model.ListBreakpointsResponse{}]
    )
  end

  @doc """
  Sets the breakpoint to the debuggee.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.CloudDebugger.V2.Connection.t`) - Connection to server
  *   `debuggee_id` (*type:* `String.t`) - ID of the debuggee where the breakpoint is to be set.
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
      *   `:clientVersion` (*type:* `String.t`) - The client version making the call.
          Schema: `domain/type/version` (e.g., `google.com/intellij/v1`).
      *   `:body` (*type:* `GoogleApi.CloudDebugger.V2.Model.Breakpoint.t`) - 
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.CloudDebugger.V2.Model.SetBreakpointResponse{}}` on success
  *   `{:error, info}` on failure
  """
  @spec clouddebugger_debugger_debuggees_breakpoints_set(
          Tesla.Env.client(),
          String.t(),
          keyword(),
          keyword()
        ) ::
          {:ok, GoogleApi.CloudDebugger.V2.Model.SetBreakpointResponse.t()}
          | {:error, Tesla.Env.t()}
  def clouddebugger_debugger_debuggees_breakpoints_set(
        connection,
        debuggee_id,
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
      :clientVersion => :query,
      :body => :body
    }

    request =
      Request.new()
      |> Request.method(:post)
      |> Request.url("/v2/debugger/debuggees/{debuggeeId}/breakpoints/set", %{
        "debuggeeId" => URI.encode(debuggee_id, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(
      opts ++ [struct: %GoogleApi.CloudDebugger.V2.Model.SetBreakpointResponse{}]
    )
  end
end
