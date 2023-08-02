view: contest {
  sql_table_name: tongal.contest ;;
  drill_fields: [contest_id]

  dimension: contest_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: alias {
    type: string
    sql: ${TABLE}.alias ;;
  }
  dimension: approved_by {
    type: number
    sql: ${TABLE}.approved_by ;;
  }
  dimension: archived {
    type: string
    sql: ${TABLE}.archived ;;
  }
  dimension: average_rating {
    type: number
    sql: ${TABLE}.average_rating ;;
  }
  dimension: banner212x212 {
    type: string
    sql: ${TABLE}.banner212x212 ;;
  }
  dimension: banner640x640 {
    type: string
    sql: ${TABLE}.banner640x640 ;;
  }
  dimension: banner697x212 {
    type: string
    sql: ${TABLE}.banner697x212 ;;
  }
  dimension: brief_type {
    type: number
    sql: ${TABLE}.brief_type ;;
  }
  dimension: check_list {
    type: string
    sql: ${TABLE}.check_list ;;
  }
  dimension: classification {
    type: number
    sql: ${TABLE}.classification ;;
  }
  dimension: closed_project {
    type: string
    sql: ${TABLE}.closed_project ;;
  }
  dimension: cms_brief {
    type: string
    sql: ${TABLE}.cms_brief ;;
  }
  dimension: cms_header {
    type: string
    sql: ${TABLE}.cms_header ;;
  }
  dimension: contest_class {
    type: number
    sql: ${TABLE}.contest_class ;;
  }
  dimension: contest_geo_restriction_id {
    type: number
    sql: ${TABLE}.contest_geo_restriction_id ;;
  }
  dimension: contest_type_id {
    type: number
    sql: ${TABLE}.contest_type_id ;;
  }
  dimension: creative_strategy {
    type: string
    sql: ${TABLE}.creative_strategy ;;
  }
  dimension: current_phase {
    type: number
    sql: ${TABLE}.current_phase ;;
  }
  dimension: custom_prize_pool {
    type: string
    sql: ${TABLE}.custom_prize_pool ;;
  }
  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
  }
  dimension: details {
    type: string
    sql: ${TABLE}.details ;;
  }
  dimension: expense_account {
    type: string
    sql: ${TABLE}.expense_account ;;
  }
  dimension: middle_name {
    type: string
    sql: ${TABLE}.middle_name ;;
  }
  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }
  dimension: nda_document {
    type: string
    sql: ${TABLE}.nda_document ;;
  }
  dimension: notify_all {
    type: yesno
    sql: ${TABLE}.notify_all ;;
  }
  dimension: objectives {
    type: string
    sql: ${TABLE}.objectives ;;
  }
  dimension: open_bidding {
    type: string
    sql: ${TABLE}.open_bidding ;;
  }
  dimension_group: post_evaluation_deadline {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.post_evaluation_deadline ;;
  }
  dimension: prize_purse {
    type: number
    sql: ${TABLE}.prize_purse ;;
  }
  dimension: project_requirements {
    type: string
    sql: ${TABLE}.project_requirements ;;
  }
  dimension: salesforce_opportunity_id {
    type: string
    sql: ${TABLE}.salesforce_opportunity_id ;;
  }
  dimension: salesforce_project_id {
    type: string
    sql: ${TABLE}.salesforce_project_id ;;
  }
  dimension: seasons_eligible {
    type: string
    sql: ${TABLE}.seasons_eligible ;;
  }
  dimension: short_name {
    type: string
    sql: ${TABLE}.short_name ;;
  }
  dimension: slide_path {
    type: string
    sql: ${TABLE}.slide_path ;;
  }
  dimension: sponsor_hidden {
    type: string
    sql: ${TABLE}.sponsor_hidden ;;
  }
  dimension: sponsor_id {
    type: number
    sql: ${TABLE}.sponsor_id ;;
  }
  dimension_group: start {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.start_date ;;
  }
  dimension: submitted {
    type: string
    sql: ${TABLE}.submitted ;;
  }
  dimension: synopsis {
    type: string
    sql: ${TABLE}.synopsis ;;
  }
  dimension: terms_of_condition {
    type: string
    sql: ${TABLE}.terms_of_condition ;;
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
  contest_id,
  middle_name,
  name,
  short_name,
  payment_info.count,
  project_attribute.count
  ]
  }

}
