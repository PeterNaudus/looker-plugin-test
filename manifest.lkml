project_name: "poc_task_3_plugin_test"

# # Use local_dependency: To enable referencing of another project
# # on this instance with include: statements
#
# local_dependency: {
#   project: "name_of_other_project"
# }

# application: hunt_tagger {
#   label: "Expel Hunt Tagger"
#   url: "http://localhost:8080/dist/bundle.js"
#   entitlements: {
#     local_storage: no
#     navigation: no
#     new_window: no
#     new_window_external_urls: []
#     use_form_submit: yes
#     use_embeds: no
#     use_downloads: no
#     core_api_methods: []
#     external_api_urls: []
#     oauth2_urls: []
#     scoped_user_attributes: []
#     global_user_attributes: []
#   }
# }

# application: helloworld-ts {
#   label: "Helloworld (TypeScript)"
#   # url: "http://localhost:8080/bundle.js"
#   file: "bundle.js"
#   entitlements: {
#     core_api_methods: ["me"]
#   }
# }

application: kitchensink {
  label: "Kitchen sink"
  # url: "http://localhost:8080/bundle.js"
  file: "kitchen-sink-bundle.js"
  entitlements: {
    local_storage: yes
    navigation: yes
    new_window: yes
    use_form_submit: yes
    use_embeds: yes
    core_api_methods: ["all_connections","search_folders", "run_inline_query", "me", "all_looks", "run_look"]
    external_api_urls: ["http://127.0.0.1:3000", "http://localhost:3000", "https://*.googleapis.com", "https://*.github.com", "https://REPLACE_ME.auth0.com"]
    oauth2_urls: ["https://accounts.google.com/o/oauth2/v2/auth", "https://github.com/login/oauth/authorize", "https://dev-5eqts7im.auth0.com/authorize", "https://dev-5eqts7im.auth0.com/login/oauth/token", "https://github.com/login/oauth/access_token"]
    scoped_user_attributes: ["user_value"]
    global_user_attributes: ["locale"]
  }
}
