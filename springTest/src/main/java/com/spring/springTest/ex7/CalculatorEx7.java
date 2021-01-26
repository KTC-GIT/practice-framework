package com.spring.springTest.ex7;

import com.spring.springTest.vo.SungjukEx7Vo;

public class CalculatorEx7 {
	
		private SungjukEx7Vo sungjukEx7Vo;
		
		
		// 생성자를 통한 값을 전달받음
		public CalculatorEx7(SungjukEx7Vo sungjukEx7Vo) {
			this.sungjukEx7Vo = sungjukEx7Vo;
		}

		//getter,setter
		public SungjukEx7Vo getSungjukEx7Vo() {
			return sungjukEx7Vo;
		}
		
		public void setSungjukEx7Vo(SungjukEx7Vo sungjukEx7Vo) {
			this.sungjukEx7Vo = sungjukEx7Vo;
		}
		
		//계산하는 method
		public void getCalculatorEx7() {
			String name = sungjukEx7Vo.getName();
			int kor = sungjukEx7Vo.getKor();
			int eng = sungjukEx7Vo.getEng();
			
			int tot;
			double avg;
			String grade;
			
			
			tot = kor + eng;
			avg = (double) tot / 2.0;
			
			if(avg>=90) grade = "A";
			else if(avg>=80) grade = "B";
			else if(avg>=70) grade = "C";
			else if(avg>=60) grade = "D";
			else  grade = "F";
			
			System.out.println("성명 : "+name);
			System.out.println("국어 : "+kor);
			System.out.println("영어 : "+eng);
			System.out.println("총점 : "+tot);
			System.out.println("평균 : "+avg);
			System.out.println("학점 : "+grade);
		}
		
}
