view: feature {
  sql_table_name: tongal.feature ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: aggregate_views {
    type: string
    sql: ${TABLE}.aggregate_views ;;
  }
  dimension: award_id {
    type: number
    sql: ${TABLE}.award_id ;;
  }
  dimension: contest_phase_id {
    type: number
    sql: ${TABLE}.contest_phase_id ;;
  }
  dimension_group: exact_start {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.exact_start_date ;;
  }
  dimension: exhibition_enabled {
    type: string
    sql: ${TABLE}.exhibition_enabled ;;
  }
  dimension: image_url {
    type: string
    sql: ${TABLE}.image_url ;;
  }
  dimension: md_enabled {
    type: string
    sql: ${TABLE}.md_enabled ;;
  }
  dimension: mv_enabled {
    type: string
    sql: ${TABLE}.mv_enabled ;;
  }
  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }
  dimension: page_link {
    type: string
    sql: ${TABLE}.page_link ;;
  }
  dimension: rules {
    type: string
    sql: ${TABLE}.rules ;;
  }
  dimension_group: start_date {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.start_date ;;
  }
  dimension: start_interval {
    type: number
    sql: ${TABLE}.start_interval ;;
  }
  dimension: submission_threshold {
    type: number
    sql: ${TABLE}.submission_threshold ;;
  }
  dimension: supporting_text {
    type: string
    sql: ${TABLE}.supporting_text ;;
  }
  dimension: top_prediction_submission {
    type: number
    sql: ${TABLE}.top_prediction_submission ;;
  }
  measure: count {
    type: count
    drill_fields: [id, name]
  }
}
