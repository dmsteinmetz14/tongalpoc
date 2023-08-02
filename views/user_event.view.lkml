view: user_event {
  sql_table_name: tongal.user_event ;;
  drill_fields: [event_id]

  dimension: event_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: event_status {
    type: string
    sql: ${TABLE}.event_status ;;
  }
  dimension: event_type {
    type: string
    sql: ${TABLE}.event_type ;;
  }
  dimension: payload {
    type: string
    sql: ${TABLE}.payload ;;
  }
  dimension_group: timestamp {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.timestamp ;;
  }
  dimension: transaction_id {
    type: string
    sql: ${TABLE}.transaction_id ;;
  }
  dimension: user_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.user_id ;;
  }
  measure: count {
    type: count
    drill_fields: [event_id, user.user_id]
  }
}
