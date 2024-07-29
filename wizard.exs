defmodule Wizard do

	def main() do
		calculate100()
		|> Enum.join(" ")
		|> IO.puts()
	end

	def calculate100() do

		Enum.map(1..100, &calculate/1)
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

ExUnit.start()

defmodule WizardTest do
	use ExUnit.Case
	import Wizard

	test "calculate 1-10" do
		assert calculate(1) == "1"
		assert calculate(2) == "2"
		assert calculate(3) == "three"
		assert calculate(4) == "4"
		assert calculate(5) == "five"
		assert calculate(6) == three"
		assert calculate(7) == "7"
		assert calculate(8) == "8"
		assert calculate(9) == three"
		assert calculate(10) == "five"
	end
end