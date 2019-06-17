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

defmodule GoogleApi.IdentityToolkit.V3.Model.GetOobConfirmationCodeResponse do
  @moduledoc """
  Response of getting a code for user confirmation (reset password, change email etc.).

  ## Attributes

  - email (String.t): The email address that the email is sent to. Defaults to `nil`.
  - kind (String.t): The fixed string "identitytoolkit#GetOobConfirmationCodeResponse". Defaults to `identitytoolkit#GetOobConfirmationCodeResponse`.
  - oobCode (String.t): The code to be send to the user. Defaults to `nil`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :email => String.t(),
          :kind => String.t(),
          :oobCode => String.t()
        }

  field(:email)
  field(:kind)
  field(:oobCode)
end

defimpl Poison.Decoder, for: GoogleApi.IdentityToolkit.V3.Model.GetOobConfirmationCodeResponse do
  def decode(value, options) do
    GoogleApi.IdentityToolkit.V3.Model.GetOobConfirmationCodeResponse.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.IdentityToolkit.V3.Model.GetOobConfirmationCodeResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
