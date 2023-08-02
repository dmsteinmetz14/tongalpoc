view: submission_contributor {
  sql_table_name: tongal.submission_contributor ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: contributor_name {
    type: string
    sql: ${TABLE}.contributor_name ;;
  }
  dimension_group: create {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.create_date ;;
  }
  dimension: deliverable_ids {
    type: string
    sql: ${TABLE}.deliverable_ids ;;
  }
  dimension: submission_id {
    type: number
    sql: ${TABLE}.submission_id ;;
  }
  dimension: talent_release {
    type: string
    sql: ${TABLE}.talent_release ;;
  }
  dimension: user_document_id {
    type: number
    sql: ${TABLE}.user_document_id ;;
  }
  dimension: user_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.user_id ;;
  }
  measure: count {
    type: count
    drill_fields: [id, contributor_name, user.user_id]
  }
}
