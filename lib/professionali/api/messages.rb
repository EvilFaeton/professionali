module Professionali
  module Api
    class Messages < Professionali::ApiCore
      def count(options = {})
        api_call 'messages/count.json', 'get', options
      end

      def delete(ids)
        api_call 'messages/delete.json', 'post', ids: ids
      end

      def faved(ids)
        api_call 'messages/faved.json', 'post', ids: ids
      end

      def get(options = {})
        api_call 'messages/get.json', 'get', options
      end

      def new(options = {})
        api_call 'messages/new.json', 'post', options
      end

      def read(ids)
        api_call 'messages/read.json', 'post', ids: ids
      end

      def trash(ids)
        api_call 'messages/trash.json', 'post', ids: ids
      end

      def unfaved(ids)
        api_call 'messages/unfaved.json', 'post', ids: ids
      end

      def unread(ids)
        api_call 'messages/unread.json', 'post', ids: ids
      end

      def untrash(ids)
        api_call 'messages/untrash.json', 'post', ids: ids
      end
    end
  end
end
