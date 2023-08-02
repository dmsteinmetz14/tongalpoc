view: payment {
  sql_table_name: tongal.payment ;;
  drill_fields: [payment_id]

  dimension: payment_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: advance_payment {
    type: string
    sql: ${TABLE}.advance_payment ;;
  }
  dimension: calculated_status_id {
    type: number
    sql: ${TABLE}.calculated_status_id ;;
  }
  dimension: category_id {
    type: number
    sql: ${TABLE}.category_id ;;
  }
  dimension: contest_phase_id {
    type: number
    sql: ${TABLE}.contest_phase_id ;;
  }
  dimension: created_by {
    type: number
    sql: ${TABLE}.created_by ;;
  }
  dimension: custom_payment_type {
    type: string
    sql: ${TABLE}.custom_payment_type ;;
  }
  dimension_group: date_added {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.date_added ;;
  }
  dimension_group: date_due {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.date_due ;;
  }
  dimension_group: date_finished {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.date_finished ;;
  }
  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
  }
  dimension: internal_notes {
    type: string
    sql: ${TABLE}.internal_notes ;;
  }
  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }
  dimension: notified {
    type: string
    sql: ${TABLE}.notified ;;
  }
  dimension: other_payment_type_reason {
    type: string
    sql: ${TABLE}.other_payment_type_reason ;;
  }
  dimension: prompt {
    type: string
    sql: ${TABLE}.prompt ;;
  }
  dimension: requires_assignment {
    type: string
    sql: ${TABLE}.requires_assignment ;;
  }
  dimension: seasons_payment {
    type: string
    sql: ${TABLE}.seasons_payment ;;
  }
  dimension: status_id {
    type: number
    sql: ${TABLE}.status_id ;;
  }
  dimension: submission_id {
    type: number
    sql: ${TABLE}.submission_id ;;
  }
  dimension: type_id {
    type: number
    sql: ${TABLE}.type_id ;;
  }
  dimension: user_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.user_id ;;
  }
  measure: count {
    type: count
    drill_fields: [payment_id, name, user.user_id, payment_info.count]
  }
  measure: amount {
    type: sum
    sql: ${TABLE}.amount ;;
  }
}
