package com.authority.entity.vo;

/**
 * User: authority
 * Date: 2019/12/13
 * Time: 16:23
 */
public class User {

    String j_username_encrypt ;
    String j_password_encrypt;
    String j_image_code;

    public String getJ_image_code() {
        return j_image_code;
    }

    public void setJ_image_code(String j_image_code) {
        this.j_image_code = j_image_code;
    }

    public String getJ_username_encrypt() {
        return j_username_encrypt;
    }

    public void setJ_username_encrypt(String j_username_encrypt) {
        this.j_username_encrypt = j_username_encrypt;
    }

    public String getJ_password_encrypt() {
        return j_password_encrypt;
    }

    public void setJ_password_encrypt(String j_password_encrypt) {
        this.j_password_encrypt = j_password_encrypt;
    }
}
