<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <title>商品信息</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="multipart/form-data; charset=utf-8" />
    <#include "../common/common.ftl" />

</head>
<body>
<nav class="navbar navbar-inverse" role="navigation">
    <div class="container-fluid">
        <div class="navbar-header">
            <a class="navbar-brand" href="/commodity/findPage">后台管理系统</a>
        </div>
        <div>
            <ul class="nav navbar-nav">
                <li class="active"><a href="#">商品管理</a></li>
            </ul>
        </div>
        <form id="search_form" class="navbar-form navbar-left" role="search">
            <div class="form-group">
                <input id="search" name="search" type="text" class="form-control" placeholder="搜索商品">
            </div>
            <button type="button" class="btn btn-default" onclick="searchCommodity()">搜索</button>
        </form>
    </div>
</nav>

<div class="page-content">
    <section id="featured" class="content-section">
        <div class="section-content">
            <div>
                <button id="add" type="button" class="btn btn-info" onclick="add()" style="position: relative;float: left;margin-bottom: 10px;">
                    添加
            </div>
        </div>
            <table class="table table-striped">
                <tr>
                    <td><input type="checkbox" id="all">全选</td>
                    <td>商品名称</td>
                    <td>商品规格</td>
                    <td>商品图片</td>
                    <td>温度</td>
                    <td>价格</td>
                    <td>商品描述</td>
                    <td colspan="2">操作</td>
                </tr>
                <#list page.list as item>
                    <tr>
                        <td><input type="checkbox" name="sub" value="${item.id}"></td>
                        <td>${(item.name)!}</td>
                        <td>${(item.standard)!}</td>
                        <td>
                            <#list item.images?split(",") as image>
                                <span><img src="${image!}" class="img-rounded" style="width: 140px;height: 140px;"></span>
                            </#list>
                        </td>
                        <td>${(item.temperature)!}</td>
                        <td>${(item.price)!}元</td>
                        <td>${(item.description)!}</td>
                        <td><button type="button" class="btn btn-warning" onclick="edit(${(item.id)})">
                                修改
                            </button>
                        </td>
                        <td><button type="button" class="btn btn-danger" onclick="deleteById('/commodity/deleteById?id=${(item.id)!}')">
                                删除
                            </button>
                        </td>
                    </tr>
                </#list>
                <tr>
                    <td>
                        <button type="button" class="btn btn-danger" onclick="del();" style="position: relative;float: left;margin-top: 18px;">
                            批量删除
                        </button>
                    </td>
                    <td colspan="6">
                        <ul class="pagination">
                            <li>
                               <a class="page-link" href="/commodity/findPage?pageNum=${1}&pageSize=${page.pageSize}">首页</a>
                            </li>
                            <#if (page.pageNum) lte 1>
                                <li class="disabled "><a class="page-link" href="#">上一页</a></li>
                            <#else>
                                <li>
                                    <a class="page-link" href="/commodity/findPage?pageNum=${(page.pageNum) -
                                    1}&pageSize=${page.pageSize}">上一页</a>
                                </li>
                            </#if>
                            <#if page.pages gt 1>
                                <#--如果当前页往前查3页不是第2页-->
                                <#if ((page.pageNum - 3) > 2)>
                                    <li><span class="text">…</span></li>
                                </#if>
                                <#--当前页的前3页和后3页-->
                                <#list (page.pageNum  - 3)..(page.pageNum  + 3) as index>
                                <#--如果位于第一页和最后一页之间-->
                                    <#if page.pageNum == index>
                                        <li class="page-item active "><a class="page-link" href="#">${index}</a>
                                        </li>
                                    <#elseif (index > 1) && (index < page.pages)>
                                        <li>
                                            <a class="page-link" href="/commodity/findPage?pageNum=${index}&pageSize=${page.pageSize}">${index}</a>
                                        </li>
                                    </#if>
                                </#list>

                                <#--如果当前页往后查3页不是倒数第2页-->
                                <#if (page.pageNum + 3) < (page.pages - 1)>
                                    <li><span class="text">…</span></li>
                                </#if>
                            </#if>
                            <#if page.pageNum gte page.pages>
                                <li class="disabled "><a class="page-link" href="#">下一页</a></li>
                            <#else>
                                <li>
                                    <a class="page-link" href="/commodity/findPage?pageNum=${page.pageNum + 1}&pageSize=${page.pageSize}">下一页</a>
                                </li>
                            </#if>
                            <li>
                                <a class="page-link" href="/commodity/findPage?pageNum=${(page.pages)}&pageSize=${page.pageSize}">末页</a>
                            </li>

                        </ul>
                    </td>
                   <td>
                        <button type="button" class="btn btn-orange" onclick="exportFile();" style="position: relative;float: left;margin-top: 18px;">
                            导出
                        </button>
                       <form class="form-horizontal" id="fileForm" method="post" enctype="multipart/form-data">
                               <input type="file" name="file" style=" position: relative;float: left;margin-top: 18px; margin-left: 10px;margin-right: -102px;"/>
                               <button type="button" class="btn btn-orange" onclick="importFile();" style="position: relative;float: left;margin-top: 18px;">
                                   导入
                               </button>
                       </form>
                    </td>
                </tr>
            </table>
        </div>
    </section>
</div>
<script>
    // 搜索
    function searchCommodity() {
        var name = $("#search").val();
        window.location.href="/commodity/search?search="+name;
    }
    // 导出商品信息
    function exportFile(){
        window.location.href="/exportFile";
    }

    function importFile(){
        var formData = new FormData($("#fileForm")[0]);
        $.ajax({
            type: "POST",//方法类型
            dataType: "json",//预期服务器返回的数据类型
            url: "/importExcel",//url
            data: formData,
            contentType: false, //必须
            processData: false,
            success: function (data) {
                if (data.success) {
                    layer.msg("提交成功!",
                        {icon:6,time:1000},
                        function(){
                            window.location.href="/commodity/findPage";
                        })
                }
            },
            error: function () {
                //my.alert("提交失败！");
            }
        });
    }


    function deleteById(url) {
        $.confirm({
            title: '删除商品',
            content: '你确认要把该商品删除吗?',
            type: 'red',
            icon: 'glyphicon glyphicon-question-sign',
            buttons: {
                ok: {
                    text: '确认',
                    btnClass: 'btn-red',
                    action: function() {
                        location.href = url; //指向下载资源（此处为目标文件的输出数据流）
                    }
                },
                cancel: {
                    text: '取消'
                }
            }
        });
    }

    // 跳转到添加界面
    function add() {
        window.location.href="/commodity/addCommodity";
    }

    function edit(id){
        window.location.href="/commodity/editCommodity?id="+id;
    }
    // 全选与全不选
    $("#all").on('click',function() {
        $("input[name='sub']").prop("checked", this.checked);
    });
    $("input[name='sub']").on('click',function() {
        var $subs = $("input[name='sub']");
        $("#all").prop("checked" , $subs.length == $subs.filter(":checked").length ? true :false);
    });
    // 获取选中的商品id
    function getIds() {
        var ids = "";
        var checkClass = $("input[name='sub']:checked");
        checkClass.each(function() {
            ids+=$(this).val();
            ids+=",";
        });
        ids = ids.substr(0, ids.lastIndexOf(","));
        return ids;
    }
    // 批删
    function del() {
        var ids = getIds();
        if(ids.length != 0){
            $.confirm({
                title: '删除操作!',
                content: '你确定要删除选中的所有商品吗？',
                type: 'red',
                typeAnimated: true,
                icon: 'glyphicon glyphicon-question-sign',
                buttons: {
                    tryAgain: {
                        text: '删除',
                        btnClass: 'btn-red',
                        action: function(){
                            $.ajax({
                                url : "/commodity/delCommoditys", // 数据发送方式
                                type : "post", // 接受数据格式           
                                dataType : "json", // 要传递的数据
                                data : {"ids" : ids},
                                success : function(data) {
                                    if (data.success) {
                                        layer.msg("删除成功!",
                                            {icon:6,time:1000},
                                            function(){
                                                parent.location.reload()
                                            })
                                    }else{
                                        $.alert("删除失败!");
                                    }
                                }
                            });
                        }
                    },
                    closebtn: {
                        text: '取消',
                        close: function () {
                            text:'取消'
                        }
                    }

                }
            });
        }else {
            $.confirm({
                title: '提示!',
                content: '请选择您要删除的商品!',
                type: 'red',
                typeAnimated: true,
                icon: 'glyphicon glyphicon-question-sign',
                buttons: {
                    tryAgain: {
                        text: '确定',
                        btnClass: 'btn-red',
                        action: function(){
                        }
                    }
                }
            });
        }


    }

</script>
</body>
</html>



















