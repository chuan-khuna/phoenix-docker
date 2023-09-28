FROM elixir:1.15.4

WORKDIR /app
COPY . /app

RUN mix archive.install hex phx_new --force

# RUN mix setup
# RUN mix ecto.reset
# RUN mix ecto.setup

# CMD ["mix", "phx.server"]