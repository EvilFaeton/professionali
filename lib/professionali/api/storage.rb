module Professionali
  module Api
    class Storage < Professionali::Api
      def get(options)
        api_call 'storage/get.json', get, options
      end

      def set(options)
        api_call 'storage/set.json', post, options
      end
    end
  end
end
