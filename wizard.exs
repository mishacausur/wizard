defmodule Wizard do

	def main() do
		1..100
		|> Enum.map(&calculate/1)
		|> Enum.join(" ")
		|> IO.puts()
	end

	@spec calculate(integer()) :: String.t()
	def calculate(number) do
		divisible_by_3 = rem(number, 3) == 0
		divisible_by_5 = rem(number, 5) == 0
		cond do
			divisible_by_3 and divisible_by_5 -> "both"
			divisible_by_3 -> "three"
			divisible_by_5 -> "five"
			true -> to_string(number)
		end
	end
end