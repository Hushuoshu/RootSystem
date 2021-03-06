<%--
  Created by IntelliJ IDEA.
  User: sxjun
  Date: 2015/8/28
  Time: 9:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/WEB-INF/pages/include/taglib.jsp"%>
<html>
<head>
    <title></title>
</head>
<body>
<div class='span3 box bordered-box blue-border' style='margin-bottom:0;margin-left:0px'>
  <div class='box-header'>
    <div class='title'>权限树</div>
  </div>
  <div class='box-content box-no-padding'>
    <div class='responsive-table'>
      <div class='scrollable-area-y'>
       	<ul id="permTree" class="ztree" style="height:365px;"></ul>
      </div>
    </div>
  </div>
</div>

<div class='span9 box bordered-box blue-border' style='margin-bottom:0;'>
  <div class='box-header' id="perm-header">
    <div class='title'>权限设置</div>
    <div class='actions'></div>
  </div>
  <div class='box-content box-no-padding'>
    <div class='responsive-table'>
      <div class='scrollable-area-x'>
        <table id="permTable"></table>
      </div>
    </div>
  </div>
</div>
<div class='modal hide fade' id='modal-PermTree' role='dialog' tabindex='-1'>
    <div class='modal-header'>
        <button class='close' data-dismiss='modal' type='button'>&times;</button>
        <h3></h3>
    </div>
    <form class='form validate-form' id='submit-form' method="post" role="form"  style='margin-bottom: 0;'>
    <div class='modal-body'>
        <div class='control-group'>
            <label class='control-label'>上级权限</label>
            <div class='controls'>
                <div class='input-append'>
               		<input type='hidden' id='id' name="id"/>
                    <input class='span6' id='parentId' name="parentId" type='hidden' />
                </div>
            </div>
        </div>
        <div class='control-group'>
            <label class='control-label'>权限key</label>
            <div class='controls'>
                <input class='span8' id='key' required name="key" placeholder='权限key' type='text' />
            </div>
        </div>
        <div class='control-group'>
            <label class='control-label'>权限名称</label>
            <div class='controls'>
                <input class='span8' id='name' required name="name" placeholder='权限名称' type='text' />
            </div>
        </div>
        <div class='control-group'>
            <label class='control-label'>排序</label>
            <div class='controls'>
                <input class='span8' id='order' required name='order' digits="true" placeholder='排序' type='text' />
            </div>
        </div>
    </div>
    <div class='modal-footer'>
        <button type="button" id="btnClose" class='btn'>关闭</button>
        <button type="submit" id="btnSubmit" class='btn btn-primary'>保存</button>
    </div>
    </form>
</div>
<script>
    seajs.use(['base','main/permission/manage'], function (b,m) {
        b.init();
        m.init('${ctx}');
    });
</script>
</body>
</html>
