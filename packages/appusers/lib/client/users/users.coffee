# @UsersPages = new Meteor.Pagination(AppUsers, {
#   perPage: 10
#   fastRender: true
#   # templateName: "adminNotificationsTable"
#   # itemTemplate: "adminNotificationsTableItem"
#   sort: 
#     createdAt: 1
#   availableSettings: {
#     perPage: true,
#     sort: true
#   }
#   table: {
#     class: "table table-hover"
#     # fields: fields
#     # header: _.map fields, (f) -> f[0].toUpperCase() + f.slice 1 #Capitalize fields
#     # header: headers
#     wrapper: "table-wrapper"
#   }
# })

Template.allUsers.onCreated ->
	self = @
	self.ready = new ReactiveVar()

	self.autorun ->
		handle = AppUsersSubs.subscribe('AppUsers')
		self.ready.set handle.ready()

Template.allUsers.helpers
	ready: ->
		Template.instance().ready.get();
		
	appUsers: () ->
		AppUsers.find({}, {sort: {createdAt: -1}}).fetch()

