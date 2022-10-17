package lecture.p01lombok;

import lombok.Data;

@Data // 아래 다섯개의 어노테이션을 한번에 적용
//@ToString
//@EqualsAndHashCode
//@Getter
//@Setter
//@RequiredArgsConstructor
public class JavaBean5 {
	private String name;
	private int age;
}
