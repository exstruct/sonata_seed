defmodule Sonata.Seed do
  use Bolero

  modules = [
    Binary,
    Bit,
    Boolean,
    Character,
    DateTime,
    Enum,
    Geometric,
    Monetary,
    Network,
    Numeric,
    UUID
  ]

  for module <- modules do
    module = Module.concat(__MODULE__, module)
    for {name, arity} <- module.__info__(:functions) do
      types = [name, to_string(name), String.upcase(to_string(name))]
      case arity do
        0 ->
          def for_column(%{type: type}) when type in unquote(types) do
            unquote(module).unquote(name)()
          end
        1 ->
          def for_column(%{type: {type, [param]}}) when type in unquote(types) do
            unquote(module).unquote(name)(param)
          end
        2 ->
          def for_column(%{type: {type, [param1, param2]}}) when type in unquote(types) do
            unquote(module).unquote(name)(param1, param2)
          end
      end
    end
  end
end
