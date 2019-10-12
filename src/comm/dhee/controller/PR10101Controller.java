package comm.dhee.controller;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import comm.dhee.dao.M001Dao;
import comm.dhee.dto.M001;

@Controller
public class PR10101Controller {

	@ResponseBody
	@RequestMapping("/getAllCustomer.action")
	public Map<String, Object> getCustomer(HttpServletRequest request, HttpServletResponse response)
			throws SQLException {

		Map<String, Object> map = new HashMap<String, Object>();

		List<M001> lm001 = new ArrayList<M001>();
		lm001 = M001Dao.getAllCustomers();
		// for (M001 m001 : lm001) {
		// System.out.println(m001.getM00101() + " " + m001.getM00103());
		// }

		map.put("lm001", lm001);

		return map;
	}

//	@ResponseBody
//	@RequestMapping("/{cno}/customerAdd.action")
//	public Map<String, Object> customerAdd(@PathVariable String cno) {
//
//		// System.out.println(no);
//		Map<String, Object> map = new HashMap<String, Object>();
//
//		map.put("cno", cno);
//
//		return map;
//	}

	@ResponseBody
	@RequestMapping("/selectCustomers.action")
	public Map<String, Object> searchCustomers(HttpServletRequest request, HttpServletResponse response)
			throws SQLException {

		Map<String, Object> map = new HashMap<String, Object>();
		// System.out.println(request.getParameter("cname"));

		List<M001> lm001 = new ArrayList<M001>();
		lm001 = M001Dao.selectCustomersById(request.getParameter("cname"));

		for (M001 m001 : lm001) {
			System.out.println(m001.getM00101() + " " + m001.getM00103());
		}

		map.put("lm001", lm001);

		return map;
	}
}
