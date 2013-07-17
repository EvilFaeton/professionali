require 'rest_client'

module Professionali
  class Client

    attr_accessor :token

    def initialize token
      @token = token
    end
  end
end
