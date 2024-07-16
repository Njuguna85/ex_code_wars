defmodule Kata do
  def disemvowel(sentence) do
    # TODO: working solution
    sentence
    |> String.split(" ")
    |> Enum.map(fn str ->
      str
      |> String.split("")
      |> Enum.reduce("", fn s, acc ->
        if(not is_vowel?(s), do: acc <> s, else: acc)
      end)
    end)
    |> IO.inspect()
    |> Enum.join(" ")
  end

  def is_vowel?(st) do
    String.contains?(st, String.split("aeiouAEIOU", "", trim: true))
  end
end
