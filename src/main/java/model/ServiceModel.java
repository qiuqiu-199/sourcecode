package model;

import utils.ConstantUtils;

public class ServiceModel extends ComponentModel  {
	private static final long serialVersionUID = 3L;

	public ServiceModel() {
		super();
		type = "s";
	}

	@Override
	public String getComponentType() {
		return ConstantUtils.SERVICE;
	}
}
