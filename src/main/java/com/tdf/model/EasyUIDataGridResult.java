package com.tdf.model;

import java.util.List;

public class EasyUIDataGridResult {

    /**
     *
     */
    private static final long serialVersionUID = 1L;
    /**
     * 数据库中总记录数
     */
    private Integer total;
    /**
     * 当前页数据
     */
    private List<?> rows;

    public Integer getTotal() {
        return total;
    }

    public void setTotal(Integer total) {
        this.total = total;
    }

    public List<?> getRows() {
        return rows;
    }

    public void setRows(List<?> rows) {
        this.rows = rows;
    }
}
