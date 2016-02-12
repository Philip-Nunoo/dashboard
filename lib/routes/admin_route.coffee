@AdminRouteGroup = FlowRouter.group({
	prefix: '/admin'
	triggersEnter: [ ->
	    console.log( "ENTER ACCOUNT ROUTE!" );
	],
	triggersExit: [ ->
	    console.log( "EXIT ACCOUNT ROUTE!" );
	]
});

AdminRouteGroup.route('/',{
	name: 'admin_page'
	action: ->
		BlazeLayout.render('adminLayout', {
			main: 'adminDashboard'
		});
	})

AdminRouteGroup.route('/app_users',{
	name: 'all_users_page'
	action: ->
		BlazeLayout.render('adminLayout', {
			main: 'allUsers'
		});
	})

AdminRouteGroup.route('/app_user/:_id',{
	name: 'single_user_page'
	action: (params) ->
		
		BlazeLayout.render('adminLayout', {
			main: 'appUser'
		});
	})

AdminRouteGroup.route('/chanls',{
	name: 'all_users_page'
	action: ->
		BlazeLayout.render('adminLayout', {
			main: 'allChanls'
		});
	})