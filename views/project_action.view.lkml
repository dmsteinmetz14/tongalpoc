view: project_action {
  sql_table_name: tongal.project_action ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: action {
    type: string
    sql: ${TABLE}.action ;;
  }
  dimension: contest_id {
    type: number
    sql: ${TABLE}.contest_id ;;
  }
  dimension: entity_class {
    type: number
    sql: ${TABLE}.entity_class ;;
  }
  dimension: entity_id {
    type: number
    sql: ${TABLE}.entity_id ;;
  }
  dimension: new_value {
    type: string
    sql: ${TABLE}.new_value ;;
  }
  dimension: old_value {
    type: string
    sql: ${TABLE}.old_value ;;
  }
  dimension_group: timestamp {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.timestamp ;;
  }
  dimension: user_id {
    type: number
    sql: ${TABLE}.user_id ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
