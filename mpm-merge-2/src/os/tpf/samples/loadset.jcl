//OLDRWEB JOB MSGLEVEL=1,CLASS=A,MSGCLASS=S
//JOBCAT DD DSN=ICFCAT.ESAWK2,DISP=SHR
/*ROUTE PRINT xxxxxx.xxxxxxx
/*ROUTE PUNCH xxxxxx.xxxxxxx
//TLDR   EXEC  PGM=TPFLDRCA,REGION=8M,
//             PARM='OLDR,SYS=ACP,CLMSIZE=8000000'
//STEPLIB  DD  DSN=ACP.LINK.RLSE46.WEB,DISP=SHR
//         DD  DSN=ACP.LINK.RLSE40.BSS,DISP=SHR
//         DD  DSN=VIS0000.DEVP.TEST.LK,DISP=SHR
//         DD  DSN=SYS1.CEE.SCEERUN,DISP=SHR
//SALTB    DD  DSN=ACP.SALTBL.RLSE46.WEB,DISP=SHR
//         DD  DSN=ACP.SALTBL.INTG46.WEB,DISP=SHR
//OBJLIB   DD  DSN=FSE0000.DEVP.TEST.OB,DISP=SHR
//         DD  DSN=APA0000.DEVP.TEST.OB,DISP=SHR
//         DD  DSN=ACP.DRVE.TEST.OB,DISP=SHR
//         DD  DSN=ACP.OBJ.RLSE46.WEB,DISP=SHR
//         DD  DSN=ACP.OBJ.INTG36.DRV,DISP=SHR
//         DD  DSN=ACP.OBJ.INTG46.WEB,DISP=SHR
//         DD  DSN=ACP.OBJ.INTG40.BSS,DISP=SHR
//LOADMOD  DD  DSN=FSE0000.DEVP.TEST.LK,DISP=SHR
//         DD  DSN=APA0000.DEVP.TEST.LK,DISP=SHR
//         DD  DSN=CWEISS.LINK,DISP=SHR
//         DD  DSN=ACP.DRVE.TEST.LK,DISP=SHR
//         DD  DSN=ACP.LINK.RLSE46.WEB,DISP=SHR
//         DD  DSN=ACP.LINK.INTG98.NBS,DISP=SHR
//         DD  DSN=ACP.LINK.INTG46.WEB,DISP=SHR
//         DD  DSN=ACP.LINK.INTG36.DRV,DISP=SHR
//         DD  DSN=ACP.LINK.INTG40.BSS,DISP=SHR
//LOADSUM  DD  DSN=&&LOADSUM,DISP=(NEW,PASS),UNIT=SYSDA,
//             LRECL=133,SPACE=(TRK,(10,10)),RECFM=FBA
//CPRTEMP  DD  UNIT=SYSDA,
//             DSN=&&CPRTEMP,SPACE=(TRK,(100,20)),
//             DCB=(RECFM=FB,BLKSIZE=4095,LRECL=4095),
//             DISP=(NEW,DELETE)
//PROGTEMP DD  UNIT=SYSDA,
//             DSN=&&PRTEMP,SPACE=(TRK,(100,20)),
//             DCB=(RECFM=FB,BLKSIZE=4095,LRECL=4095),
//             DISP=(NEW,DELETE)
//OUTPUT   DD  DSN=&&VRDROUT,DISP=(NEW,PASS),UNIT=SYSDA,
//             DCB=(RECFM=F,BLKSIZE=4095,LRECL=4095)
//SYSUDUMP DD  DUMMY
//SYSABEND DD  DUMMY
//SYSOUT   DD  SYSOUT=A
//SYSPRINT DD  SYSOUT=A
//PRINTER  DD  SYSOUT=A
//CEEDUMP  DD  SYSOUT=A
//SYSIN    DD  *
SYSID=BSS
PATVERS=NONE
SALVERS=40
LOADER   LOADSET  lllllll
LOADER   CALL  PROG ppppvv
/*
//TRANSMIT EXEC PGM=IKJEFT01,
//  PARM='TRANSMIT xxxxxx.xxxxxx DDNAME(SYSTSIN) NOLOG NONOTIFY SEQ'
//SYSTSIN  DD  UNIT=SYSDA,
//             DSN=&&VRDROUT,DISP=(OLD,DELETE)
//SYSTSPRT DD  DUMMY
