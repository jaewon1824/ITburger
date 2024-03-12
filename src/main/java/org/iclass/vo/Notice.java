package org.iclass.vo;

import java.sql.Timestamp;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.ToString;

@Getter
@ToString
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class Notice {
	private long idx;
	private String notice_title;
	private String notice_content;
	private int read_count;
	private Timestamp notice_date;
	private String notice_image;
	private String attachFile;
	private String uploadFile;

}
