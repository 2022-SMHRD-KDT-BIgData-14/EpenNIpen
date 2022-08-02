package model;

import java.math.BigDecimal;
import java.sql.Timestamp;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NonNull;
import lombok.RequiredArgsConstructor;
@Getter
@AllArgsConstructor
public class SurveyDTO {
	
	private BigDecimal S_seq;
	private String id;
	private String modify_1;
	private Timestamp R_date;
	
	
	public SurveyDTO(String id, String modify_1) {
		this.id = id;
		this.modify_1 = modify_1;
	}
	public SurveyDTO(String id) {
		this.id = id;
	}
	
}
