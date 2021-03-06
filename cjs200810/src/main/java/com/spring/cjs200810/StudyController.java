package com.spring.cjs200810;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.spring.cjs200810.service.MemberService;
import com.spring.cjs200810.service.StudyService;
import com.spring.cjs200810.vo.CalendarVo;
import com.spring.cjs200810.vo.MemberVo;

@Controller
@RequestMapping("/study")
public class StudyController {
	
	@RequestMapping(value="/calendar",method=RequestMethod.GET)
	public String calenderGet(Model model,HttpServletRequest request, CalendarVo cVo) {
		Calendar cal = Calendar.getInstance();
		CalendarVo calendarData;
		
		//검색 날짜
		if(cVo.getDate().equals("") && cVo.getMonth().equals("")) {
			cVo = new CalendarVo(String.valueOf(cal.get(Calendar.YEAR)),String.valueOf(cal.get(Calendar.MONTH)),String.valueOf(cal.get(Calendar.DATE)),cVo.getValue());
		}
		//검색 날짜 end
		
		Map<String,Integer> today_info = cVo.today_info(cVo);
		List<CalendarVo> dateList = new ArrayList<CalendarVo>();
		
		//실질적인 달력데이터 리스트에 데이터 삽입시작
		//일단 시작 인덱스까지 아무것도 없는 데이터 삽입
		for(int i=1;i<today_info.get("start");i++) {
			calendarData = new CalendarVo(null,null,null,null);
			dateList.add(calendarData);
		}
		
		//날짜 삽입
		for(int i=today_info.get("startDay");i<=today_info.get("endDay");i++) {
			if(i==today_info.get("today")) {
				calendarData =  new CalendarVo(String.valueOf(cVo.getYear()),String.valueOf(cVo.getMonth()),String.valueOf(i),"today");
			}
			else {
				calendarData =  new CalendarVo(String.valueOf(cVo.getYear()),String.valueOf(cVo.getMonth()),String.valueOf(i),cVo.getValue());
			}
			dateList.add(calendarData);
		}
		
		//달력 빈 곳 빈 데이터로 삽입
		int index = 7-dateList.size()%7;
		
		if(dateList.size()%7 != 0) {
			for(int i=0;i<index;i++) {
				calendarData = new CalendarVo(null,null,null,null);
				dateList.add(calendarData);
			}
		}
		System.out.println(dateList);
		
		//배열에 담음
		model.addAttribute("dateList", dateList);		//날짜 데이터 배열
		model.addAttribute("today_info",today_info);
		
		return "study/calendar/calendar";
	}
}