FROM elixir:1.15.4

# Install
RUN mix local.hex --force \
    && mix archive.install --force hex phx_new \
    && apt-get update \
    && curl -sL https://deb.nodesource.com/setup_lts.x | bash \
    && apt-get install -y apt-utils \
    && apt-get install -y nodejs \
    && apt-get install -y build-essential \
    && apt-get install -y inotify-tools \
    && mix local.rebar --force

ENV APP_HOME /app
RUN mkdir -p $APP_HOME
WORKDIR $APP_HOME

COPY . /app

EXPOSE 4000

# RUN mix ecto.reset
# RUN mix ecto.setup
# RUN mix setup

# CMD ["mix", "phx.server"]