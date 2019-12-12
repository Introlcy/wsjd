package com.authority.entity.vo;


import com.authority.entity.TD0Section;

import java.util.List;

/**
 * User: wsq
 * Date: 2019/12/11
 * Time: 22:31
 */
public class TD0SectionVo {
    private Integer code;
    private String msg;
    private Integer count;
    private List<TD0Section> data;

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

    public List<TD0Section> getData() {
        return data;
    }

    public void setData(List<TD0Section> data) {
        this.data = data;
    }
}
