module Professionali

  class << self
    attr_accessor :token

    def configure
      yield self
      true
    end
  end

  autoload :Config,     "professionali/config"
  autoload :Version,    "professionali/version"
  autoload :Mash,       "professionali/mash"
  autoload :Errors,     "professionali/errors"
  autoload :Client,     "professionali/client"
end
