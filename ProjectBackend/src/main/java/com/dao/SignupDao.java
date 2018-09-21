package com.dao;

import com.models.Signup;

public interface SignupDao {

	Signup saveUser(Signup signup);
Signup deleteUser(Signup signup);
Signup getUSer(String mail);

}
