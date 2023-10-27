view: submissions_by_users {
  # # You can specify the table name if it's different from the view name:
  # sql_table_name: my_schema_name.tester ;;

derived_table: {
  sql:
WITH users as
(SELECT
  CAST(created_at AS DATE) AS created_date,
  COUNT(DISTINCT user_id) as users
FROM tongal.profile
  GROUP BY CAST(created_at AS DATE)),

submissions as
    (SELECT
      CAST(submit_date AS DATE) as submitted_date,
      COUNT(id) as submissions,
      COUNT(DISTINCT member_id) as users_with_submissions
    FROM tongal.contest_submission
    GROUP BY CAST(submit_date AS DATE)
    )

SELECT
  u.created_date,
  u.users,
  s.submitted_date,
  s.submissions,
  s.users_with_submissions
FROM users u
  LEFT JOIN submissions s
  ON u.created_date = s.submitted_date

  ;;
}

  dimension_group: created_date {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.created_date ;;
  }

  dimension_group: submitted_date {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.submitted_date ;;
  }

  measure: users {
    type:  sum
    sql: ${TABLE}.users ;;
  }

  measure: submissions {
    type:  sum
    sql: ${TABLE}.submissions ;;
  }

  measure: users_with_submissions {
    type:  sum
    sql: ${TABLE}.users_with_submissions ;;
  }

  # # Define your dimensions and measures here, like this:
  # dimension: user_id {
  #   description: "Unique ID for each user that has ordered"
  #   type: number
  #   sql: ${TABLE}.user_id ;;
  # }
  #
  # dimension: lifetime_orders {
  #   description: "The total number of orders for each user"
  #   type: number
  #   sql: ${TABLE}.lifetime_orders ;;
  # }
  #
  # dimension_group: most_recent_purchase {
  #   description: "The date when each user last ordered"
  #   type: time
  #   timeframes: [date, week, month, year]
  #   sql: ${TABLE}.most_recent_purchase_at ;;
  # }
  #
  # measure: total_lifetime_orders {
  #   description: "Use this for counting lifetime orders across many users"
  #   type: sum
  #   sql: ${lifetime_orders} ;;
  # }
}

# view: submissions_by_users {
#   # Or, you could make this view a derived table, like this:
#   derived_table: {
#     sql: SELECT
#         user_id as user_id
#         , COUNT(*) as lifetime_orders
#         , MAX(orders.created_at) as most_recent_purchase_at
#       FROM orders
#       GROUP BY user_id
#       ;;
#   }
#
#   # Define your dimensions and measures here, like this:
#   dimension: user_id {
#     description: "Unique ID for each user that has ordered"
#     type: number
#     sql: ${TABLE}.user_id ;;
#   }
#
#   dimension: lifetime_orders {
#     description: "The total number of orders for each user"
#     type: number
#     sql: ${TABLE}.lifetime_orders ;;
#   }
#
#   dimension_group: most_recent_purchase {
#     description: "The date when each user last ordered"
#     type: time
#     timeframes: [date, week, month, year]
#     sql: ${TABLE}.most_recent_purchase_at ;;
#   }
#
#   measure: total_lifetime_orders {
#     description: "Use this for counting lifetime orders across many users"
#     type: sum
#     sql: ${lifetime_orders} ;;
#   }
# }
