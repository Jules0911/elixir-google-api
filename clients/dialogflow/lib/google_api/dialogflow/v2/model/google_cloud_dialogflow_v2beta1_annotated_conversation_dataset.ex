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

defmodule GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2beta1AnnotatedConversationDataset do
  @moduledoc """
  Represents an annotated conversation dataset.
  ConversationDataset can have multiple AnnotatedConversationDataset, each of
  them represents one result from one annotation task.
  AnnotatedConversationDataset can only be generated from annotation task,
  which will be triggered by LabelConversation.

  ## Attributes

  *   `completedExampleCount` (*type:* `String.t`, *default:* `nil`) - Output only. Number of examples that have annotations in the annotated
      conversation dataset.
  *   `createTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. Creation time of this annotated conversation dataset.
  *   `description` (*type:* `String.t`, *default:* `nil`) - Optional. The description of the annotated conversation dataset.
      Maximum of 10000 bytes.
  *   `displayName` (*type:* `String.t`, *default:* `nil`) - Required. The display name of the annotated conversation dataset.
      It's specified when user starts an annotation task. Maximum of 64 bytes.
  *   `exampleCount` (*type:* `String.t`, *default:* `nil`) - Output only. Number of examples in the annotated conversation dataset.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Output only. AnnotatedConversationDataset resource name. Format:
      `projects/<Project ID>/conversationDatasets/<Conversation Dataset
      ID>/annotatedConversationDatasets/<Annotated Conversation Dataset ID>`
  *   `questionTypeName` (*type:* `String.t`, *default:* `nil`) - Output only. Question type name that identifies a labeling task.
      A question is a single task that a worker answers. A question type is set
      of related questions. Each question belongs to a particular question type.
      It can be used in CrowdCompute UI to filter and manage labeling tasks.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :completedExampleCount => String.t(),
          :createTime => DateTime.t(),
          :description => String.t(),
          :displayName => String.t(),
          :exampleCount => String.t(),
          :name => String.t(),
          :questionTypeName => String.t()
        }

  field(:completedExampleCount)
  field(:createTime, as: DateTime)
  field(:description)
  field(:displayName)
  field(:exampleCount)
  field(:name)
  field(:questionTypeName)
end

defimpl Poison.Decoder,
  for: GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2beta1AnnotatedConversationDataset do
  def decode(value, options) do
    GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2beta1AnnotatedConversationDataset.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2beta1AnnotatedConversationDataset do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
