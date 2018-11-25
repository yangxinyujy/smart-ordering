<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://www.rapid-framework.org.cn/rapid" prefix="rapid" %>
<rapid:override name="content-header">
  <h1>
    商品管理
    <small>Categories</small>
  </h1>
  <ol class="breadcrumb">
    <li><a href="#"><i class="fa fa-dashboard"></i> 商品管理</a></li>
    <li class="active">添加商品</li>
  </ol>
</rapid:override>
<rapid:override name="content">
  <!-- /.box-header -->
  <!-- form start -->
  <div class="col-md-6">
    <!-- general form elements -->
    <div class="box box-primary">
      <div class="box-header with-border">
        <h3 class="box-title">添加商品</h3>
      </div>
      <!-- /.box-header -->
      <!-- form start -->
      <div class="box-body">
        <form role="form" action="/admin/ware/addStore" enctype="multipart/form-data" method="post">
          <!-- text input -->
          <div class="form-group">
            <label>商品名称</label>
            <input type="text" name="name" class="form-control" placeholder="Enter ...">
          </div>
          <div class="form-group">
            <label>生产商</label>
            <input type="text" name="manufacturer" class="form-control" placeholder="Enter ...">
          </div>
          <div class="form-group">
            <label>生产日期</label>
            <input type="date" name="productionDate" class="form-control" placeholder="Enter ...">
          </div>
          <div class="form-group">
            <label>售价</label>
            <input type="text" name="sellingPrice" class="form-control" placeholder="Enter ...">
          </div>
          <div class="form-group">
            <label>进价</label>
            <input type="text" name="buyingPrice" class="form-control" placeholder="Enter ...">
          </div>
          <div class="form-group">
            <label>描述</label>
            <input type="text" name="comment" class="form-control" placeholder="Enter ...">
          </div>
          <%--<div class="form-group">--%>
            <%--<label>图片</label>--%>
            <%--<input type="file" name="img" accept="image/*" class="form-control">--%>
          <%--</div>--%>
          <!-- select -->
          <div class="form-group">
            <label>分类名称</label>
            <select class="form-control" name="cate_id">
              <c:forEach items="${cates}" var="c">
              <option value="${c.id}">${c.name}</option>
              </c:forEach>
            </select>
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