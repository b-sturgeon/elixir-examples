defmodule BullsCows do
  @moduledoc """
  Documentation for `BullsCows`.
  """
  def play() do
    answer = generate_answer()
    IO.puts("Guess my 4 letter word with no duplicates!")
    play("", answer)
  end
  def play(answer, answer), do: nil # Exit
  def play(guess, answer) do
    guess = IO.gets("Guess: ")
    |> String.downcase
    |> String.trim
    eval_guess(guess, answer)
    |> IO.inspect # the evaluation
    play(guess, answer)
  end

  def generate_answer() do
    {_, words} = File.read("./assets/4_letter_words.txt")
    words
    |> String.split("\n")
    |> Enum.filter(&no_duplicate_letters?(&1))
    |> Enum.random
    |> String.downcase
  end

  def no_duplicate_letters?(word) do
    word
      |> String.graphemes
      |> Enum.uniq
      |> Enum.join
      == word
  end

  def eval_guess(answer, answer), do: "You've won!"
  def eval_guess(guess, answer) do
    cond do
      String.length(guess) != String.length(answer) -> "That's not a valid guess. (Wrong number of letters)"
      !no_duplicate_letters?(guess) -> "That's not a valid guess. (Duplicated letters)"
      true -> eval_guess(String.graphemes(guess),
                         String.graphemes(answer),
                         %{:bulls => 0, :cows => 0},
                         0)
    end
  end
  def eval_guess([], _, eval, _), do: eval
  def eval_guess([h|tail], answer, eval, i) do
    cond do
      h == Enum.at(answer, i) -> # Bull
        eval_guess(tail, answer, Map.update!(eval, :bulls, &(&1+1)), i+1)
      h in answer -> # Cow
        eval_guess(tail, answer, Map.update!(eval, :cows, &(&1+1)), i+1)
      true -> # Nil
        eval_guess(tail, answer, eval, i+1)
    end
  end
end
