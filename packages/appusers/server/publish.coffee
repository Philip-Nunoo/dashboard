Meteor.publish 'AppUser', (_id)->
	oid = new Meteor.Collection.ObjectID(_id)
	AppUsers.find(oid)