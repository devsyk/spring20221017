package lecture.p01lombok;

import lombok.AllArgsConstructor;
import lombok.RequiredArgsConstructor;

@RequiredArgsConstructor
@AllArgsConstructor
public class JavaBean7 {
	private final String name;
	private final int age;
	private String address;
}
