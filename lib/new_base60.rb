require "new_base60/version"

module NewBase60

  class Base10
    attr_reader :value, :vocabulary

    def initialize(value, args = {})
      @value = value
      @vocabulary = args.fetch(:vocabulary, self.default_vocabulary)
    end

    def to_sxg
      output = '' 
      nn = value

      while nn > 0
        dd = nn % 60
        output << vocabulary.chars[dd]
        nn = (nn - dd) / 60
      end

      output
    end

    def default_vocabulary
      '0123456789ABCDEFGHJKLMNPQRSTUVWXYZ_abcdefghijkmnopqrstuvwxyz'
    end

  end
end
