package graduation.design.action;

import java.util.*;
import java.io.*;
import java.text.*;
import javax.servlet.http.HttpServletRequest;
import org.apache.struts2.ServletActionContext;
import graduation.design.dao.ObjectManager;
import graduation.design.model.*;
import com.opensymphony.xwork2.*;

import system.common.util.PageModel;

@SuppressWarnings({ "unchecked" })
public class StudentFileAction extends ActionSupport {
	private static final long serialVersionUID = 1l;
	private static final int BUFFER_SIZE = 1;
	private File myFile;
	private String contentType;
	private String fileName;
	private String imageFileName;
	private StudentFile util;
	private PageModel<StudentFile> pageModel;
	private String errMsg;
	private String field;
	private String fieldValue;
	private ObjectManager objectManager;

	private List<User> listUser;
	public String initUtil() throws Exception{
		listUser = objectManager.getUtil("from User");
		util = null;
		return "saveOrUpdate";
	}

	public String selectUtil() throws Exception{
		listUser = objectManager.getUtil("from User");
		util = (StudentFile) objectManager.getObject(new StudentFile(), util.getId());
		errMsg = null;
		return "saveOrUpdate";
	}

	public String deleteManyUtil() throws Exception {                
		HttpServletRequest request = ServletActionContext.getRequest();
		String ids[] = request.getParameterValues("id");             
		StudentFile util = null;                                              
		for (String id : ids) {                                        
			util = new StudentFile();                                           
			util.setId(Integer.parseInt(id));                            
			objectManager.deleteObject(util);                            
		}                                                              
		util = null;                                                   
		return getAllUtil();                                           
	}                                                                
	
	public String getAllUtil() throws Exception{
		if (null == pageModel) {
			pageModel = new PageModel<StudentFile>();
		}
		if (0 == pageModel.getCurrentPageNo()) {
			pageModel.setCurrentPageNo(1);
		}
		StringBuilder _sql = new StringBuilder();
		_sql.append(" from StudentFile ");
		if (null != field && field.trim().length() > 0) {
			fieldValue = new String(fieldValue.getBytes("iso-8859-1"), "utf-8");
			_sql.append(" where " + field + " like '%" + fieldValue + "%'");
		}
		pageModel = objectManager.getUtil(_sql.toString(), pageModel.getCurrentPageNo());
		errMsg = null;
		return "find";
	}

	public String updateUtil() throws Exception {
		if (null != util) {                           
			if(null == util.getS_3() || "".equals(util.getS_3())){         
				errMsg = "名称不能为空";                          
				return "saveOrUpdate";                                       
			}                                                                
		}                                                                  
		int id = util.getId();
		if(id == 0){
			boolean flag = false;
			flag = upload();
			if (flag) {
				objectManager.saveObject(util);
				util = null;
				fileName = null;
				return "ok";
			} else {
				errMsg = "upload err";
				return "saveOrUpdate";
			}
		}
		StudentFile tmp = (StudentFile) objectManager.getObject(new StudentFile(), id);
		if (fileName == null || (fileName != null && fileName.equals(tmp.getS_2()))) {
			util.setId(id);
			util.setS_0(tmp.getS_0());
			util.setS_1(tmp.getS_1());
			util.setS_2(tmp.getS_2());
			objectManager.updateObject(util);
			return getAllUtil();
		}
		boolean flag = false;
		flag = upload();
		if (flag) {
			objectManager.updateObject(util);
			util = null;
			errMsg = null;
			return getAllUtil();
		} else {
			errMsg = "update err";
			return "saveOrUpdate";
		}
	}

	public String deleteUtil() throws Exception {
		objectManager.deleteObject(util);
		return getAllUtil();
	}

	private boolean upload() {
		if (null == fileName) {
			return false;
		}
		int pos = fileName.lastIndexOf(".");
		fileName.substring(pos);
		imageFileName = fileName.substring(0, pos) + new Date().getTime()
				+ fileName.substring(pos);
		String path = ServletActionContext.getServletContext().getRealPath( "/upload") + "/" + imageFileName;
		File imageFile = new File(path);
		util.setS_0(imageFileName);
		String date = new SimpleDateFormat("yyyy-MM-dd").format(Calendar.getInstance().getTime());
		util.setS_2(date);
		util.setS_1(fileName);
		try {
			copy(myFile, imageFile);
		} catch (Exception e) {
			return false;
		}

		return true;
	}

	private void copy(File src, File dst) throws Exception {
		InputStream in = new BufferedInputStream(new FileInputStream(src),
				BUFFER_SIZE);
		OutputStream out = new BufferedOutputStream(new FileOutputStream(dst),
				BUFFER_SIZE);
		byte[] buffer = new byte[BUFFER_SIZE];
		while (in.read(buffer) > 0) {
			out.write(buffer);
		}
		in.close();
		out.close();
	}

	public void setMyFileContentType(String contentType) {
		this.contentType = contentType;
	}

	public void setMyFileFileName(String fileName) {
		this.fileName = fileName;
	}

	public void setMyFile(File myFile) {
		this.myFile = myFile;
	}

	public String getImageFileName() {
		return imageFileName;
	}

	public String getContentType() {
		return contentType;
	}

	public void setContentType(String contentType) {
		this.contentType = contentType;
	}

	public String getFileName() {
		return fileName;
	}

	public void setFileName(String fileName) {
		this.fileName = fileName;
	}

	public static int getBUFFER_SIZE() {
		return BUFFER_SIZE;
	}

	public File getMyFile() {
		return myFile;
	}

	public void setImageFileName(String imageFileName) {
		this.imageFileName = imageFileName;
	}

	public ObjectManager getObjectManager() {
		return objectManager;
	}

	public void setObjectManager(ObjectManager objectManager) {
		this.objectManager = objectManager;
	}

	public PageModel<StudentFile> getPageModel() {
		return pageModel;
	}

	public void setPageModel(PageModel<StudentFile> pageModel) {
		this.pageModel = pageModel;
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


	public static long getSerialVersionUID() {
		return serialVersionUID;
	}

	public StudentFile getUtil() {
		return util;
	}

	public void setUtil(StudentFile util) {
		this.util = util;
	}

	public List<User> getListUser() {
		return listUser;
	}

	public void setListUser(List<User> listUser) {
		this.listUser = listUser;
	}

}
