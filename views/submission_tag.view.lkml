view: submission_tag {
  sql_table_name: tongal.submission_tag ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: author_id {
    type: number
    sql: ${TABLE}.author_id ;;
  }
  dimension_group: create {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.create_date ;;
  }
  dimension: is_hidden {
    type: string
    sql: ${TABLE}.is_hidden ;;
  }
  dimension: is_internal {
    type: number
    sql: ${TABLE}.is_internal ;;
  }
  dimension: tag_description {
    type: string
    sql: ${TABLE}.tag_description ;;
  }
  dimension: tag_name {
    type: string
    sql: ${TABLE}.tag_name ;;
  }
  measure: count {
    type: count
    drill_fields: [id, tag_name]
  }
}
