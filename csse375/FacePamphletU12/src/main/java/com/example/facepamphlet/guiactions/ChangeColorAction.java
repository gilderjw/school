package com.example.facepamphlet.guiactions;


import java.awt.Color;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;

import com.example.facepamphlet.FacePamphlet;
import com.example.facepamphlet.FacePamphletCanvas;
import com.example.facepamphlet.FacePamphletProfile;

public class ChangeColorAction implements ActionListener {

	private FacePamphlet pamphlet;

	public ChangeColorAction(FacePamphlet pamphlet) {
		this.pamphlet = pamphlet;
	}

	@Override
	public void actionPerformed(ActionEvent e) {
			FacePamphletCanvas fpc = this.pamphlet.getCanvas();
			fpc.changeColor(this.pamphlet.getColor());
			this.pamphlet.setCanvas(fpc);
			FacePamphletProfile fpp = this.pamphlet.getCurrentProfile();
			this.pamphlet.getCanvas().displayProfile(fpp);
	}

}

