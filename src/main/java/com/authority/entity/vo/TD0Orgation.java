package com.authority.entity.vo;

import com.authority.entity.TD0Organization;

import java.util.List;

/**
 * User: Introlcy
 * Date: 2019/12/10
 * Time: 10:14
 */
public class TD0Orgation {
    private Integer code;
    private String msg;
    private Integer count;
    private List<TD0Organization> data;

    public Integer getCode() {
        return code;
    }

    public void setCode(Integer code) {
        this.code = code;
    }

    public String getMsg() {
        return msg;
    }

    public void setMsg(String msg) {
        this.msg = msg;
    }

    public Integer getCount() {
        return count;
    }

    public void setCount(Integer count) {
        this.count = count;
    }

    public List<TD0Organization> getData() {
        return data;
    }

    public void setData(List<TD0Organization> data) {
        this.data = data;
    }
}
