require 'test_helper'

module AzureClient
  class RequestTest < ActiveSupport::TestCase
    setup do
      @url = "https://microsoft.com"
      @image_url = "https://cdn.stocksnap.io"
      @request = stub('request', headers: {}, 'body=': nil)
    end

    test "#post makes a remote request with headers and body set" do
      Faraday::Connection.any_instance.expects(:post).returns(status: 200, body: "", headers: {}).once.yields(@request)

      Request.new(image_url: @image_url).post(@url)
    end

    test "#post raises TimeoutError when remote call times out" do
      Faraday::Connection.any_instance.expects(:post).once.raises(Faraday::TimeoutError)

      assert_raises(Timeout::Error) do
        Request.new(image_url: @image_url).post(@url)
      end
    end
  end
end
