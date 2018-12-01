package interceptor;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.AbstractInterceptor;

public class PrivilegeInterceptor extends AbstractInterceptor{
	private static final long serialVersionUID=1L;
	@Override
	public String intercept(ActionInvocation invocation) throws Exception {
		// TODO Auto-generated method stub
		ActionContext actionContext=invocation.getInvocationContext();
		Object user=actionContext.getSession().get("user");
		
		if(user!=null) {
			return invocation.invoke();
		}else {
			actionContext.put("msg","您还未登录，请先登录");
			System.out.println("拦截");
			return "error";
		}
	}

}
