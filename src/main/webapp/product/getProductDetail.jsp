<%@ page contentType="text/html; charset=EUC-KR" %>
<%@ page pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>	

<!DOCTYPE html>

<html lang="ko">
	
<head>
	<meta charset="EUC-KR">
	
	<!-- ���� : http://getbootstrap.com/css/   ���� -->
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	
	<!--  ///////////////////////// Bootstrap, jQuery CDN ////////////////////////// -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" >
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" >
	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" ></script>
	
		<!-- Bootstrap Dropdown Hover CSS -->
   <link href="/css/animate.min.css" rel="stylesheet">
   <link href="/css/bootstrap-dropdownhover.min.css" rel="stylesheet">
   
    <!-- Bootstrap Dropdown Hover JS -->
   <script src="/javascript/bootstrap-dropdownhover.min.js"></script>
	
	<!--  ///////////////////////// CSS ////////////////////////// -->
	<style>
       body > div.container{
        	border: 3px solid #D6CDB7;
            margin-top: 70px;
        }
    </style>

    
     <!--  ///////////////////////// JavaScript ////////////////////////// -->
	<script type="text/javascript">

	// ����
	 $(function() {
		//==> DOM Object GET 3���� ��� ==> 1. $(tagName) : 2.(#id) : 3.$(.className)
		$( "button.btn.btn-primary" ).on("click" , function() {
			self.location = "/purchase/addPurchaseView?prod_no=${product.prodNo}"
		});
	});	
	
	
	// ����
	$(function() {
		//==> DOM Object GET 3���� ��� ==> 1. $(tagName) : 2.(#id) : 3.$(.className)
		$("a[href='#' ]").on("click" , function() {
			$(self.location).attr("href","/product/listProduct?menu=search");
		});
	});	
				

	</script>		
	    
</head>

<body>


	<!-- ToolBar Start /////////////////////////////////////-->
	<jsp:include page="/layout/toolbar.jsp" />
   	<!-- ToolBar End /////////////////////////////////////-->
	

	<!--  ȭ�鱸�� div Start /////////////////////////////////////-->
	<div class="container">
	
		<h1 class="bg-primary text-center">��ǰ �� ��ȸ</h1>
		
		<!-- form Start /////////////////////////////////////-->
		<form class="form-horizontal">
		
		  <div class="form-group">
		    <label for="prodNo" class="col-sm-offset-1 col-sm-3 control-label">���� ��ȣ</label>
		    <div class="col-sm-4">
		      <input type="text" class="form-control" id="prodNo" name="prodNo" value=${product.prodNo}>
		    </div>
		  </div>			
		
		  <div class="form-group">
		    <label for="prodName" class="col-sm-offset-1 col-sm-3 control-label">�� �� ��</label>
		    <div class="col-sm-4">
		      <input type="text" class="form-control" id="prodName" name="prodName" value=${product.prodName}>
		    </div>
		  </div>
		  
		  <div class="form-group">
		    <label for="prodDetail" class="col-sm-offset-1 col-sm-3 control-label">���� ������</label>
		    <div class="col-sm-4">
		      <input type="text" class="form-control" id="prodDetail" name="prodDetail" value=${product.prodDetail}>
		    </div>
		  </div>
		  
		  <div class="form-group">
		    <label for="manuDate" class="col-sm-offset-1 col-sm-3 control-label">���� ��������</label>
		    <div class="col-sm-4">
		      <input type="text" class="form-control" id="manuDate" name="manuDate" value=${product.manuDate}>
		    </div>
		  </div>
		  
		  <div class="form-group">
		    <label for="price" class="col-sm-offset-1 col-sm-3 control-label">���� �ǸŰ���</label>
		    <div class="col-sm-4">
		      <input type="text" class="form-control" id="price" name="price" value=${product.price}>
		    </div>
		  </div>
		  
		  <div class="form-group">
		    <label for="file" class="col-sm-offset-1 col-sm-3 control-label">���� �̹���</label>
		    <div class="col-sm-4">
		      <img src="/images/uploadFiles/${product.fileName}" />
		    </div>
		  </div>
		  
		  <div class="form-group">
		    <label for="sale" class="col-sm-offset-1 col-sm-3 control-label"></label>
		    <div class="col-sm-4">
		      <c:if test="${product.proTranCode > '0'}">		
					�ǸſϷ�� ��ǰ�Դϴ�.
				</c:if>	
		    </div>
		  </div>		  
		  
		  <div class="form-group">
		    <div class="col-sm-offset-4  col-sm-4 text-center">
		       
		    	<c:if test="${ empty product.proTranCode || product.proTranCode == '0'}">		
					<button type="button" class="btn btn-primary"  >��&nbsp;��</button>
				</c:if>	
				
			  <a class="btn btn-primary btn" href="#" role="button">��&nbsp;��</a>
		    </div>
		  </div>
		</form>
		<!-- form Start /////////////////////////////////////-->
		
 	</div>
	<!--  ȭ�鱸�� div end /////////////////////////////////////-->
	
</body>

</html>