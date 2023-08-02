view: profile {
  sql_table_name: tongal.profile ;;

  dimension_group: birthday {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.birthday ;;
  }
  dimension: city {
    type: string
    sql: ${TABLE}.city ;;
  }
  dimension: country_id {
    type: number
    sql: ${TABLE}.country_id ;;
  }
  dimension_group: created {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.created_at ;;
  }
  dimension: earnings_visible {
    type: yesno
    sql: ${TABLE}.earnings_visible ;;
  }
  dimension: first_name {
    type: string
    sql: ${TABLE}.first_name ;;
  }
  dimension: last_name {
    type: string
    sql: ${TABLE}.last_name ;;
  }
  dimension: payment_type {
    type: number
    sql: ${TABLE}.paymentType ;;
  }
  dimension: photo_file_path {
    type: string
    sql: ${TABLE}.photo_file_path ;;
  }
  dimension: self_story {
    type: string
    sql: ${TABLE}.self_story ;;
  }
  dimension: state_province {
    type: string
    sql: ${TABLE}.state_province ;;
  }
  dimension: timezone {
    type: string
    sql: ${TABLE}.timezone ;;
  }
  dimension_group: updated {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.updated_at ;;
  }
  dimension: user_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.user_id ;;
  }
  measure: count {
    type: count
    drill_fields: [first_name, last_name, user.user_id]
  }
}
