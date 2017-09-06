package com.example.facepamphlet;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.ObjectInput;
import java.io.ObjectInputStream;
import java.io.ObjectOutput;
import java.io.ObjectOutputStream;
import java.io.OutputStream;

public class DatabaseSingleton {
	private static Database instance;

	public static synchronized Database getInstance(){
		if (instance == null) {
			initDB();
		}

		return instance;
	}

	/**
	 * Saves the database file in the ./target directory
	 * Serialization was chosen over a text representation so that
	 * this method does not have to be modified with every change to
	 * data classes
	 */
	public static void saveDB() {
		try {
			OutputStream file = new FileOutputStream("database");
			OutputStream buf = new BufferedOutputStream(file);
			ObjectOutput output = new ObjectOutputStream(buf);

			output.writeObject(instance);

			output.close();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	/**
	 * Loads the database file in the ./target directory
	 * Serialization was chosen over a text representation so that
	 * this method does not have to be modified with every change to
	 * data classes
	 */
	private static void initDB() {
		try {
			InputStream file = new FileInputStream("database");
			InputStream buf = new BufferedInputStream(file);
			ObjectInput objInput = new ObjectInputStream(buf);

			instance = (Database) objInput.readObject();

			objInput.close();
		} catch (IOException e) {
			System.out.println("No database file detected, starting with empty database...");
			instance = new Database();
		} catch (ClassNotFoundException e) {
			System.out.println("Database file does not represent a FacePamphletDatabase, starting with empty database...");
		}

	}
}
