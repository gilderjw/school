package edu.rosehulman.assignment2platform;

public interface Platform {
	public void registerExtension(IGUIExtension ext);

	public void setPanelFocus(IGUIExtension ext);

	public void setStatus(String status);
}
