package com.springboot.bcode.service;

import java.util.List;

import com.springboot.bcode.domain.auth.Dict;
import com.springboot.core.web.mvc.JqGridPage;

public interface IDictService {

	JqGridPage<Dict> queryPage(Dict dict);

	List<Dict> queryByType(String type);

	boolean add(Dict dict);

	boolean update(Dict dict);

	boolean delete(Integer id);

}
