defmodule Kata do
  def high(str) when is_binary(str) do
    str
    |> String.downcase()
    |> String.split(" ")
    |> Enum.map(fn x -> charlist_to_number(x) end)
    |> Enum.max()

  end

  def high(str), do: str
  defp charlist_to_number(charlist) do
    charlist
    |> String.split("")
    |> Enum.reduce(0, fn (x, acc) ->
      num = x |> char_to_number()
      num + acc
    end)
  end

  defp char_to_number(char) when is_binary(char) do
    ((char |> String.to_charlist |> hd) - ?a) + 1
  end
end
