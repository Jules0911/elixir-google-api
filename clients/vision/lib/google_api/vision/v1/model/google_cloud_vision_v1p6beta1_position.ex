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

defmodule GoogleApi.Vision.V1.Model.GoogleCloudVisionV1p6beta1Position do
  @moduledoc """
  A 3D position in the image, used primarily for Face detection landmarks.
  A valid Position must have both x and y coordinates.
  The position coordinates are in the same scale as the original image.

  ## Attributes

  *   `x` (*type:* `number()`, *default:* `nil`) - X coordinate.
  *   `y` (*type:* `number()`, *default:* `nil`) - Y coordinate.
  *   `z` (*type:* `number()`, *default:* `nil`) - Z coordinate (or depth).
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :x => number(),
          :y => number(),
          :z => number()
        }

  field(:x)
  field(:y)
  field(:z)
end

defimpl Poison.Decoder, for: GoogleApi.Vision.V1.Model.GoogleCloudVisionV1p6beta1Position do
  def decode(value, options) do
    GoogleApi.Vision.V1.Model.GoogleCloudVisionV1p6beta1Position.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Vision.V1.Model.GoogleCloudVisionV1p6beta1Position do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
