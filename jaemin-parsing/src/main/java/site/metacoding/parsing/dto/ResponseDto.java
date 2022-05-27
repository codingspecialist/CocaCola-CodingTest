package site.metacoding.parsing.dto;

import java.util.List;

public class ResponseDto {
	private Integer code;
	private String msg;
	private List<User> data;
	
	public ResponseDto() {}
	
	public ResponseDto(Integer code, String msg, List<User> data) {
		super();
		this.code = code;
		this.msg = msg;
		this.data = data;
	}
	
	public Integer getCode() {
		return code;
	}
	public void setCode(Integer code) {
		this.code = code;
	}
	public String getMsg() {
		return msg;
	}
	public void setMsg(String msg) {
		this.msg = msg;
	}
	public List<User> getData() {
		return data;
	}
	public void setData(List<User> data) {
		this.data = data;
	}
	
	
}
