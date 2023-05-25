package model;

import model.ComponentModel;

import java.io.Serializable;

public class ActivityModel extends ComponentModel implements Serializable {
	private static final long serialVersionUID = 2L;
	public String launchMode ;
	public String taskAffinity ;

	
	public ActivityModel() {
		super();
	}
	public String getLaunchMode() {
		return launchMode;
	}

	public void setLaunchMode(String launchMode) {
		this.launchMode = launchMode;
	}
	public String getTaskAffinity() {
		return taskAffinity;
	}
	
	public void setTaskAffinity(String taskAffinity) {
		this.taskAffinity = taskAffinity;
	}
	@Override
	public String toString() {
		String res = "launchMode: " +launchMode;
		return super.toString() +res;
	}
}
