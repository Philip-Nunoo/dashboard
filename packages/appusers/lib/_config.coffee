# @UsersPages = new Meteor.Pagination(AppUsers,{
#   perPage: 10
#   fastRender: true
#   templateName: "adminNotificationsTable"
#   itemTemplate: "adminNotificationsTableItem"
#   sort: 
#     createdAt: 1
#   availableSettings: {
#     perPage: true,
#     sort: true
#   }
#   table: {
#     class: "table table-hover"
#     fields: fields
#     # header: _.map fields, (f) -> f[0].toUpperCase() + f.slice 1 #Capitalize fields
#     header: headers
#     wrapper: "table-wrapper"
#   }
# })
@AppUsersSubs = new SubsManager();