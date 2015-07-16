use Mix.Config

# In this file, we keep production configuration that
# you likely want to automate and keep it away from
# your version control system.
config :elixir_friends, ElixirFriends.Endpoint,
  secret_key_base: "vgeamrIYOLwPmU/8VvPY1idwpu9oa7iOZ/oeRz6q3GpiFM4wSSaNxf5z3QBxihBg"

# Configure your database
config :elixir_friends, ElixirFriends.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: "postgres",
  password: "postgres",
  database: "elixir_friends_prod",
  size: 20 # The amount of database connections in the pool
