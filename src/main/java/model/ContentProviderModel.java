package model;


import utils.ConstantUtils;

public class ContentProviderModel extends ComponentModel {
	private static final long serialVersionUID = 3L;

	public ContentProviderModel() {
		super();
		type = "p";
	}

	@Override
	public String getComponentType() {
		return ConstantUtils.PROVIDER;
	}
}
