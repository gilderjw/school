package com.example.facepamphlet.guiactions;


import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;

import com.example.facepamphlet.FacePamphlet;
import com.example.facepamphlet.FacePamphletCanvas;
import com.example.facepamphlet.FacePamphletProfile;

public class ChangeFontAction implements ActionListener {

	private FacePamphlet pamphlet;

	public ChangeFontAction(FacePamphlet pamphlet) {
		this.pamphlet = pamphlet;
	}

	@Override
	public void actionPerformed(ActionEvent e) {

		if (!this.pamphlet.getFontName().equals("")){
			FacePamphletCanvas fpc = this.pamphlet.getCanvas();
			fpc.changeFont(this.pamphlet.getFontName());
			this.pamphlet.setCanvas(fpc);
			FacePamphletProfile fpp = this.pamphlet.getCurrentProfile();
			this.pamphlet.getCanvas().displayProfile(fpp);
		}
	}

}

