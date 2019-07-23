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

defmodule GoogleApi.Sheets.V4.Model.Response do
  @moduledoc """
  A single response from an update.

  ## Attributes

  *   `addBanding` (*type:* `GoogleApi.Sheets.V4.Model.AddBandingResponse.t`, *default:* `nil`) - A reply from adding a banded range.
  *   `addChart` (*type:* `GoogleApi.Sheets.V4.Model.AddChartResponse.t`, *default:* `nil`) - A reply from adding a chart.
  *   `addDimensionGroup` (*type:* `GoogleApi.Sheets.V4.Model.AddDimensionGroupResponse.t`, *default:* `nil`) - A reply from adding a dimension group.
  *   `addFilterView` (*type:* `GoogleApi.Sheets.V4.Model.AddFilterViewResponse.t`, *default:* `nil`) - A reply from adding a filter view.
  *   `addNamedRange` (*type:* `GoogleApi.Sheets.V4.Model.AddNamedRangeResponse.t`, *default:* `nil`) - A reply from adding a named range.
  *   `addProtectedRange` (*type:* `GoogleApi.Sheets.V4.Model.AddProtectedRangeResponse.t`, *default:* `nil`) - A reply from adding a protected range.
  *   `addSheet` (*type:* `GoogleApi.Sheets.V4.Model.AddSheetResponse.t`, *default:* `nil`) - A reply from adding a sheet.
  *   `createDeveloperMetadata` (*type:* `GoogleApi.Sheets.V4.Model.CreateDeveloperMetadataResponse.t`, *default:* `nil`) - A reply from creating a developer metadata entry.
  *   `deleteConditionalFormatRule` (*type:* `GoogleApi.Sheets.V4.Model.DeleteConditionalFormatRuleResponse.t`, *default:* `nil`) - A reply from deleting a conditional format rule.
  *   `deleteDeveloperMetadata` (*type:* `GoogleApi.Sheets.V4.Model.DeleteDeveloperMetadataResponse.t`, *default:* `nil`) - A reply from deleting a developer metadata entry.
  *   `deleteDimensionGroup` (*type:* `GoogleApi.Sheets.V4.Model.DeleteDimensionGroupResponse.t`, *default:* `nil`) - A reply from deleting a dimension group.
  *   `deleteDuplicates` (*type:* `GoogleApi.Sheets.V4.Model.DeleteDuplicatesResponse.t`, *default:* `nil`) - A reply from removing rows containing duplicate values.
  *   `duplicateFilterView` (*type:* `GoogleApi.Sheets.V4.Model.DuplicateFilterViewResponse.t`, *default:* `nil`) - A reply from duplicating a filter view.
  *   `duplicateSheet` (*type:* `GoogleApi.Sheets.V4.Model.DuplicateSheetResponse.t`, *default:* `nil`) - A reply from duplicating a sheet.
  *   `findReplace` (*type:* `GoogleApi.Sheets.V4.Model.FindReplaceResponse.t`, *default:* `nil`) - A reply from doing a find/replace.
  *   `trimWhitespace` (*type:* `GoogleApi.Sheets.V4.Model.TrimWhitespaceResponse.t`, *default:* `nil`) - A reply from trimming whitespace.
  *   `updateConditionalFormatRule` (*type:* `GoogleApi.Sheets.V4.Model.UpdateConditionalFormatRuleResponse.t`, *default:* `nil`) - A reply from updating a conditional format rule.
  *   `updateDeveloperMetadata` (*type:* `GoogleApi.Sheets.V4.Model.UpdateDeveloperMetadataResponse.t`, *default:* `nil`) - A reply from updating a developer metadata entry.
  *   `updateEmbeddedObjectPosition` (*type:* `GoogleApi.Sheets.V4.Model.UpdateEmbeddedObjectPositionResponse.t`, *default:* `nil`) - A reply from updating an embedded object's position.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :addBanding => GoogleApi.Sheets.V4.Model.AddBandingResponse.t(),
          :addChart => GoogleApi.Sheets.V4.Model.AddChartResponse.t(),
          :addDimensionGroup => GoogleApi.Sheets.V4.Model.AddDimensionGroupResponse.t(),
          :addFilterView => GoogleApi.Sheets.V4.Model.AddFilterViewResponse.t(),
          :addNamedRange => GoogleApi.Sheets.V4.Model.AddNamedRangeResponse.t(),
          :addProtectedRange => GoogleApi.Sheets.V4.Model.AddProtectedRangeResponse.t(),
          :addSheet => GoogleApi.Sheets.V4.Model.AddSheetResponse.t(),
          :createDeveloperMetadata =>
            GoogleApi.Sheets.V4.Model.CreateDeveloperMetadataResponse.t(),
          :deleteConditionalFormatRule =>
            GoogleApi.Sheets.V4.Model.DeleteConditionalFormatRuleResponse.t(),
          :deleteDeveloperMetadata =>
            GoogleApi.Sheets.V4.Model.DeleteDeveloperMetadataResponse.t(),
          :deleteDimensionGroup => GoogleApi.Sheets.V4.Model.DeleteDimensionGroupResponse.t(),
          :deleteDuplicates => GoogleApi.Sheets.V4.Model.DeleteDuplicatesResponse.t(),
          :duplicateFilterView => GoogleApi.Sheets.V4.Model.DuplicateFilterViewResponse.t(),
          :duplicateSheet => GoogleApi.Sheets.V4.Model.DuplicateSheetResponse.t(),
          :findReplace => GoogleApi.Sheets.V4.Model.FindReplaceResponse.t(),
          :trimWhitespace => GoogleApi.Sheets.V4.Model.TrimWhitespaceResponse.t(),
          :updateConditionalFormatRule =>
            GoogleApi.Sheets.V4.Model.UpdateConditionalFormatRuleResponse.t(),
          :updateDeveloperMetadata =>
            GoogleApi.Sheets.V4.Model.UpdateDeveloperMetadataResponse.t(),
          :updateEmbeddedObjectPosition =>
            GoogleApi.Sheets.V4.Model.UpdateEmbeddedObjectPositionResponse.t()
        }

  field(:addBanding, as: GoogleApi.Sheets.V4.Model.AddBandingResponse)
  field(:addChart, as: GoogleApi.Sheets.V4.Model.AddChartResponse)
  field(:addDimensionGroup, as: GoogleApi.Sheets.V4.Model.AddDimensionGroupResponse)
  field(:addFilterView, as: GoogleApi.Sheets.V4.Model.AddFilterViewResponse)
  field(:addNamedRange, as: GoogleApi.Sheets.V4.Model.AddNamedRangeResponse)
  field(:addProtectedRange, as: GoogleApi.Sheets.V4.Model.AddProtectedRangeResponse)
  field(:addSheet, as: GoogleApi.Sheets.V4.Model.AddSheetResponse)
  field(:createDeveloperMetadata, as: GoogleApi.Sheets.V4.Model.CreateDeveloperMetadataResponse)

  field(
    :deleteConditionalFormatRule,
    as: GoogleApi.Sheets.V4.Model.DeleteConditionalFormatRuleResponse
  )

  field(:deleteDeveloperMetadata, as: GoogleApi.Sheets.V4.Model.DeleteDeveloperMetadataResponse)
  field(:deleteDimensionGroup, as: GoogleApi.Sheets.V4.Model.DeleteDimensionGroupResponse)
  field(:deleteDuplicates, as: GoogleApi.Sheets.V4.Model.DeleteDuplicatesResponse)
  field(:duplicateFilterView, as: GoogleApi.Sheets.V4.Model.DuplicateFilterViewResponse)
  field(:duplicateSheet, as: GoogleApi.Sheets.V4.Model.DuplicateSheetResponse)
  field(:findReplace, as: GoogleApi.Sheets.V4.Model.FindReplaceResponse)
  field(:trimWhitespace, as: GoogleApi.Sheets.V4.Model.TrimWhitespaceResponse)

  field(
    :updateConditionalFormatRule,
    as: GoogleApi.Sheets.V4.Model.UpdateConditionalFormatRuleResponse
  )

  field(:updateDeveloperMetadata, as: GoogleApi.Sheets.V4.Model.UpdateDeveloperMetadataResponse)

  field(
    :updateEmbeddedObjectPosition,
    as: GoogleApi.Sheets.V4.Model.UpdateEmbeddedObjectPositionResponse
  )
end

defimpl Poison.Decoder, for: GoogleApi.Sheets.V4.Model.Response do
  def decode(value, options) do
    GoogleApi.Sheets.V4.Model.Response.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Sheets.V4.Model.Response do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
