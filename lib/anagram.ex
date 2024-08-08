defmodule Anagram do
  def anagram?(a, b) do
    parse(a) == parse(b)
  end

  defp parse(word) do
    word
    |> String.downcase()
    |> String.graphemes()
    |> Enum.sort()
  end
end
