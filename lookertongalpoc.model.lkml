connection: "tongalpoc"

include: "/views/*.view.lkml"                # include all views in the views/ folder in this project
# include: "/**/*.view.lkml"                 # include all views in this project
# include: "my_dashboard.dashboard.lookml"   # include a LookML dashboard called my_dashboard

explore: POCsubmission_info {}

explore: POCuserprofile {}

explore: user {
  join: user_skill {
    relationship:  one_to_many
    sql_on: ${user.user_id} = ${user_skill.user_id} ;;
  }
  join: user_event {
    relationship:  one_to_many
    sql_on: ${user.user_id} = ${user_event.user_id} ;;
  }
  join: approval {
    relationship:  one_to_many
    sql_on: ${user.user_id} = ${approval.user_id} ;;
  }
  join: payment {
    relationship:  one_to_many
    sql_on:${user.user_id} = ${payment.user_id}  ;;
  }
  join: profile {
    relationship:  one_to_one
    sql_on: ${user.user_id} = ${profile.user_id} ;;
  }
  join: country {
    relationship: many_to_one
    sql_on: ${profile.country_id} = ${country.id} ;;

  }
  join: submission_contributor {
    relationship:  one_to_many
    sql_on:  ${user.user_id} = ${submission_contributor.user_id} ;;
  }
}

explore: contest {
  join: project_attribute {
    relationship: one_to_many
    sql_on: ${contest.contest_id} = ${project_attribute.contest_id} ;;
  }
  join: contest_submission {
    relationship: many_to_many
    sql_on: ${contest.contest_id} = ${contest_submission.id} ;;
  }
}

explore: submission_attributes {
  join: submission_contributor {
    relationship: many_to_one
    sql_on: ${submission_attributes.submission_id} = ${submission_contributor.submission_id} ;;
  }
  join: submission_counters {
    relationship: many_to_one
    sql_on:${submission_attributes.submission_id} = ${submission_counters.submission_id}  ;;
  }
  join: profile {
    relationship: one_to_many
    sql_on: ${profile.user_id} = ${submission_contributor.user_id};;
  }
}

explore: greenlights {}

explore: submissions_by_users {}


# # Select the views that should be a part of this model,
# # and define the joins that connect them together.
#
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
