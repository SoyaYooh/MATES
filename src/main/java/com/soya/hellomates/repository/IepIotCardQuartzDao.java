package com.soya.hellomates.repository;

import com.soya.hellomates.domain.IepIotCardQuartz;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.support.JdbcDaoSupport;

import java.util.List;

public class IepIotCardQuartzDao extends JdbcDaoSupport {
	public List<IepIotCardQuartz> queryAll() {
		final String sql = "Select * from IEP_IOT_CARD_QUARTZ";
		return getJdbcTemplate().query(sql, new BeanPropertyRowMapper(IepIotCardQuartz.class));
	}

}
