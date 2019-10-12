package comm.dhee.controller;

import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import comm.dhee.dao.M003Dao;
import comm.dhee.dto.M003;

@Controller
public class LoginController {

//	@Autowired
//	public M003Controller m003Controller=new M003Controller();

	@RequestMapping("tologin.action")
	public String toLogin() {
		return "login";
	}

	@RequestMapping("/login.action")
	public String login(@ModelAttribute M003 m003, HttpServletRequest request) throws SQLException {

		m003.setM00304("00" + m003.getM00304());

		M003 nM003 = new M003();
		nM003 = M003Dao.login(m003);

		if (nM003.getM00301() == null) {
			request.setAttribute("message", "");
		}

		return "PR10101";
	}
}
