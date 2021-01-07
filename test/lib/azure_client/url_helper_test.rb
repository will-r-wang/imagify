require 'test_helper'

module AzureClient
  class UrlHelperTest < ActiveSupport::TestCase
    test "#host_url returns the correct url" do
      assert_equal "eastus.api.cognitive.microsoft.com", UrlHelper.host_url
    end

    test "#describe_api_url returns the correct url for unspecified params" do
      expected_url = URI::HTTPS.build(
        host: "eastus.api.cognitive.microsoft.com",
        path: "/vision/v3.0/describe",
        query: "maxCandidates=1&language=en",
      ).to_s

      assert_equal expected_url, UrlHelper.describe_api_url
    end
  end
end
