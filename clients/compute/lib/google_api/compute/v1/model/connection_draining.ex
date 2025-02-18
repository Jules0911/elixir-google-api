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

defmodule GoogleApi.Compute.V1.Model.ConnectionDraining do
  @moduledoc """
  Message containing connection draining configuration.

  ## Attributes

  *   `drainingTimeoutSec` (*type:* `integer()`, *default:* `nil`) - The amount of time in seconds to allow existing connections to persist while on unhealthy backend VMs. Only applicable if the protocol is not UDP. The valid range is [0, 3600].
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :drainingTimeoutSec => integer()
        }

  field(:drainingTimeoutSec)
end

defimpl Poison.Decoder, for: GoogleApi.Compute.V1.Model.ConnectionDraining do
  def decode(value, options) do
    GoogleApi.Compute.V1.Model.ConnectionDraining.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Compute.V1.Model.ConnectionDraining do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
