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

defmodule GoogleApi.Compute.V1.Model.UrlMap do
  @moduledoc """
  Represents a URL Map resource.

  A URL map resource is a component of certain types of load balancers. This resource defines mappings from host names and URL paths to either a backend service or a backend bucket.

  To use this resource, the backend service must have a loadBalancingScheme of either EXTERNAL, INTERNAL_SELF_MANAGED, or INTERNAL_MANAGED For more information, read URL Map Concepts.

  ## Attributes

  *   `creationTimestamp` (*type:* `String.t`, *default:* `nil`) - [Output Only] Creation timestamp in RFC3339 text format.
  *   `defaultService` (*type:* `String.t`, *default:* `nil`) - The full or partial URL of the defaultService resource to which traffic is directed if none of the hostRules match. If defaultRouteAction is additionally specified, advanced routing actions like URL Rewrites, etc. take effect prior to sending the request to the backend. However, if defaultService is specified, defaultRouteAction cannot contain any weightedBackendServices. Conversely, if routeAction specifies any weightedBackendServices, service must not be specified.
      Only one of defaultService, defaultUrlRedirect  or defaultRouteAction.weightedBackendService must be set.
  *   `description` (*type:* `String.t`, *default:* `nil`) - An optional description of this resource. Provide this property when you create the resource.
  *   `fingerprint` (*type:* `String.t`, *default:* `nil`) - Fingerprint of this resource. A hash of the contents stored in this object. This field is used in optimistic locking. This field will be ignored when inserting a UrlMap. An up-to-date fingerprint must be provided in order to update the UrlMap, otherwise the request will fail with error 412 conditionNotMet.

      To see the latest fingerprint, make a get() request to retrieve a UrlMap.
  *   `hostRules` (*type:* `list(GoogleApi.Compute.V1.Model.HostRule.t)`, *default:* `nil`) - The list of HostRules to use against the URL.
  *   `id` (*type:* `String.t`, *default:* `nil`) - [Output Only] The unique identifier for the resource. This identifier is defined by the server.
  *   `kind` (*type:* `String.t`, *default:* `compute#urlMap`) - [Output Only] Type of the resource. Always compute#urlMaps for url maps.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Name of the resource. Provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  *   `pathMatchers` (*type:* `list(GoogleApi.Compute.V1.Model.PathMatcher.t)`, *default:* `nil`) - The list of named PathMatchers to use against the URL.
  *   `selfLink` (*type:* `String.t`, *default:* `nil`) - [Output Only] Server-defined URL for the resource.
  *   `tests` (*type:* `list(GoogleApi.Compute.V1.Model.UrlMapTest.t)`, *default:* `nil`) - The list of expected URL mapping tests. Request to update this UrlMap will succeed only if all of the test cases pass. You can specify a maximum of 100 tests per UrlMap.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :creationTimestamp => String.t(),
          :defaultService => String.t(),
          :description => String.t(),
          :fingerprint => String.t(),
          :hostRules => list(GoogleApi.Compute.V1.Model.HostRule.t()),
          :id => String.t(),
          :kind => String.t(),
          :name => String.t(),
          :pathMatchers => list(GoogleApi.Compute.V1.Model.PathMatcher.t()),
          :selfLink => String.t(),
          :tests => list(GoogleApi.Compute.V1.Model.UrlMapTest.t())
        }

  field(:creationTimestamp)
  field(:defaultService)
  field(:description)
  field(:fingerprint)
  field(:hostRules, as: GoogleApi.Compute.V1.Model.HostRule, type: :list)
  field(:id)
  field(:kind)
  field(:name)
  field(:pathMatchers, as: GoogleApi.Compute.V1.Model.PathMatcher, type: :list)
  field(:selfLink)
  field(:tests, as: GoogleApi.Compute.V1.Model.UrlMapTest, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.Compute.V1.Model.UrlMap do
  def decode(value, options) do
    GoogleApi.Compute.V1.Model.UrlMap.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Compute.V1.Model.UrlMap do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
