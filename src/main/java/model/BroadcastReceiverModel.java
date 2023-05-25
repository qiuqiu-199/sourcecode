package model;


import utils.ConstantUtils;

public class BroadcastReceiverModel extends ComponentModel {
	private static final long serialVersionUID = 3L;

	public BroadcastReceiverModel() {
		super();
		type = "r";
	}

	@Override
	public String getComponentType() {
		return ConstantUtils.RECEIVER;
	}

}
