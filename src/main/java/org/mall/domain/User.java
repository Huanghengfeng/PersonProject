package org.mall.domain;

import cn.afterturn.easypoi.excel.annotation.Excel;
import cn.afterturn.easypoi.excel.annotation.ExcelTarget;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@ExcelTarget("20")
@Setter
@Getter
@ToString
public class User {
    @Excel(name = "id", width=15)
    private Integer id;

    @Excel(name = "姓名", orderNum = "0", width=30)
    private String name;

    @Excel(name = "性别", replace = { "男_1", "女_2" }, orderNum = "1", width=30)
    private String sex;

}
