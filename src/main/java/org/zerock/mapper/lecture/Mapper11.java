package org.zerock.mapper.lecture;

import org.zerock.domain.lecture.JavaBean18;
import org.zerock.domain.lecture.JavaBean19;

public interface Mapper11 {
	
	JavaBean18 getCustomerById(int id);
	int updateCustomer(JavaBean18 customer);

	JavaBean19 getSupplierById(int id);
	int updateSupplier(JavaBean19 supplier);
}
