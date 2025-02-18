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

defmodule GoogleApi.Vision.V1.Model.GoogleCloudVisionV1p6beta1WebDetectionWebImage do
  @moduledoc """
  Metadata for online images.

  ## Attributes

  *   `score` (*type:* `number()`, *default:* `nil`) - (Deprecated) Overall relevancy score for the image.
  *   `url` (*type:* `String.t`, *default:* `nil`) - The result image URL.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :score => number(),
          :url => String.t()
        }

  field(:score)
  field(:url)
end

defimpl Poison.Decoder,
  for: GoogleApi.Vision.V1.Model.GoogleCloudVisionV1p6beta1WebDetectionWebImage do
  def decode(value, options) do
    GoogleApi.Vision.V1.Model.GoogleCloudVisionV1p6beta1WebDetectionWebImage.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.Vision.V1.Model.GoogleCloudVisionV1p6beta1WebDetectionWebImage do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
