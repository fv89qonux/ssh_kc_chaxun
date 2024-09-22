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
			action="${pageContext.request.contextPath}/Teacher-saveOrUpdateObject.action"
			method="post" class="form form-horizontal" >                            
			<c:if test="${util.id != null}">                                          
				<input name="util.id" value="${util.id }" type="hidden" />          
			</c:if>                                                                     
			<div class="row cl">                                              
				<label class="form-label col-xs-4 col-sm-2"><span               
					class="c-red"></span>��ţ�</label>                           
				<div class="formControls col-xs-8 col-sm-9">                    
					<input type="text" class="input-text" name="util.s_0"     
						value="${util.s_0 }" placeholder="���" id="" name="">
				</div>                                                            
			</div>                                                              
			<div class="row cl">                                              
				<label class="form-label col-xs-4 col-sm-2"><span               
					class="c-red"></span>������</label>                           
				<div class="formControls col-xs-8 col-sm-9">                    
					<input type="text" class="input-text" name="util.s_1"     
						value="${util.s_1 }" placeholder="����" id="" name="">
				</div>                                                            
			</div>                                                              
			<div class="row cl">                                              
				<label class="form-label col-xs-4 col-sm-2"><span               
					class="c-red"></span>�Ա�</label>                           
				<div class="formControls col-xs-8 col-sm-9">                    
					<input type="text" class="input-text" name="util.s_2"     
						value="${util.s_2 }" placeholder="�Ա�" id="" name="">
				</div>                                                            
			</div>                                                              
			<div class="row cl">                                              
				<label class="form-label col-xs-4 col-sm-2"><span               
					class="c-red"></span>��ַ��</label>                           
				<div class="formControls col-xs-8 col-sm-9">                    
					<input type="text" class="input-text" name="util.s_3"     
						value="${util.s_3 }" placeholder="��ַ" id="" name="">
				</div>                                                            
			</div>                                                              
			<div class="row cl">                                              
				<label class="form-label col-xs-4 col-sm-2"><span               
					class="c-red"></span>��ʦ��ϵ�绰��</label>                           
				<div class="formControls col-xs-8 col-sm-9">                    
					<input type="text" class="input-text" name="util.s_4"     
						value="${util.s_4 }" placeholder="��ʦ��ϵ�绰" id="" name="">
				</div>                                                            
			</div>                                                              
			<div class="row cl">                                                    
				<label class="form-label col-xs-4 col-sm-2">��ע��</label>            
				<div class="formControls col-xs-8 col-sm-9">                          
					<textarea class="textarea" name="util.s_5">${util.s_5 }</textarea>
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
