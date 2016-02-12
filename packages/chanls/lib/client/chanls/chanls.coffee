Template.allChanls.onCreated ->
	self = @
	self.ready = new ReactiveVar()

	self.autorun ->
		handle = AppChanlsSubs.subscribe('AllChanls')
		self.ready.set handle.ready()

Template.allChanls.helpers
	ready: ->
		Template.instance().ready.get();
		
	chanls: ->
		Chanls.find().fetch()
