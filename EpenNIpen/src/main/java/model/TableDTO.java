package model;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.RequiredArgsConstructor;   

@Getter
@AllArgsConstructor
@RequiredArgsConstructor
public class TableDTO {
	private int prod_seq;
	private String product;
	private String type_1;
	private String use_1;
	private String deep;
	private String brand;
	private String shape;
	private String ink;
	private String size_1;
	private String multi;
	private String width;
	private String ink_battery;
	private String grip;
	private String price;
	private String url_1;
	private String description;
	private String img;
}
