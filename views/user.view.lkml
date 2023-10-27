view: user {
  sql_table_name: tongal.user ;;
  drill_fields: [user_id]

  dimension: user_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.user_id ;;
  }
  dimension: active {
    type: string
    sql: ${TABLE}.active ;;
  }
  dimension: alias {
    type: string
    sql: ${TABLE}.alias ;;
  }
  dimension: bounce_count {
    type: number
    sql: ${TABLE}.bounce_count ;;
  }
  dimension: eligibility_class {
    type: number
    sql: ${TABLE}.eligibility_class ;;
  }
  dimension: email_address {
    type: string
    sql: ${TABLE}.email_address ;;
  }
  dimension: email_confirmed {
    type: string
    sql: ${TABLE}.email_confirmed ;;
  }
  dimension: flagged {
    type: string
    sql: ${TABLE}.flagged ;;
  }
  dimension: hidden {
    type: string
    sql: ${TABLE}.hidden ;;
  }
  dimension_group: last_login {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.last_login ;;
  }
  dimension: last_login_ip {
    type: string
    sql: ${TABLE}.last_login_ip ;;
  }
  dimension: prev_alias {
    type: string
    sql: ${TABLE}.prev_alias ;;
  }
  dimension: referral_id {
    type: number
    sql: ${TABLE}.referral_id ;;
  }
  dimension_group: registration {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.registration ;;
  }
  dimension: requires_email {
    type: string
    sql: ${TABLE}.requires_email ;;
  }
  dimension: salt_value {
    type: string
    sql: ${TABLE}.salt_value ;;
  }
  dimension: source {
    type: string
    sql: ${TABLE}.source ;;
  }
  dimension: sponsor_affiliation_id {
    type: number
    sql: ${TABLE}.sponsor_affiliation_id ;;
  }
  dimension: universal_id {
    type: string
    sql: ${TABLE}.universal_id ;;
  }
  dimension_group: updated {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.updated_at ;;
  }
  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
	user_id,
	approval.count,
	payment.count,
	payment_info.count,
	profile.count,
	submission_contributor.count,
	user_event.count
	]
  }

}
