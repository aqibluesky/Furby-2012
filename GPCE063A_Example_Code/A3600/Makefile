#####################################################################
#																	 
#	Created by u'nSP IDE		09:33:17	07/30/08
#
#####################################################################




APPDIR	= C:\PROGRA~1\GENERA~1\UNSPID~1.3

OUTDIR	= .\Debug

CC	= $(APPDIR)\toolchain\gcc

AS	= $(APPDIR)\toolchain\xasm16

LD	= $(APPDIR)\toolchain\xlink16

AR	= $(APPDIR)\toolchain\xlib16

RESC	= $(APPDIR)\toolchain\resc

RM	= $(APPDIR)\toolchain\rm -f

INCLUDES	= -I"D:/GPCE_Serial/GPCE063/SACM_N/A3600" -I"C:/Program Files/Generalplus/unSPIDE 3.0.3/library/include" -I"C:/Program Files/Generalplus/unSPIDE 3.0.3/library/include/sys" -I"../include"

BODY	= -body GPCE063A_Flash -nobdy -bfile "D:\GPCE_Serial\GPCE063\SACM_N\A3600\SACM_A3600.bdy"

BODYFILE	= "D:\GPCE_Serial\GPCE063\SACM_N\A3600\SACM_A3600.bdy" 

BINFILE	= "$(OUTDIR)\SACM_A3600.S37"

ARYFILE	= "$(OUTDIR)\SACM_A3600.ary"

SBMFILE	= "$(OUTDIR)\SACM_A3600.sbm"

OPT	= -S -gstabs -mglobal-var-iram

ASFLAGS	= -t5 -d

CASFLAGS	= -t5 -wpop

CFLAGS	= $(OPT) -B$(APPDIR)\toolchain\ $(INCLUDES) 

BINTYPE	= -as

LDFLAGS	= -listfile -infblk "D:\GPCE_Serial\GPCE063\SACM_N\A3600\SACM_A3600.inb"

EXTRAFLAGS	= 


OBJFILES	= \
	"$(OUTDIR)\duck1_a36.res" \
	"$(OUTDIR)\duck2_a36.res" \
	"$(OUTDIR)\Resource.obj" \
	"$(OUTDIR)\Isr.obj" \
	"$(OUTDIR)\main.obj" \
	"$(OUTDIR)\System.obj" \
	"$(OUTDIR)\SACM_A3600_User.obj" \
	"$(OUTDIR)\SPI_Flash_CE063.obj" 

"$(OUTDIR)\duck1_a36.res": "D:\GPCE_Serial\GPCE063\SACM_N\A3600\voice\duck1.a36"
	$(RESC) "D:\GPCE_Serial\GPCE063\SACM_N\A3600\voice\duck1.a36" "$(OUTDIR)\duck1_a36.res" RES_DUCK1_A36 

"$(OUTDIR)\duck2_a36.res": "D:\GPCE_Serial\GPCE063\SACM_N\A3600\voice\duck2.a36"
	$(RESC) "D:\GPCE_Serial\GPCE063\SACM_N\A3600\voice\duck2.a36" "$(OUTDIR)\duck2_a36.res" RES_DUCK2_A36 

"$(OUTDIR)\Resource.obj": "D:\GPCE_Serial\GPCE063\SACM_N\A3600\Resource.asm" 
	$(AS) $(ASFLAGS) $(INCLUDES) -l "$(OUTDIR)\Resource.lst" -o "$(OUTDIR)\Resource.obj" "D:\GPCE_Serial\GPCE063\SACM_N\A3600\Resource.asm" 

"$(OUTDIR)\Isr.obj": "D:\GPCE_Serial\GPCE063\SACM_N\A3600\Isr.asm" "..\include\GPCE063.inc" "..\include\A3600.inc" 
	$(AS) $(ASFLAGS) $(INCLUDES) -l "$(OUTDIR)\Isr.lst" -o "$(OUTDIR)\Isr.obj" "D:\GPCE_Serial\GPCE063\SACM_N\A3600\Isr.asm" 

"$(OUTDIR)\main.asm": "D:\GPCE_Serial\GPCE063\SACM_N\A3600\main.c" 
	set PATH="$(APPDIR)\toolchain\";%PATH% & \
	$(CC) $(CFLAGS) -o "$(OUTDIR)/main.asm" "D:/GPCE_Serial/GPCE063/SACM_N/A3600/main.c" 

"$(OUTDIR)\main.obj": "$(OUTDIR)\main.asm"
	$(AS) $(CASFLAGS) $(INCLUDES) -l "$(OUTDIR)\main.lst" -o "$(OUTDIR)\main.obj" "$(OUTDIR)\main.asm" 

"$(OUTDIR)\System.obj": "D:\GPCE_Serial\GPCE063\SACM_N\include\System.asm" "D:\GPCE_Serial\GPCE063\SACM_N\include\GPCE063.inc" 
	$(AS) $(ASFLAGS) $(INCLUDES) -l "$(OUTDIR)\System.lst" -o "$(OUTDIR)\System.obj" "D:\GPCE_Serial\GPCE063\SACM_N\include\System.asm" 

"$(OUTDIR)\SACM_A3600_User.obj": "D:\GPCE_Serial\GPCE063\SACM_N\include\SACM_A3600_User.asm" "D:\GPCE_Serial\GPCE063\SACM_N\include\GPCE063.inc" "D:\GPCE_Serial\GPCE063\SACM_N\include\A3600.inc" 
	$(AS) $(ASFLAGS) $(INCLUDES) -l "$(OUTDIR)\SACM_A3600_User.lst" -o "$(OUTDIR)\SACM_A3600_User.obj" "D:\GPCE_Serial\GPCE063\SACM_N\include\SACM_A3600_User.asm" 

"$(OUTDIR)\SPI_Flash_CE063.obj": "D:\GPCE_Serial\GPCE063\SACM\include\SPI_Flash_CE063.asm" "D:\GPCE_Serial\GPCE063\SACM\include\GPCE063.inc" 
	$(AS) $(ASFLAGS) $(INCLUDES) -l "$(OUTDIR)\SPI_Flash_CE063.lst" -o "$(OUTDIR)\SPI_Flash_CE063.obj" "D:\GPCE_Serial\GPCE063\SACM\include\SPI_Flash_CE063.asm" 


.SUFFIXES : .c .asm .obj .s37 .tsk .res

all :	 BEFOREBUILD "$(OUTDIR)" $(BINFILE)

BEFOREBUILD :

"$(OUTDIR)" :
	if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

$(BINFILE) : $(OBJFILES) 
	$(LD) $(BINTYPE) $(ARYFILE) $(BINFILE) $(LDFLAGS) $(BODY) $(EXTRAFLAGS)

compile :	 $(OBJFILES)

clean :
	$(RM) "$(OUTDIR)\duck1_a36.res" 
	$(RM) "$(OUTDIR)\duck2_a36.res" 
	$(RM) "$(OUTDIR)\Resource.obj" 
	$(RM) "$(OUTDIR)\Resource.lst" 
	$(RM) "$(OUTDIR)\Isr.obj" 
	$(RM) "$(OUTDIR)\Isr.lst" 
	$(RM) "$(OUTDIR)\main.obj" 
	$(RM) "$(OUTDIR)\main.lst" 
	$(RM) "$(OUTDIR)\main.asm" 
	$(RM) "$(OUTDIR)\System.obj" 
	$(RM) "$(OUTDIR)\System.lst" 
	$(RM) "$(OUTDIR)\SACM_A3600_User.obj" 
	$(RM) "$(OUTDIR)\SACM_A3600_User.lst" 
	$(RM) "$(OUTDIR)\SPI_Flash_CE063.obj" 
	$(RM) "$(OUTDIR)\SPI_Flash_CE063.lst" 
	$(RM) $(BINFILE) $(SBMFILE) 

.c.asm:
	$(CC) $(CFLAGS) $(INCLUDES) -o "$(OUTDIR)/$@" $<

.asm.obj:
	$(AS) $(ASFLAGS) $(INCLUDES) -o "$(OUTDIR)/$@" $<

