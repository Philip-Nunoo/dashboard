Package.describe({
  name: 'font-awesome',
  version: '0.0.1',
  // Brief, one-line summary of the package.
  summary: '',
  // URL to the Git repository containing the source code for this package.
  git: '',
  // By default, Meteor will default to using README.md for documentation.
  // To avoid submitting documentation, set this field to null.
  documentation: 'README.md'
});


Package.onUse(function(api) {
  api.versionsFrom('1.2.1');
  api.use('ecmascript');
  api.use(['less'], 'client');
  api.addFiles('css/font-awesome.min.css');

  api.addAssets('fonts/fontawesome-webfont.eot', 'client');
  api.addAssets('fonts/fontawesome-webfont.woff', 'client');
  api.addAssets('fonts/fontawesome-webfont.ttf', 'client');
  api.addAssets('fonts/fontawesome-webfont.svg', 'client');
  
  // api.addAssets('fonts/fontawesome-webfont.eot', 'client');

  var lessFiles = [
  "less/variables.import.less",
  "less/mixins.import.less",
  "less/path.import.less",
  "less/core.import.less",
  "less/larger.import.less",
  "less/fixed-width.import.less",
  "less/list.import.less",
  "less/bordered-pulled.import.less",
  "less/spinning.import.less",
  "less/rotated-flipped.import.less",
  "less/stacked.import.less",
  "less/icons.import.less"
  ];
  api.addFiles(lessFiles, 'client');
  // api.addFiles(['load.js', 'less/font-awesome.less'], 'client');
});

// Package.onTest(function(api) {
//   api.use('ecmascript');
//   api.use('tinytest');
//   api.use('font-awesome');
//   api.addFiles('font-awesome-tests.js');
// });
