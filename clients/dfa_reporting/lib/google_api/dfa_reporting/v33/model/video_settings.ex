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

defmodule GoogleApi.DFAReporting.V33.Model.VideoSettings do
  @moduledoc """
  Video Settings

  ## Attributes

  *   `companionSettings` (*type:* `GoogleApi.DFAReporting.V33.Model.CompanionSetting.t`, *default:* `nil`) - Settings for the companion creatives of video creatives served to this placement.
  *   `kind` (*type:* `String.t`, *default:* `dfareporting#videoSettings`) - Identifies what kind of resource this is. Value: the fixed string "dfareporting#videoSettings".
  *   `orientation` (*type:* `String.t`, *default:* `nil`) - Orientation of a video placement. If this value is set, placement will return assets matching the specified orientation.
  *   `skippableSettings` (*type:* `GoogleApi.DFAReporting.V33.Model.SkippableSetting.t`, *default:* `nil`) - Settings for the skippability of video creatives served to this placement. If this object is provided, the creative-level skippable settings will be overridden.
  *   `transcodeSettings` (*type:* `GoogleApi.DFAReporting.V33.Model.TranscodeSetting.t`, *default:* `nil`) - Settings for the transcodes of video creatives served to this placement. If this object is provided, the creative-level transcode settings will be overridden.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :companionSettings => GoogleApi.DFAReporting.V33.Model.CompanionSetting.t(),
          :kind => String.t(),
          :orientation => String.t(),
          :skippableSettings => GoogleApi.DFAReporting.V33.Model.SkippableSetting.t(),
          :transcodeSettings => GoogleApi.DFAReporting.V33.Model.TranscodeSetting.t()
        }

  field(:companionSettings, as: GoogleApi.DFAReporting.V33.Model.CompanionSetting)
  field(:kind)
  field(:orientation)
  field(:skippableSettings, as: GoogleApi.DFAReporting.V33.Model.SkippableSetting)
  field(:transcodeSettings, as: GoogleApi.DFAReporting.V33.Model.TranscodeSetting)
end

defimpl Poison.Decoder, for: GoogleApi.DFAReporting.V33.Model.VideoSettings do
  def decode(value, options) do
    GoogleApi.DFAReporting.V33.Model.VideoSettings.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DFAReporting.V33.Model.VideoSettings do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
