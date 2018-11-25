<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="rapid"  uri="http://www.rapid-framework.org.cn/rapid" %>
<rapid:override name="head">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/adminlte/bower_components/font-awesome/css/font-awesome.min.css">
  <!-- DataTables -->
  <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/adminlte/bower_components/datatables.net-bs/css/dataTables.bootstrap.min.css">
</rapid:override>
<rapid:override name="content-header">
  <h1>
    商品管理
    <small>Categories</small>
  </h1>
  <ol class="breadcrumb">
    <li><a href="#"><i class="fa fa-dashboard"></i> 商品管理</a></li>
    <li class="active">商品列表</li>
  </ol>
</rapid:override>
<rapid:override name="content">
  <div class="box">
    <div class="box-header">
      <h3 class="box-title">商品列表</h3>
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
                <th class="sorting_asc" tabindex="0" aria-controls="example1" rowspan="1" colspan="1" aria-sort="ascending" aria-label="activate to sort column descending" style="width: 164.84375px;">商品名称</th>
                <th class="sorting" tabindex="0" aria-controls="example1" rowspan="1" colspan="1" aria-label="activate to sort column ascending" style="width: 203.921875px;">生产商</th>
                <th class="sorting" tabindex="0" aria-controls="example1" rowspan="1" colspan="1" aria-label="activate to sort column ascending" style="width: 99.015625px;">生产日期</th>
                <th class="sorting" tabindex="0" aria-controls="example1" rowspan="1" colspan="1" aria-label="activate to sort column ascending" style="width: 140.390625px;">售价</th>
                <th class="sorting" tabindex="0" aria-controls="example1" rowspan="1" colspan="1" aria-label="activate to sort column ascending" style="width: 99.015625px;">进价</th>
                <th class="sorting" tabindex="0" aria-controls="example1" rowspan="1" colspan="1" aria-label="activate to sort column ascending" style="width: 99.015625px;">操作</th>
              </tr>
              </thead>
              <tbody>
              <c:forEach items="${wares}" var="w">
              <tr role="row" class="odd">
                <td class="sorting_1">${w.name}</td>
                <td>${w.manufacturer}</td>
                <td>${w.productionDate}</td>
                <td>${w.sellingPrice}</td>
                <td>${w.buyingPrice}</td>
                <td><a class="btn btn-default btn-sm"><i class="fa fa-trash-o"></i></a></td>
              </tr>
              </c:forEach>
              </tbody>
              <tfoot>
              <tr>
                <th rowspan="1" colspan="1">商品名称</th>
                <th rowspan="1" colspan="1">生产商</th>
                <th rowspan="1" colspan="1">生产日期</th>
                <th rowspan="1" colspan="1">售价</th>
                <th rowspan="1" colspan="1">进价</th>
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
          $('#example1').DataTable({
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