defmodule Day1 do
  @moduledoc """
  Documentation for `Day1`.
  """

  @doc """
  Hello world.

  ## Examples

      iex> Day1.hello()
      :world

  """
  def hello do
    :world
  end

  def read_input do
    read_file = Path.expand('./input') |> File.read()

    case read_file do
      {:ok, content} ->
        content

      {:error, error} ->
        raise error
    end
  end

  def parse(input) do
    output =
      input
      |> String.split("\n")
      |> Enum.map(&String.to_integer/1)
  end

  def find_entries(input) do
    # sorted = candidates.sort
    candidates = Enum.map(input, fn x -> 2020 - x end)
    match = Enum.find(candidates, fn x -> Enum.any?(input, fn y -> y == x end) end)
    [2020 - match, match]
    # Enum.each(candidates, fn x -> 2020- x end)
  end

end
