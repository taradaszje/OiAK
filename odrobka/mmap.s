.data
file:
	.string "mmap.s"
fd:
	.long 	0
filelen:
	.long 	0
mappedptr:
	.long 	0

.globl main
main:
	push	%ebp
	movl	%esp,%ebp
	subl	$24,%esp

//	open($file, $O_RDONLY);

	movl	$fd,%ebx	// save fd
	movl	%eax,(%ebx)

//	lseek($fd,0,$SEEK_END);

	movl	$filelen,%ebx	// save file length
	movl	%eax,(%ebx)

	xorl	%edx,%edx

//	mmap(NULL,$filelen,PROT_READ,MAP_SHARED,$fd,0);
	movl	%edx,(%esp)
	movl	%eax,4(%esp)	// file length still in %eax
	movl	$PROT_READ,8(%esp)
	movl	$MAP_SHARED,12(%esp)
	movl	$fd,%ebx	// load file descriptor
	movl	(%ebx),%eax
	movl	%eax,16(%esp)
	movl	%edx,20(%esp)
	movl	$SYS_mmap,%eax
	movl	%esp,%ebx
	int	$0x80

	movl	$mappedptr,%ebx	// save ptr
	movl	%eax,(%ebx)
		
// 	write($stdout, $mappedptr, $filelen);
//	munmap($mappedptr, $filelen);
//	close($fd);
	
	movl	%ebp,%esp
	popl	%ebp

	ret