require 'hashie'
require 'multi_json'

module Professionali
  class Mash < ::Hashie::Mash
    def self.from_json(json_string)
      result_hash = ::MultiJson.decode(json_string)
      puts result_hash
      if result_hash.is_a?(Array)
        result_hash.map{ |e| new(e) }
      else
        new(result_hash)
      end
    end
  end
end
