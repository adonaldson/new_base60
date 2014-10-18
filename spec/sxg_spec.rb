require 'spec_helper'
require_relative '../lib/new_base60/sxg'

RSpec.describe 'NewBase60::Sxg' do
  describe 'to_i' do
    it 'returns an integer' do
      expect(NewBase60::Sxg.new('').to_i).to be_a Fixnum
    end

    it 'converts the sxg value to an integer' do
      expect(NewBase60::Sxg.new('A').to_i).to eq 10
      expect(NewBase60::Sxg.new('10').to_i).to eq 60
      expect(NewBase60::Sxg.new('fs4').to_i).to eq 147124
    end
  end

  describe 'to_date' do
    it 'will return the epoch for an empty string' do
      expect(NewBase60::Sxg.new('').to_date).to eq Date.new(1970, 1, 1)
    end

    it 'will return the epoch date plus sxg converted value of days' do
      expect(NewBase60::Sxg.new('1').to_date).to eq Date.new(1970, 1, 2)
      expect(NewBase60::Sxg.new('464').to_date).to eq Date.new(2010, 06, 04)
      expect(NewBase60::Sxg.new('4JG').to_date).to eq Date.new(2012, 06, 05)
    end
  end
end
