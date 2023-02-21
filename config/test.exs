import Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :crystal_blog, CrystalBlogWeb.Endpoint,
  http: [ip: {127, 0, 0, 1}, port: 4002],
  secret_key_base: "By5vUVfAwj/PJTOSnNwo2u7Tgei8+N4pp8OVI8BinoNPK/kPm7DL+Ps7GNO5pfob",
  server: false

# In test we don't send emails.
config :crystal_blog, CrystalBlog.Mailer,
  adapter: Swoosh.Adapters.Test

# Print only warnings and errors during test
config :logger, level: :warn

# Initialize plugs at runtime for faster test compilation
config :phoenix, :plug_init_mode, :runtime
