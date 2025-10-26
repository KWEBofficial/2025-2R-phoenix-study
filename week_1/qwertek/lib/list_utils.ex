defmodule ListUtils do
  def my_length(_list) do
    case _list do
      [] -> 0
      [head | tail] -> 1 + my_length(tail)
    end
  end
end