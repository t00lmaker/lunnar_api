defmodule LunnarApiWeb.Router do
  use LunnarApiWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", LunnarApiWeb do
    pipe_through :api
    resources "/users", UserController, except: [:new, :edit]
  end


end
