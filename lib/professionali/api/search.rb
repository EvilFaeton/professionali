module Professionali
  module Api
    class Search < Professionali::Api
      def get(query, options = {})
        api_call 'search/people.json', get, options.merge(query: query)
      end
    end
  end
end
