package Action;

import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

import java.util.Map;

public class LogoutAction extends ActionSupport {

    public String execute() {
        // Check user's role before logging out
        Map<String, Object> session = ActionContext.getContext().getSession();
        String userRole = (String) session.get("nguoidung.loaiquyen");

        if ("admin".equals(userRole)) {
            // Additional actions for admin logout, if needed
        }

        // Invalidate session to logout user
        session.remove("nguoidung"); // Remove user object from session

        return Action.SUCCESS;
    }
}
