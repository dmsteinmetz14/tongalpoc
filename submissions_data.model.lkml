connection: "tongalpoc"

include: "/views/*.view.lkml"                # include all views in the views/ folder in this project
# include: "/**/*.view.lkml"                 # include all views in this project
# include: "my_dashboard.dashboard.lookml"   # include a LookML dashboard called my_dashboard

# # Select the views that should be a part of this model,
# # and define the joins that connect them together.
#

explore: profile {
  join: country {
    relationship: many_to_many
    sql_on: ${profile.country_id} = ${country.id};;
  }
  join: user {
    relationship: one_to_one
    sql_on: ${profile.user_id} = ${user.user_id} ;;
  }
}

explore: contest {
  join: contest_submission {
    relationship: many_to_many
    sql_on: ${contest.contest_id} = ${contest_submission.id} ;;
  }
}

# explore: order_items {
#   join: orders {
#     relationship: many_to_one
#     sql_on: ${orders.id} = ${order_items.order_id} ;;
#   }
#
#   join: users {
#     relationship: many_to_one
#     sql_on: ${users.id} = ${orders.user_id} ;;
#   }
# }
