defmodule Sonata.Seed.UUID do
  use Bolero

  # https://www.postgresql.org/docs/9.1/static/datatype-uuid.html

  def uuid() do
    [a(8), "-", a(4), "-", a(4), "-", a(4), "-", a(12)]
    |> string_join()
  end

  defp a(size) do
    [int(?a, ?f), char_numeric()]
    |> oneof()
    |> list(size)
  end
end
