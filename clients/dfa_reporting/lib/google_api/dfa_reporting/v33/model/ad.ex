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

defmodule GoogleApi.DFAReporting.V33.Model.Ad do
  @moduledoc """
  Contains properties of a Campaign Manager ad.

  ## Attributes

  *   `placementAssignments` (*type:* `list(GoogleApi.DFAReporting.V33.Model.PlacementAssignment.t)`, *default:* `nil`) - Placement assignments for this ad.
  *   `clickThroughUrl` (*type:* `GoogleApi.DFAReporting.V33.Model.ClickThroughUrl.t`, *default:* `nil`) - Click-through URL for this ad. This is a required field on insertion. Applicable when type is AD_SERVING_CLICK_TRACKER.
  *   `targetingTemplateId` (*type:* `String.t`, *default:* `nil`) - Targeting template ID, used to apply preconfigured targeting information to this ad. This cannot be set while any of dayPartTargeting, geoTargeting, keyValueTargetingExpression, languageTargeting, remarketingListExpression, or technologyTargeting are set. Applicable when type is AD_SERVING_STANDARD_AD.
  *   `remarketingListExpression` (*type:* `GoogleApi.DFAReporting.V33.Model.ListTargetingExpression.t`, *default:* `nil`) - Remarketing list targeting expression for this ad. This field must be left blank if the ad is using a targeting template. Applicable when type is AD_SERVING_STANDARD_AD.
  *   `sslCompliant` (*type:* `boolean()`, *default:* `nil`) - Whether this ad is ssl compliant. This is a read-only field that is auto-generated when the ad is inserted or updated.
  *   `sslRequired` (*type:* `boolean()`, *default:* `nil`) - Whether this ad requires ssl. This is a read-only field that is auto-generated when the ad is inserted or updated.
  *   `creativeGroupAssignments` (*type:* `list(GoogleApi.DFAReporting.V33.Model.CreativeGroupAssignment.t)`, *default:* `nil`) - Creative group assignments for this ad. Applicable when type is AD_SERVING_CLICK_TRACKER. Only one assignment per creative group number is allowed for a maximum of two assignments.
  *   `technologyTargeting` (*type:* `GoogleApi.DFAReporting.V33.Model.TechnologyTargeting.t`, *default:* `nil`) - Technology platform targeting information for this ad. This field must be left blank if the ad is using a targeting template. Applicable when type is AD_SERVING_STANDARD_AD.
  *   `id` (*type:* `String.t`, *default:* `nil`) - ID of this ad. This is a read-only, auto-generated field.
  *   `compatibility` (*type:* `String.t`, *default:* `nil`) - Compatibility of this ad. Applicable when type is AD_SERVING_DEFAULT_AD. DISPLAY and DISPLAY_INTERSTITIAL refer to either rendering on desktop or on mobile devices or in mobile apps for regular or interstitial ads, respectively. APP and APP_INTERSTITIAL are only used for existing default ads. New mobile placements must be assigned DISPLAY or DISPLAY_INTERSTITIAL and default ads created for those placements will be limited to those compatibility types. IN_STREAM_VIDEO refers to rendering in-stream video ads developed with the VAST standard.
  *   `active` (*type:* `boolean()`, *default:* `nil`) - Whether this ad is active. When true, archived must be false.
  *   `dynamicClickTracker` (*type:* `boolean()`, *default:* `nil`) - Whether this ad is a dynamic click tracker. Applicable when type is AD_SERVING_CLICK_TRACKER. This is a required field on insert, and is read-only after insert.
  *   `type` (*type:* `String.t`, *default:* `nil`) - Type of ad. This is a required field on insertion. Note that default ads (AD_SERVING_DEFAULT_AD) cannot be created directly (see Creative resource).
  *   `endTime` (*type:* `DateTime.t`, *default:* `nil`) - Date and time that this ad should stop serving. Must be later than the start time. This is a required field on insertion.
  *   `idDimensionValue` (*type:* `GoogleApi.DFAReporting.V33.Model.DimensionValue.t`, *default:* `nil`) - Dimension value for the ID of this ad. This is a read-only, auto-generated field.
  *   `archived` (*type:* `boolean()`, *default:* `nil`) - Whether this ad is archived. When true, active must be false.
  *   `clickThroughUrlSuffixProperties` (*type:* `GoogleApi.DFAReporting.V33.Model.ClickThroughUrlSuffixProperties.t`, *default:* `nil`) - Click-through URL suffix properties for this ad. Applies to the URL in the ad or (if overriding ad properties) the URL in the creative.
  *   `comments` (*type:* `String.t`, *default:* `nil`) - Comments for this ad.
  *   `dayPartTargeting` (*type:* `GoogleApi.DFAReporting.V33.Model.DayPartTargeting.t`, *default:* `nil`) - Time and day targeting information for this ad. This field must be left blank if the ad is using a targeting template. Applicable when type is AD_SERVING_STANDARD_AD.
  *   `campaignIdDimensionValue` (*type:* `GoogleApi.DFAReporting.V33.Model.DimensionValue.t`, *default:* `nil`) - Dimension value for the ID of the campaign. This is a read-only, auto-generated field.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Name of this ad. This is a required field and must be less than 256 characters long.
  *   `geoTargeting` (*type:* `GoogleApi.DFAReporting.V33.Model.GeoTargeting.t`, *default:* `nil`) - Geographical targeting information for this ad. This field must be left blank if the ad is using a targeting template. Applicable when type is AD_SERVING_STANDARD_AD.
  *   `campaignId` (*type:* `String.t`, *default:* `nil`) - Campaign ID of this ad. This is a required field on insertion.
  *   `keyValueTargetingExpression` (*type:* `GoogleApi.DFAReporting.V33.Model.KeyValueTargetingExpression.t`, *default:* `nil`) - Key-value targeting information for this ad. This field must be left blank if the ad is using a targeting template. Applicable when type is AD_SERVING_STANDARD_AD.
  *   `eventTagOverrides` (*type:* `list(GoogleApi.DFAReporting.V33.Model.EventTagOverride.t)`, *default:* `nil`) - Event tag overrides for this ad.
  *   `kind` (*type:* `String.t`, *default:* `dfareporting#ad`) - Identifies what kind of resource this is. Value: the fixed string "dfareporting#ad".
  *   `createInfo` (*type:* `GoogleApi.DFAReporting.V33.Model.LastModifiedInfo.t`, *default:* `nil`) - Information about the creation of this ad. This is a read-only field.
  *   `creativeRotation` (*type:* `GoogleApi.DFAReporting.V33.Model.CreativeRotation.t`, *default:* `nil`) - Creative rotation for this ad. Applicable when type is AD_SERVING_DEFAULT_AD, AD_SERVING_STANDARD_AD, or AD_SERVING_TRACKING. When type is AD_SERVING_DEFAULT_AD, this field should have exactly one creativeAssignment.
  *   `audienceSegmentId` (*type:* `String.t`, *default:* `nil`) - Audience segment ID that is being targeted for this ad. Applicable when type is AD_SERVING_STANDARD_AD.
  *   `deliverySchedule` (*type:* `GoogleApi.DFAReporting.V33.Model.DeliverySchedule.t`, *default:* `nil`) - Delivery schedule information for this ad. Applicable when type is AD_SERVING_STANDARD_AD or AD_SERVING_TRACKING. This field along with subfields priority and impressionRatio are required on insertion when type is AD_SERVING_STANDARD_AD.
  *   `advertiserIdDimensionValue` (*type:* `GoogleApi.DFAReporting.V33.Model.DimensionValue.t`, *default:* `nil`) - Dimension value for the ID of the advertiser. This is a read-only, auto-generated field.
  *   `startTime` (*type:* `DateTime.t`, *default:* `nil`) - Date and time that this ad should start serving. If creating an ad, this field must be a time in the future. This is a required field on insertion.
  *   `languageTargeting` (*type:* `GoogleApi.DFAReporting.V33.Model.LanguageTargeting.t`, *default:* `nil`) - Language targeting information for this ad. This field must be left blank if the ad is using a targeting template. Applicable when type is AD_SERVING_STANDARD_AD.
  *   `accountId` (*type:* `String.t`, *default:* `nil`) - Account ID of this ad. This is a read-only field that can be left blank.
  *   `lastModifiedInfo` (*type:* `GoogleApi.DFAReporting.V33.Model.LastModifiedInfo.t`, *default:* `nil`) - Information about the most recent modification of this ad. This is a read-only field.
  *   `subaccountId` (*type:* `String.t`, *default:* `nil`) - Subaccount ID of this ad. This is a read-only field that can be left blank.
  *   `size` (*type:* `GoogleApi.DFAReporting.V33.Model.Size.t`, *default:* `nil`) - Size of this ad. Applicable when type is AD_SERVING_DEFAULT_AD.
  *   `advertiserId` (*type:* `String.t`, *default:* `nil`) - Advertiser ID of this ad. This is a required field on insertion.
  *   `defaultClickThroughEventTagProperties` (*type:* `GoogleApi.DFAReporting.V33.Model.DefaultClickThroughEventTagProperties.t`, *default:* `nil`) - Default click-through event tag properties for this ad.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :placementAssignments => list(GoogleApi.DFAReporting.V33.Model.PlacementAssignment.t()),
          :clickThroughUrl => GoogleApi.DFAReporting.V33.Model.ClickThroughUrl.t(),
          :targetingTemplateId => String.t(),
          :remarketingListExpression =>
            GoogleApi.DFAReporting.V33.Model.ListTargetingExpression.t(),
          :sslCompliant => boolean(),
          :sslRequired => boolean(),
          :creativeGroupAssignments =>
            list(GoogleApi.DFAReporting.V33.Model.CreativeGroupAssignment.t()),
          :technologyTargeting => GoogleApi.DFAReporting.V33.Model.TechnologyTargeting.t(),
          :id => String.t(),
          :compatibility => String.t(),
          :active => boolean(),
          :dynamicClickTracker => boolean(),
          :type => String.t(),
          :endTime => DateTime.t(),
          :idDimensionValue => GoogleApi.DFAReporting.V33.Model.DimensionValue.t(),
          :archived => boolean(),
          :clickThroughUrlSuffixProperties =>
            GoogleApi.DFAReporting.V33.Model.ClickThroughUrlSuffixProperties.t(),
          :comments => String.t(),
          :dayPartTargeting => GoogleApi.DFAReporting.V33.Model.DayPartTargeting.t(),
          :campaignIdDimensionValue => GoogleApi.DFAReporting.V33.Model.DimensionValue.t(),
          :name => String.t(),
          :geoTargeting => GoogleApi.DFAReporting.V33.Model.GeoTargeting.t(),
          :campaignId => String.t(),
          :keyValueTargetingExpression =>
            GoogleApi.DFAReporting.V33.Model.KeyValueTargetingExpression.t(),
          :eventTagOverrides => list(GoogleApi.DFAReporting.V33.Model.EventTagOverride.t()),
          :kind => String.t(),
          :createInfo => GoogleApi.DFAReporting.V33.Model.LastModifiedInfo.t(),
          :creativeRotation => GoogleApi.DFAReporting.V33.Model.CreativeRotation.t(),
          :audienceSegmentId => String.t(),
          :deliverySchedule => GoogleApi.DFAReporting.V33.Model.DeliverySchedule.t(),
          :advertiserIdDimensionValue => GoogleApi.DFAReporting.V33.Model.DimensionValue.t(),
          :startTime => DateTime.t(),
          :languageTargeting => GoogleApi.DFAReporting.V33.Model.LanguageTargeting.t(),
          :accountId => String.t(),
          :lastModifiedInfo => GoogleApi.DFAReporting.V33.Model.LastModifiedInfo.t(),
          :subaccountId => String.t(),
          :size => GoogleApi.DFAReporting.V33.Model.Size.t(),
          :advertiserId => String.t(),
          :defaultClickThroughEventTagProperties =>
            GoogleApi.DFAReporting.V33.Model.DefaultClickThroughEventTagProperties.t()
        }

  field(
    :placementAssignments,
    as: GoogleApi.DFAReporting.V33.Model.PlacementAssignment,
    type: :list
  )

  field(:clickThroughUrl, as: GoogleApi.DFAReporting.V33.Model.ClickThroughUrl)
  field(:targetingTemplateId)
  field(:remarketingListExpression, as: GoogleApi.DFAReporting.V33.Model.ListTargetingExpression)
  field(:sslCompliant)
  field(:sslRequired)

  field(
    :creativeGroupAssignments,
    as: GoogleApi.DFAReporting.V33.Model.CreativeGroupAssignment,
    type: :list
  )

  field(:technologyTargeting, as: GoogleApi.DFAReporting.V33.Model.TechnologyTargeting)
  field(:id)
  field(:compatibility)
  field(:active)
  field(:dynamicClickTracker)
  field(:type)
  field(:endTime, as: DateTime)
  field(:idDimensionValue, as: GoogleApi.DFAReporting.V33.Model.DimensionValue)
  field(:archived)

  field(
    :clickThroughUrlSuffixProperties,
    as: GoogleApi.DFAReporting.V33.Model.ClickThroughUrlSuffixProperties
  )

  field(:comments)
  field(:dayPartTargeting, as: GoogleApi.DFAReporting.V33.Model.DayPartTargeting)
  field(:campaignIdDimensionValue, as: GoogleApi.DFAReporting.V33.Model.DimensionValue)
  field(:name)
  field(:geoTargeting, as: GoogleApi.DFAReporting.V33.Model.GeoTargeting)
  field(:campaignId)

  field(
    :keyValueTargetingExpression,
    as: GoogleApi.DFAReporting.V33.Model.KeyValueTargetingExpression
  )

  field(:eventTagOverrides, as: GoogleApi.DFAReporting.V33.Model.EventTagOverride, type: :list)
  field(:kind)
  field(:createInfo, as: GoogleApi.DFAReporting.V33.Model.LastModifiedInfo)
  field(:creativeRotation, as: GoogleApi.DFAReporting.V33.Model.CreativeRotation)
  field(:audienceSegmentId)
  field(:deliverySchedule, as: GoogleApi.DFAReporting.V33.Model.DeliverySchedule)
  field(:advertiserIdDimensionValue, as: GoogleApi.DFAReporting.V33.Model.DimensionValue)
  field(:startTime, as: DateTime)
  field(:languageTargeting, as: GoogleApi.DFAReporting.V33.Model.LanguageTargeting)
  field(:accountId)
  field(:lastModifiedInfo, as: GoogleApi.DFAReporting.V33.Model.LastModifiedInfo)
  field(:subaccountId)
  field(:size, as: GoogleApi.DFAReporting.V33.Model.Size)
  field(:advertiserId)

  field(
    :defaultClickThroughEventTagProperties,
    as: GoogleApi.DFAReporting.V33.Model.DefaultClickThroughEventTagProperties
  )
end

defimpl Poison.Decoder, for: GoogleApi.DFAReporting.V33.Model.Ad do
  def decode(value, options) do
    GoogleApi.DFAReporting.V33.Model.Ad.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DFAReporting.V33.Model.Ad do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
