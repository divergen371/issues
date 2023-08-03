people = [
  %{name: "a", height: 1.24},
  %{name: "b", height: 1.88},
  %{name: "c", height: 1.32},
  %{name: "d", height: 2.16},
  %{name: "e", height: 1.28}
]

IO.inspect(
  for person = %{height: height} <- people, height > 1.5 do
    person
  end,
  label: "for"
)

Enum.filter(people, fn %{height: height} -> height > 1.5 end) |> IO.inspect(label: "Enum.filter")
Enum.filter(people, &(&1.height < 1.5)) |> IO.inspect(label: "with capture")
