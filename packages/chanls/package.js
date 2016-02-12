Package.describe({
  name: 'chanls',
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
  both = ['client', 'server']
  client = ['client']
  server = ['server']

  api.use([
    "ecmascript",
    "meteorhacks:subs-manager",
    "coffeescript",    
    "reactive-var"
    ], both);

  api.use([
    "templating",
    "less"
    ], client);


  api.addFiles('chanls.js');

  api.addFiles(
    [
      "lib/_config.coffee"
    ], both);

  api.addFiles(
    [
      "lib/client/chanls/chanls.html"
    ], client);

  api.addFiles(
    [
      "lib/client/chanls/chanls.coffee"
    ], client);
});

Package.onTest(function(api) {
  api.use('ecmascript');
  api.use('tinytest');
  api.use('chanls');
  api.addFiles('chanls-tests.js');
});
