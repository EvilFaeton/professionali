module Professionali
  module Api
    class Invites < Professionali::Api
      def accept(id)
        api_call 'invites/accept.json', post, id: id
      end

      def count(options = {})
        api_call 'invites/count.json', post, options
      end

      def delete(ids)
        api_call 'invites/delete.json', post, ids: ids
      end

      def deny(ids)
        api_call 'invites/deny.json', post, ids: ids
      end

      def faved(ids)
        api_call 'invites/faved.json', post, ids: ids
      end

      def get(options = {})
        api_call 'invites/get.json', post, options
      end

      def new(options)
        api_call 'invites/new.json', post, options
      end

      def read(ids)
        api_call 'invites/read.json', post, ids: ids
      end

      def trash(ids)
        api_call 'invites/trash.json', post, ids: ids
      end

      def unfaved(ids)
        api_call 'invites/unfaved.json', post, ids: ids
      end

      def unread(ids)
        api_call 'invites/unread.json', post, ids: ids
      end

      def untrash(ids)
        api_call 'invites/untrash.json', post, ids: ids
      end

      def get_can_contact_invite(ids)
        api_call 'invites/getCanContactInvite.json', get, ids: ids
      end

      def get_can_app_invite(ids)
        api_call 'invites/GetCanAppInvite.json', get, ids: ids
      end
    end
  end
end
