const { environment } = require('@rails/webpacker')
const webpack = require('webpack')

environment.splitChunks()

environment.plugins.append('Provide', new webpack.ProvidePlugin({
  $: 'jquery',
}))

module.exports = environment
