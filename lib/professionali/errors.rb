module Professionali
  module Errors
    class ProfessionaliError < StandardError
      attr_reader :data
      def initialize(data)
        @data = data
        super
      end
    end

    class UnauthorizedError      < ProfessionaliError; end
    class GeneralError           < ProfessionaliError; end
    class AccessDeniedError      < ProfessionaliError; end
    class UnavailableError       < ProfessionaliError; end
    class NotFoundError          < ProfessionaliError; end
  end
end
