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

defmodule GoogleApi.Vision.V1.Model.GoogleCloudVisionV1p6beta1ColorInfo do
  @moduledoc """
  Color information consists of RGB channels, score, and the fraction of
  the image that the color occupies in the image.

  ## Attributes

  *   `color` (*type:* `GoogleApi.Vision.V1.Model.Color.t`, *default:* `nil`) - RGB components of the color.
  *   `pixelFraction` (*type:* `number()`, *default:* `nil`) - The fraction of pixels the color occupies in the image.
      Value in range [0, 1].
  *   `score` (*type:* `number()`, *default:* `nil`) - Image-specific score for this color. Value in range [0, 1].
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :color => GoogleApi.Vision.V1.Model.Color.t(),
          :pixelFraction => number(),
          :score => number()
        }

  field(:color, as: GoogleApi.Vision.V1.Model.Color)
  field(:pixelFraction)
  field(:score)
end

defimpl Poison.Decoder, for: GoogleApi.Vision.V1.Model.GoogleCloudVisionV1p6beta1ColorInfo do
  def decode(value, options) do
    GoogleApi.Vision.V1.Model.GoogleCloudVisionV1p6beta1ColorInfo.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Vision.V1.Model.GoogleCloudVisionV1p6beta1ColorInfo do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
