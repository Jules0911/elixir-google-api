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

defmodule GoogleApi.IdentityToolkit.V3.Model.UploadAccountResponse do
  @moduledoc """
  Respone of uploading accounts in batch.

  ## Attributes

  - error (list(GoogleApi.IdentityToolkit.V3.Model.UploadAccountResponseError.t)): The error encountered while processing the account info. Defaults to `nil`.
  - kind (String.t): The fixed string "identitytoolkit#UploadAccountResponse". Defaults to `identitytoolkit#UploadAccountResponse`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :error => list(GoogleApi.IdentityToolkit.V3.Model.UploadAccountResponseError.t()),
          :kind => String.t()
        }

  field(:error, as: GoogleApi.IdentityToolkit.V3.Model.UploadAccountResponseError, type: :list)
  field(:kind)
end

defimpl Poison.Decoder, for: GoogleApi.IdentityToolkit.V3.Model.UploadAccountResponse do
  def decode(value, options) do
    GoogleApi.IdentityToolkit.V3.Model.UploadAccountResponse.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.IdentityToolkit.V3.Model.UploadAccountResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
