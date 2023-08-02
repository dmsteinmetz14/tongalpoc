view: greenlights {
  sql_table_name: tongal.greenlights ;;

  dimension: phase_id {
    type: number
    sql: ${TABLE}.phase_id ;;
  }
  dimension: phase_rank {
    type: number
    sql: ${TABLE}.phase_rank ;;
  }
  dimension: submission_id {
    type: number
    sql: ${TABLE}.submission_id ;;
  }
  measure: count {
    type: count
  }
}
