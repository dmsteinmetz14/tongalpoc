view: approval {
  sql_table_name: tongal.approval ;;
  drill_fields: [approval_id]

  dimension: approval_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: approval_type {
    type: string
    sql: ${TABLE}.approval_type ;;
  }
  dimension: approved {
    type: string
    sql: ${TABLE}.approved ;;
  }
  dimension_group: create {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.create_date ;;
  }
  dimension: object_id {
    type: number
    sql: ${TABLE}.object_id ;;
  }
  dimension: object_type {
    type: string
    sql: ${TABLE}.object_type ;;
  }
  dimension: user_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.user_id ;;
  }
  measure: count {
    type: count
    drill_fields: [approval_id, user.user_id]
  }
}
