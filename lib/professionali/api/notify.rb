module Professionali
  module Api
    class Notify < Professionali::ApiCore
      def get(options = {})
        api_call 'notify/get.json', 'get', options
      end

      def post(message)
        api_call 'notify/post.json', 'post', message: message
      end
    end
  end
end
