###
###
Template.AppUsersCount.onCreated ->
	self = @
	self.ready = new ReactiveVar()

	self.autorun ->
		handle = DashboardSubs.subscribe('AppUsers')
		self.ready.set handle.ready()

Template.AppUsersCount.helpers
	ready: ->
		Template.instance().ready.get();

	appUsers: ->
		AppUsers.find().fetch()


###
###
Template.ChanlsCount.onCreated ->
	self = @
	self.ready = new ReactiveVar()

	self.autorun ->
		handle = DashboardSubs.subscribe('AllChanls')
		self.ready.set handle.ready()

Template.ChanlsCount.helpers
	ready: ->
		Template.instance().ready.get();

	Chanls: ->
		Chanls.find().fetch()


###
###
Template.ChanlUsersCount.onCreated ->
	self = @
	self.ready = new ReactiveVar()

	self.autorun ->
		handle = DashboardSubs.subscribe('AllCanlUsers')
		self.ready.set handle.ready()

Template.ChanlUsersCount.helpers
	ready: ->
		Template.instance().ready.get();

	ChanUsers: ->
		ChanlUsers.find().fetch()


###
###
Template.FeedCommentsCount.onCreated ->
	self = @
	self.ready = new ReactiveVar()

	self.autorun ->
		handle = DashboardSubs.subscribe('AllComments')
		self.ready.set handle.ready()

Template.FeedCommentsCount.helpers
	ready: ->
		Template.instance().ready.get();

	FeedComments: ->
		FeedComments.find().fetch()


###
###
Template.FeedsCount.onCreated ->
	self = @
	self.ready = new ReactiveVar()

	self.autorun ->
		handle = DashboardSubs.subscribe('AllFeeds')
		self.ready.set handle.ready()

Template.FeedsCount.helpers
	ready: ->
		Template.instance().ready.get();

	Feeds: ->
		Feeds.find().fetch()


