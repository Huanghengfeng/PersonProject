package org.mall.dao;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.mall.domain.Commodity;

import java.util.List;
@Mapper
public interface CommodityDao {
    //获取全部商品
    List<Commodity> findAll();

    //新增商品
    void insertCommodity(Commodity commodity);

    //修改商品
    void updateCommodity(Commodity commodity);

    //根据id获取商品
    Commodity findById(Integer id);

    //根据id删除商品
    void deleteById(Integer id);

    // 批量删除
    void deleteByIds(List<String> list);

    // 带条件查询分页
    List<Commodity> getCommoditys(Commodity commodity);

    // 条件搜索
    List<Commodity> getCommodityBySearch(@Param("search") String search);
}
