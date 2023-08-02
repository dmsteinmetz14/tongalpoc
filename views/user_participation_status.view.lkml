view: user_participation_status {
  sql_table_name: tongal.user_participation_status ;;

  dimension: days_on_tongal {
    type: number
    sql: ${TABLE}.days_on_tongal ;;
  }
  dimension: first_project_submitted {
    type: number
    sql: ${TABLE}.first_project_submitted ;;
  }
  dimension: idea_earnings {
    type: number
    sql: ${TABLE}.idea_earnings ;;
  }
  dimension_group: idea_first_submission {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.idea_first_submission ;;
  }
  dimension_group: idea_first_win {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.idea_first_win ;;
  }
  dimension_group: idea_last_submission {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.idea_last_submission ;;
  }
  dimension_group: idea_last_win {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.idea_last_win ;;
  }
  dimension: idea_projects_aware {
    type: number
    sql: ${TABLE}.idea_projects_aware ;;
  }
  dimension: idea_projects_submitted {
    type: number
    sql: ${TABLE}.idea_projects_submitted ;;
  }
  dimension: idea_projects_total {
    type: number
    sql: ${TABLE}.idea_projects_total ;;
  }
  dimension: idea_projects_won {
    type: number
    sql: ${TABLE}.idea_projects_won ;;
  }
  dimension: idea_submissions {
    type: number
    sql: ${TABLE}.idea_submissions ;;
  }
  dimension: idea_wins {
    type: number
    sql: ${TABLE}.idea_wins ;;
  }
  dimension: other_earnings {
    type: number
    sql: ${TABLE}.other_earnings ;;
  }
  dimension_group: other_first_submission {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.other_first_submission ;;
  }
  dimension_group: other_first_win {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.other_first_win ;;
  }
  dimension_group: other_last_submission {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.other_last_submission ;;
  }
  dimension_group: other_last_win {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.other_last_win ;;
  }
  dimension: other_projects_aware {
    type: number
    sql: ${TABLE}.other_projects_aware ;;
  }
  dimension: other_projects_submitted {
    type: number
    sql: ${TABLE}.other_projects_submitted ;;
  }
  dimension: other_projects_total {
    type: number
    sql: ${TABLE}.other_projects_total ;;
  }
  dimension: other_projects_won {
    type: number
    sql: ${TABLE}.other_projects_won ;;
  }
  dimension: other_submissions {
    type: number
    sql: ${TABLE}.other_submissions ;;
  }
  dimension: other_wins {
    type: number
    sql: ${TABLE}.other_wins ;;
  }
  dimension: pitch_earnings {
    type: number
    sql: ${TABLE}.pitch_earnings ;;
  }
  dimension_group: pitch_first_submission {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.pitch_first_submission ;;
  }
  dimension_group: pitch_first_win {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.pitch_first_win ;;
  }
  dimension_group: pitch_last_submission {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.pitch_last_submission ;;
  }
  dimension_group: pitch_last_win {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.pitch_last_win ;;
  }
  dimension: pitch_projects_aware {
    type: number
    sql: ${TABLE}.pitch_projects_aware ;;
  }
  dimension: pitch_projects_submitted {
    type: number
    sql: ${TABLE}.pitch_projects_submitted ;;
  }
  dimension: pitch_projects_total {
    type: number
    sql: ${TABLE}.pitch_projects_total ;;
  }
  dimension: pitch_projects_won {
    type: number
    sql: ${TABLE}.pitch_projects_won ;;
  }
  dimension: pitch_submissions {
    type: number
    sql: ${TABLE}.pitch_submissions ;;
  }
  dimension: pitch_wins {
    type: number
    sql: ${TABLE}.pitch_wins ;;
  }
  dimension: subscribed_idea {
    type: number
    value_format_name: id
    sql: ${TABLE}.subscribed_idea ;;
  }
  dimension: subscribed_production {
    type: number
    sql: ${TABLE}.subscribed_production ;;
  }
  dimension: subscribed_quick {
    type: number
    sql: ${TABLE}.subscribed_quick ;;
  }
  dimension: top_ideation {
    type: number
    value_format_name: id
    sql: ${TABLE}.top_ideation ;;
  }
  dimension: top_production {
    type: number
    sql: ${TABLE}.top_production ;;
  }
  dimension: total_earnings {
    type: number
    sql: ${TABLE}.total_earnings ;;
  }
  dimension: unsubscribed {
    type: number
    sql: ${TABLE}.unsubscribed ;;
  }
  dimension: user_id {
    type: number
    sql: ${TABLE}.user_id ;;
  }
  dimension: video_earnings {
    type: number
    sql: ${TABLE}.video_earnings ;;
  }
  dimension_group: video_first_submission {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.video_first_submission ;;
  }
  dimension_group: video_first_win {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.video_first_win ;;
  }
  dimension_group: video_last_submission {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.video_last_submission ;;
  }
  dimension_group: video_last_win {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.video_last_win ;;
  }
  dimension: video_projects_aware {
    type: number
    sql: ${TABLE}.video_projects_aware ;;
  }
  dimension: video_projects_submitted {
    type: number
    sql: ${TABLE}.video_projects_submitted ;;
  }
  dimension: video_projects_total {
    type: number
    sql: ${TABLE}.video_projects_total ;;
  }
  dimension: video_projects_won {
    type: number
    sql: ${TABLE}.video_projects_won ;;
  }
  dimension: video_submissions {
    type: number
    sql: ${TABLE}.video_submissions ;;
  }
  dimension: video_wins {
    type: number
    sql: ${TABLE}.video_wins ;;
  }
  measure: count {
    type: count
  }
}
