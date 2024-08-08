defmodule FloatComprarer do

  def equal?(f1, f2, presicion \\ 0.01) do
    abs(f1 - f2) < presicion
  end
end
