view: userprofile {
  # # You can specify the table name if it's different from the view name:
  # sql_table_name: my_schema_name.tester ;;
  #
  derived_table: {
    sql:
    WITH profileinfo as
    (SELECT
      user_id,
      last_name,
      first_name,
      birthday,
      CASE
        WHEN (LEFT(birthday,4) + 17) >= 2022 THEN "11-17"
        WHEN (LEFT(birthday,4) + 24) >= 2022 THEN "18-24"
        WHEN (LEFT(birthday,4) + 34) >= 2022 THEN "25-34"
        WHEN (LEFT(birthday,4) + 44) >= 2022 THEN "35-44"
        WHEN (LEFT(birthday,4) + 24) >= 2022 THEN "45-54"
        ELSE "60+"
        END  as age_tier,
      country_id,
      state_province,
      city,
      paymentType as Preffered_payment_method_id,
      updated_at as user_profile_last_updated_date
    FROM tongal.profile
    ),

    country AS
    (SELECT
      id as country_id,
      name as country_name
    FROM tongal.country
    ),

    user AS
    (SELECT
      user_id,
      email_address,
      alias as user_alias,
      active,
      universal_id
    FROM tongal.user
    )

    SELECT
      u.user_id
      u.email_address,
      u.user_alias,
      u.active,
      u.universal_id,
      c.country_id,
      c.country_name,
      p.last_name,
      p.first_name,
      p.birthday,
      p.state_province,
      p.city,
      p.Preffered_payment_method_id,
      p.user_profile_last_updated_date
  FROM profile p
    LEFT JOIN user u
      ON p.user_id = u.user_id
    LEFT JOIN country c
      ON p.country_id = c.country_id
    ;;
  }

  dimension: user_id {
    type: string
    sql: ${TABLE}.user_id ;;
  }

  dimension: email_address {
    type: string
    sql: ${TABLE}.email_address ;;
  }

  dimension: user_alias {
    type: string
    sql: ${TABLE}.user_alias ;;
  }

  dimension: active {
    type: string
    sql: ${TABLE}.active ;;
  }

  dimension: universal_id {
    type: string
    sql: ${TABLE}.universal_id ;;
  }

  dimension: country_name {
    type: string
    sql: ${TABLE}.country_name ;;
  }

  dimension: birthday {
    type: string
    sql: ${TABLE}.birthday ;;
  }

  dimension: state_province {
    type: string
    sql: ${TABLE}.user_id ;;
  }

  dimension: city {
    type: string
    sql: ${TABLE}.city ;;
  }

  dimension: Preffered_payment_method_id {
    type: string
    sql: ${TABLE}.Preffered_payment_method_id ;;
  }

  dimension: user_profile_last_updated_date {
    type: string
    sql: ${TABLE}.user_profile_last_updated_date ;;
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

# view: userprofile {
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
