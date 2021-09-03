project_name: "poc_task_3_plugin_test"

# # Use local_dependency: To enable referencing of another project
# # on this instance with include: statements
#
# local_dependency: {
#   project: "name_of_other_project"
# }

application: hunt_tagger {
  label: "Expel Hunt Tagger"
  url: "http://localhost:8080/dist/bundle.js"
  entitlements: {
    local_storage: no
    navigation: no
    new_window: no
    new_window_external_urls: []
    use_form_submit: yes
    use_embeds: no
    use_downloads: no
    core_api_methods: []
    external_api_urls: []
    oauth2_urls: []
    scoped_user_attributes: []
    global_user_attributes: []
  }
}

application: helloworld-ts {
  label: "Helloworld (TypeScript)"
  url: "http://localhost:8080/bundle.js"
  # file: "bundle.js
  entitlements: {
    core_api_methods: ["me"]
  }
}
