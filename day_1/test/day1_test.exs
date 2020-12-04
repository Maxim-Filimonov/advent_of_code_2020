defmodule Day1Test do
  use ExUnit.Case
  doctest Day1

  test "greets the world" do
    assert Day1.hello() == :world
  end

  test "it reads input file" do
    assert String.length(Day1.read_input()) > 0
  end

  describe "parsing input" do
    test "splits based on delimiter" do
      input = "123\n345"
      assert [123, 345] = Day1.parse(input)
    end

    test "handles input" do
      output = Day1.read_input()
        |> Day1.parse()

      assert Enum.count(output) > 0
    end
  end

  describe "find_entries" do
    test "can find entries in example" do
      example = [1721,
      979,
      366,
      299,
      675,
      1456]
      # 2020 - 1956 = 64
      entries = Day1.find_entries(example)
      assert [1721, 299] = entries
    end
  end

  test "can find entries in actual input" do
    [match1, match2] = Day1.read_input
      |> Day1.parse
      |> Day1.find_entries

    answer =  match1 * match2
    IO.puts(answer)
    assert answer > 0
  end
end
