module AzureClient
  class Request < Struct.new(:image_url)
    def post(url)
      response = Faraday.post(url) do |req|
        req.headers.merge!(headers)
        req.body = payload
      end
    rescue Faraday::TimeoutError
      raise Timeout::Error, "post to Azure URL #{url} timed out."
    end

    private

    def payload
      {
        url: image_url[:image_url]
      }.to_json
    end

    def headers
      {
        'Host' => UrlHelper.host_url,
        'Content-Type' => 'application/json',
        'Ocp-Apim-Subscription-Key' => Rails.application.credentials.dig(:azure_client_api_key),
      }
    end
  end
end
