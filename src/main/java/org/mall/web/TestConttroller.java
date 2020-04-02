package org.mall.web;

import com.google.common.collect.Lists;
import org.mall.domain.User;
import org.mall.utils.ExcelUtils;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;
import javax.servlet.http.HttpServletResponse;
import java.util.Date;
import java.util.List;
@RestController
public class TestConttroller {
    @GetMapping("/export")
    public void export(HttpServletResponse response) {
        System.out.println(1);
        // 模拟从数据库获取需要导出的数据
        List<User> personList = findAll();
        // 导出操作
        ExcelUtils.exportExcel(personList, "easypoi导出功能", "导出sheet1", User.class, "测试user.xls", response);

    }
    public List<User> findAll() {
        List<User> listAll = Lists.newArrayList();
        List<User> list = Lists.newArrayList();
        User user = new User();
        user.setId(10);
        user.setName("张三");
        user.setSex("男");
        //user.setBirthday(new Date().toString());
        User user1 = new User();
        user1.setId(20);
        user1.setName("李四");
        user1.setSex("男");
        //user1.setBirthday(new Date().toString());
        User user2 = new User();
        user2.setId(20);
        user2.setName("王五");
        user2.setSex("男");
        //user2.setBirthday(new Date().toString());
        list.add(user);
        list.add(user1);
        list.add(user2);
        listAll.addAll(list);
        return listAll;
    }

}
