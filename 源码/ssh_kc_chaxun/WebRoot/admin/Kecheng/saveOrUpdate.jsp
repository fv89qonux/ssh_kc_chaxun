<%@ page language="java" contentType="text/html; charset=UTF-8"    
	pageEncoding="GBK"%>                                               
<%                                                                     
	String path = request.getContextPath();                              
	String basePath = request.getScheme() + "://"                      
			+ request.getServerName() + ":" + request.getServerPort()      
			+ path + "/";                                                  
%>                                                                     
<%@ include file="/common/css.jsp"%>                                 
<%@ include file="/common/js.jsp"%>                                  
<%@ include file="/common/taglib.jsp"%>                              
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">      
<html>                                                                 
<head>                                                                 
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<base href="<%=basePath%>">                                          
<title><spring:message code="system_name" /></title>                 

		<script type="text/javascript">
			function check(){
				var s_0 = document.getElementById("util.s_0");
				if('' == s_0.value.replace(/(^\s*)|(\s*$)/g, "") ){
					alert("����������");
					s_0.value = "";
					s_0.focus();
					return false;
				}
				return true;
			}
		</script>
</head>                                                                
<body>                                                                            
	<div class="page-container">                                                  
		<form name=myform                                                             
			action="${pageContext.request.contextPath}/Kecheng-saveOrUpdateObject.action"
			method="post" class="form form-horizontal" >                            
			<c:if test="${util.id != null}">                                          
				<input name="util.id" value="${util.id }" type="hidden" />          
			</c:if>                                                                     
			<div class="row cl">                                              
				<label class="form-label col-xs-4 col-sm-2"><span               
					class="c-red"></span>�ڿν�ʦ��</label>                           
				<div class="formControls col-xs-8 col-sm-3">                    

							<span class="select-box"><select  class="select" name="util.teacher.id">
								<c:forEach var="type" items="${listTeacher}">
									<option
										<c:if test="${type.id == util.teacher.id }">
																	selected
																	</c:if>
										value="${type.id }">
										${type.s_0 }
									</option>
								</c:forEach>
							</select></span>
											</div>                                                            
			</div>                                                              
			<div class="row cl">                                              
				<label class="form-label col-xs-4 col-sm-2"><span               
					class="c-red"></span>�γ����֣�</label>                           
				<div class="formControls col-xs-8 col-sm-9">                    
					<input type="text" class="input-text" name="util.s_0"     
						value="${util.s_0 }" placeholder="�γ�����" id="" name="">
				</div>                                                            
			</div>                                                              
			<div class="row cl">                                              
				<label class="form-label col-xs-4 col-sm-2"><span               
					class="c-red"></span>�Ͽ����ݣ�</label>                           
				<div class="formControls col-xs-8 col-sm-9">                    
					<input type="text" class="input-text" name="util.s_1"     
						value="${util.s_1 }" placeholder="�Ͽ�����" id="" name="">
				</div>                                                            
			</div>                                                              
			<div class="row cl">                                              
				<label class="form-label col-xs-4 col-sm-2"><span               
					class="c-red"></span>�γ�Ŀ�꣺</label>                           
				<div class="formControls col-xs-8 col-sm-9">                    
					<input type="text" class="input-text" name="util.s_2"     
						value="${util.s_2 }" placeholder="�γ�Ŀ��" id="" name="">
				</div>                                                            
			</div>                                                              
			<div class="row cl">                                                    
				<label class="form-label col-xs-4 col-sm-2">��ע��</label>            
				<div class="formControls col-xs-8 col-sm-9">                          
					<textarea class="textarea" name="util.s_3">${util.s_3 }</textarea>
				</div>                                                                  
			</div>                                                                    
			<div class="row cl">                                                                   
				<div class="col-xs-8 col-sm-9 col-xs-offset-4 col-sm-offset-2">                      
					<c:if test="${util.id == null || type == 'admin'}">
					<button                                                                              
						class="btn btn-primary radius" type="submit">                                  
						<i class="Hui-iconfont">&#xe632;</i> ����                                        
					</button>                                                                            
					<button onClick="layer_close();" class="btn btn-default radius"                  
						type="button">&nbsp;&nbsp;ȡ��&nbsp;&nbsp;</button>&nbsp;&nbsp;                  
						<font style="margin-left:20px;" color=red><s:property value="errMsg" /> </font>
</c:if>
				</div>                                                                                 
			</div>                                                                                   
		</form>                                                                                    
	</div>                                                                                       
                                                                                               
</body>                                                                                        
</html>                                                                                        
