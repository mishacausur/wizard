defmodule FloatComprarer do

  def equal?(f1, f2, presicion \\ 0.01) do
    abs(f1 - f2) < presicion
  end
end

ExUnit.start()
defmodule FloatComprarerTests do
  use ExUnit.Case
  import FloatComprarer

  test "equal?" do
    assert equal?(5.0, 5.0)
    assert not equal?(11.3, 11.5)
    refute equal?(3.4, 9.8)
    assert equal?(15.06, 15.06)
  end

  test "equal? w/ prec" do
    assert equal?(5.3, 5.31)
    refute equal?(3.14, 3.1, 0.001)
  end
end
