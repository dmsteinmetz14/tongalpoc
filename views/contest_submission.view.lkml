view: contest_submission {
  sql_table_name: tongal.contest_submission ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: additional_info_comment {
    type: string
    sql: ${TABLE}.additional_info_comment ;;
  }
  dimension: approved {
    type: number
    sql: ${TABLE}.approved ;;
  }
  dimension: approved_additional_info {
    type: string
    sql: ${TABLE}.approved_additional_info ;;
  }
  dimension: approved_location {
    type: number
    sql: ${TABLE}.approved_location ;;
  }
  dimension: approved_music_info {
    type: string
    sql: ${TABLE}.approved_music_info ;;
  }
  dimension: associated_submission {
    type: number
    sql: ${TABLE}.associated_submission ;;
  }
  dimension: can_share {
    type: string
    sql: ${TABLE}.can_share ;;
  }
  dimension: contest_phase_id {
    type: number
    sql: ${TABLE}.contest_phase_id ;;
  }
  dimension_group: edit {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.edit_date ;;
  }
  dimension: excluded {
    type: string
    sql: ${TABLE}.excluded ;;
  }
  dimension: experiment_version {
    type: number
    sql: ${TABLE}.experiment_version ;;
  }
  dimension: file_content {
    type: string
    sql: ${TABLE}.file_content ;;
  }
  dimension: file_type {
    type: number
    sql: ${TABLE}.file_type ;;
  }
  dimension: finalist_rank {
    type: number
    sql: ${TABLE}.finalist_rank ;;
  }
  dimension: has_immunity {
    type: string
    sql: ${TABLE}.has_immunity ;;
  }
  dimension: location_comment {
    type: string
    sql: ${TABLE}.location_comment ;;
  }
  dimension_group: location_credits_provided {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.location_credits_provided_on ;;
  }
  dimension: location_credits_reviewed_by_id {
    type: number
    sql: ${TABLE}.location_credits_reviewed_by_id ;;
  }
  dimension_group: location_credits_reviewed {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.location_credits_reviewed_on ;;
  }
  dimension: member_id {
    type: number
    sql: ${TABLE}.member_id ;;
  }
  dimension: metadata {
    type: string
    sql: ${TABLE}.metadata ;;
  }
  dimension: monetary_prize {
    type: number
    sql: ${TABLE}.monetary_prize ;;
  }
  dimension_group: music_credits_provided {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.music_credits_provided_on ;;
  }
  dimension: music_credits_reviewed_by_id {
    type: number
    sql: ${TABLE}.music_credits_reviewed_by_id ;;
  }
  dimension_group: music_credits_reviewed {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.music_credits_reviewed_on ;;
  }
  dimension: music_info_comment {
    type: string
    sql: ${TABLE}.music_info_comment ;;
  }
  dimension: negotiated_bid {
    type: number
    value_format_name: id
    sql: ${TABLE}.negotiated_bid ;;
  }
  dimension: no_collaborators {
    type: string
    sql: ${TABLE}.no_collaborators ;;
  }
  dimension: no_locations {
    type: string
    sql: ${TABLE}.no_locations ;;
  }
  dimension: no_musics {
    type: string
    sql: ${TABLE}.no_musics ;;
  }
  dimension: number_of_views {
    type: number
    sql: ${TABLE}.number_of_views ;;
  }
  dimension: original_video_content {
    type: string
    sql: ${TABLE}.original_video_content ;;
  }
  dimension: points {
    type: number
    sql: ${TABLE}.points ;;
  }
  dimension: prize {
    type: string
    sql: ${TABLE}.prize ;;
  }
  dimension: rank {
    type: number
    sql: ${TABLE}.rank ;;
  }
  dimension: reason {
    type: string
    sql: ${TABLE}.reason ;;
  }
  dimension: rejection_type {
    type: number
    sql: ${TABLE}.rejection_type ;;
  }
  dimension_group: removal {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.removal_date ;;
  }
  dimension: revision_submission_id {
    type: number
    sql: ${TABLE}.revision_submission_id ;;
  }
  dimension: slug {
    type: string
    sql: ${TABLE}.slug ;;
  }
  dimension_group: submit {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.submit_date ;;
  }
  dimension: submitted {
    type: string
    sql: ${TABLE}.submitted ;;
  }
  dimension: submitted_via {
    type: string
    sql: ${TABLE}.submitted_via ;;
  }
  dimension_group: talent_credits_provided {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.talent_credits_provided_on ;;
  }
  dimension: talent_credits_reviewed_by_id {
    type: number
    sql: ${TABLE}.talent_credits_reviewed_by_id ;;
  }
  dimension_group: talent_credits_reviewed {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.talent_credits_reviewed_on ;;
  }
  dimension: text_content {
    type: string
    sql: ${TABLE}.text_content ;;
  }
  dimension: thumbnail {
    type: string
    sql: ${TABLE}.thumbnail ;;
  }
  dimension: title {
    type: string
    sql: ${TABLE}.title ;;
  }
  dimension: total_number_of_views {
    type: number
    sql: ${TABLE}.total_number_of_views ;;
  }
  dimension_group: updated {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.updated_at ;;
  }
  dimension: uploaded_original {
    type: string
    sql: ${TABLE}.uploaded_original ;;
  }
  dimension_group: uploaded_original {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.uploaded_original_time ;;
  }
  dimension: uuid {
    type: string
    sql: ${TABLE}.uuid ;;
  }
  dimension: version {
    type: number
    sql: ${TABLE}.version ;;
  }
  dimension: wildcard {
    type: number
    sql: ${TABLE}.wildcard ;;
  }
  dimension: yt_views {
    type: number
    sql: ${TABLE}.yt_views ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
