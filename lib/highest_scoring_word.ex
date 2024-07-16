defmodule Kata1 do
  def high(str) do
    biggest =
      str
      |> String.downcase()
      |> String.split(" ")
      |> Enum.map(fn x ->
        %{"char" => x, "val" => charlist_to_number(x)}
      end)
      |> Enum.max_by(& &1["val"])

    biggest["char"]
  end

  defp charlist_to_number(charlist) do
    charlist
    |> String.split("", trim: true)
    |> Enum.reduce(0, fn x, acc ->
      num = x |> char_to_number()
      num + acc
    end)
  end

  defp char_to_number(char) when is_binary(char) do
    (char |> String.to_charlist() |> hd) - ?a + 1
  end
end
