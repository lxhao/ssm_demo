package com.bkybk.model;

import java.sql.Date;

import org.codehaus.jackson.annotate.JsonIgnore;

public class BaseVo {

	/** 不持久，数据库查询用 */
	@JsonIgnore
	private boolean distinct;
	/** 不持久，分页用 */
	@JsonIgnore
	protected Integer page = 1; 	// 第几页,默认第一页
	@JsonIgnore
	protected Integer rows = 10;	// 每页显示的条数;默认每页显示10条数据
	@JsonIgnore
	protected Integer total;		// 数据总条数
	@JsonIgnore
	protected Integer totalPage;	// 总页数
	/** 不持久，数据库排序用 */
	@JsonIgnore
	protected String sort;			// 需要排序的列
	@JsonIgnore
	protected String order;			// 需要排序的规则
	/** 不持久，数据库查询用 */
	@JsonIgnore
	protected Date startDateTime;	// 起始时间
	@JsonIgnore
	protected Date endDateTime;		// 结束时间
	
	@JsonIgnore
	public Integer getMax() {
		//return getPageNumber() * getRows();
		return getRows();
	}

	@JsonIgnore
	public Integer getMin() {
		if (getPage() == 1) {
			return 0;
		}
		return getPage() * getRows() - getRows() ;
	}

	public Integer getPage() {
		return page;
	}

	public void setPage(Integer page) {
		this.page = page;
	}

	public Integer getRows() {
		return rows;
	}

	public void setRows(Integer rows) {
		this.rows = rows;
	}

	public boolean isDistinct() {
		return distinct;
	}

	public void setDistinct(boolean distinct) {
		this.distinct = distinct;
	}

	public Integer getTotal() {
		return total;
	}

	public void setTotal(Integer total) {
		this.total = total;
	}

	public String getSort() {
		return sort;
	}

	public void setSort(String sort) {
		this.sort = sort;
	}

	public String getOrder() {
		return order;
	}

	public void setOrder(String order) {
		this.order = order;
	}

	public Date getStartDateTime() {
		return startDateTime;
	}

	public void setStartDateTime(Date startDateTime) {
		this.startDateTime = startDateTime;
	}

	public Date getEndDateTime() {
		return endDateTime;
	}

	public void setEndDateTime(Date endDateTime) {
		this.endDateTime = endDateTime;
	}

	public Integer getTotalPage() {
		return totalPage;
	}

	public void setTotalPage(Integer totalPage) {
		this.totalPage = totalPage;
	}

}
