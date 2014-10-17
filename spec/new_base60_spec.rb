require 'spec_helper'
require_relative '../lib/new_base60'

RSpec.describe 'NewBase60::Base10' do
  describe 'to_sxg' do
    it 'returns a string' do
      expect(NewBase60::Base10.new(0).to_sxg).to be_a String
    end

    it 'returns correct values for single values' do
      (1..9).each do |value|
        expect(NewBase60::Base10.new(value).to_sxg).to eq value.to_s
      end

      expect(NewBase60::Base10.new(10).to_sxg).to eq 'A'
      expect(NewBase60::Base10.new(11).to_sxg).to eq 'B'
      expect(NewBase60::Base10.new(12).to_sxg).to eq 'C'
      expect(NewBase60::Base10.new(13).to_sxg).to eq 'D'
      expect(NewBase60::Base10.new(14).to_sxg).to eq 'E'
      expect(NewBase60::Base10.new(15).to_sxg).to eq 'F'
      expect(NewBase60::Base10.new(16).to_sxg).to eq 'G'
      expect(NewBase60::Base10.new(17).to_sxg).to eq 'H'
      expect(NewBase60::Base10.new(18).to_sxg).to eq 'J'
      expect(NewBase60::Base10.new(19).to_sxg).to eq 'K'
      expect(NewBase60::Base10.new(20).to_sxg).to eq 'L'
      expect(NewBase60::Base10.new(21).to_sxg).to eq 'M'
      expect(NewBase60::Base10.new(22).to_sxg).to eq 'N'
      expect(NewBase60::Base10.new(23).to_sxg).to eq 'P'
      expect(NewBase60::Base10.new(24).to_sxg).to eq 'Q'
      expect(NewBase60::Base10.new(25).to_sxg).to eq 'R'
      expect(NewBase60::Base10.new(26).to_sxg).to eq 'S'
      expect(NewBase60::Base10.new(27).to_sxg).to eq 'T'
      expect(NewBase60::Base10.new(28).to_sxg).to eq 'U'
      expect(NewBase60::Base10.new(29).to_sxg).to eq 'V'
      expect(NewBase60::Base10.new(30).to_sxg).to eq 'W'
      expect(NewBase60::Base10.new(31).to_sxg).to eq 'X'
      expect(NewBase60::Base10.new(32).to_sxg).to eq 'Y'
      expect(NewBase60::Base10.new(33).to_sxg).to eq 'Z'
      expect(NewBase60::Base10.new(34).to_sxg).to eq '_'
      expect(NewBase60::Base10.new(35).to_sxg).to eq 'a'
      expect(NewBase60::Base10.new(36).to_sxg).to eq 'b'
      expect(NewBase60::Base10.new(37).to_sxg).to eq 'c'
      expect(NewBase60::Base10.new(38).to_sxg).to eq 'd'
      expect(NewBase60::Base10.new(39).to_sxg).to eq 'e'
      expect(NewBase60::Base10.new(40).to_sxg).to eq 'f'
      expect(NewBase60::Base10.new(41).to_sxg).to eq 'g'
      expect(NewBase60::Base10.new(42).to_sxg).to eq 'h'
      expect(NewBase60::Base10.new(43).to_sxg).to eq 'i'
      expect(NewBase60::Base10.new(44).to_sxg).to eq 'j'
      expect(NewBase60::Base10.new(45).to_sxg).to eq 'k'
      expect(NewBase60::Base10.new(46).to_sxg).to eq 'm'
      expect(NewBase60::Base10.new(47).to_sxg).to eq 'n'
      expect(NewBase60::Base10.new(48).to_sxg).to eq 'o'
      expect(NewBase60::Base10.new(49).to_sxg).to eq 'p'
      expect(NewBase60::Base10.new(50).to_sxg).to eq 'q'
      expect(NewBase60::Base10.new(51).to_sxg).to eq 'r'
      expect(NewBase60::Base10.new(52).to_sxg).to eq 's'
      expect(NewBase60::Base10.new(53).to_sxg).to eq 't'
      expect(NewBase60::Base10.new(54).to_sxg).to eq 'u'
      expect(NewBase60::Base10.new(55).to_sxg).to eq 'v'
      expect(NewBase60::Base10.new(56).to_sxg).to eq 'w'
      expect(NewBase60::Base10.new(57).to_sxg).to eq 'x'
      expect(NewBase60::Base10.new(58).to_sxg).to eq 'y'
      expect(NewBase60::Base10.new(59).to_sxg).to eq 'z'
    end

    it 'converts base 10 to base 60' do
      expect(NewBase60::Base10.new(14764).to_sxg).to eq '464'
      expect(NewBase60::Base10.new(12345).to_sxg).to eq 'kR3'
    end

  end
end
