package com.authority.entity.vo;

import com.authority.entity.TD0Organization;

import java.util.ArrayList;
import java.util.List;

/**
 * User: authority
 * Date: 2019/12/12
 * Time: 10:05
 */
public class ResultJson<T>  {
    private Integer code;
    private String msg;
    private Integer count;
    private List<T> data;

    public List<T> getData() {
        return data;
    }

    public void setData(List<T> data) {
        this.data = data;
    }

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

}
