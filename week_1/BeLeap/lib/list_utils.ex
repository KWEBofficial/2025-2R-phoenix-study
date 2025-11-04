defmodule ListUtils do
  def my_length([]), do: 0
  def my_length([_ | tail]), do: 1 + length(tail)
end
