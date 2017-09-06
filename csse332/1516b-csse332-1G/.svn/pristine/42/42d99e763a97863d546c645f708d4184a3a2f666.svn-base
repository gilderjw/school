all:
	nasm bootload.asm
	bcc -ansi -c -o kernel.o kernel.c
	as86 kernel.asm -o kernel_asm.o
	ld86 -o kernel -d kernel.o kernel_asm.o
	dd if=/dev/zero of=floppya.img bs=512 count=2880
	dd if=bootload of=floppya.img bs=512 count=1 conv=notrunc
	dd if=kernel of=floppya.img bs=512 conv=notrunc seek=3
	dd if=message.txt of=floppya.img bs=512 count=1 seek=30 conv=notrunc
	dd if=map.img of=floppya.img bs=512 count=1 seek=1 conv=notrunc
	dd if=dir.img of=floppya.img bs=512 count=1 seek=2 conv=notrunc
	gcc -o loadFile loadFile.c
	./loadFile tstpr2
	./loadFile tstprg
	./loadFile message.txt
	./loadFile phello

#shell
	bcc -ansi -c -o shell.o shell.c
	as86 lib.asm -o lib.o
	ld86 -o shell -d shell.o lib.o
	./loadFile shell

#hue
	bcc -ansi -c -o hue.o hue.c
	as86 lib.asm -o lib.o
	ld86 -o hue -d hue.o lib.o
	./loadFile hue

clean:
	rm floppya.img *.o *~