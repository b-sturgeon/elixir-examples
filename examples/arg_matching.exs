defmodule Greeter do

  def hello(%{name: person_name} = person) do
    IO.puts "Hello, " <> person_name
    IO.inspect(person)
  end

  def hello(%{last_name: last_name, gender: "male"}) do
      IO.puts "Hello, Mr. " <> last_name
  end

  def hello(%{last_name: last_name, gender: "female"}) do
    IO.puts "Hello, Mrs. " <> last_name
  end

end


fred = %{
  name: "Fred Weasley",
}

george = %{
  gender: "male",
  last_name: "Weasley",
}

ginny = %{
  gender: "female",
  last_name: "Weasley",
}

ron = %{
  name: "Ron",
  gender: "male",
  last_name: "Weasley",
}

# Compiler inspects input and matches which function to call.
# "Short-circuits" on first match.
Greeter.hello(fred)
Greeter.hello(george)
Greeter.hello(ginny)
Greeter.hello(ron)
