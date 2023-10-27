view: submission_counters {
  sql_table_name: tongal.submission_counters ;;
  drill_fields: [submission_counters_id]

  dimension: submission_counters_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: member_id {
    type: number
    sql: ${TABLE}.member_id ;;
  }
  dimension: submission_id {
    type: number
    sql: ${TABLE}.submission_id ;;
  }
  dimension: total_click_counter {
    type: number
    sql: ${TABLE}.total_click_counter ;;
  }
  dimension: total_views_counter {
    type: number
    sql: ${TABLE}.total_views_counter ;;
  }
  dimension: unique_click_counter {
    type: number
    sql: ${TABLE}.unique_click_counter ;;
  }
  dimension: unique_views_counter {
    type: number
    sql: ${TABLE}.unique_views_counter ;;
  }
  measure: count {
    type: count
    drill_fields: [submission_counters_id]
  }
}
