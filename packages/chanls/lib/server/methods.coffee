Meteor.methods
	"recommend": (_id) ->
		# Check if it's admin
		console.log _id

		oid = new Meteor.Collection.ObjectID(_id)
		options = {}
		selector = {_id: oid}
		
		chanl = Chanls.findOne(selector, options)
		if chanl?
			if !chanl.recommend?
				recommend = true
			else 
				recommend = !chanl.recommend
			modifier = {
				$set: {recommend: recommend}
			}
			callback = (error, chanl)->
				if error 
					console.log error

			Chanls.update(selector, modifier, callback)
		else
			console.log "No chanl found"