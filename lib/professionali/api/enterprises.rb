module Professionali
  module Api
    class Enterprises < Professionali::ApiCore
      def get(id, fields = "id, name")
        api_call 'enterprises/get.json', 'get', {id: id, fields: fields}
      end

      def positions(id = "me")
        api_call 'enterprises/positions.json', 'get', {id: id}
      end

      def staff(id, filter = "all")
        api_call 'enterprises/staff.json', 'get', {id: id, filter: filter}
      end
    end
  end
end
