<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="GBK"%>
<dl id="menu-product">
	<dt>
		<i class="Hui-iconfont">&#xe620;</i> ��������<i
			class="Hui-iconfont menu_dropdown-arrow">&#xe6d5;</i>
	</dt>
	<dd>
		<ul>
			<li><a
				data-href="${pageContext.request.contextPath}/initInfo.action"
				data-title="�޸ĸ�������" href="javascript:void(0)">�޸ĸ�������</a>
			</li>
			<li><a
				data-href="${pageContext.request.contextPath}/admin/User/updatepwd.jsp"
				data-title="�޸�����" href="javascript:void(0)">�޸�����</a>
			</li>
		</ul>
	</dd>
</dl>

<c:if test="${type == 'admin'}">
	<dl id="menu-product">
		<dt>
			<i class="Hui-iconfont">&#xe620;</i> �û�����<i
				class="Hui-iconfont menu_dropdown-arrow">&#xe6d5;</i>
		</dt>
		<dd>
			<ul>
				<li><a
					data-href="${pageContext.request.contextPath}/admin/User/saveOrUpdate.jsp"
					data-title="�����û�" href="javascript:void(0)">����</a>
				</li>
				<li><a
					data-href="${pageContext.request.contextPath}/User-getAllUtil.action"
					data-title="��ѯ�û�" href="javascript:void(0)">��ѯ</a>
				</li>
			</ul>
		</dd>
	</dl>
</c:if>

<dl id="menu-product">
	<dt>
		<i class="Hui-iconfont">&#xe620;</i>��ʦ����<i
			class="Hui-iconfont menu_dropdown-arrow">&#xe6d5;</i>
	</dt>
	<dd>
		<ul>
			<c:if test="${type==type1||type==type2}">
				<li><a
					data-href="${pageContext.request.contextPath}/admin/Teacher/saveOrUpdate.jsp"
					data-title="���ӽ�ʦ" href="javascript:void(0)">����</a>
				</li>
			</c:if>
			<li><a
				data-href="${pageContext.request.contextPath}/Teacher-getAllUtil.action"
				data-title="��ѯ��ʦ" href="javascript:void(0)">��ѯ</a>
			</li>
		</ul>
	</dd>
</dl>

<dl id="menu-product">
	<dt>
		<i class="Hui-iconfont">&#xe620;</i>ѧ������<i
			class="Hui-iconfont menu_dropdown-arrow">&#xe6d5;</i>
	</dt>
	<dd>
		<ul>
			<c:if test="${type==type1||type==type2}">
				<li><a
					data-href="${pageContext.request.contextPath}/StudentFile-initUtil.action"
					data-title="����ѧ��" href="javascript:void(0)">����</a>
				</li>
			</c:if>
			<li><a
				data-href="${pageContext.request.contextPath}/StudentFile-getAllUtil.action"
				data-title="��ѯѧ��" href="javascript:void(0)">��ѯ</a>
			</li>
		</ul>
	</dd>
</dl>

<dl id="menu-product">
	<dt>
		<i class="Hui-iconfont">&#xe620;</i>�γ̹���<i
			class="Hui-iconfont menu_dropdown-arrow">&#xe6d5;</i>
	</dt>
	<dd>
		<ul>
			<c:if test="${type==type1||type==type2}">
				<li><a
					data-href="${pageContext.request.contextPath}/Kecheng-initUtil.action"
					data-title="���ӿγ�" href="javascript:void(0)">����</a>
				</li>
			</c:if>
			<li><a
				data-href="${pageContext.request.contextPath}/Kecheng-getAllUtil.action"
				data-title="��ѯ�γ�" href="javascript:void(0)">��ѯ</a>
			</li>
		</ul>
	</dd>
</dl>