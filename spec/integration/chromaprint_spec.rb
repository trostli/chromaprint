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
    rate = 22000
    channels = 1

    chromaprint = Chromaprint::Context.new(rate, channels)

    fp_a = chromaprint.get_fingerprint(data_a)
    fp_b = chromaprint.get_fingerprint(data_b)

    expect(fp_a.compare(fp_b)).to be_within(0.005).of(0.995)
  end

  it 'should raise an error when comparing if audio is too short' do
    clap_a = File.binread(fixture('clap.wav'))
    clap_b = File.binread(fixture('clap.wav'))
    rate = 44100
    channels = 2

    chromaprint = Chromaprint::Context.new(rate, channels)
#
    fp_a = chromaprint.get_fingerprint(clap_a)
    fp_b = chromaprint.get_fingerprint(clap_b)

    expect { fp_a.compare(fp_b) }.to raise_error(Chromaprint::AudioTooShortError)
  end

  it 'should be able to tell if audio is identical' do
    break_a = File.binread(fixture('vintage-vinyl-break.wav'))
    break_b = File.binread(fixture('vintage-vinyl-break.wav'))
    rate = 44100
    channels = 2

    chromaprint = Chromaprint::Context.new(rate, channels)
#
    fp_a = chromaprint.get_fingerprint(break_a)
    fp_b = chromaprint.get_fingerprint(break_b)

    expect(fp_a.compare(fp_b)).to be_within(0.005).of(1.0)
  end

  it 'should be able to tell if audio is similar but not identical' do
    piano_a = File.binread(fixture('piano-looped-melody.wav'))
    piano_b = File.binread(fixture('piano-looped-melody-thin.wav'))
    rate = 44100
    channels = 2

    chromaprint = Chromaprint::Context.new(rate, channels)

    fp_a = chromaprint.get_fingerprint(piano_a)
    fp_b = chromaprint.get_fingerprint(piano_b)

    expect(fp_a.compare(fp_b)).to be_within(0.005).of(0.874)
  end
end
