view: payment_info {
  sql_table_name: tongal.payment_info ;;
  drill_fields: [paymentinfo_id]

  dimension: paymentinfo_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: contest_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.contest_id ;;
  }
  dimension_group: create {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.create_date ;;
  }
  dimension: missing_item_count {
    type: number
    sql: ${TABLE}.missing_item_count ;;
  }
  dimension: payment_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.payment_id ;;
  }
  dimension: pre_payment_id {
    type: number
    sql: ${TABLE}.pre_payment_id ;;
  }
  dimension: rejected_item_count {
    type: number
    sql: ${TABLE}.rejected_item_count ;;
  }
  dimension: reviewing_item_count {
    type: number
    sql: ${TABLE}.reviewing_item_count ;;
  }
  dimension: revision_count {
    type: number
    sql: ${TABLE}.revision_count ;;
  }
  dimension: revision_requested {
    type: string
    sql: ${TABLE}.revision_requested ;;
  }
  dimension: revision_reviewing {
    type: string
    sql: ${TABLE}.revision_reviewing ;;
  }
  dimension: status {
    type: number
    sql: ${TABLE}.status ;;
  }
  dimension: submission_id {
    type: number
    sql: ${TABLE}.submission_id ;;
  }
  dimension: total_item_count {
    type: number
    sql: ${TABLE}.total_item_count ;;
  }
  dimension: user_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.user_id ;;
  }
  dimension: version {
    type: number
    sql: ${TABLE}.version ;;
  }
  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
  paymentinfo_id,
  contest.id,
  contest.middle_name,
  contest.name,
  contest.short_name,
  payment.id,
  payment.name,
  user.user_id
  ]
  }

}
