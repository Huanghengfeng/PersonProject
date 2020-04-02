package org.mall.web;
import com.github.pagehelper.PageInfo;
import org.mall.common.ResultUtils;
import org.mall.domain.Commodity;
import org.mall.service.impl.CommodityServiceImpl;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import javax.servlet.http.HttpServletRequest;
import java.io.*;
import java.text.SimpleDateFormat;
import java.util.*;

@Controller
@RequestMapping("/commodity")
public class CommodityController {
    @Autowired
    private CommodityServiceImpl commodityService;

    /*
     * description:获取商品
     * @ApiOperation：描述接口
     */
    @RequestMapping("/findAll")
    public String findAll(ModelMap modelMap){
        modelMap.put("commodity",commodityService.findAll());
        return "/commodity/commodity_list";
    }

    // 列表分页
    @GetMapping("/findPage")
    public String findPage(Commodity commodity,
                                       @RequestParam(defaultValue = "1") Integer pageNum,
                                       @RequestParam(defaultValue = "10") Integer pageSize,
                                        ModelMap modelMap){
        PageInfo<Commodity> page = commodityService.findPage(commodity, pageNum, pageSize);
        modelMap.put("page",page);
        return "/commodity/commodity_list";
    }
    // 搜索
    @RequestMapping("/search")
    public String search(@RequestParam String search,
                         @RequestParam(defaultValue = "1") Integer pageNum,
                         @RequestParam(defaultValue = "10") Integer pageSize,
                         ModelMap modelMap){
        PageInfo<Commodity> page = commodityService.searchByPage(search, pageNum, pageSize);
        modelMap.put("page",page);
        modelMap.put("search",search);
        return "commodity/search_list";
    }

    /*
     * description:根据id获取商品
     */
    @RequestMapping("/findById")
    public String findById(Integer id, ModelMap model){
        if (id != null && id != 0 ) {
            model.put("commodity",commodityService.findById(id));
        }
        return "commodity/commodity_list";
    }

    /*
     * description:根据id删除商品
     */
    @RequestMapping(value = "/deleteById")
    public String deleteById(Integer id, ModelMap modelMap){
        Integer id_ = id;
        ResultUtils res = new ResultUtils();
        try{
            commodityService.deleteById(id);
        }catch (Exception e){
            res.errorResult();
        }
        return "redirect:findPage";
    }

    @RequestMapping("/delCommoditys")
    @ResponseBody
    public Object delCommoditys(String ids){
        ResultUtils resultUtils = new ResultUtils();
        String[] split = ids.split(",");
        List<String> list = Arrays.asList(split);
        // 批删
        commodityService.deleteCommoditys(list);
        return resultUtils.successResult();
    }

    // 跳转到添加界面
    @RequestMapping("/addCommodity")
    public String addCommodity(){
        return "/commodity/add";
    }

    @RequestMapping("/save")
    @ResponseBody
    public Object save(Commodity commodity){
        ResultUtils resultUtils = new ResultUtils();
        if(commodity != null){
            commodityService.insertCommodity(commodity);
        }
        return resultUtils.successResult();
    }

    /**
     * 文件上传
     * @param file
     * @param request
     * @return
     * @throws Exception
     */
    @ResponseBody
    @RequestMapping(value = "/uploads",method = RequestMethod.POST)
    public Map<String,Object> uploads(MultipartFile file,HttpServletRequest request) throws Exception{
        Map<String, Object> map = new HashMap();
        File targetFile=null;
        //返回存储路径
        String filePath="";
        int code=1;
        System.out.println(file);
        //获取文件名加后缀
        String fileName = file.getOriginalFilename();
        if(fileName != null && fileName != ""){
            //图片访问的URI
            String returnUrl = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + request.getContextPath() +"/upload/imgs/";
            //文件临时存储位置
            String path = request.getSession().getServletContext().getRealPath("") + "upload" + File.separator + "imgs";

            //文件后缀
            String fileSuffix = fileName.substring(fileName.lastIndexOf("."), fileName.length());
            //新的文件名
            fileName = System.currentTimeMillis()+"_"+new Random().nextInt(1000) + fileSuffix;

            //先判断文件是否存在
            SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMdd");
            String fileAdd = sdf.format(new Date());
            //获取文件夹路径
            path = path + File.separator + fileAdd + File.separator;
            File file1 =new File(path);
            //如果文件夹不存在则创建
            if(!file1 .exists()  && !file1 .isDirectory()){
                file1 .mkdirs();
            }
            //将图片存入文件夹
            targetFile = new File(file1, fileName);
            try {
                //将上传的文件写到服务器上指定的文件。
                file.transferTo(targetFile);
                String projectPath = System.getProperty("user.dir");
                //文件复制
                String src = path + fileName;
                //根据自己系统的resource 目录所在位置进行自行配置
                //E:\hhf\develop20190805\mall\src\main\resources
                String destDir = projectPath + File.separator+"src"+File.separator+"main"+ File.separator +"resources"+File.separator+"static"+ File.separator+"upload"+File.separator+"imgs" + File.separator + fileAdd + File.separator;
                copyFile(src,destDir,fileName);

                filePath= returnUrl + fileAdd + "/"+ fileName;
                code=0;
                map.put("filePath", filePath);
            } catch (Exception e) {
                e.printStackTrace();
            }

        }
        return map;
    }

    /**
     * 复制文件
     * @param src
     * @param destDir
     * @param fileName
     * @throws IOException
     */
    public void copyFile(String src,String destDir,String fileName) throws IOException{
        FileInputStream in=new FileInputStream(src);
        File fileDir = new File(destDir);
        if(!fileDir.isDirectory()){
            fileDir.mkdirs();
        }
        File file = new File(fileDir,fileName);

        if(!file.exists()){
            file.createNewFile();
        }
        FileOutputStream out=new FileOutputStream(file);
        int c;
        byte buffer[]=new byte[1024];
        while((c=in.read(buffer))!=-1){
            for(int i=0;i<c;i++){
                out.write(buffer[i]);
            }

        }
        in.close();
        out.close();
    }
    /*
     * description:跳转到修改商品界面
     */
    @RequestMapping(value = "editCommodity")
    public String editCommodity(@RequestParam("id") Integer id,ModelMap modelMap){
        Commodity commodity = commodityService.findById(id);
        modelMap.put("commodity",commodity);
        return "/commodity/edit";
    } /*
     * description:跳转到修改商品界面
     */
    @RequestMapping(value = "edit")
    @ResponseBody
    public Object edit(Commodity commodity){
        ResultUtils resultUtils = new ResultUtils();
        Commodity c = commodityService.findById(commodity.getId());
        if(c==null){
            LoggerFactory.getLogger(CommodityController.class).error("msg{}","商品不存在");
        }
        commodityService.updateCommodity(commodity);
        return resultUtils.successResult();
    }



}
