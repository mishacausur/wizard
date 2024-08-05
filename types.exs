defmodule Types do
  def types() do
    i = 40
    d = 0x2A

    [i: i, d: d]
    |> Enum.each(fn {key, value} -> IO.puts("#{key} = #{value}") end)
  end
end
