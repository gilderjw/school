import java.io.File;
import java.io.FileNotFoundException;
import java.util.ArrayList;
import java.util.Scanner;

public class Sudoku {

	private static int boardSize = 0;
	private static int partitionSize = 0;
	
	
	public static void main(String[] args){
		String filename = args[0];
		File inputFile = new File(filename);
		Scanner input = null;
		int[][] vals = null;
		
		int temp = 0;
    	int count = 0;
    	
	    try {
			input = new Scanner(inputFile);
			temp = input.nextInt();
			boardSize = temp;
			partitionSize = (int) Math.sqrt(boardSize);
			System.out.println("Boardsize: " + temp + "x" + temp);
			vals = new int[boardSize][boardSize];			
			
			System.out.println("Input:");
	    	int i = 0;
	    	int j = 0;
	    	while (input.hasNext()){
	    		temp = input.nextInt();
	    		count++;
	    		System.out.printf("%3d", temp);
	    		vals[i][j] = temp;
				if (temp == 0) {
					// TODO
				} 
				j++;
				if (j == boardSize) {
					j = 0;
					i++;
					System.out.println();
				}
				if (j == boardSize) {
					break;
				}
	    	}
	    	input.close();
	    } catch (FileNotFoundException exception) {
	    	System.out.println("Input file not found: " + filename);
	    }
	    if (count != boardSize*boardSize) throw new RuntimeException("Incorrect number of inputs.");
	    
	    
		vals = solve(vals, 0, 0);
		
		// Output
		if (vals == null) {
			System.out.println("No solution found.");
			return;
		}
		System.out.println("\nOutput\n");
		for (int i = 0; i < boardSize; i++) {
			for (int j = 0; j < boardSize; j++) {
				System.out.printf("%3d", vals[i][j]);
			}
			System.out.println();
		}		
		
	}
	public static boolean done = true;
	
	public static int[][] solve(int[][] vals, int x, int y) {
		int newx = x, newy = y;
		int[][] tmp = vals.clone();
		if (x == boardSize && y == boardSize) {
			return vals;
		}
		
		for (int guess = 1; guess <= boardSize; guess++) {
			tmp[x][y] = guess;
			if (isConsistant(x, y, tmp)) {
				newx = (x + 1) % boardSize;
				if (x+1 > boardSize) {
					newy = y+1;
				}
						
				return solve(tmp, newx, newy);
			} 
		}
		
		return null;
	}
	
	public static boolean isConsistant(int x, int y, int[][] vals) {
		for (int i = 0; i < boardSize; i++) {
			// check rows 
			if (vals[x][i] == vals[x][y] && y != i) {
				return false;
			}
			
			//check columns
			if (vals[i][y] == vals[x][y] && x != i) {
				return false;
			}
		}
		
		// top left square coordinates
		int tlsx = (int) (x / partitionSize);
		int tlsy = (int) (y / partitionSize);
		
		// check the squares
		for (int i = tlsx; i < tlsx + partitionSize; i++) {
			for (int j = tlsy; j < tlsy + partitionSize; j++) {
				if (i != x && j != y) {
					if (vals[i][j] == vals[x][y]) {
						return false;
					}
				}
			}
			
		}
		
		return true;
	}
		
}