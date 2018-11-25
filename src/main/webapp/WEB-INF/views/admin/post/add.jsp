<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://www.rapid-framework.org.cn/rapid" prefix="rapid" %>
<rapid:override name="head">
  <!-- AdminLTE Skins. Choose a skin from the css/skins
  folder instead of downloading all of them to reduce the load. -->
  <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/adminlte/dist/css/skins/_all-skins.min.css">
  <!-- bootstrap wysihtml5 - text editor -->
  <link rel="stylesheet"
        href="${pageContext.request.contextPath}/resources/adminlte/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.min.css">
</rapid:override>
<rapid:override name="content-header">
  <h1>
    公告管理
    <small>Categories</small>
  </h1>
  <ol class="breadcrumb">
    <li><a href="#"><i class="fa fa-dashboard"></i> 公告管理</a></li>
    <li class="active">添加公告</li>
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
        <form role="form" action="/admin/post/addStore" enctype="multipart/form-data" method="post">
          <!-- text input -->
          <div class="form-group">
            <label>题目</label>
            <input type="text" name="title" class="form-control" placeholder="Enter ...">
          </div>
          <!--  -->
          <div class="form-group">
            <label>内容</label>
            <input type="text" name="comment" class="form-control" placeholder="Enter ...">
          </div>
          <div class="box-footer">
            <button type="submit" class="btn btn-primary">添加</button>
          </div>
        </form>
      </div>
    </div>
  </div>
</rapid:override>
<rapid:override name="<script">
  <!-- FastClick -->
  <script
      src="${pageContext.request.contextPath}/resources/adminlte/bower_components/fastclick/lib/fastclick.js"></script>
  <!-- AdminLTE for demo purposes -->
  <script src="${pageContext.request.contextPath}/resources/adminlte/dist/js/demo.js"></script>
  <!-- CK Editor -->
  <script src="${pageContext.request.contextPath}/resources/adminlte/bower_components/ckeditor/ckeditor.js"></script>
  <!-- Bootstrap WYSIHTML5 -->
  <script
      src="${pageContext.request.contextPath}/resources/adminlte/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.all.min.js"></script>
  <script>
      $(function () {
          // Replace the <textarea id="editor1"> with a CKEditor
          // instance, using default configuration.
          CKEDITOR.replace('editor1')
          //bootstrap WYSIHTML5 - text editor
          $('.textarea').wysihtml5()
      })
  </script>
</rapid:override>
<%@include file="../layout/main.jsp" %>