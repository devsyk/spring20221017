package org.zerock.domain.lecture;

import java.time.LocalDate;
import java.time.LocalDateTime;

import com.fasterxml.jackson.annotation.JsonFormat;

import lombok.Data;

@Data
public class JavaBean27 {
	private String name;
	@JsonFormat(shape = JsonFormat.Shape.STRING) //String 타입으로 변환
	private LocalDate date;
	@JsonFormat(shape = JsonFormat.Shape.STRING)
	private LocalDateTime dateTime;
}
