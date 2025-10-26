defmodule ListUtilsTest do
  use ExUnit.Case

  test "빈 리스트" do
    assert ListUtils.my_length([]) == 0
  end

  test "일반 리스트" do
    assert ListUtils.my_length([1, 2, 3, 4]) == 4
  end

  test "중첩 리스트" do
    assert ListUtils.my_length([[1, 2], 3, 4]) == 3
  end

  test "길이가 큰 리스트" do
    big = Enum.to_list(1..10_000)
    assert ListUtils.my_length(big) == 10_000
  end
end
