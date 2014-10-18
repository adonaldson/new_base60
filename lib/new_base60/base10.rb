module NewBase60
  class Base10
    attr_reader :value

    def initialize(value)
      @value = value
    end

    def self.vocabulary
      '0123456789ABCDEFGHJKLMNPQRSTUVWXYZ_abcdefghijkmnopqrstuvwxyz'
    end

    def to_sxg
      return value.to_s if value < 10

      output = []
      nn = value

      while nn > 0
        dd = nn % 60
        output.unshift(self.class.vocabulary.chars[dd])
        nn = (nn - dd) / 60
      end

      output.join
    end
  end
end
