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

  describe "find_candidate" do
    test "returns numbers lower than max" do
      # 2020 - 1956 = 64
      candidate = Day1.find_candidate(1956)
      assert 64 = candidate
    end
  end
end
