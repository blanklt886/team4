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

		</div>
	</div>
	<!-- Top End -->

	<!-- Body Begin -->
	<div class="container">
		<div class="row">
			<div class="col-md-12 text-right">
				<div class="row">
					<div class="col-md-6 text-left">
						<br />
						<br />
						<img alt=""
							src="${pageContext.request.contextPath }/images/login.jpg">
					</div>
					<div class="col-md-6 ">
						<h3>&nbsp;</h3>
						<div
							class="panel panel-default panel-body col-md-8 col-md-offset-2">
							<form action="login.action" method="post">
								<div class="form-group text-left">
									<label>部門</label>
									<select class="form-control" name="M00304">
										<option></option>
										<option>1</option>
										<option>2</option>
										<option>3</option>
										<option>4</option>
										<option>5</option>
									</select>
								</div>
								<div class="form-group text-left">
									<label>担当者コード</label>
									<input type="text" class="form-control" name="M00301" />
								</div>
								<div class="form-group text-left">
									<label>パスワード</label>
									<input type="password" class="form-control" name="M00303" />
								</div>
								<div class="col-md-12">
									<button type="submit"
										class="btn btn-primary col-md-4 col-md-offset-1">登録</button>
									<span class="col-md-2"></span>
									<button type="reset" class="btn btn-default col-md-4">キャンセル</button>
								</div>
							</form>
						</div>

					</div>

				</div>
			</div>
		</div>
	</div>
	<!-- Body End -->

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

</body>
</html>