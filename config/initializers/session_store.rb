Rails.application.config.session_store :cookie_store, key: '_testapp_session', same_site: :none, secure: true
Rails.application.config.action_dispatch.cookies_same_site_protection = :none