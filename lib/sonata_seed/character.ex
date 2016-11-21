defmodule Sonata.Seed.Character do
  use Bolero

  # https://www.postgresql.org/docs/9.1/static/datatype-character.html

  def varchar(n) do
    unicode_string(0, n)
  end

  def char(n) do
    unicode_string(n)
  end

  def text() do
    unicode_string(0, 1000)
  end
end
