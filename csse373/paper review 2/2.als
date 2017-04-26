module filesystem

abstract sig Object{}
sig File, Dir extends Object{}

sig FS {
	dirs: set Dir,
	files: set File,
	contains: dirs -> (dirs+files)
}

pred move_dir[fs, fs': FS, d, to: Dir] {
	d+to in fs.dirs
	fs'.contains = fs.contains - Dir->d + to->d
	fs'.files = fs.files and fs'.dirs = fs.dirs
}

pred reachable [fs:FS] {
	some root: fs.dirs | fs.(dirs+files) in root.*(fs.contains)
}

assert move_OK {
	all fs, fs': FS, d, to: Dir | 
		reachable[fs] and move_dir[fs, fs',d,to] implies reachable[fs']
}

check move_OK
