package graduation.design.action;

import java.util.*;
import graduation.design.model.*;
import graduation.design.dao.ObjectManager;
import javax.servlet.http.HttpServletRequest;
import org.apache.struts2.ServletActionContext;
import com.opensymphony.xwork2.*;

import system.common.util.PageModel;

@SuppressWarnings({ "unchecked", "serial" })
public class KechengAction extends ActionSupport {
	private Kecheng util;
	private PageModel<Kecheng> pageModel;
	private List<Teacher> listTeacher;
	private String errMsg;
	private String field;
	private String fieldValue;
	private ObjectManager objectManager;

	public String initUtil() throws Exception{
		listTeacher = objectManager.getUtil("from Teacher");
		util = null;
		return "saveOrUpdate";
	}

	@SuppressWarnings("rawtypes")	
	public String saveOrUpdateObject() throws Exception{
		if (null != util && 0 == util.getId()) {                           
			if(null == util.getS_0() || "".equals(util.getS_0())){         
				errMsg = "名称不能为空";                          
				return "saveOrUpdate";                                       
			}                                                                
			String sql = "from Kecheng where s_0 = '" + util.getS_0() + "'";
			List list = objectManager.getUtil(sql);                          
			if (null != list && list.size() > 0) {                           
				errMsg = "该名称已存在";                                   
				return "saveOrUpdate";                                       
			}                                                                
		}                                                                  
		objectManager.saveOrUpdateObject(util);
		util = null;
		errMsg = null;
		return getAllUtil();
	}

	public String deleteUtil() throws Exception{
		objectManager.deleteObject(util);
		util = null;
		errMsg = null;
		return getAllUtil();
	}

	public String deleteManyUtil() throws Exception {                
		HttpServletRequest request = ServletActionContext.getRequest();
		String ids[] = request.getParameterValues("id");             
		Kecheng util = null;                                              
		for (String id : ids) {                                        
			util = new Kecheng();                                           
			util.setId(Integer.parseInt(id));                            
			objectManager.deleteObject(util);                            
		}                                                              
		util = null;                                                   
		return getAllUtil();                                           
	}                                                                
	public String selectUtil() throws Exception{
		listTeacher = objectManager.getUtil("from Teacher");
		util = (Kecheng) objectManager.getObject(new Kecheng(), util.getId());
		return "saveOrUpdate";
	}

	public String getAllUtil() throws Exception{
		if (null == pageModel) {
			pageModel = new PageModel<Kecheng>();
		}
		if (0 == pageModel.getCurrentPageNo()) {
			pageModel.setCurrentPageNo(1);
		}
		StringBuilder _sql = new StringBuilder();
		_sql.append(" from Kecheng where 1 = 1 ");
		if (null != field && field.trim().length() > 0) {
			fieldValue = new String(fieldValue.getBytes("iso-8859-1"), "utf-8");
			_sql.append(" and " + field + " like '%" + fieldValue + "%'");
		}
		pageModel = objectManager.getUtil(_sql.toString(), pageModel.getCurrentPageNo());
		errMsg = null;
		return "find";
	}

	public Kecheng getUtil() {
		return util;
	}

	public void setUtil(Kecheng util) {
		this.util = util;
	}

	public String getErrMsg() {
		return errMsg;
	}

	public void setErrMsg(String errMsg) {
		this.errMsg = errMsg;
	}

	public String getField() {
		return field;
	}

	public void setField(String field) {
		this.field = field;
	}

	public String getFieldValue() {
		return fieldValue;
	}

	public void setFieldValue(String fieldValue) {
		this.fieldValue = fieldValue;
	}

	public ObjectManager getObjectManager() {
		return objectManager;
	}

	public void setObjectManager(ObjectManager objectManager) {
		this.objectManager = objectManager;
	}

	public PageModel<Kecheng> getPageModel() {
		return pageModel;
	}

	public void setPageModel(PageModel<Kecheng> pageModel) {
		this.pageModel = pageModel;
	}

	public List<Teacher> getListTeacher() {
		return listTeacher;
	}

	public void setListTeacher(List<Teacher> listTeacher) {
		this.listTeacher = listTeacher;
	}

}
