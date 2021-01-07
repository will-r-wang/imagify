module AzureClient
  class UrlHelper
    def self.host_url
      URI.parse(base_url).host
    end

    def self.describe_api_url(max_candidates: 1, language: "en")
      base_url + "/vision/v3.0/describe?maxCandidates=#{max_candidates}&language=#{language}"
    end

    private

    def self.base_url
      "https://eastus.api.cognitive.microsoft.com"
    end
  end
end
