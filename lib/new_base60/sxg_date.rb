module NewBase60
  class SxgDate < Date
    def self.new_from_date(date)
      new(date.year, date.month, date.day)
    end

    def to_sxg
      Base10.new(days_since_epoch).to_sxg
    end

    def days_since_epoch
      (self - Date.new(1970, 1, 1)).to_i
    end
  end
end
