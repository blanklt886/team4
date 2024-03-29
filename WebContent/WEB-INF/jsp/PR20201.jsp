<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
<title>華信商会(株) 販売管理業務システム</title>
<meta name="renderer" content="webkit">

<link rel="stylesheet"
	href="${pageContext.request.contextPath }/css/bootstrap.min.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/css/style.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/css/datetimepicker/bootstrap-datetimepicker.min.css"
	media="screen" />
</head>
<body>
	<!-- Top Begin -->
	<div class="navbar navbar-default navbar-fixed-top" role="navigation">
		<div class="container">
			<!-- Title Begin -->
			<div class="navbar-header">
				<a class="navbar-brand" href="#">
					<b>華信商会(株) 販売管理業務システム</b>
				</a>
			</div>
			<!-- Title End -->

			<!-- Menu Begin -->
			<div>
				<ul class="nav navbar-nav navbar-right">
					<li>
						<a href="aPR10101.action">首頁</a>
					</li>
					<li class="dropdown">
						<a href="#" class="dropdown-toggle" data-toggle="dropdown"
							aria-expanded="false">
							<span>受注管理</span>
							<span class="caret"></span>
						</a>
						<ul class="dropdown-menu" role="menu">
							<li>
								<a href="aPR10101.action">受注入力</a>
							</li>
							<li>
								<a href="aPR10201.action">商品別出庫表作成</a>
							</li>
							<li>
								<a href="aPR10301.action">顧客別受注実績月報作成</a>
							</li>
							<li>
								<a href="aPR10401.action">商品別受注実績月報作成</a>
							</li>
							<li>
								<a href="aPR10501.action">在庫情報確認</a>
							</li>
						</ul>
					</li>
					<li class="dropdown">
						<a href="#" class="dropdown-toggle" data-toggle="dropdown"
							aria-expanded="false">
							<span>売掛管理</span>
							<span class="caret"></span>
						</a>
						<ul class="dropdown-menu" role="menu">
							<li>
								<a href="aPR20101.action">売掛登録</a>
							</li>
							<li>
								<a href="aPR20201.action">代金請求</a>
							</li>
							<li>
								<a href="aPR20301.action">入金登録</a>
							</li>
						</ul>
					</li>
					<li class="dropdown">
						<a href="#" class="dropdown-toggle" data-toggle="dropdown"
							aria-expanded="false">
							<i class="glyphicon glyphicon-user"></i>
							<span>DHEE</span>
							<span class="caret"></span>
						</a>
						<ul class="dropdown-menu" role="menu">
							<li>
								<a href="alogin.action">退出</a>
							</li>
						</ul>
					</li>
					<li></li>
				</ul>
			</div>
			<!-- Menu End -->
			
		</div>
	</div>
	<!-- Top End -->

	<!-- Body Begin -->
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<div class="row">
					<div class="col-md-12">
						<div class="panel panel-default">
							<div class="panel-heading">
								<div class="row">
									<div class="col-md-6" align="left">
										<font style="font-size: 14px; line-height: 29px;">代金請求</font>
									</div>
									<div class="col-md-6" align="right">
										<button type="submit" class="btn btn-primary btn-sm"
											data-toggle="modal" data-target="#goodsModal">作成</button>
										<button type="submit" class="btn btn-default btn-sm">クリア</button>
									</div>
								</div>
							</div>
							<div class="panel-body">
								<div class="row">
									<div class="col-md-4">
										<div class="input-group">
											<span class="input-group-addon">顧客コード</span>
											<input type="text" class="form-control">
											<span class="input-group-addon">
												<a href="#" data-toggle="modal" data-target="#customerModal">
													<span class="glyphicon glyphicon-search"></span>
												</a>
											</span>
										</div>
									</div>
									<div class="col-md-4">
										<div class="input-group date form_date">
											<span class="input-group-addon">請求日付</span>
											<input type="text" class="form-control" readonly>
											<span class="input-group-addon">
												<span class="glyphicon glyphicon-calendar"></span>
											</span>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Body End -->

	<!-- Customer Modal -->
	<div class="modal fade" id="customerModal" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title" id="myModalLabel">顧客情報</h4>
				</div>
				<div class="modal-body">
					<div class="panel panel-default">
						<div class="panel-body">
							<div class="row">
								<div class="col-md-6" align="left">
									<div class="input-group">
										<span class="input-group-addon">顧客名</span>
										<input type="text" class="form-control">
									</div>
								</div>
								<div class="col-md-6" align="right">
									<button type="submit" class="btn btn-primary btn-sm">検索</button>
								</div>
							</div>
						</div>
						<div class="panel-body">
							<table class="table table-bordered" id="customerTable">
								<thead>
									<tr>
										<th style="text-align: center;">選択</th>
										<th style="text-align: center;">顧客コード</th>
										<th style="text-align: center;">顧客名</th>
										<th style="text-align: center;">信用限度額</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td style="text-align: center;">
											<a href="#" data-dismiss="modal">
												<span class="glyphicon glyphicon-check"></span>
											</a>
										</td>
										<td style="text-align: center;">10001</td>
										<td style="text-align: left;">NEC GROUP</td>
										<td style="text-align: right;">10,000,000</td>
									</tr>
								</tbody>
							</table>
							<nav class="page">
								<ul class="pagination">
									<li class="disabled">
										<a href="#" aria-label="Previous">
											<span aria-hidden="true">«</span>
										</a>
									</li>
									<li class="active">
										<a href="#">1</a>
									</li>
									<li>
										<a href="#">2</a>
									</li>
									<li>
										<a href="#">3</a>
									</li>
									<li>
										<a href="#">4</a>
									</li>
									<li>
										<a href="#">5</a>
									</li>
									<li>
										<a href="#" aria-label="Next">
											<span aria-hidden="true">»</span>
										</a>
									</li>
								</ul>
							</nav>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- Foot begin -->
	<div class="text-center text-muted"
		style="height: 40px; width: 100%; bottom: 0; position: fixed; line-height: 40px; background-color: #eee">
		<i class="glyphicon glyphicon-copyright-mark"></i>
		DHEE 2017 大連華信計算機新技術培訓中心. すべての知る権利を保留
	</div>

	<!-- Foot End -->
	<script type="text/javascript"
		src="${pageContext.request.contextPath }/js/jquery.min.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath }/js/bootstrap.min.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath }/js/datetimepicker/bootstrap-datetimepicker.js"
		charset="UTF-8"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath }/js/datetimepicker/locales/bootstrap-datetimepicker.ja.js"
		charset="UTF-8"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath }/js/echarts.min.js"></script>

	<script type="text/javascript">
		//init datetimepicker
		$(".form_date").datetimepicker({
			language : 'ja',//i18N
			autoclose : true,//autoclose
			todayHighlight : true,//todayHighlight
			todayBtn : true,//todayBtn
			minView : "month",//minView
			format : "yyyy-mm-dd",//format
			pickerPosition : "bottom-left"//pickerPosition:bottom-left
		});
	</script>
</body>
</html>