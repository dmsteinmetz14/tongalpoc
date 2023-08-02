view: project_attribute {
  sql_table_name: tongal.project_attribute ;;
  drill_fields: [project_id]

  dimension: project_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: contest_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.contest_id ;;
  }
  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
  }
  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }
  dimension: notes {
    type: string
    sql: ${TABLE}.notes ;;
  }
  dimension: value {
    type: string
    sql: ${TABLE}.value ;;
  }
  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
  project_id,
  name,
  contest.id,
  contest.middle_name,
  contest.name,
  contest.short_name
  ]
  }

}
