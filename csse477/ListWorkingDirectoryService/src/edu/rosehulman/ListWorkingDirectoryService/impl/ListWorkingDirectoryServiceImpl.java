package edu.rosehulman.ListWorkingDirectoryService.impl;

import java.io.File;

import edu.rosehulman.ListWorkingDirectoryService.ListWorkingDirectoryService;


public class ListWorkingDirectoryServiceImpl implements ListWorkingDirectoryService {

	@Override
	public String listDirs() {
		File f = new File(".");
		String files = "";
		
		for (String s: f.list())
			files += s + "\n";
		return files;
	}
}
