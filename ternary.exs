defmodule Ternary do

  def ternary_not(false), do: true
  def ternary_not(nil), do: nil
  def ternary_not(true), do: false

  def ternary_and(false, false), do: false
  def ternary_and(false, nil), do: false
  def ternary_and(false, true), do: false

  def ternary_and(nil, false), do: false
  def ternary_and(nil, nil), do: nil
  def ternary_and(nil, true), do: nil

  def ternary_and(true, false), do: false
  def ternary_and(true, nil), do: nil
  def ternary_and(true, true), do: true

  def ternary_or(false, false), do: false
  def ternary_or(false, nil), do: nil
  def ternary_or(false, true), do: true

  def ternary_or(nil, false), do: nil
  def ternary_or(nil, nil), do: nil
  def ternary_or(nil, true), do: true

  def ternary_or(true, false), do: true
  def ternary_or(true, nil), do: true
  def ternary_or(true, true), do: true

end

ExUnit.start()
defmodule TernaryTest do
  use ExUnit.Case
  import Ternary

  test "ternary not" do
    assert ternary_not(false) == true
    assert ternary_not(true) == false
    assert ternary_not(nil) == nil
  end

  test "ternary and" do
    assert ternary_and(false, false) == false
    assert ternary_and(false, true) == false
    assert ternary_and(false, nil) == false
    assert ternary_and(nil, false) == false
    assert ternary_and(nil, true) == nil
    assert ternary_and(nil, nil) == nil
    assert ternary_and(true, false) == false
    assert ternary_and(true, true) == true
    assert ternary_and(true, nil) == nil
  end
end
