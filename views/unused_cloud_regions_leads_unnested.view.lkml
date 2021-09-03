# The name of this view in Looker is "Unused Cloud Regions Leads Unnested"
view: unused_cloud_regions_leads_unnested {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `DRI_BI_POC.unused_cloud_regions_leads_unnested`
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

  dimension: aws_region {
    type: string
    sql: ${TABLE}.aws_region ;;
  }

  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: created {
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
    sql: ${TABLE}.created_at ;;
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

  dimension: guid {
    type: string
    sql: ${TABLE}.guid ;;
  }

  dimension: hunt_guid {
    type: string
    sql: ${TABLE}.hunt_guid ;;
  }

  dimension: instance_type {
    type: string
    sql: ${TABLE}.instance_type ;;
  }

  dimension: is_ip_greynoise {
    type: yesno
    sql: ${TABLE}.is_ip_greynoise ;;
  }

  dimension: is_ip_tor {
    type: yesno
    sql: ${TABLE}.is_ip_tor ;;
  }

  dimension: is_ip_vpn {
    type: yesno
    sql: ${TABLE}.is_ip_vpn ;;
  }

  dimension: mfa_auth {
    type: yesno
    sql: ${TABLE}.mfa_auth ;;
  }

  dimension: principal_id {
    type: string
    sql: ${TABLE}.principal_id ;;
  }

  dimension: source_ip {
    type: string
    sql: ${TABLE}.source_ip ;;
  }

  dimension: ts {
    type: string
    sql: ${TABLE}.ts ;;
  }

  dimension_group: updated {
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
    sql: ${TABLE}.updated_at ;;
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
}

# These sum and average measures are hidden by default.
# If you want them to show up in your explore, remove hidden: yes.
