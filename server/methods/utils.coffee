# Require `PhoneNumberFormat`. 
# http://javacodeimpl.blogspot.com/2013/11/google-libphonenumber-to-validate-phone.html#.VsB69XzhDQo

PNF = Meteor.npmRequire('google-libphonenumber').PhoneNumberFormat;
 
# Get an instance of `PhoneNumberUtil`. 
phoneUtil = Meteor.npmRequire('google-libphonenumber').PhoneNumberUtil.getInstance();

# Print number in the international format. 
# console.log(phoneUtil.format(phoneNumber, PNF.INTERNATIONAL));
# => +1 202-456-1414 

Meteor.methods
	getCountry: (phoneNumber) ->
		# check if phoneNumber has a '+' in from
		try
			# ...
			numberProto = phoneUtil.parse(phoneNumber, "");
			regionCode = phoneUtil.getRegionCodeForNumber(numberProto);
			return regionCode
		catch e
			console.log e