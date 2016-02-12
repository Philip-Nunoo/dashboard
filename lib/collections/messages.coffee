Schemas.Messages = new SimpleSchema
	sender:
		type: String
		index: 1

	recipient:
		type: String
		index: 1

	content:
		type: String
		autoform:
			rows: 2

	createdAt:
		type: Date
		autoValue: ->
			new Date() if @isInsert

	read:
		type: Boolean
		defaultValue: false

Messages.attachSchema Schemas.Messages