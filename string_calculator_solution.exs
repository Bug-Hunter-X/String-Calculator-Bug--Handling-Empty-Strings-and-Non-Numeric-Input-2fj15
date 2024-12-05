defmodule StringCalculator do
  def add(input) when is_binary(input) do
    case String.trim(input) do
      "" -> 0
      input ->
        input
        |> String.split(",")
        |> Enum.map(&handle_number/1)
        |> Enum.sum()
    end
  end

  defp handle_number(num) do
    case Integer.parse(num) do
      {number, _} -> number
      :error -> 0  # or raise an exception depending on requirements
    end
  end
end