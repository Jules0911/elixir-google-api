defmodule GoogleApi.Vision.V1.Mixfile do
  use Mix.Project

  @version "0.8.0"

  def project() do
    [
      app: :google_api_vision,
      version: @version,
      elixir: "~> 1.4",
      build_embedded: Mix.env == :prod,
      start_permanent: Mix.env == :prod,
      description: description(),
      package: package(),
      deps: deps(),
      source_url: "https://github.com/GoogleCloudPlatform/elixir-google-api/tree/master/clients/vision"
    ]
  end

  def application() do
    [extra_applications: [:logger]]
  end

  defp deps() do
    [
      {:google_gax, "~> 0.1.0"},
      {:ex_doc, "~> 0.16", only: :dev}
    ]
  end

  defp description() do
    """
    Integrates Google Vision features, including image labeling, face, logo, and landmark detection,
    optical character recognition (OCR), and detection of explicit content, into applications.
    """
  end

  defp package() do
    [
      files: ["lib", "mix.exs", "README*", "LICENSE"],
      maintainers: ["Jeff Ching"],
      licenses: ["Apache 2.0"],
      links: %{
        "GitHub" => "https://github.com/GoogleCloudPlatform/elixir-google-api/tree/master/clients/vision",
        "Homepage" => "https://cloud.google.com/vision/"
      }
    ]
  end
end
