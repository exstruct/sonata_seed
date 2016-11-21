defmodule Sonata.Seed.Boolean do
  use Bolero

  # https://www.postgresql.org/docs/9.1/static/datatype-boolean.html

  def boolean() do
    bool()
  end
end
