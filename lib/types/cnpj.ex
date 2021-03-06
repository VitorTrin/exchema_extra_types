defmodule ExchemaExtra.Types.CNPJ do
  import Exchema.Notation
  subtype(Exchema.Types.String, fn number ->
    if Brcpfcnpj.cnpj_valid?(%Cnpj{number: number}) do
      :ok
    else
      {:error, :invalid_cnpj}
    end
  end)
end
