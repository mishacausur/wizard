defmodule Types do
  def types() do
    #integers
    i = 40
    d = 0x2A
    b = 0o52
    r = 0b101010

    #floats from integers
    f = 50/3
    f1 = div(41, 7) # целочисленное
    f2 = rem(7, 2) # остаток от деления

    [i: i, d: d, b: b, r: r, f: f, f1: f1, f2: f2]
    |> Enum.each(fn {key, value} -> IO.puts("#{key} = #{value}") end)

    #floats itself
    fl = 40.6
    fl1 = 20 + 50.4
    fl2 = 2 * 1.3

    [fl: fl, fl1: fl1, fl2: fl2]
    |> Enum.each(fn {key, value} -> IO.puts("#{key} = #{value}") end)
  end
end
