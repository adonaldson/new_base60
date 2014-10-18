module NewBase60
  class Sxg
    attr_reader :value

    def initialize(value)
      @value = value
    end

    def self.vocabulary
      '0123456789ABCDEFGHJKLMNPQRSTUVWXYZ_abcdefghijkmnopqrstuvwxyz'
    end

    def to_i
      value.chars.inject(0) { |sum, char| sum = (60 * sum) + self.class.vocabulary.index(char) }
    end

    def to_date
      Date.new(1970, 1, 1) + to_i
    end
  end
end
