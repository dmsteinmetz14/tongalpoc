view: POCsubmission_info {
  # # You can specify the table name if it's different from the view name:
  # sql_table_name: my_schema_name.tester ;;


derived_table: {
  sql:
  WITH item_attribute AS
  (SELECT
    id as attribute_id,
    type_id as attribute_type_id,
    attr_value
  FROM tongal.item_attribute
  ),

  item_attribute_type AS
  (SELECT
    id as attribute_type_id,
    control_type,
    attr_name
  FROM tongal.item_attribute_type
  ),

  submission_attributes as
  (SELECT
    submission_id,
    attribute_id as submission_attribute_id,
    list
  FROM tongal.submission_attributes
  ),

  contest_submissions as
  (SELECT
    id as submission_id,
    title,
    member_id as submission_author_id,
    contest_phase_id,
    submitted,
    submit_date,
    number_of_views,
    file_type
  FROM tongal.contest_submission
  )

  SELECT
    ia.attribute_id,
    ia.attr_value,
    iat.control_type,
    iat.attr_name,
    sa.submission_id,
    sa.submission_attribute_id,
    sa.list,
    sa.cs.submission_author_id,
    sa.cs.contest_phase_id,
    cs.submitted,
    cs.submit_date,
    cs.number_of_views,
    cs.file_type
  FROM
    item_attribute ia
      LEFT JOIN item_attribute_type iat
      ON ia.attribute_type_id = iat.attribute_type_id
      LEFT JOIN (submission_attributes sa
            LEFT JOIN contest_submission cs
              ON sa.submission_id = cs.submission_id)
      ON ia.attribute_id = sa.submission_attribute_id

    ;;
}


dimension: attribute_id {
  type: string
  sql: ${TABLE}.attribute_id ;;
}

  dimension: attr_value {
    type: string
    sql: ${TABLE}.attr_value ;;
  }

  dimension: control_type {
    type: string
    sql: ${TABLE}.control_type ;;
  }

  dimension: attr_name {
    type: string
    sql: ${TABLE}.attr_name ;;
  }

  dimension: submission_id {
    type: string
    sql: ${TABLE}.submission_id ;;
  }

  dimension: submission_attribute_id {
    type: string
    sql: ${TABLE}.submission_attribute_id ;;
  }

  dimension: list {
    type: string
    sql: ${TABLE}.list ;;
  }

  dimension: contest_phase_id {
    type: string
    sql: ${TABLE}.contest_phase_id ;;
  }

  dimension: submitted {
    type: string
    sql: ${TABLE}.submitted ;;
  }

  dimension_group:submit_date  {
    type:  time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.submit_date ;;
  }

  dimension: file_type {
    type: string
    sql: ${TABLE}.filte_type ;;
  }

  measure: number_of_views {
    type: sum
    sql:  ${TABLE}.number_of_views ;;
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

# view: submission_info {
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
