package org.mall.domain;

import cn.afterturn.easypoi.excel.annotation.Excel;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.io.Serializable;
@Builder
@Data
@AllArgsConstructor // 全参构造
@NoArgsConstructor  // 无参构造
public class Commodity implements Serializable {
    //主键id
    @Excel(name ="ID")
    private Integer id;
    //商品名称
    @Excel(name = "商品名称",orderNum = "0")
    private String name;
    //商品规格
    @Excel(name = "商品规格",orderNum = "1")
    private String standard;
    //商品温度
    @Excel(name="温度",orderNum = "2")
    private String temperature;
    //商品价格
    @Excel(name = "价格",orderNum = "3")
    private int price;
    //商品描述
    @Excel(name = "描述",orderNum = "4")
    private String description;
    @Excel(name = "图片路径",orderNum = "5")
    private String images;
   /* @Excel(name = "创建时间", exportFormat = "yyyy-MM-dd",importFormat="yyyy-MM-dd",orderNum = "7")
    private Date createTime;
    @Excel(name = "更新时间", exportFormat = "yyyy-MM-dd",importFormat="yyyy-MM-dd",orderNum = "8")
    private Date updateTime;*/
    private String search;

}
