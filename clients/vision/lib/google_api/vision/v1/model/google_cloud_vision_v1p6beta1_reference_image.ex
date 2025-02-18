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

defmodule GoogleApi.Vision.V1.Model.GoogleCloudVisionV1p6beta1ReferenceImage do
  @moduledoc """
  A `ReferenceImage` represents a product image and its associated metadata,
  such as bounding boxes.

  ## Attributes

  *   `boundingPolys` (*type:* `list(GoogleApi.Vision.V1.Model.GoogleCloudVisionV1p6beta1BoundingPoly.t)`, *default:* `nil`) - Bounding polygons around the areas of interest in the reference image.
      Optional. If this field is empty, the system will try to detect regions of
      interest. At most 10 bounding polygons will be used.

      The provided shape is converted into a non-rotated rectangle. Once
      converted, the small edge of the rectangle must be greater than or equal
      to 300 pixels. The aspect ratio must be 1:4 or less (i.e. 1:3 is ok; 1:5
      is not).
  *   `name` (*type:* `String.t`, *default:* `nil`) - The resource name of the reference image.

      Format is:

      `projects/PROJECT_ID/locations/LOC_ID/products/PRODUCT_ID/referenceImages/IMAGE_ID`.

      This field is ignored when creating a reference image.
  *   `uri` (*type:* `String.t`, *default:* `nil`) - The Google Cloud Storage URI of the reference image.

      The URI must start with `gs://`.

      Required.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :boundingPolys =>
            list(GoogleApi.Vision.V1.Model.GoogleCloudVisionV1p6beta1BoundingPoly.t()),
          :name => String.t(),
          :uri => String.t()
        }

  field(
    :boundingPolys,
    as: GoogleApi.Vision.V1.Model.GoogleCloudVisionV1p6beta1BoundingPoly,
    type: :list
  )

  field(:name)
  field(:uri)
end

defimpl Poison.Decoder, for: GoogleApi.Vision.V1.Model.GoogleCloudVisionV1p6beta1ReferenceImage do
  def decode(value, options) do
    GoogleApi.Vision.V1.Model.GoogleCloudVisionV1p6beta1ReferenceImage.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Vision.V1.Model.GoogleCloudVisionV1p6beta1ReferenceImage do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
