<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
 <%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
 <%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%>
  <%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
 	<jsp:include page="/jsp/cbb/includeCSS.jsp"/>
<body>
 
     	<jsp:include page="/jsp/cbb/header.jsp"/>
    
		
            
		
		

		<div id="content">
			<div id="content-header">
				<h1>Common Form Elements</h1>

			</div>
			<div id="breadcrumb">
				<a href="<%=request.getContextPath()%>/IndexInit.do" title="返回主页" class="tip-bottom"><i class="icon-home"></i> Home</a>
				<a href="#" class="tip-bottom">Form elements</a>
				<a href="#" class="current">Common elements</a>
			</div>
			<div class="container-fluid">
				<div class="row-fluid">
					<div class="span12">
						<div class="widget-box">
							<div class="widget-title">
								<span class="icon">
									<i class="icon-th"></i>
								</span>
								<h5>加油站盘点确认</h5>							
							</div>
							
						
							<div class="widget-content">
								
							
									<div class="control-group">
										<span class="label label-info">${statusEnsureInitBo.title}</span>
									</div>	
	
								 
									<form action="<%=request.getContextPath()%>/GasStationCheckStatusEnsure.do?transID=${checkPlan.transInfo.transInfo.transID}" method="post" >
										<c:set var="transInfo" value="${checkPlan.transInfo.transInfo}" scope="request"/>
										<jsp:include page="/jsp/cbb/transaction.jsp"/>
											
										<c:set var="assetsPage" value="${checkPlan.planInfo.assetsPage}" scope="request"/>
										<jsp:include page="/jsp/cbb/assetsList.jsp"/>
										<div class="form-actions">
											  <button class="btn btn-success"  name="submit" value="confirm">确定</button>
											  <button class="btn  btn-inverse" name="submit" value="cancel">取消</button>								 	
							            </div>
								    </form>
								</div>	
							
						 
						</div>
			</div>
			<div class="container-fluid">
			
				<div class="row-fluid">
					<div id="footer" class="span12">
						2012 &copy; Unicorn Admin. Brought to you by <a href="https://wrapbootstrap.com/user/diablo9983">diablo9983</a>
					</div>
				</div>
			</div>
		</div>
		

	</body>
</html>
