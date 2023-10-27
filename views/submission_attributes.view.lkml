view: submission_attributes {
  sql_table_name: tongal.submission_attributes ;;

  dimension: attribute_id {
    type: number
    sql: ${TABLE}.attribute_id ;;
  }
  dimension: list {
    type: number
    sql: ${TABLE}.list ;;
  }
  dimension: submission_id {
    type: number
    sql: ${TABLE}.submission_id ;;
  }
  measure: count {
    type: count
  }
}
