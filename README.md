# Phoenix with Webpack, jQuery and Sass configuration example

This application is a Phoenix with Webpack Quick Start example.
It includes jQuery, Sass and modular js style.

  * Install dependencies with `mix deps.get`
  * Edit your config/dev.exs file with your database settings
  * Create and migrate your database with `mix ecto.create && mix ecto.migrate`
  * Install Node.js dependencies with `npm install`
  * Start Phoenix endpoint with `mix phoenix.server`
  * To compile your assets in production run `MIX_ENV=prod node ./node_modules/webpack/bin/webpack.js -p` and `MIX_ENV=prod phoenix.digest`

#Important files
  * webpack.config.js
  * config/dev.exs
  * views/layout_view.ex containing some functions
  * static/js folder showing how to work with plugins and modular js
  * static/css/app.scss supporting sass style
