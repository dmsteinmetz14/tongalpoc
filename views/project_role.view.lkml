view: project_role {
  sql_table_name: tongal.project_role ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: member_id {
    type: number
    sql: ${TABLE}.member_id ;;
  }
  dimension: project_id {
    type: number
    sql: ${TABLE}.project_id ;;
  }
  dimension: project_role {
    type: number
    sql: ${TABLE}.project_role ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
