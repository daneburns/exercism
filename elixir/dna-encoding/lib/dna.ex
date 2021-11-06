defmodule DNA do
  def encode_nucleotide(code_point) do
    case code_point do
      65 -> 0b0001
      67 -> 0b0010
      71 -> 0b0100
      84 -> 0b1000
      32 -> 0b0000
      _ -> :error
    end
  end

  def decode_nucleotide(encoded_code) do
    case encoded_code do
      0b0001 -> 65
      0b0010 -> 67
      0b0100 -> 71
      0b1000 -> 84
      0b0000 -> 32
      _ -> :error
    end
  end

  def encode([head | tail]) do
    encode([head]) + encode(tail)
  end

  def encode([head]) do
  end

  def decode(dna) do
    # Please implement the decode/1 function
  end
end
