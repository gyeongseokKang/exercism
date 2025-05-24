defmodule GuessingGame do
  def compare(_secret_number, :no_guess) do
    "Make a guess"
  end

  def compare(_) do
    "Make a guess"
  end

  def compare(secret_number, guess) when is_integer(guess) and secret_number == guess do
    "Correct"
  end

  def compare(secret_number, guess) when is_integer(guess) and abs(secret_number - guess) == 1 do
    "So close"
  end

  def compare(secret_number, guess) when is_integer(guess) and secret_number < guess do
    "Too high"
  end

  def compare(secret_number, guess) when is_integer(guess) and secret_number > guess do
    "Too low"
  end
end
