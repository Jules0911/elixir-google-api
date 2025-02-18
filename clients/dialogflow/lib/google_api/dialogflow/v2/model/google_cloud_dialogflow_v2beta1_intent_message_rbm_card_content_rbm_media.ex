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

defmodule GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2beta1IntentMessageRbmCardContentRbmMedia do
  @moduledoc """
  Rich Business Messaging (RBM) Media displayed in Cards
  The following media-types are currently supported:

  ## Image Types

   image/jpeg
   image/jpg'
   image/gif
   image/png

  ## Video Types

   video/h263
   video/m4v
   video/mp4
   video/mpeg
   video/mpeg4
   video/webm

  ## Attributes

  *   `fileUri` (*type:* `String.t`, *default:* `nil`) - Required. Publicly reachable URI of the file. The RBM platform
      determines the MIME type of the file from the content-type field in
      the HTTP headers when the platform fetches the file. The content-type
      field must be present and accurate in the HTTP response from the URL.
  *   `height` (*type:* `String.t`, *default:* `nil`) - Required for cards with vertical orientation. The height of the media
      within a rich card with a vertical layout. (https://goo.gl/NeFCjz).
      For a standalone card with horizontal layout, height is not
      customizable, and this field is ignored.
  *   `thumbnailUri` (*type:* `String.t`, *default:* `nil`) - Optional. Publicly reachable URI of the thumbnail.If you don't
      provide a thumbnail URI, the RBM platform displays a blank
      placeholder thumbnail until the user's device downloads the file.
      Depending on the user's setting, the file may not download
      automatically and may require the user to tap a download button.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :fileUri => String.t(),
          :height => String.t(),
          :thumbnailUri => String.t()
        }

  field(:fileUri)
  field(:height)
  field(:thumbnailUri)
end

defimpl Poison.Decoder,
  for:
    GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2beta1IntentMessageRbmCardContentRbmMedia do
  def decode(value, options) do
    GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2beta1IntentMessageRbmCardContentRbmMedia.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for:
    GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2beta1IntentMessageRbmCardContentRbmMedia do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
