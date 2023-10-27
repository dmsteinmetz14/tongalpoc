view: project_goals {
  # # You can specify the table name if it's different from the view name:
  # sql_table_name: my_schema_name.tester ;;
  #

derived_table: {
  sql:
    WITH profile AS
  (SELECT
    user_id,
    CASE
        WHEN (LEFT(birthday,4) + 17) >= 2022 THEN "11-17"
        WHEN (LEFT(birthday,4) + 24) >= 2022 THEN "18-24"
        WHEN (LEFT(birthday,4) + 34) >= 2022 THEN "25-34"
        WHEN (LEFT(birthday,4) + 44) >= 2022 THEN "35-44"
        WHEN (LEFT(birthday,4) + 24) >= 2022 THEN "45-54"
        ELSE "60+"
        END  as age_tier,
    country_id
  FROM tongal.profile),

  country AS
    (SELECT
      id as country_id,
      name as country_name
    FROM tongal.country
    ),

  contest as
    (SELECT
      contest_submission.id as contest_id,
      contest_submission.member_id as user_id,
      COUNT(contest_submission.id) as submissions,
      COUNT(DISTINCT  contest_submission.member_id) as submitters,
      project_attribute.name as project_name,
      project_attribute.id as project_id
    FROM tongal.contest_submission
        LEFT JOIN tongal.project_attribute
        ON project_attribute.contest_id = contest_submission.id
    GROUP BY contest_id,user_id
    )

  SELECT
    p.user_id,
    p.age_tier,
    c.country_name,
    ct.project_id,
    ct.project_name,
    ct.submissions,
    ct.submitters
  FROM profile p
    LEFT JOIN country c
    ON p.country_id = c.country_id
    LEFT JOIN contest ct
    ON p.user_id = ct.user_id
  ;;

}

dimension: user_id {
  type: string
  sql: ${TABLE}.user_id ;;
}

  dimension: age_tier {
    type: string
    sql: ${TABLE}.age_tier ;;
  }

  dimension: country_name {
    type: string
    sql: ${TABLE}.country_name ;;
  }

  dimension: project_id {
    type: string
    sql: ${TABLE}.project_id ;;
  }

  dimension: project_name {
    type: string
    sql: ${TABLE}.project_name ;;
  }

  measure: submissions {
    type: sum
    sql: ${TABLE}.submissions ;;
  }

  measure: submitters {
    type: sum
    sql: ${TABLE}.submitters ;;
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

# view: project_goals {
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
