package org.iclass.vo;

import java.sql.Timestamp;

import lombok.AllArgsConstructor;
import lombok.EqualsAndHashCode;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.ToString;

@Getter
@AllArgsConstructor
@NoArgsConstructor
@EqualsAndHashCode
@ToString
public class BG_BUYS {

	private int buy_seq;
	private String menu_code;
	private String order_id;
	private String detail_option_seq;
	private String detail_option_desc;
	private int amount;
	private String user_id;
	private String pay_type;
	private String payment_key;
	private Timestamp create_dttm;
}
