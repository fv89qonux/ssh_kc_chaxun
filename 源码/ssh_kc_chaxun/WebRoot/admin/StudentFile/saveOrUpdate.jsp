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
					alert("请输入内容");
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
	<div class="form form-horizontal">                                                  
		<s:form
			action="/StudentFile-updateUtil.action"
			method="post"	onsubmit="return check()"	enctype="multipart/form-data">                            
			<c:if test="${util.id != null}">                                          
				<input name="util.id" value="${util.id }" type="hidden" />          
			</c:if>                                                                     
				<div class="row cl">                                          
					<label class="form-label col-xs-4 col-sm-2">附件：</label>  
					<div class="formControls col-xs-8 col-sm-9">                
						<s:file name="myFile" />                                  
						<font size="2" color="red">文件为空表示不修改文件</font>
					</div>                                                        
				</div>                                                          
			<div class="row cl">                                              
				<label class="form-label col-xs-4 col-sm-2"><span               
					class="c-red"></span>对应用户：</label>                           
				<div class="formControls col-xs-8 col-sm-3">                    

							<span class="select-box"><select  class="select" name="util.user.id">
								<c:forEach var="type" items="${listUser}">
									<option
										<c:if test="${type.id == util.user.id }">
																	selected
																	</c:if>
										value="${type.id }">
										${type.s_0 }
									</option>
								</c:forEach>
							</select></span>
							
						</td>				</div>                                                            
			</div>                                                              
			<div class="row cl">                                              
				<label class="form-label col-xs-4 col-sm-2"><span               
					class="c-red"></span>学生编号：</label>                           
				<div class="formControls col-xs-8 col-sm-9">                    
					<input type="text" class="input-text" name="util.s_3"     
						value="${util.s_3 }" placeholder="学生编号" id="" name="">
				</div>                                                            
			</div>                                                              
			<div class="row cl">                                              
				<label class="form-label col-xs-4 col-sm-2"><span               
					class="c-red"></span>性别：</label>                           
				<div class="formControls col-xs-8 col-sm-9">                    
					<input type="text" class="input-text" name="util.s_4"     
						value="${util.s_4 }" placeholder="性别" id="" name="">
				</div>                                                            
			</div>                                                              
			<div class="row cl">                                              
				<label class="form-label col-xs-4 col-sm-2"><span               
					class="c-red"></span>学生姓名：</label>                           
				<div class="formControls col-xs-8 col-sm-9">                    
					<input type="text" class="input-text" name="util.s_5"     
						value="${util.s_5 }" placeholder="学生姓名" id="" name="">
				</div>                                                            
			</div>                                                              
			<div class="row cl">                                              
				<label class="form-label col-xs-4 col-sm-2"><span               
					class="c-red"></span>学生地址：</label>                           
				<div class="formControls col-xs-8 col-sm-9">                    
					<input type="text" class="input-text" name="util.s_6"     
						value="${util.s_6 }" placeholder="学生地址" id="" name="">
				</div>                                                            
			</div>                                                              
			<div class="row cl">                                                 
				<label class="form-label col-xs-4 col-sm-2">学生出生日期</label>       
				<div class="formControls col-xs-8 col-sm-9">                       
					<input type="text" name="util.s_7" value="${util.s_7 }"      
						onfocus="WdatePicker({ dateFmt:'yyyy-MM-dd HH:mm:ss'})"        
						id="datemin" class="input-text Wdate" style="width:180px;">
				</div>                                                               
			</div>                                                                 
			<div class="row cl">                                                    
				<label class="form-label col-xs-4 col-sm-2">备注：</label>            
				<div class="formControls col-xs-8 col-sm-9">                          
					<textarea class="textarea" name="util.s_8">${util.s_8 }</textarea>
				</div>                                                                  
			</div>                                                                    
			<div class="row cl">                                                                   
				<div class="col-xs-8 col-sm-9 col-xs-offset-4 col-sm-offset-2">                      
<c:if test="${type == type1 || type == type2 || util.id == null}">
					<button                                                                              
						class="btn btn-primary radius" type="submit">                                  
						<i class="Hui-iconfont">&#xe632;</i> 保存                                        
					</button>                                                                            
					<button onClick="layer_close();" class="btn btn-default radius"                  
						type="button">&nbsp;&nbsp;取消&nbsp;&nbsp;</button>&nbsp;&nbsp;                  
						<font style="margin-left:20px;" color=red><s:property value="errMsg" /> </font>
</c:if>
				</div>                                                                                 
			</div>                                                                                   
		</s:form>                                                                                    
	</div>                                                                                       
	</div>                                                                                       
                                                                                               
</body>                                                                                        
</html>                                                                                        
