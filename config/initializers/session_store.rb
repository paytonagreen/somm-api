if Rails.env = 'production'
    Rails.application.config.session_store :cookie_store, key: '_a_somm_for_you', domain: '_a_somm_for_you_json_api'
else
    Rails.application.config.session_store :cookie_store, key: '_a_somm_for_you'
end