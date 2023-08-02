view: award {
  sql_table_name: tongal.award ;;
  drill_fields: [award_id]

  dimension: award_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: avg_prize {
    type: number
    sql: ${TABLE}.avg_prize ;;
  }
  dimension: initial_prize_amounts {
    type: string
    sql: ${TABLE}.initial_prize_amounts ;;
  }
  dimension: last_prize {
    type: number
    sql: ${TABLE}.last_prize ;;
  }
  dimension: prize_amounts {
    type: string
    sql: ${TABLE}.prize_amounts ;;
  }
  dimension: prizes_number {
    type: number
    sql: ${TABLE}.prizes_number ;;
  }
  dimension: second_prize {
    type: number
    sql: ${TABLE}.second_prize ;;
  }
  dimension: top_prize {
    type: number
    sql: ${TABLE}.top_prize ;;
  }
  measure: count {
    type: count
    drill_fields: [award_id]
  }
}
