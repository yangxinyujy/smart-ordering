<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="rapid" uri="http://www.rapid-framework.org.cn/rapid" %>
<rapid:override name="head">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/adminlte/bower_components/font-awesome/css/font-awesome.min.css">
    <!-- DataTables -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/adminlte/bower_components/datatables.net-bs/css/dataTables.bootstrap.min.css">
</rapid:override>
<rapid:override name="content-header">
  <h1>
    分类管理
    <small>Categories</small>
  </h1>
  <ol class="breadcrumb">
    <li><a href="#"><i class="fa fa-dashboard"></i> 分类管理</a></li>
    <li class="active">分类列表</li>
  </ol>
</rapid:override>
<rapid:override name="content">
  <div class="box">
    <div class="box-header">
      <h3 class="box-title">分类列表</h3>
    </div>
    <!-- /.box-header -->
    <div class="box-body">
      <div id="example1_wrapper" class="dataTables_wrapper form-inline dt-bootstrap">
        <div class="row">
          <div class="col-sm-6">
            <div class="dataTables_length" id="example1_length">
              <label>Show
                <select name="example1_length" aria-controls="example1" class="form-control input-sm">
                  <option value="10">10</option>
                  <option value="25">25</option>
                  <option value="50">50</option>
                  <option value="100">100</option>
                </select> entries</label>
            </div>
          </div>
          <div class="col-sm-6">
            <div id="example1_filter" class="dataTables_filter">
              <label>Search:
                <input type="search" class="form-control input-sm" placeholder="" aria-controls="example1">
              </label>
            </div>
          </div>
        </div>
        <div class="row">
          <div class="col-sm-12">
            <table id="example1" class="table table-bordered table-striped dataTable" role="grid" aria-describedby="example1_info">
              <thead>
              <tr role="row">
                <th class="sorting_asc" tabindex="0" aria-controls="example1" rowspan="1" colspan="1" aria-sort="ascending" aria-label="Rendering engine: activate to sort column descending" style="width: 164.84375px;">类名</th>
                <th class="sorting" tabindex="0" aria-controls="example1" rowspan="1" colspan="1" aria-label="Browser: activate to sort column ascending" style="width: 203.921875px;">分类</th>
                <th class="sorting" tabindex="0" aria-controls="example1" rowspan="1" colspan="1" aria-label="Platform(s): activate to sort column ascending" style="width: 179.859375px;">图片</th>
                <th class="sorting" tabindex="0" aria-controls="example1" rowspan="1" colspan="1" aria-label="Engine version: activate to sort column ascending" style="width: 140.390625px;">状态</th>
                <th class="sorting" tabindex="0" aria-controls="example1" rowspan="1" colspan="1" aria-label="CSS grade: activate to sort column ascending" style="width: 99.015625px;">操作</th>
              </tr>
              </thead>
              <tbody>
              <c:forEach items="${cates}" var="c">
              <tr role="row" class="odd">
                <td class="sorting_1">${c.name}</td>
                <td>${c.pid}</td>
                <td>${c.img}</td>
                <td>${c.status}</td>
                <td><a class="btn btn-default btn-sm"><i class="fa fa-trash-o"></i></a></td>
              </tr>
              </c:forEach>
              </tbody>
              <tfoot>
              <tr>
                <th rowspan="1" colspan="1">类名</th>
                <th rowspan="1" colspan="1">分类</th>
                <th rowspan="1" colspan="1">图片</th>
                <th rowspan="1" colspan="1">状态</th>
                <th rowspan="1" colspan="1">操作</th>
              </tr>
              </tfoot>
            </table>
          </div>
        </div>
        <div class="row">
          <div class="col-sm-5">
            <div class="dataTables_info" id="example1_info" role="status" aria-live="polite">Showing 1 to 10 of 57 entries</div>
          </div>
          <div class="col-sm-7">
            <div class="dataTables_paginate paging_simple_numbers" id="example1_paginate">
              <ul class="pagination">
                <li class="paginate_button previous disabled" id="example1_previous"><a href="#" aria-controls="example1" data-dt-idx="0" tabindex="0">Previous</a></li>
                <li class="paginate_button active"><a href="#" aria-controls="example1" data-dt-idx="1" tabindex="0">1</a></li>
                <li class="paginate_button "><a href="#" aria-controls="example1" data-dt-idx="2" tabindex="0">2</a></li>
                <li class="paginate_button "><a href="#" aria-controls="example1" data-dt-idx="3" tabindex="0">3</a></li>
                <li class="paginate_button "><a href="#" aria-controls="example1" data-dt-idx="4" tabindex="0">4</a></li>
                <li class="paginate_button "><a href="#" aria-controls="example1" data-dt-idx="5" tabindex="0">5</a></li>
                <li class="paginate_button "><a href="#" aria-controls="example1" data-dt-idx="6" tabindex="0">6</a></li>
                <li class="paginate_button next" id="example1_next"><a href="#" aria-controls="example1" data-dt-idx="7" tabindex="0">Next</a></li>
              </ul>
            </div>
          </div>
        </div>
      </div>
    </div>
    <!-- /.box-body -->
  </div>
</rapid:override>

<rapid:override name="<script">
  <script src="${pageContext.request.contextPath}/resources/adminlte/bower_components/datatables.net/js/jquery.dataTables.min.js"></script>
  <script src="${pageContext.request.contextPath}/resources/adminlte/bower_components/datatables.net-bs/js/dataTables.bootstrap.min.js"></script>
  <!-- SlimScroll -->
  <script src="${pageContext.request.contextPath}/resources/adminlte/bower_components/jquery-slimscroll/jquery.slimscroll.min.js"></script>
  <!-- FastClick -->
  <script src="${pageContext.request.contextPath}/resources/adminlte/bower_components/fastclick/lib/fastclick.js"></script>
  <!-- AdminLTE for demo purposes -->
  <script src="${pageContext.request.contextPath}/resources/adminlte/dist/js/demo.js"></script>
  <script>
      $(function () {
          $('#example1').DataTable()
          $('#example2').DataTable({
              'paging'      : true,
              'lengthChange': false,
              'searching'   : false,
              'ordering'    : true,
              'info'        : true,
              'autoWidth'   : false
          })
      })
  </script>
</rapid:override>
<%@include file="../layout/main.jsp" %>