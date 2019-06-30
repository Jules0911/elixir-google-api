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

defmodule GoogleApi.DFAReporting.V33.Model.AudienceSegmentGroup do
  @moduledoc """
  Audience Segment Group.

  ## Attributes

  *   `audienceSegments` (*type:* `list(GoogleApi.DFAReporting.V33.Model.AudienceSegment.t)`, *default:* `nil`) - Audience segments assigned to this group. The number of segments must be between 2 and 100.
  *   `id` (*type:* `String.t`, *default:* `nil`) - ID of this audience segment group. This is a read-only, auto-generated field.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Name of this audience segment group. This is a required field and must be less than 65 characters long.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :audienceSegments => list(GoogleApi.DFAReporting.V33.Model.AudienceSegment.t()),
          :id => String.t(),
          :name => String.t()
        }

  field(:audienceSegments, as: GoogleApi.DFAReporting.V33.Model.AudienceSegment, type: :list)
  field(:id)
  field(:name)
end

defimpl Poison.Decoder, for: GoogleApi.DFAReporting.V33.Model.AudienceSegmentGroup do
  def decode(value, options) do
    GoogleApi.DFAReporting.V33.Model.AudienceSegmentGroup.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DFAReporting.V33.Model.AudienceSegmentGroup do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
