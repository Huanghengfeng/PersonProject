package org.mall.service;

import com.github.pagehelper.PageInfo;
import org.mall.domain.Commodity;

import java.util.List;

public interface CommodityService {
    public PageInfo<Commodity> findPage(Commodity commodity, Integer pageNum, Integer pageSize);

    //获取全部商品信息
    List<Commodity> findAll();

    //新增商品信息
    void insertCommodity(Commodity commodity);

    //修改商品信息
    void updateCommodity(Commodity commodity);

    //根据id查询获取商品信息
    Commodity findById(Integer id);

    //根据id删除商品信息
    void deleteById(Integer id);

    void deleteCommoditys(List<String> list);

    PageInfo<Commodity> searchByPage(String search, Integer pageNum, Integer pageSize);
}
