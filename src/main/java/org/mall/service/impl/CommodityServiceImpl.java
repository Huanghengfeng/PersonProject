package org.mall.service.impl;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.mall.dao.CommodityDao;
import org.mall.domain.Commodity;
import org.mall.service.CommodityService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CommodityServiceImpl implements CommodityService {
    @Autowired
    private CommodityDao commodityDao;

    @Override
    public PageInfo<Commodity> findPage(Commodity commodity, Integer pageNum, Integer pageSize) {
        PageHelper.startPage(pageNum,pageSize);
        List<Commodity> list = commodityDao.getCommoditys(commodity);
        return PageInfo.of(list);
    }

    @Override
    public List<Commodity> findAll() {
        return commodityDao.findAll();
    }

    @Override
    public void insertCommodity(Commodity commodity) {
        commodityDao.insertCommodity(commodity);
    }

    @Override
    public void updateCommodity(Commodity commodity) {
        commodityDao.updateCommodity(commodity);
    }

    @Override
    public Commodity findById(Integer id) {
        return commodityDao.findById(id);
    }

    @Override
    public void deleteById(Integer id) {
        commodityDao.deleteById(id);
    }

    @Override
    public void deleteCommoditys(List<String> list) {
        commodityDao.deleteByIds(list);
    }

    @Override
    public PageInfo<Commodity> searchByPage(String search, Integer pageNum, Integer pageSize) {
        PageHelper.startPage(pageNum,pageSize);
        List<Commodity> list = commodityDao.getCommodityBySearch(search);
        return PageInfo.of(list);
    }
}
