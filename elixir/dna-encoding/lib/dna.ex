defmodule DNA do
  def encode_nucleotide(code_point \\ ?\s) do
    case code_point do
      ?\s -> 0b0000
      ?A -> 0b0001
      ?C -> 0b0010
      ?G -> 0b0100
      ?T -> 0b1000
    end
  end

  def decode_nucleotide(encoded_code) do
    case encoded_code do
      0b0000 -> ?\s
      0b0001 -> ?A
      0b0010 -> ?C
      0b0100 -> ?G
      0b1000 -> ?T
    end
  end

  def encode(dna), do: do_encode(dna, <<>>)
  defp do_encode([], acc), do: acc

  defp do_encode([h | t], acc) do
    do_encode(t, <<acc::bitstring, encode_nucleotide(h)::size(4)>>)
  end

  def decode(dna), do: do_decode(dna, '')
  defp do_decode(<<>>, acc), do: acc

  defp do_decode(<<h::size(4), t::bitstring>>, acc),
    do: do_decode(t, acc ++ [decode_nucleotide(h)])
end
