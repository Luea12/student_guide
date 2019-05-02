const webpack = require('webpack');

const { environment } = require('@rails/webpacker');

// Add ProvidePlugin
environment.plugins.append('ProvidePlugin-JQuery', new webpack.ProvidePlugin({
    $: 'jquery',
    jQuery: 'jquery'
  }),
);


module.exports = environment;
