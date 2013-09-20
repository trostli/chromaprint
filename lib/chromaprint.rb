require 'ffi'

require 'chromaprint/lib'
require 'chromaprint/context'
require 'chromaprint/fingerprint'

# Chromaprint is originally written in C/C++ library which allows to calculate
# fingerprints of audio data. This is its port for Ruby language.
module Chromaprint
  # All algorithm constants are taken from +chromaprint.h+
  ALGORITHM_TEST1 = 0

  # :nodoc:
  ALGORITHM_TEST2 = 1

  # :nodoc:
  ALGORITHM_TEST3 = 2

  # Default algorithm. Taken from +chromaprint.h+
  ALGORITHM_DEFAULT = ALGORITHM_TEST2

  # Chromaprint works with 16 bit samples
  BYTES_PER_SAMPLE = 2
end
