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

  @spec find_candidate(number) :: number
  def find_candidate(input) do
    2020 - input
  end
end
