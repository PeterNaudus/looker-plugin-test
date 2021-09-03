# The name of this view in Looker is "Ec2 Modifications Scrubbed JSON Records"
view: ec2_modifications_scrubbed_json_records {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `DRI_BI_POC.ec2_modifications_scrubbed_json_records`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Access Key" in Explore.

  dimension: access_key {
    type: string
    sql: ${TABLE}.access_key ;;
  }

  dimension: device_guid {
    type: string
    sql: ${TABLE}.device_guid ;;
  }

  dimension: error_code {
    type: string
    sql: ${TABLE}.error_code ;;
  }

  dimension: error_msg {
    type: string
    sql: ${TABLE}.error_msg ;;
  }

  dimension: event_name {
    type: string
    sql: ${TABLE}.event_name ;;
  }

  dimension: mfa {
    type: string
    sql: ${TABLE}.mfa ;;
  }

  dimension: organization_guid {
    type: string
    sql: ${TABLE}.organization_guid ;;
  }

  dimension: principal_id {
    type: string
    sql: ${TABLE}.principal_id ;;
  }

  dimension: query_handle {
    type: string
    sql: ${TABLE}.query_handle ;;
  }

  dimension: query_version {
    type: string
    sql: ${TABLE}.query_version ;;
  }

  dimension: read_only {
    type: string
    sql: ${TABLE}.read_only ;;
  }

  dimension: record___field_1 {
    type: string
    sql: ${TABLE}.record._field_1 ;;
    group_label: "Record"
    group_item_label: "Field 1"
  }

  dimension: request_parameter___field_1 {
    type: string
    sql: ${TABLE}.request_parameter._field_1 ;;
    group_label: "Request Parameter"
    group_item_label: "Field 1"
  }

  dimension: response___field_1 {
    type: string
    sql: ${TABLE}.response._field_1 ;;
    group_label: "Response"
    group_item_label: "Field 1"
  }

  dimension: source_ip {
    type: string
    sql: ${TABLE}.source_ip ;;
  }

  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: timestamp {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.timestamp ;;
  }

  dimension: timestamp_index {
    type: number
    sql: ${TABLE}.timestamp_index ;;
  }

  dimension: user_agent {
    type: string
    sql: ${TABLE}.user_agent ;;
  }

  dimension: user_arn {
    type: string
    sql: ${TABLE}.user_arn ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are count, sum, and average
  # measures for numeric dimensions, but you can also add measures of many different types.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: count {
    type: count
    drill_fields: [event_name]
  }

  # These sum and average measures are hidden by default.
  # If you want them to show up in your explore, remove hidden: yes.

  measure: total_timestamp_index {
    type: sum
    hidden: yes
    sql: ${timestamp_index} ;;
  }

  measure: average_timestamp_index {
    type: average
    hidden: yes
    sql: ${timestamp_index} ;;
  }
}
