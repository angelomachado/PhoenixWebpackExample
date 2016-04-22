var ExtractTextPlugin = require("extract-text-webpack-plugin");
var CopyWebpackPlugin = require("copy-webpack-plugin");
var webpack = require("webpack");

module.exports = {
  entry: ["./web/static/js/app.js", "./web/static/css/app.scss"],
  output: {
    path: "./priv/static",
    filename: "js/app.js"
  },

  resolve: {
    modulesDirectories: [ __dirname + "/web/static/js" ],
    alias: {
      phoenix_html:
        __dirname + "/deps/phoenix_html/web/static/js/phoenix_html.js",
      phoenix:
        __dirname + "/deps/phoenix/web/static/js/phoenix.js",
      jquery:
        __dirname + "/node_modules/jquery/dist/jquery.js",
      semantic_ui:
        __dirname + "/node_modules/semantic-ui/dist/semantic.min.js"
    }
  },

  module: {
    loaders: [{
      test: /\.js$/,
      exclude: /node_modules/,
      loader: "babel",
      include: __dirname,
      query: {presets: ['es2015']}
    }, {
      test: /\.scss$/,
      loader: ExtractTextPlugin.extract("css!sass")
    },
    { test: /node_modules\/semantic-ui\/dist\/.+\.(js)$/,
      loader: 'imports?jQuery=jquery,$=jquery,this=>window'
    }
  ]
  },

  plugins: [
    new ExtractTextPlugin("css/app.css"),
    new CopyWebpackPlugin([{ from: "./web/static/assets" }])
  ]
};
