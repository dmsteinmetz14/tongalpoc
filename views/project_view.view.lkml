view: project_view {
  sql_table_name: tongal.project_view ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: additional_details {
    type: string
    sql: ${TABLE}.additional_details ;;
  }
  dimension: alias {
    type: string
    sql: ${TABLE}.alias ;;
  }
  dimension: archived {
    type: string
    sql: ${TABLE}.archived ;;
  }
  dimension: closed_project {
    type: string
    sql: ${TABLE}.closed_project ;;
  }
  dimension: contest_class {
    type: string
    sql: ${TABLE}.contest_class ;;
  }
  dimension: current_phase_id {
    type: number
    sql: ${TABLE}.current_phase_id ;;
  }
  dimension: custom_prize_pool {
    type: string
    sql: ${TABLE}.custom_prize_pool ;;
  }
  dimension: first_phase_id {
    type: number
    sql: ${TABLE}.first_phase_id ;;
  }
  dimension: geo_restriction {
    type: string
    sql: ${TABLE}.geo_restriction ;;
  }
  dimension: last_phase_id {
    type: number
    sql: ${TABLE}.last_phase_id ;;
  }
  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }
  dimension: objectives {
    type: string
    sql: ${TABLE}.objectives ;;
  }
  dimension: open_bidding {
    type: string
    sql: ${TABLE}.open_bidding ;;
  }
  dimension: prize_purse {
    type: number
    sql: ${TABLE}.prize_purse ;;
  }
  dimension: project_requirements {
    type: string
    sql: ${TABLE}.project_requirements ;;
  }
  dimension: project_rules {
    type: string
    sql: ${TABLE}.project_rules ;;
  }
  dimension: sponsor_hidden {
    type: string
    sql: ${TABLE}.sponsor_hidden ;;
  }
  dimension: sponsor_id {
    type: number
    sql: ${TABLE}.sponsor_id ;;
  }
  dimension: sponsor_logo {
    type: string
    sql: ${TABLE}.sponsor_logo ;;
  }
  dimension: sponsor_name {
    type: string
    sql: ${TABLE}.sponsor_name ;;
  }
  dimension_group: start {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.start_date ;;
  }
  dimension: submission_requirements {
    type: string
    sql: ${TABLE}.submission_requirements ;;
  }
  dimension: synopsis {
    type: string
    sql: ${TABLE}.synopsis ;;
  }
  dimension: terms {
    type: string
    sql: ${TABLE}.terms ;;
  }
  dimension_group: updated {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.updated_at ;;
  }
  measure: count {
    type: count
    drill_fields: [id, name, sponsor_name]
  }
}
