require 'spec_helper'
require_relative '../lib/new_base60/sxg_date'

RSpec.describe 'NewBase60::SxgDate' do
  it 'is of type date' do
    expect(NewBase60::SxgDate.new).to be_a Date
  end

  describe 'new_from_date' do
    it 'will return an SxgDate comparable with the passed in date' do
      test_date = Date.new(2010, 06, 04)
      sxg_date = NewBase60::SxgDate.new_from_date(test_date)
      expect(sxg_date <=> test_date).to eq 0
    end
  end

  describe 'to_sxg' do
    it 'will return the date as an sxg value' do
      expect(NewBase60::SxgDate.new(1970, 1, 1).to_sxg).to eq '0'
      expect(NewBase60::SxgDate.new(2010, 06, 04).to_sxg).to eq '464'
      expect(NewBase60::SxgDate.new(2012, 06, 05).to_sxg).to eq '4JG'
    end
  end
end
