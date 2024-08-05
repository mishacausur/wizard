defmodule GCD do

  def gcd(a, b) when a < 0, do: gcd(-a, b)

  def gcd(a, b) when b < 0, do: gcd(a, -b)

  def gcd(a, 0), do: a

  def gcd(a, b) do
    case rem(a, b) do
      0 -> b
      c -> gcd(b, c)
    end
  end
end

ExUnit.start()
defmodule GCDTests do
  use ExUnit.Case
  import GCD

  test "GCD base cases" do
    assert gcd(12, 9) == 3
    assert gcd(9, 12) == 3
    assert gcd(60, 48) == 12
  end

  test "corner cases" do
    assert gcd(3, 6) == 3
    assert gcd(-3, 6) == 3
    assert gcd(3, -6) == 3
    assert gcd(-3, -6) == 3
  end

  test "zero cases" do
    assert gcd(3, 0) == 3
    assert gcd(0, 3) == 3
    assert gcd(0, 0) == 0
  end
end
