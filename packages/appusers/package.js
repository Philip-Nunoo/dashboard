Package.describe({
  name: 'appusers',
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
  client = ['client'];
  server = ['server'];
  both = ['client', 'server'];

  api.use(
    [
      "ecmascript",
      "meteorhacks:subs-manager",
      "coffeescript",
      "reactive-var",
      "kadira:flow-router",
      "kadira:blaze-layout",
      "alethes:pages"
    ], both);

  api.use(
    [
      "templating",
      "less"
    ], client);


  api.addFiles("appusers.coffee");
  // api.addFiles(
  //   [
  //     "lib/client/routes.coffee"
  //   ], client);

  // api.addFiles(
  //   [

  //   ], server);

  api.addFiles(
    [
      "lib/_config.coffee"
    ], both);

  api.addFiles(
  	[
  		"server/publish.coffee"
  	], server);

  api.addFiles(
    [
      "lib/client/users/users.html",
      "lib/client/user/user.html"
    ], client);

  api.addFiles(
    [
     "lib/client/users/users.coffee",
     "lib/client/user/user.coffee"
    ], client);

  // api.export("AppUsersConfig", both);
});

Package.onTest(function(api) {
  api.use('ecmascript');
  api.use('tinytest');
  api.use('appusers');
  api.addFiles('appusers-tests.js');
});
