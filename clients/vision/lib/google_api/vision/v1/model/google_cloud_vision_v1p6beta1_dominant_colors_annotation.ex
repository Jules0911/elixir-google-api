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

defmodule GoogleApi.Vision.V1.Model.GoogleCloudVisionV1p6beta1DominantColorsAnnotation do
  @moduledoc """
  Set of dominant colors and their corresponding scores.

  ## Attributes

  *   `colors` (*type:* `list(GoogleApi.Vision.V1.Model.GoogleCloudVisionV1p6beta1ColorInfo.t)`, *default:* `nil`) - RGB color values with their score and pixel fraction.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :colors => list(GoogleApi.Vision.V1.Model.GoogleCloudVisionV1p6beta1ColorInfo.t())
        }

  field(:colors, as: GoogleApi.Vision.V1.Model.GoogleCloudVisionV1p6beta1ColorInfo, type: :list)
end

defimpl Poison.Decoder,
  for: GoogleApi.Vision.V1.Model.GoogleCloudVisionV1p6beta1DominantColorsAnnotation do
  def decode(value, options) do
    GoogleApi.Vision.V1.Model.GoogleCloudVisionV1p6beta1DominantColorsAnnotation.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.Vision.V1.Model.GoogleCloudVisionV1p6beta1DominantColorsAnnotation do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
