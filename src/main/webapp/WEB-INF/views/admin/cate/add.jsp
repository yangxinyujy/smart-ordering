<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://www.rapid-framework.org.cn/rapid" prefix="rapid" %>
<rapid:override name="content-header">
  <h1>
    分类管理
    <small>Categories</small>
  </h1>
  <ol class="breadcrumb">
    <li><a href="#"><i class="fa fa-dashboard"></i> 分类管理</a></li>
    <li class="active">添加分类</li>
  </ol>
</rapid:override>
<rapid:override name="content">
  <!-- form start -->
  <div class="col-md-6">
    <!-- general form elements -->
    <div class="box box-primary">
      <div class="box-header with-border">
        <h3 class="box-title">添加分类</h3>
      </div>
      <!-- /.box-header -->
      <!-- form start -->
      <div class="box-body">
        <form role="form" action="/admin/cate/addStore" enctype="multipart/form-data" method="post">
          <!-- text input -->
          <div class="form-group">
            <label>分类名称</label>
            <input type="text" name="name" class="form-control" placeholder="Enter ...">
          </div>
          <!-- select -->
          <div class="form-group">
            <label>父类名称</label>
            <select class="form-control" name="pid">
              <c:forEach items="${cates}" var="c">
                <option value="${c.id}">${c.name}</option>
              </c:forEach>
            </select>
          </div>
          <div class="form-group">
            <label>状态</label>
            <div class="radio">
              <label>
                <input type="radio" name="status" id="on" value="1" checked="checked">
                启用
              </label>
              <label>
                <input type="radio" name="status" id="off" value="2">
                禁用
              </label>
            </div>
          </div>
          <div class="box-footer">
            <button type="submit" class="btn btn-primary">添加</button>
          </div>
        </form>
      </div>
    </div>
  </div>
</rapid:override>
<%@include file="../layout/main.jsp" %>