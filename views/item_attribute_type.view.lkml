view: item_attribute_type {
  sql_table_name: tongal.item_attribute_type ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: attr_name {
    type: string
    sql: ${TABLE}.attr_name ;;
  }
  dimension: attr_values {
    type: string
    sql: ${TABLE}.attr_values ;;
  }
  dimension: control_type {
    type: number
    sql: ${TABLE}.control_type ;;
  }
  dimension_group: create {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.create_date ;;
  }
  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
  }
  dimension: file_extensions {
    type: string
    sql: ${TABLE}.file_extensions ;;
  }
  dimension: hidden {
    type: yesno
    sql: ${TABLE}.hidden ;;
  }
  dimension: max_value {
    type: number
    sql: ${TABLE}.max_value ;;
  }
  dimension: min_value {
    type: number
    sql: ${TABLE}.min_value ;;
  }
  dimension: required {
    type: string
    sql: ${TABLE}.required ;;
  }
  dimension: sponsor_id {
    type: number
    sql: ${TABLE}.sponsor_id ;;
  }
  dimension: type_id {
    type: number
    sql: ${TABLE}.type_id ;;
  }
  dimension: validation_method {
    type: string
    sql: ${TABLE}.validation_method ;;
  }
  measure: count {
    type: count
    drill_fields: [id, attr_name]
  }
}
