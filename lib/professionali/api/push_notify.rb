module Professionali
  module Api
    class PushNotify < Professionali::ApiCore
      def subscribe(id, type)
        api_call 'push-notify/subscribe.json', 'post', {id: id, type: type}
      end

      def unsubscribe(id, type)
        api_call 'push-notify/unsubscribe.json', 'post', {id: id, type: type}
      end

      def is_subscribe(id, type)
        api_call 'push-notify/isSubscribe.json', 'get', {id: id, type: type}
      end

      def is_subscribe(message, id, type)
        api_call 'push-notify/test.json', 'post', {id: id, type: type, message: message}
      end
    end
  end
end
