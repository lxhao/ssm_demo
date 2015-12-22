package com.bkybk.model;

import java.sql.Date;

import org.codehaus.jackson.annotate.JsonIgnore;

public class BaseVo {

	/** 涓嶆寔涔咃紝鏁版嵁搴撴煡璇㈢敤 */
	@JsonIgnore
	private boolean distinct;
	/** 涓嶆寔涔咃紝鍒嗛〉鐢�*/
	@JsonIgnore
	protected Integer page = 1; 	// 绗嚑椤�榛樿绗竴椤�
	@JsonIgnore
	protected Integer rows = 10;	// 姣忛〉鏄剧ず鐨勬潯鏁�榛樿姣忛〉鏄剧ず10鏉℃暟鎹�
	@JsonIgnore
	protected Integer total;		// 鏁版嵁鎬绘潯鏁�
	@JsonIgnore
	protected Integer totalPage;	// 鎬婚〉鏁�
	/** 涓嶆寔涔咃紝鏁版嵁搴撴帓搴忕敤 */
	@JsonIgnore
	protected String sort;			// 闇�鎺掑簭鐨勫垪
	@JsonIgnore
	protected String order;			// 闇�鎺掑簭鐨勮鍒�
	/** 涓嶆寔涔咃紝鏁版嵁搴撴煡璇㈢敤 */
	@JsonIgnore
	protected Date startDateTime;	// 璧峰鏃堕棿
	@JsonIgnore
	protected Date endDateTime;		// 缁撴潫鏃堕棿
	
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
