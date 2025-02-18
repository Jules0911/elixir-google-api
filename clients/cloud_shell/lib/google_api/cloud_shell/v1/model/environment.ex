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

defmodule GoogleApi.CloudShell.V1.Model.Environment do
  @moduledoc """
  A Cloud Shell environment, which is defined as the combination of a Docker
  image specifying what is installed on the environment and a home directory
  containing the user's data that will remain across sessions. Each user has a
  single environment with the ID "default".

  ## Attributes

  *   `dockerImage` (*type:* `String.t`, *default:* `nil`) - Required. Full path to the Docker image used to run this environment, e.g.
      "gcr.io/dev-con/cloud-devshell:latest".
  *   `id` (*type:* `String.t`, *default:* `nil`) - Output only. The environment's identifier, which is always "default".
  *   `name` (*type:* `String.t`, *default:* `nil`) - Output only. Full name of this resource, in the format
      `users/{owner_email}/environments/{environment_id}`. `{owner_email}` is the
      email address of the user to whom this environment belongs, and
      `{environment_id}` is the identifier of this environment. For example,
      `users/someone@example.com/environments/default`.
  *   `publicKeys` (*type:* `list(GoogleApi.CloudShell.V1.Model.PublicKey.t)`, *default:* `nil`) - Output only. Public keys associated with the environment. Clients can
      connect to this environment via SSH only if they possess a private key
      corresponding to at least one of these public keys. Keys can be added to or
      removed from the environment using the CreatePublicKey and DeletePublicKey
      methods.
  *   `sshHost` (*type:* `String.t`, *default:* `nil`) - Output only. Host to which clients can connect to initiate SSH sessions
      with the environment.
  *   `sshPort` (*type:* `integer()`, *default:* `nil`) - Output only. Port to which clients can connect to initiate SSH sessions
      with the environment.
  *   `sshUsername` (*type:* `String.t`, *default:* `nil`) - Output only. Username that clients should use when initiating SSH sessions
      with the environment.
  *   `state` (*type:* `String.t`, *default:* `nil`) - Output only. Current execution state of this environment.
  *   `webHost` (*type:* `String.t`, *default:* `nil`) - Output only. Host to which clients can connect to initiate HTTPS or WSS
      connections with the environment.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :dockerImage => String.t(),
          :id => String.t(),
          :name => String.t(),
          :publicKeys => list(GoogleApi.CloudShell.V1.Model.PublicKey.t()),
          :sshHost => String.t(),
          :sshPort => integer(),
          :sshUsername => String.t(),
          :state => String.t(),
          :webHost => String.t()
        }

  field(:dockerImage)
  field(:id)
  field(:name)
  field(:publicKeys, as: GoogleApi.CloudShell.V1.Model.PublicKey, type: :list)
  field(:sshHost)
  field(:sshPort)
  field(:sshUsername)
  field(:state)
  field(:webHost)
end

defimpl Poison.Decoder, for: GoogleApi.CloudShell.V1.Model.Environment do
  def decode(value, options) do
    GoogleApi.CloudShell.V1.Model.Environment.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CloudShell.V1.Model.Environment do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
