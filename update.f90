Program main
implicit real*8(a-h,o-z)  
character*20 Student,test
real::sc
open(112,file= 'original.txt',status='unknown')
open(113,file='update.txt',status='unknown',ACCESS='APPEND')
read(112,*)Student,test !先讀出第一行"字串"
write(113,*)Student,test

do 11 i=1,4,1	 
	read(112,*)Student,sc !從original.txt第二行(分數integer)開始讀
	score = sqrt(sc)*10
	write(113,*)Student,score 
	
11   continue
close(113)
close(112)
end Program
