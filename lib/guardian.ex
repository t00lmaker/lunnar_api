defmodule LunnarApi.Guardian do
     @moduledoc """
      Modulo utilizado para a gerencia de token jwt. 
    """
    use Guardian, otp_app: :lunnar_api
    alias LunnarApi.Accounts

    def subject_for_token(user, _claims) do
        sub = to_string(user.id)
        {:ok, sub}
    end

    def reason_from_claims(claims) do
        id_user = claims["sub"]
        resource = Accounts.get_user!(id_user)
        {:ok, resource}
    end

    def resource_from_claims(_claims) do
        {:error, "method not implemants in LunnarApi.Guardian"}
    end
end
