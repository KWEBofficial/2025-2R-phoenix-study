defmodule ListUtils do
  def my_length([]) do
    0
  end

  def my_length([_h | t]) do
    1 + my_length(t)
  end
end
