module.exports = {
  plugins: [
    require('postcss-import')({path: 'css'}),
    require('postcss-nesting'),
    require('postcss-preset-env')({stage: 1})
  ]
}
