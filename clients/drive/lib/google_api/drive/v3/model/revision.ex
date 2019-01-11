# Copyright 2017 Google Inc.
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

# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule GoogleApi.Drive.V3.Model.Revision do
  @moduledoc """
  The metadata for a revision to a file.

  ## Attributes

  - exportLinks (%{optional(String.t) &#x3D;&gt; String.t}): Links for exporting Google Docs to specific formats. Defaults to: `null`.
  - id (String.t): The ID of the revision. Defaults to: `null`.
  - keepForever (boolean()): Whether to keep this revision forever, even if it is no longer the head revision. If not set, the revision will be automatically purged 30 days after newer content is uploaded. This can be set on a maximum of 200 revisions for a file. This field is only applicable to files with binary content in Drive. Defaults to: `null`.
  - kind (String.t): Identifies what kind of resource this is. Value: the fixed string \&quot;drive#revision\&quot;. Defaults to: `null`.
  - lastModifyingUser (User): The last user to modify this revision. Defaults to: `null`.
  - md5Checksum (String.t): The MD5 checksum of the revision&#39;s content. This is only applicable to files with binary content in Drive. Defaults to: `null`.
  - mimeType (String.t): The MIME type of the revision. Defaults to: `null`.
  - modifiedTime (DateTime.t): The last time the revision was modified (RFC 3339 date-time). Defaults to: `null`.
  - originalFilename (String.t): The original filename used to create this revision. This is only applicable to files with binary content in Drive. Defaults to: `null`.
  - publishAuto (boolean()): Whether subsequent revisions will be automatically republished. This is only applicable to Google Docs. Defaults to: `null`.
  - published (boolean()): Whether this revision is published. This is only applicable to Google Docs. Defaults to: `null`.
  - publishedOutsideDomain (boolean()): Whether this revision is published outside the domain. This is only applicable to Google Docs. Defaults to: `null`.
  - size (String.t): The size of the revision&#39;s content in bytes. This is only applicable to files with binary content in Drive. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :exportLinks => map(),
          :id => any(),
          :keepForever => any(),
          :kind => any(),
          :lastModifyingUser => GoogleApi.Drive.V3.Model.User.t(),
          :md5Checksum => any(),
          :mimeType => any(),
          :modifiedTime => DateTime.t(),
          :originalFilename => any(),
          :publishAuto => any(),
          :published => any(),
          :publishedOutsideDomain => any(),
          :size => any()
        }

  field(:exportLinks, type: :map)
  field(:id)
  field(:keepForever)
  field(:kind)
  field(:lastModifyingUser, as: GoogleApi.Drive.V3.Model.User)
  field(:md5Checksum)
  field(:mimeType)
  field(:modifiedTime, as: DateTime)
  field(:originalFilename)
  field(:publishAuto)
  field(:published)
  field(:publishedOutsideDomain)
  field(:size)
end

defimpl Poison.Decoder, for: GoogleApi.Drive.V3.Model.Revision do
  def decode(value, options) do
    GoogleApi.Drive.V3.Model.Revision.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Drive.V3.Model.Revision do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
