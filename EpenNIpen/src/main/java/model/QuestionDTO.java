package model;

import java.math.BigDecimal;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NonNull;

@Getter
@AllArgsConstructor
public class QuestionDTO {

	public BigDecimal Q_seq;
	private String id;
	public String answer;
	
	public QuestionDTO(String id, String answer) {
		this.id = id;
		this.answer = answer;
	}
	
}