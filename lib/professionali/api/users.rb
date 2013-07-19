module Professionali
  module Api
    class Users < Professionali::ApiCore
      def get(ids = "me", options = { fields: "name,avatar_medium,birthday" })
        api_call 'users/get.json', 'get', options.merge("ids[]" => ids)
      end

      def activities(id = "me", options = {})
        api_call 'users/activity.json', 'get', options.merge(id: id)
      end

      def schools(id = "me")
        api_call 'users/schools.json', 'get', {id: id}
      end

      def contacts(id = "me")
        api_call 'users/сontacts.json', 'get', {id: id}
      end

      def visitors(id = "me")
        api_call 'users/visitors.json', 'get', {id: id}
      end

      def set_action(message)
        api_call 'users/setAction.json', 'post', {message: message}
      end

      def is_connected(id)
        api_call 'users/isConnected.json', 'get', {id: id}
      end

      def view_user_page(id)
        api_call 'users/viewUserPage.json', 'get', {id: id}
      end
    end
  end
end
