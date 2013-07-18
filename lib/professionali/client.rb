require 'rest_client'
require 'professionali/api/enterprise'
require 'professionali/api/groups'
require 'professionali/api/invites'
require 'professionali/api/messages'
require 'professionali/api/notify'
require 'professionali/api/push_notify'
require 'professionali/api/search'
require 'professionali/api/storage'
require 'professionali/api/tape'
require 'professionali/api/users'

module Professionali
  class Client

    attr_accessor :token, :cl_enterprise, :cl_groups, :cl_invites, :cl_messages,
      :cl_notify, :cl_push_notify, :cl_search, :cl_storage, :cl_tape, :cl_users

    def initialize token
      @token = token
    end

    def enterprise
      @cl_enterprise ||= Professionali::Api::Enterprise.new(@token)
    end

    def groups
      @cl_groups ||= Professionali::Api::Groups.new(@token)
    end

    def invites
      @cl_invites ||= Professionali::Api::Invites.new(@token)
    end

    def messages
      @cl_messages ||= Professionali::Api::Messages.new(@token)
    end

    def notify
      @cl_notify ||= Professionali::Api::Notify.new(@token)
    end

    def push_notify
      @cl_push_notify ||= Professionali::Api::PushNotify.new(@token)
    end

    def search
      @cl_search ||= Professionali::Api::Search.new(@token)
    end

    def storage
      @cl_storage ||= Professionali::Api::Storage.new(@token)
    end

    def tape
      @cl_tape ||= Professionali::Api::Tape.new(@token)
    end

    def users
      @cl_users ||= Professionali::Api::Users.new(@token)
    end
  end
end
