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

defmodule GoogleApi.Vision.V1.Model.GoogleCloudVisionV1p6beta1Block do
  @moduledoc """
  Logical element on the page.

  ## Attributes

  *   `blockType` (*type:* `String.t`, *default:* `nil`) - Detected block type (text, image etc) for this block.
  *   `boundingBox` (*type:* `GoogleApi.Vision.V1.Model.GoogleCloudVisionV1p6beta1BoundingPoly.t`, *default:* `nil`) - The bounding box for the block.
      The vertices are in the order of top-left, top-right, bottom-right,
      bottom-left. When a rotation of the bounding box is detected the rotation
      is represented as around the top-left corner as defined when the text is
      read in the 'natural' orientation.
      For example:

      * when the text is horizontal it might look like:

              0----1
              |    |
              3----2

      * when it's rotated 180 degrees around the top-left corner it becomes:

              2----3
              |    |
              1----0

        and the vertex order will still be (0, 1, 2, 3).
  *   `confidence` (*type:* `number()`, *default:* `nil`) - Confidence of the OCR results on the block. Range [0, 1].
  *   `paragraphs` (*type:* `list(GoogleApi.Vision.V1.Model.GoogleCloudVisionV1p6beta1Paragraph.t)`, *default:* `nil`) - List of paragraphs in this block (if this blocks is of type text).
  *   `property` (*type:* `GoogleApi.Vision.V1.Model.GoogleCloudVisionV1p6beta1TextAnnotationTextProperty.t`, *default:* `nil`) - Additional information detected for the block.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :blockType => String.t(),
          :boundingBox => GoogleApi.Vision.V1.Model.GoogleCloudVisionV1p6beta1BoundingPoly.t(),
          :confidence => number(),
          :paragraphs => list(GoogleApi.Vision.V1.Model.GoogleCloudVisionV1p6beta1Paragraph.t()),
          :property =>
            GoogleApi.Vision.V1.Model.GoogleCloudVisionV1p6beta1TextAnnotationTextProperty.t()
        }

  field(:blockType)
  field(:boundingBox, as: GoogleApi.Vision.V1.Model.GoogleCloudVisionV1p6beta1BoundingPoly)
  field(:confidence)

  field(
    :paragraphs,
    as: GoogleApi.Vision.V1.Model.GoogleCloudVisionV1p6beta1Paragraph,
    type: :list
  )

  field(
    :property,
    as: GoogleApi.Vision.V1.Model.GoogleCloudVisionV1p6beta1TextAnnotationTextProperty
  )
end

defimpl Poison.Decoder, for: GoogleApi.Vision.V1.Model.GoogleCloudVisionV1p6beta1Block do
  def decode(value, options) do
    GoogleApi.Vision.V1.Model.GoogleCloudVisionV1p6beta1Block.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Vision.V1.Model.GoogleCloudVisionV1p6beta1Block do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
