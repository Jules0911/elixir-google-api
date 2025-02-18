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

defmodule GoogleApi.MachineLearning.V1.Model.GoogleIamV1_AuditConfig do
  @moduledoc """
  Specifies the audit configuration for a service.
  The configuration determines which permission types are logged, and what
  identities, if any, are exempted from logging.
  An AuditConfig must have one or more AuditLogConfigs.

  If there are AuditConfigs for both `allServices` and a specific service,
  the union of the two AuditConfigs is used for that service: the log_types
  specified in each AuditConfig are enabled, and the exempted_members in each
  AuditLogConfig are exempted.

  Example Policy with multiple AuditConfigs:

      {
        "audit_configs": [
          {
            "service": "allServices"
            "audit_log_configs": [
              {
                "log_type": "DATA_READ",
                "exempted_members": [
                  "user:jose@example.com"
                ]
              },
              {
                "log_type": "DATA_WRITE",
              },
              {
                "log_type": "ADMIN_READ",
              }
            ]
          },
          {
            "service": "sampleservice.googleapis.com"
            "audit_log_configs": [
              {
                "log_type": "DATA_READ",
              },
              {
                "log_type": "DATA_WRITE",
                "exempted_members": [
                  "user:aliya@example.com"
                ]
              }
            ]
          }
        ]
      }

  For sampleservice, this policy enables DATA_READ, DATA_WRITE and ADMIN_READ
  logging. It also exempts jose@example.com from DATA_READ logging, and
  aliya@example.com from DATA_WRITE logging.

  ## Attributes

  *   `auditLogConfigs` (*type:* `list(GoogleApi.MachineLearning.V1.Model.GoogleIamV1__AuditLogConfig.t)`, *default:* `nil`) - The configuration for logging of each type of permission.
  *   `service` (*type:* `String.t`, *default:* `nil`) - Specifies a service that will be enabled for audit logging.
      For example, `storage.googleapis.com`, `cloudsql.googleapis.com`.
      `allServices` is a special value that covers all services.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :auditLogConfigs =>
            list(GoogleApi.MachineLearning.V1.Model.GoogleIamV1__AuditLogConfig.t()),
          :service => String.t()
        }

  field(
    :auditLogConfigs,
    as: GoogleApi.MachineLearning.V1.Model.GoogleIamV1__AuditLogConfig,
    type: :list
  )

  field(:service)
end

defimpl Poison.Decoder, for: GoogleApi.MachineLearning.V1.Model.GoogleIamV1_AuditConfig do
  def decode(value, options) do
    GoogleApi.MachineLearning.V1.Model.GoogleIamV1_AuditConfig.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.MachineLearning.V1.Model.GoogleIamV1_AuditConfig do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
