Meteor.publish 'AppUsers', ->
	AppUsers.find()

Meteor.publish 'AllChanls', ->
	Chanls.find()

Meteor.publish 'AllCanlUsers', ->
	ChanlUsers.find()

Meteor.publish 'AllComments', ->
	FeedComments.find()

Meteor.publish 'AllFeeds', ->
	Feeds.find()