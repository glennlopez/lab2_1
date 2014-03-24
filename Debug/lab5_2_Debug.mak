SHELL = cmd.exe

#
# ZDS II Make File - lab5_2 project, Debug configuration
#
# Generated by: ZDS II - Z8 Encore! Family 5.0.0 (Build 11011703)
#   IDE component: d:5.0:11011302
#   Install Path: C:\Program Files\ZiLOG\ZDSII_Z8Encore!_5.0.0\
#

RM = del

ZDS = C:\PROGRA~1\zilog\ZDSII_~1.0
BIN = $(ZDS)\bin
# ZDS include base directory
INCLUDE = C:\PROGRA~1\ZiLOG\ZDSII_~1.0\include
# intermediate files directory
WORKDIR = Z:\Dropbox\GITH~927\PROG~835\Debug

CC = @$(BIN)\eZ8cc
AS = @$(BIN)\eZ8asm
LD = @$(BIN)\eZ8link
AR = @$(BIN)\eZ8lib

CFLAGS =  \
-bfpack:tight -fastcall -const:RAM -define:_Z8F6423  \
-define:_Z8ENCORE_XP_64XX_SERIES -define:_Z8ENCORE_F642X  \
-genprintf -NOkeepasm -keeplst -NOlist -NOlistinc -model:L  \
-NOoptlink -promote -regvar:8 -reduceopt  \
-stdinc:"..;C:\PROGRA~1\ZiLOG\ZDSII_~1.0\include\std;C:\PROGRA~1\ZiLOG\ZDSII_~1.0\include\zilog;C:\PROGRA~1\ZiLOG\ZDSII_~1.0\include\zilog\Z8ENCO~2"  \
-usrinc:"..;" -debug -NOrevaa -cpu:Z8F6423  \
-asmsw:"   \
	-define:_Z8F6423=1 -define:_Z8ENCORE_XP_64XX_SERIES=1  \
	-define:_Z8ENCORE_F642X=1  \
	-include:"..;C:\PROGRA~1\ZiLOG\ZDSII_~1.0\include\std;C:\PROGRA~1\ZiLOG\ZDSII_~1.0\include\zilog;C:\PROGRA~1\ZiLOG\ZDSII_~1.0\include\zilog\Z8ENCO~2"  \
	-list -NOlistmac -pagelen:56 -pagewidth:80 -quiet -sdiopt -warn  \
	-debug -NOigcase -NOrevaa -cpu:Z8F6423"

ASFLAGS =  \
-define:_Z8F6423=1 -define:_Z8ENCORE_XP_64XX_SERIES=1  \
-define:_Z8ENCORE_F642X=1  \
-include:"..;C:\PROGRA~1\ZiLOG\ZDSII_~1.0\include\std;C:\PROGRA~1\ZiLOG\ZDSII_~1.0\include\zilog;C:\PROGRA~1\ZiLOG\ZDSII_~1.0\include\zilog\Z8ENCO~2"  \
-list -NOlistmac -name -pagelen:56 -pagewidth:80 -quiet -sdiopt  \
-warn -debug -NOigcase -NOrevaa -cpu:Z8F6423

LDFLAGS = @.\lab5_2_Debug.linkcmd
OUTDIR = Z:\Dropbox\GITH~927\PROG~835\Debug

build: lab5_2

buildall: clean lab5_2

relink: deltarget lab5_2

deltarget: 
	@if exist $(WORKDIR)\lab5_2.lod  \
            $(RM) $(WORKDIR)\lab5_2.lod
	@if exist $(WORKDIR)\lab5_2.hex  \
            $(RM) $(WORKDIR)\lab5_2.hex
	@if exist $(WORKDIR)\lab5_2.map  \
            $(RM) $(WORKDIR)\lab5_2.map

clean: 
	@if exist $(WORKDIR)\lab5_2.lod  \
            $(RM) $(WORKDIR)\lab5_2.lod
	@if exist $(WORKDIR)\lab5_2.hex  \
            $(RM) $(WORKDIR)\lab5_2.hex
	@if exist $(WORKDIR)\lab5_2.map  \
            $(RM) $(WORKDIR)\lab5_2.map
	@if exist $(WORKDIR)\lab5_2.obj  \
            $(RM) $(WORKDIR)\lab5_2.obj

# pre-4.11.0 compatibility
rebuildall: buildall 

LIBS = 

OBJS =  \
            $(WORKDIR)\lab5_2.obj

lab5_2: $(OBJS)
	 $(LD) $(LDFLAGS)

$(WORKDIR)\lab5_2.obj :  \
            Z:\Dropbox\GITH~927\PROG~835\lab5_2.c  \
            C:\PROGRA~1\ZiLOG\ZDSII_~1.0\include\std\STDARG.H  \
            C:\PROGRA~1\ZiLOG\ZDSII_~1.0\include\zilog\defines.h  \
            C:\PROGRA~1\ZiLOG\ZDSII_~1.0\include\zilog\dmadefs.h  \
            C:\PROGRA~1\ZiLOG\ZDSII_~1.0\include\zilog\gpio.h  \
            C:\PROGRA~1\ZiLOG\ZDSII_~1.0\include\zilog\uart.h  \
            C:\PROGRA~1\ZiLOG\ZDSII_~1.0\include\zilog\uartdefs.h  \
            C:\PROGRA~1\ZiLOG\ZDSII_~1.0\include\std\STDARG.H  \
            C:\PROGRA~1\ZiLOG\ZDSII_~1.0\include\std\STDIO.H  \
            C:\PROGRA~1\ZiLOG\ZDSII_~1.0\include\zilog\FORMAT.H  \
            C:\PROGRA~1\ZiLOG\ZDSII_~1.0\include\zilog\Zconst.h  \
            C:\PROGRA~1\ZiLOG\ZDSII_~1.0\include\zilog\ez8.h
	 $(CC) $(CFLAGS) Z:\Dropbox\GITH~927\PROG~835\lab5_2.c

