module Professionali
  module Api
    class Tape < Professionali::ApiCore
      def get(options)
        api_call 'tape/get.json', 'get', options
      end

      def notify_myself(options)
        api_call 'tape/notifyMyself.json', 'post', options
      end

      def notify_watchers(options)
        api_call 'tape/notifyWatchers.json', 'post', options
      end
    end
  end
end
