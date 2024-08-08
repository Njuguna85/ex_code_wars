defmodule Solution do
  @roman_values %{
    "I" => 1,
    "V" => 5,
    "X" => 10,
    "L" => 50,
    "C" => 100,
    "D" => 500,
    "M" => 1000
  }

  def decode(roman) do
    String.graphemes(roman)
    |> Enum.reduce({0, 0}, fn char, {total, last_value} ->
      value = Map.get(@roman_values, char)

      if value > last_value do
        {total + value - 2 * last_value, value}
      else
        {total + value, value}
      end
    end)
    |> elem(0)
  end
end
