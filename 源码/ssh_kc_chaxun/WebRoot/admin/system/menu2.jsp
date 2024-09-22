<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="GBK"%>
<dl id="menu-product">
	<dt>
		<i class="Hui-iconfont">&#xe620;</i> 个人资料<i
			class="Hui-iconfont menu_dropdown-arrow">&#xe6d5;</i>
	</dt>
	<dd>
		<ul>
			<li><a
				data-href="${pageContext.request.contextPath}/initInfo.action"
				data-title="修改个人资料" href="javascript:void(0)">修改个人资料</a>
			</li>
			<li><a
				data-href="${pageContext.request.contextPath}/admin/User/updatepwd.jsp"
				data-title="修改密码" href="javascript:void(0)">修改密码</a>
			</li>
		</ul>
	</dd>
</dl>

<c:if test="${type == 'admin'}">
	<dl id="menu-product">
		<dt>
			<i class="Hui-iconfont">&#xe620;</i> 用户管理<i
				class="Hui-iconfont menu_dropdown-arrow">&#xe6d5;</i>
		</dt>
		<dd>
			<ul>
				<li><a
					data-href="${pageContext.request.contextPath}/admin/User/saveOrUpdate.jsp"
					data-title="增加用户" href="javascript:void(0)">增加</a>
				</li>
				<li><a
					data-href="${pageContext.request.contextPath}/User-getAllUtil.action"
					data-title="查询用户" href="javascript:void(0)">查询</a>
				</li>
			</ul>
		</dd>
	</dl>
</c:if>

<dl id="menu-product">
	<dt>
		<i class="Hui-iconfont">&#xe620;</i>教师管理<i
			class="Hui-iconfont menu_dropdown-arrow">&#xe6d5;</i>
	</dt>
	<dd>
		<ul>
			<c:if test="${type==type1||type==type2}">
				<li><a
					data-href="${pageContext.request.contextPath}/admin/Teacher/saveOrUpdate.jsp"
					data-title="增加教师" href="javascript:void(0)">增加</a>
				</li>
			</c:if>
			<li><a
				data-href="${pageContext.request.contextPath}/Teacher-getAllUtil.action"
				data-title="查询教师" href="javascript:void(0)">查询</a>
			</li>
		</ul>
	</dd>
</dl>

<dl id="menu-product">
	<dt>
		<i class="Hui-iconfont">&#xe620;</i>学生管理<i
			class="Hui-iconfont menu_dropdown-arrow">&#xe6d5;</i>
	</dt>
	<dd>
		<ul>
			<c:if test="${type==type1||type==type2}">
				<li><a
					data-href="${pageContext.request.contextPath}/StudentFile-initUtil.action"
					data-title="增加学生" href="javascript:void(0)">增加</a>
				</li>
			</c:if>
			<li><a
				data-href="${pageContext.request.contextPath}/StudentFile-getAllUtil.action"
				data-title="查询学生" href="javascript:void(0)">查询</a>
			</li>
		</ul>
	</dd>
</dl>

<dl id="menu-product">
	<dt>
		<i class="Hui-iconfont">&#xe620;</i>课程管理<i
			class="Hui-iconfont menu_dropdown-arrow">&#xe6d5;</i>
	</dt>
	<dd>
		<ul>
			<c:if test="${type==type1||type==type2}">
				<li><a
					data-href="${pageContext.request.contextPath}/Kecheng-initUtil.action"
					data-title="增加课程" href="javascript:void(0)">增加</a>
				</li>
			</c:if>
			<li><a
				data-href="${pageContext.request.contextPath}/Kecheng-getAllUtil.action"
				data-title="查询课程" href="javascript:void(0)">查询</a>
			</li>
		</ul>
	</dd>
</dl>