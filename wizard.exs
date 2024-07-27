defmodule Wizard do

	def main() do
		Enum.each(1..100, &calculate/1)
	end

	@spec calculate(integer()) :: String.t()
	def calculate(number) do
		cond do
			rem(number, 3) == 0 and rem(number, 5) == 0 -> "both"
			rem(number, 3) == 0 -> "three"
			rem(number, 5) == 0 -> "five"
			true -> to_string(number)
		end
	end
end