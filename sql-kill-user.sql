DELETE wpu, wpum1, wpum2 FROM wp_users AS wpu, wp_usermeta AS wpum1, wp_usermeta AS wpum2 WHERE wpu.ID = wpum1.user_id AND wpum1.meta_key = 'wp_capabilities' AND wpum1.meta_value = 'a:1:{s:10:"subscriber";b:1;}' AND wpum2.user_id = wpum1.user_id;