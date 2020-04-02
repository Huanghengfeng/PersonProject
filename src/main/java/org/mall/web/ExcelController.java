package org.mall.web;

import cn.afterturn.easypoi.excel.ExcelImportUtil;
import cn.afterturn.easypoi.excel.entity.ImportParams;
import cn.afterturn.easypoi.excel.entity.result.ExcelImportResult;
import com.google.common.collect.Lists;
import org.mall.common.ResultUtils;
import org.mall.domain.Commodity;
import org.mall.service.CommodityService;
import org.mall.service.impl.CommodityServiceImpl;
import org.mall.utils.ExcelUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

/**
 * 文件导入导出
 */
@RestController
public class ExcelController {
    @Autowired
    private CommodityServiceImpl commodityService;
    /**
     * Excel导出
     */
    @RequestMapping("/exportFile")
    public void exportExcel(HttpServletResponse response) throws Exception {
        List<Commodity> list = commodityService.findAll();
        //导出操作
        ExcelUtils.exportExcel(list, "商品信息列表", "导出sheet1", Commodity.class, "商品信息.xls", response);
    }

    /**
     * Excel导入
     */
    @PostMapping("/importExcel")
    public Object importExcel(HttpServletResponse response, @RequestParam("file") MultipartFile file) {
        ResultUtils resultUtils = new ResultUtils();
        ImportParams importParams = new ImportParams();
        // 数据处理
        importParams.setHeadRows(1);
        importParams.setTitleRows(1);
        // 需要验证
        importParams.setNeedVerfiy(false);

        try {
            ExcelImportResult<Commodity> result = ExcelImportUtil.importExcelMore(file.getInputStream(), Commodity.class,
                    importParams);
            List<Commodity> list = result.getList();
            list.forEach(commodity -> {
                commodityService.insertCommodity(commodity);
            });

        }catch (Exception e){
            e.printStackTrace();
        }
        return resultUtils.successResult();
    }

}
