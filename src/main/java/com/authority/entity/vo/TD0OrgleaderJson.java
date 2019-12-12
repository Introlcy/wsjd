package com.authority.entity.vo;

import java.util.List;

/**
 * User: Introlcy
 * Date: 2019/12/12
 * Time: 19:29
 */
public class TD0OrgleaderJson {
    private Integer code;
    private String msg;
    private Integer count;
    private List<TD0OrgAndLeader> data;

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

    public List<TD0OrgAndLeader> getData() {
        return data;
    }

    public void setData(List<TD0OrgAndLeader> data) {
        this.data = data;
    }
}
