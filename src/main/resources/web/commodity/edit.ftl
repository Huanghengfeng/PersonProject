<!DOCTYPE html>
<html lang="en">
<#include "../common/common.ftl" />
<body>
<nav class="navbar navbar-inverse" role="navigation">
    <div class="container-fluid">
        <div class="navbar-header">
            <a class="navbar-brand" href="/commodity/findPage">后台管理系统</a>
        </div>
        <div>
            <ul class="nav navbar-nav">
                <li class="active"><a href="#">商品编辑</a></li>
            </ul>
        </div>
    </div>
</nav>
<form class="form-horizontal" id="editForm" enctype="multipart/form-data">
    <input  type="hidden" name="id" value="${(commodity.id)!}" size=85/>
    <div class="form-group">
        <label class="col-sm-2 control-label">商品名称</label>
        <div class="col-sm-4">
            <input type="text" class="form-control" name="name" value="${(commodity.name)!}">
        </div>
    </div>
    <div class="form-group">
        <label class="col-sm-2 control-label">商品规格</label>
        <div class="col-sm-4">
            <input type="text" class="form-control" name="standard" value="${(commodity.standard)!}">
        </div>
    </div>
    <div class="form-group">
        <label class="col-sm-2 control-label">温度</label>
        <div class="col-sm-4">
            <input type="text" class="form-control" name="temperature" value="${(commodity.temperature)!}">
        </div>
    </div>
    <div class="form-group">
        <label class="col-sm-2 control-label">价格</label>
        <div class="col-sm-4">
            <input type="text" class="form-control" name="price" value="${(commodity.price)!}">
        </div>
    </div>
    <div class="form-group">
        <label class="col-sm-2 control-label">商品描述</label>
        <div class="col-sm-4">
            <input type="text" class="form-control" name="description" value="${(commodity.description)!}">
        </div>
    </div>
    <div class="form-group">
        <label class="col-sm-2 control-label">商品描述</label>
        <div class="col-sm-4">
            <#list commodity.images?split(",") as image>
                <span><img src="${image!}" class="img-rounded" style="width: 140px;height: 140px;"></span>
            </#list>
            <input id="images" type="hidden" class="form-control" name="images" value="${(commodity.images)!}">
        </div>
    </div>
    </div> <div class="form-group">
        <label class="col-sm-2 control-label">图片上传修改</label>
        <div class="col-sm-4">
            <input id="input-file" name="file" multiple type="file" data-show-caption="true">
        </div>
    </div>
    <div class="form-group">
        <div class="col-sm-offset-2 col-sm-10">
            <input onclick="submitForm();" class="btn btn-default" value="提交">
        </div>
    </div>
</form>
<script>
    function submitForm() {
        $.ajax({
            type: "POST",//方法类型
            dataType: "json",//预期服务器返回的数据类型
            url: "/commodity/edit",//url
            data: $('#editForm').serialize(),
            success: function (data) {
                if (data.success) {
                    layer.msg("操作成功!",
                        {icon:6,time:1000},
                        function(){
                            window.location.href="/commodity/findPage";
                        })
                }
            },
            error: function () {
                my.alert("操作失败！");
            }
        });
    }
    // 文件上传
    $(function () {
        initFileInput("input-file");
    })

    function initFileInput(ctrlName) {
        var imags = new Array();
        var control = $('#' + ctrlName);
        control.fileinput({
            language: 'zh', //设置语言
            uploadUrl: "/commodity/uploads", //上传的地址
            allowedFileExtensions: ['jpg', 'gif', 'png'],//接收的文件后缀
            //uploadExtraData:{"id": 1, "fileName":'123.mp3'},
            uploadAsync: true, //默认异步上传
            showUpload: true, //是否显示上传按钮
            showRemove : true, //显示移除按钮
            showPreview : true, //是否显示预览
            showCaption: false,//是否显示标题
            browseClass: "btn btn-primary", //按钮样式
            //dropZoneEnabled: true,//是否显示拖拽区域
            //minImageWidth: 50, //图片的最小宽度
            //minImageHeight: 50,//图片的最小高度
            //maxImageWidth: 1000,//图片的最大宽度
            //maxImageHeight: 1000,//图片的最大高度
            //maxFileSize: 0,//单位为kb，如果为0表示不限制文件大小
            //minFileCount: 0,
            //maxFileCount: 10, //表示允许同时上传的最大文件个数
            enctype: 'multipart/form-data',
            validateInitialCount:true,
            previewFileIcon: "<i class='glyphicon glyphicon-king'></i>",
            msgFilesTooMany: "选择上传的文件数量({n}) 超过允许的最大数值{m}！",

        }).on('filepreupload', function(event, data, previewId, index) {     //上传中
            var form = data.form, files = data.files, extra = data.extra,
                response = data.response, reader = data.reader;
            console.log('文件正在上传');
        }).on("fileuploaded", function (event, data, previewId, index) {    //一个文件上传成功
            var response = data.response;
            //alert(response.filePath);
            imags.push(response.filePath)
            $("#images").val(imags);
            console.log('文件上传成功！'+data.id);

        }).on('fileerror', function(event, data, msg) {  //一个文件上传失败
            console.log('文件上传失败！'+data.id);


        })
    }
</script>
</body>
</html>