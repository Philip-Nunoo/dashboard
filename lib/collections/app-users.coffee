AppUsers.helpers
	getCountry: () ->
		number = "+" + @phoneNumber
		# country = _.where(Countries, {code: "GH"});
		countryCode = ReactiveMethod.call("getCountry", number);
		
		country = _.findWhere(Countries, {code: countryCode})
		if country?
			return country.name
		else
			"~~~"

