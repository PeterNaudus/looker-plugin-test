# Define the database connection to be used for this model.
connection: "expel-engineering-lab"

# include all the views
include: "/views/**/*.view"

# Datagroups define a caching policy for an Explore. To learn more,
# use the Quick Help panel on the right to see documentation.

datagroup: poc_task_3_plugin_test_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: poc_task_3_plugin_test_default_datagroup

# Explores allow you to join together different views (database tables) based on the
# relationships between fields. By joining a view into an Explore, you make those
# fields available to users for data analysis.
# Explores should be purpose-built for specific use cases.

# To see the Explore you’re building, navigate to the Explore menu and select an Explore under "Poc Task 3 Plugin Test"

# To create more sophisticated Explores that involve multiple views, you can use the join parameter.
# Typically, join parameters require that you define the join type, join relationship, and a sql_on clause.
# Each joined view also needs to define a primary key.

explore: ec2_modifications_scrubbed {}

explore: ec2_modifications_scrubbed_jrb_unnested {}

explore: ec2_modifications_scrubbed_json_records {}

explore: poc_state_updates {}

explore: unused_cloud_regions_leads {}

explore: unused_cloud_regions_leads_unnested {}
