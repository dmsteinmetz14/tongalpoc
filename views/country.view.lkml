view: country {
  sql_table_name: tongal.country ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: european_union_member {
    type: string
    sql: ${TABLE}.european_union_member ;;
  }
  dimension: iso_alpha_2_code {
    type: string
    sql: ${TABLE}.iso_alpha_2_code ;;
  }
  dimension: iso_alpha_3_code {
    type: string
    sql: ${TABLE}.iso_alpha_3_code ;;
  }
  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }
  dimension: subdivision_code {
    type: string
    sql: ${TABLE}.subdivision_code ;;
  }
  measure: count {
    type: count
    drill_fields: [id, name]
  }
}
