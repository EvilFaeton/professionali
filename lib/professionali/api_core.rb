module Professionali
  class ApiCore
    attr_accessor :token

    def initialize token
      @token = token
    end

    def api_call path, method = "get", params = {}
      params = params.merge(access_token: @token)
      begin
        case method
          when "get"
            response = RestClient.get api_url(path), params: params
          when "put"
            response = RestClient.put api_url(path), params: params, accept: :json
          when "post"
            response = RestClient.post api_url(path), params: params, accept: :json
          else
            response = RestClient.send method, api_url(path), params: params
        end

      rescue => e
        raise_errors e.response
      end
      Professionali::Mash.from_json response.body
    end

    def raise_errors response
      case response.code.to_i
      when 400
        data = Mash.from_json(response.body)
        raise Professionali::Errors::GeneralError.new(data), "(#{data.status}): #{data.message}"
      when 403
        raise Professionali::Errors::AccessDeniedError, "(#{response.code}): #{response.message}"
      when 405, 401
        raise Professionali::Errors::UnauthorizedError, "(#{response.code}): #{response.message}"
      when 404
        raise Professionali::Errors::NotFoundError, "(#{response.code}): #{response.message}"
      when 500
        raise Professionali::Errors::InformWhitLiError, "Professionali had an internal error. (#{response.code}): #{response.message}"
      when 502..503
        raise Professionali::Errors::UnavailableError, "(#{response.code}): #{response.message}"
      end
    end

    def post
      :post
    end

    def get
      :get
    end

    private

    def api_url(path)
      [Professionali::Config::API_URL, "v#{Professionali::Config::API_VERSION}",
        path].join("/")
    end
  end
end
