package kr.ac.hansung.model;

import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.Size;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@NoArgsConstructor
@ToString
public class Subject {

	private String attendyear;
	
	private String term;
	
	@NotEmpty(message="Try again!")
	private String subcode;
	
	@NotEmpty(message="Try again!")
	private String subname;
	
	@NotEmpty(message="Try again!")
	private String classsort;
	
	@NotEmpty(message="Try again!")
	private String score;
}
