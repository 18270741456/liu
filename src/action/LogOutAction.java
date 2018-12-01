package action;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
 
public class LogOutAction extends ActionSupport {
	private static final long serialVersionUID = 1L;
 
	@Override
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		HttpServletRequest request=ServletActionContext.getRequest();
		HttpSession session = request.getSession(false);
        session.removeAttribute("user");
        System.out.println("已注销");
		return SUCCESS;
	}
    
}

