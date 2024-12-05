defmodule StringCalculator do
  def add(input) when is_binary(input) do
    input
    |> String.split(",")
    |> Enum.map(&String.to_integer/1)
    |> Enum.sum()
  end
end