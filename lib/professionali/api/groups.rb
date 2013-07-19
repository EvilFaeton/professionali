module Professionali
  module Api
    class Groups < Professionali::ApiCore
      def get_random
        api_call 'groups/getRandom.json', 'get'
      end

      def get(ids = "me", fields = "id,title,summary")
        api_call 'groups/get.json', 'get'
      end

      def get_my_groups
        api_call 'groups/getMyGroups.json', 'get'
      end

      def get_groups_catalog(fields = "id,title,summary", options = {})
        api_call 'groups/getGroupsCatalog.json', 'get', options.merge(fields: fields)
      end

      def get_group_admins(id)
        api_call 'groups/getGroupAdmins.json', 'get', {id: id}
      end

      def get_group_topics(options)
        api_call 'groups/getGroupTopics.json', 'get', options
      end

      def get_topic(id, fields)
        api_call 'groups/getTopic.json', 'get', {id: id, fields: fields}
      end

      def get_new_topics(options)
        api_call 'groups/getNewTopics.json', 'get', options
      end

      def get_top_100_topics(options)
        api_call 'groups/getTop100Topics.json', 'get', options
      end

      def get_comments(options)
        api_call 'groups/getComments.json', 'get', options
      end

      def get_topic_likers(options)
        api_call 'groups/getTopicLikers.json', 'get', options
      end

      def fave(id, fave = "1")
        api_call 'groups/fave.json', 'get', {id: id, fave: fave}
      end

      def group_apply(id)
        api_call 'groups/groupApply.json', 'get', {group_id: id}
      end

      def group_leave(id)
        api_call 'groups/groupLeave.json', 'get', {group_id: id}
      end

      def group_invite(options)
        api_call 'groups/groupInvite.json', 'get', options
      end

      def add_comment(options)
        api_call 'groups/addComment.json', 'get', options
      end

      def topic_subscribe(options)
        api_call 'groups/topicSubscribe.json', 'get', options
      end

      def get_faved_topics(options)
        api_call 'groups/getFavedTopics.json', 'get', options
      end

      def get_rights(options)
        api_call 'groups/getRights.json', 'get', options
      end

      def like_topic(options)
        api_call 'groups/likeTopic.json', 'get', options
      end

      def add_topic_view(id)
        api_call 'groups/addTopicView.json', 'get', {topic_id: id}
      end

    end
  end
end
