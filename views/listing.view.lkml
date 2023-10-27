view: listing {
  sql_table_name: tongal.listing ;;
  drill_fields: [listing_id]

  dimension: listing_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension_group: created {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.created_at ;;
  }
  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
  }
  dimension: is_hidden {
    type: string
    sql: ${TABLE}.is_hidden ;;
  }
  dimension: listing_owner_id {
    type: number
    sql: ${TABLE}.listing_owner_id ;;
  }
  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }
  dimension: precedence {
    type: number
    sql: ${TABLE}.precedence ;;
  }
  dimension_group: updated {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.updated_at ;;
  }
  measure: count {
    type: count
    drill_fields: [listing_id, name]
  }
}
