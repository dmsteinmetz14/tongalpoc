view: submission_deliverables {
  sql_table_name: tongal.submission_deliverables ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: approved {
    type: string
    sql: ${TABLE}.approved ;;
  }
  dimension: contest_submission_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.contest_submission_id ;;
  }
  dimension: deliverable_type_id {
    type: number
    sql: ${TABLE}.deliverable_type_id ;;
  }
  dimension: draft_group_id {
    type: number
    sql: ${TABLE}.draft_group_id ;;
  }
  dimension_group: utc_created {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.utc_created_on ;;
  }
  dimension_group: utc_updated {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.utc_updated_on ;;
  }
  dimension: value {
    type: string
    sql: ${TABLE}.value ;;
  }
  measure: count {
    type: count
    drill_fields: [id, contest_submission.id]
  }
}
