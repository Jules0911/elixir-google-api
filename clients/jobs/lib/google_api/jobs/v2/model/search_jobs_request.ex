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

defmodule GoogleApi.Jobs.V2.Model.SearchJobsRequest do
  @moduledoc """
  Input only.

  The Request body of the `SearchJobs` call.

  ## Attributes

  *   `disableRelevanceThresholding` (*type:* `boolean()`, *default:* `nil`) - Optional. Controls whether to disable relevance thresholding. Relevance
      thresholding removes jobs that have low relevance in search results,
      for example, removing "Assistant to the CEO" positions from the search
      results of a search for "CEO".

      Disabling relevance thresholding improves the accuracy of subsequent
      search requests.

      Defaults to false.
  *   `enableBroadening` (*type:* `boolean()`, *default:* `nil`) - Optional. Controls whether to broaden the search when it produces sparse results.
      Broadened queries append results to the end of the matching results
      list.

      Defaults to false.
  *   `enablePreciseResultSize` (*type:* `boolean()`, *default:* `nil`) - Optional. Controls if the search job request requires the return of a precise
      count of the first 300 results. Setting this to `true` ensures
      consistency in the number of results per page. Best practice is to set this
      value to true if a client allows users to jump directly to a
      non-sequential search results page.

      Enabling this flag may adversely impact performance.

      Defaults to false.
  *   `filters` (*type:* `GoogleApi.Jobs.V2.Model.JobFilters.t`, *default:* `nil`) - Deprecated. Use query instead.

      Optional.

      Restrictions on the scope of the search request, such as filtering
      by location.
  *   `histogramFacets` (*type:* `GoogleApi.Jobs.V2.Model.HistogramFacets.t`, *default:* `nil`) - Optional. Restrictions on what fields to perform histogram on, such as
      `COMPANY_SIZE` etc.
  *   `jobView` (*type:* `String.t`, *default:* `nil`) - Optional. The number of job attributes returned for jobs in the
      search response. Defaults to JobView.SMALL if no value is specified.
  *   `mode` (*type:* `String.t`, *default:* `nil`) - Required. Mode of a search.
  *   `offset` (*type:* `integer()`, *default:* `nil`) - Optional. An integer that specifies the current offset (that is, starting result
      location, amongst the jobs deemed by the API as relevant) in search
      results. This field is only considered if page_token is unset.

      For example, 0 means to  return results starting from the first matching
      job, and 10 means to return from the 11th job. This can be used for
      pagination, (for example, pageSize = 10 and offset = 10 means to return
      from the second page).
  *   `orderBy` (*type:* `String.t`, *default:* `nil`) - Deprecated. Use sort_by instead.

      Optional.

      The criteria determining how search results are sorted.
      Defaults to SortBy.RELEVANCE_DESC if no value is specified.
  *   `pageSize` (*type:* `integer()`, *default:* `nil`) - Optional. A limit on the number of jobs returned in the search results.
      Increasing this value above the default value of 10 can increase search
      response time. The value can be between 1 and 100.
  *   `pageToken` (*type:* `String.t`, *default:* `nil`) - Optional. The token specifying the current offset within
      search results. See SearchJobsResponse.next_page_token for
      an explanation of how to obtain the next set of query results.
  *   `query` (*type:* `GoogleApi.Jobs.V2.Model.JobQuery.t`, *default:* `nil`) - Optional. Query used to search against jobs, such as keyword, location filters, etc.
  *   `requestMetadata` (*type:* `GoogleApi.Jobs.V2.Model.RequestMetadata.t`, *default:* `nil`) - Required. The meta information collected about the job searcher, used to improve the
      search quality of the service. The identifiers, (such as `user_id`) are
      provided by users, and must be unique and consistent.
  *   `sortBy` (*type:* `String.t`, *default:* `nil`) - Optional. The criteria determining how search results are sorted.
      Defaults to SortBy.RELEVANCE_DESC if no value is specified.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :disableRelevanceThresholding => boolean(),
          :enableBroadening => boolean(),
          :enablePreciseResultSize => boolean(),
          :filters => GoogleApi.Jobs.V2.Model.JobFilters.t(),
          :histogramFacets => GoogleApi.Jobs.V2.Model.HistogramFacets.t(),
          :jobView => String.t(),
          :mode => String.t(),
          :offset => integer(),
          :orderBy => String.t(),
          :pageSize => integer(),
          :pageToken => String.t(),
          :query => GoogleApi.Jobs.V2.Model.JobQuery.t(),
          :requestMetadata => GoogleApi.Jobs.V2.Model.RequestMetadata.t(),
          :sortBy => String.t()
        }

  field(:disableRelevanceThresholding)
  field(:enableBroadening)
  field(:enablePreciseResultSize)
  field(:filters, as: GoogleApi.Jobs.V2.Model.JobFilters)
  field(:histogramFacets, as: GoogleApi.Jobs.V2.Model.HistogramFacets)
  field(:jobView)
  field(:mode)
  field(:offset)
  field(:orderBy)
  field(:pageSize)
  field(:pageToken)
  field(:query, as: GoogleApi.Jobs.V2.Model.JobQuery)
  field(:requestMetadata, as: GoogleApi.Jobs.V2.Model.RequestMetadata)
  field(:sortBy)
end

defimpl Poison.Decoder, for: GoogleApi.Jobs.V2.Model.SearchJobsRequest do
  def decode(value, options) do
    GoogleApi.Jobs.V2.Model.SearchJobsRequest.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Jobs.V2.Model.SearchJobsRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
