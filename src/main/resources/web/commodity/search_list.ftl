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
            <a class="navbar-brand" href="#">后台管理系统</a>
        </div>
        <div>
            <ul class="nav navbar-nav">
                <li class="active"><a href="#">搜索列表</a></li>
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
            <table class="table table-striped">
                <tr>
                    <td>商品名称</td>
                    <td>商品规格</td>
                    <td>商品图片</td>
                    <td>温度</td>
                    <td>价格</td>
                    <td>商品描述</td>
                </tr>
                <#list page.list as item>
                    <tr>
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
                    </tr>
                </#list>
                <tr>
                    <td colspan="6">
                        <ul class="pagination">
                            <li>
                               <a class="page-link" href="/commodity/search?search=${search}&pageNum=${1}&pageSize=${page.pageSize}">首页</a>
                            </li>
                            <#if (page.pageNum) lte 1>
                                <li class="disabled "><a class="page-link" href="#">上一页</a></li>
                            <#else>
                                <li>
                                    <a class="page-link" href="/commodity/search?search=${search}&pageNum=${(page.pageNum) -
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
                                            <a class="page-link" href="/commodity/search?search=${search}&pageNum=${index}&pageSize=${page.pageSize}">${index}</a>
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
                                    <a class="page-link" href="/commodity/search?search=${search}&pageNum=${page.pageNum + 1}&pageSize=${page.pageSize}">下一页</a>
                                </li>
                            </#if>
                            <li>
                                <a class="page-link" href="/commodity/search?search=${search}&name=''&pageNum=${(page.pages)}&pageSize=${page.pageSize}">末页</a>
                            </li>

                        </ul>
                    </td>
                </tr>
            </table>
        </div>
    </section>
</div>
<script>
    // 搜索
    // 搜索
    function searchCommodity() {
        var name = $("#search").val();
        window.location.href="/commodity/search?search="+name;
    }
</script>
</body>
</html>



















