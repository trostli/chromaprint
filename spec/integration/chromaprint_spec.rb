require 'spec_helper'
require 'byebug'

describe 'Chromaprint integration' do
  # Path to directory with file fixtures
  FIXTURES_PATH = File.expand_path('../fixtures', __FILE__)

  # Get absolute path to fixture file by its name
  #
  # @param filename [String]
  #
  # @return [String] path
  def fixture(filename)
    File.join(FIXTURES_PATH, filename)
  end

  it 'should compare fingerprints' do
    data_a = File.binread(fixture('a.wav'))
    data_b = File.binread(fixture('b.wav'))
    rate = 2250
    channels = 1

    chromaprint = Chromaprint::Context.new(rate, channels)

    fp_a = chromaprint.get_fingerprint(data_a)
    fp_b = chromaprint.get_fingerprint(data_b)
    fp_a.compare(fp_b).should be_within(0.005).of(0.995)
  end

  it 'should be able to tell if audio is similar but not identical' do
    piano_a = File.binread(fixture('piano-looped-melody.wav'))
    piano_b = File.binread(fixture('piano-looped-melody-thin.wav'))
    rate = 44100
    channels = 2

    chromaprint = Chromaprint::Context.new(rate, channels)

    fp_a = chromaprint.get_fingerprint(piano_a)
    fp_b = chromaprint.get_fingerprint(piano_b)
    fp_a.compare(fp_b).should be_within(0.005).of(0.874)
  end
end
