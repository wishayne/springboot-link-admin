package com.springboot.bcode.dao;

import java.util.List;

import com.springboot.bcode.domain.auth.Dict;
import com.springboot.core.web.mvc.JqGridPage;

public interface IDictDao {
	JqGridPage<Dict> selectPage(Dict dict);

	List<Dict> select(Dict dict);

	Dict select(Integer id);

	int insert(Dict dict);

	int update(Dict dict);

	int delete(Dict dict);

}
