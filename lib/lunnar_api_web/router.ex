defmodule LunnarApiWeb.Router do
  use LunnarApiWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", LunnarApiWeb do
    pipe_through :api
    resources "/users", UserController, except: [:new]
    post "/sign_up", UserController, :create
    post "/sign_in", UserController, :sign_in
  end

end
