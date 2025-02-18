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

defmodule GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2beta1IntentMessageRbmCardContent do
  @moduledoc """
  Rich Business Messaging (RBM) Card content

  ## Attributes

  *   `description` (*type:* `String.t`, *default:* `nil`) - Optional. Description of the card (at most 2000 bytes).

      At least one of the title, description or media must be set.
  *   `media` (*type:* `GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2beta1IntentMessageRbmCardContentRbmMedia.t`, *default:* `nil`) - Optional. However at least one of the title, description or media must
      be set. Media (image, GIF or a video) to include in the card.
  *   `suggestions` (*type:* `list(GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestion.t)`, *default:* `nil`) - Optional. List of suggestions to include in the card.
  *   `title` (*type:* `String.t`, *default:* `nil`) - Optional. Title of the card (at most 200 bytes).

      At least one of the title, description or media must be set.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :description => String.t(),
          :media =>
            GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2beta1IntentMessageRbmCardContentRbmMedia.t(),
          :suggestions =>
            list(
              GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestion.t()
            ),
          :title => String.t()
        }

  field(:description)

  field(
    :media,
    as:
      GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2beta1IntentMessageRbmCardContentRbmMedia
  )

  field(
    :suggestions,
    as: GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestion,
    type: :list
  )

  field(:title)
end

defimpl Poison.Decoder,
  for: GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2beta1IntentMessageRbmCardContent do
  def decode(value, options) do
    GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2beta1IntentMessageRbmCardContent.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2beta1IntentMessageRbmCardContent do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
