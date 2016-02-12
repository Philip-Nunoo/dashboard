Template.appUser.onCreated ->
	self = @
	self.ready = new ReactiveVar()
	userId = FlowRouter.getParam('_id');

	self.autorun ->
		handle = AppUsersSubs.subscribe("AppUsers")
		self.ready.set handle.ready()

Template.appUser.helpers
	ready: ->
		Template.instance().ready.get();
		
	appUser: () ->
		_id = FlowRouter.getParam('_id');
		oid = new Meteor.Collection.ObjectID(_id)
		user = AppUsers.findOne(oid)
		console.log user
		return user
