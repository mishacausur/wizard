defmodule Wizard do

	def main() do
		Enum.each(1..100, &calculate/1)
	end

	def calculate(number) do
		cond do
			rem(number, 3) == 0 and rem(number, 5) == 0 -> IO.puts("both")
			rem(number, 3) == 0 -> IO.puts("three")
			rem(number, 5) == 0 -> IO.puts("five")
			true -> IO.puts(number)
		end
	end
end