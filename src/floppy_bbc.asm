fred        =       $FC00               ;page of addresses for external MMIO devices
sheila      =       $FE00               ;page of addresses for internal MMIO devices

;Floppy drive controller parameters
IF PLATFORM = PLAT_BBC
sense       =       $00                 ;sense of FDC data bus pins (WD 2791 = $FF, else $00)
stsens      =       $80                 ;sense of FDC status register compared to WD 2793
hdload      =       $00                 ;sense of Type I command bit 3; $00=spin up $08=load head
latch0      =       $29                 ;latch value to select drive 0, single density
latch1      =       $03                 ;latch XOR mask to select drive 1 (unit 1 side 0)
latch2      =       $04                 ;latch XOR mask to select drive 2 (unit 0 side 1)
latch6      =       $00                 ;latch XOR mask to select drive 6 (unit 2 side 0)
latchd      =       $08                 ;latch XOR mask to select double density
latchr      =       $00                 ;latch value to reset FDC
fdc         =       sheila+$0084        ;base of floppy drive controller registers
latch       =       sheila+$0080        ;floppy drive interface control latch
ELIF PLATFORM = PLAT_MASTER
sense       =       $00                 ;sense of FDC data bus pins (WD 2791 = $FF, else $00)
stsens      =       $80                 ;sense of FDC status register compared to WD 2793
hdload      =       $00                 ;sense of Type I command bit 3; $00=spin up $08=load head
latch0      =       $25                 ;latch value to select drive 0, single density
latch1      =       $03                 ;latch XOR mask to select drive 1 (unit 1 side 0)
latch2      =       $10                 ;latch XOR mask to select drive 2 (unit 0 side 1)
latch6      =       $09                 ;latch XOR mask to select drive 6 (unit 2 side 0)
latchd      =       $20                 ;latch XOR mask to select double density
latchr      =       $00                 ;latch value to reset FDC
fdc         =       sheila+$0028        ;base of floppy drive controller registers
latch       =       sheila+$0024        ;floppy drive interface control latch
ELIF PLATFORM = PLAT_O2791
sense       =       $FF                 ;sense of FDC data bus pins (WD 2791 = $FF, else $00)
stsens      =       $00                 ;sense of FDC status register compared to WD 2793
hdload      =       $08                 ;sense of Type I command bit 3; $00=spin up $08=load head
latch0      =       $00                 ;latch value to select drive 0, single density
latch1      =       $01                 ;latch XOR mask to select drive 1 (unit 1 side 0)
latch2      =       $02                 ;latch XOR mask to select drive 2 (unit 0 side 1)
latch6      =       $00                 ;latch XOR mask to select drive 6 (unit 2 side 0)
latchd      =       $40                 ;latch XOR mask to select double density
latchr      =       $00                 ;latch value to reset FDC
fdc         =       sheila+$0080        ;base of floppy drive controller registers
latch       =       sheila+$0084        ;floppy drive interface control latch
ELIF PLATFORM = PLAT_O2793
sense       =       $00                 ;sense of FDC data bus pins (WD 2791 = $FF, else $00)
stsens      =       $00                 ;sense of FDC status register compared to WD 2793
hdload      =       $08                 ;sense of Type I command bit 3; $00=spin up $08=load head
latch0      =       $00                 ;latch value to select drive 0, single density
latch1      =       $01                 ;latch XOR mask to select drive 1 (unit 1 side 0)
latch2      =       $02                 ;latch XOR mask to select drive 2 (unit 0 side 1)
latch6      =       $00                 ;latch XOR mask to select drive 6 (unit 2 side 0)
latchd      =       $40                 ;latch XOR mask to select double density
latchr      =       $00                 ;latch value to reset FDC
fdc         =       sheila+$0080        ;base of floppy drive controller registers
latch       =       sheila+$0084        ;floppy drive interface control latch
ELIF PLATFORM = PLAT_U2793
sense       =       $00                 ;sense of FDC data bus pins (WD 2791 = $FF, else $00)
stsens      =       $00                 ;sense of FDC status register compared to WD 2793
hdload      =       $08                 ;sense of Type I command bit 3; $00=spin up $08=load head
latch0      =       $1A                 ;latch value to select drive 0, single density
latch1      =       $01                 ;latch XOR mask to select drive 1 (unit 1 side 0)
latch2      =       $02                 ;latch XOR mask to select drive 2 (unit 0 side 1)
latch6      =       $00                 ;latch XOR mask to select drive 6 (unit 2 side 0)
latchd      =       $04                 ;latch XOR mask to select double density
latchr      =       $00                 ;latch value to reset FDC
fdc         =       sheila+$0084        ;base of floppy drive controller registers
latch       =       sheila+$0080        ;floppy drive interface control latch
ELIF PLATFORM = PLAT_O1770
sense       =       $00                 ;sense of FDC data bus pins (WD 2791 = $FF, else $00)
stsens      =       $80                 ;sense of FDC status register compared to WD 2793
hdload      =       $00                 ;sense of Type I command bit 3; $00=spin up $08=load head
latch0      =       $00                 ;latch value to select drive 0, single density
latch1      =       $01                 ;latch XOR mask to select drive 1 (unit 1 side 0)
latch2      =       $02                 ;latch XOR mask to select drive 2 (unit 0 side 1)
latch6      =       $00                 ;latch XOR mask to select drive 6 (unit 2 side 0)
latchd      =       $40                 ;latch XOR mask to select double density
latchr      =       $00                 ;latch value to reset FDC
fdc         =       sheila+$0080        ;base of floppy drive controller registers
latch       =       sheila+$0084        ;floppy drive interface control latch
ELIF PLATFORM = PLAT_CHALL
sense       =       $00                 ;sense of FDC data bus pins (WD 2791 = $FF, else $00)
stsens      =       $80                 ;sense of FDC status register compared to WD 2793
hdload      =       $00                 ;sense of Type I command bit 3; $00=spin up $08=load head
latch0      =       $32                 ;latch value to select drive 0, single density
latch1      =       $06                 ;latch XOR mask to select drive 1 (unit 1 side 0)
latch2      =       $01                 ;latch XOR mask to select drive 2 (unit 0 side 1)
latch6      =       $0A                 ;latch XOR mask to select drive 6 (unit 2 side 0)
latchd      =       $20                 ;latch XOR mask to select double density
latchr      =       $00                 ;latch value to reset FDC
fdc         =       fred  +$00F8        ;base of floppy drive controller registers
latch       =       fred  +$00FC        ;floppy drive interface control latch
ELIF PLATFORM = PLAT_W1770
sense       =       $00                 ;sense of FDC data bus pins (WD 2791 = $FF, else $00)
stsens      =       $80                 ;sense of FDC status register compared to WD 2793
hdload      =       $00                 ;sense of Type I command bit 3; $00=spin up $08=load head
latch0      =       $01                 ;latch value to select drive 0, single density
latch1      =       $04                 ;latch XOR mask to select drive 1 (unit 1 side 0)
latch2      =       $02                 ;latch XOR mask to select drive 2 (unit 0 side 1)
latch6      =       $00                 ;latch XOR mask to select drive 6 (unit 2 side 0)
latchd      =       $01                 ;latch XOR mask to select double density
latchr      =       $00                 ;latch value to reset FDC
fdc         =       sheila+$0084        ;base of floppy drive controller registers
latch       =       sheila+$0080        ;floppy drive interface control latch
ELSE          ; PLAT_S1770
sense       =       $00                 ;sense of FDC data bus pins (WD 2791 = $FF, else $00)
stsens      =       $80                 ;sense of FDC status register compared to WD 2793
hdload      =       $00                 ;sense of Type I command bit 3; $00=spin up $08=load head
latch0      =       $04                 ;latch value to select drive 0, single density
latch1      =       $01                 ;latch XOR mask to select drive 1 (unit 1 side 0)
latch2      =       $02                 ;latch XOR mask to select drive 2 (unit 0 side 1)
latch6      =       $00                 ;latch XOR mask to select drive 6 (unit 2 side 0)
latchd      =       $04                 ;latch XOR mask to select double density
latchr      =       $00                 ;latch value to reset FDC
fdc         =       sheila+$0080        ;base of floppy drive controller registers
latch       =       sheila+$0086        ;floppy drive interface control latch
ENDIF

;Extract highest set bit of latch1
ltcht1      =       latch1 OR latch1 >> 1
ltcht2      =       ltcht1 OR ltcht1 >> 2
ltcht3      =       ltcht2 OR ltcht2 >> 4
latchm      =       latch1 AND ((ltcht3 >> 1) EOR $FF)

fdccmd      =       fdc   +$0000        ;WD 1770 command register (write only)
fdcsta      =       fdc   +$0000        ;WD 1770 status register (read only)
fdctrk      =       fdc   +$0001        ;WD 1770 track register
fdcsec      =       fdc   +$0002        ;WD 1770 sector register
fdcdat      =       fdc   +$0003        ;WD 1770 data register

L00A7   = $00A7
LFE30   = $FE30

.LBA00
        JMP     LBB14

.LBA03
        JMP     LBB25

.LBA06
        JMP     LBA26

.LBA09
        JMP     LBA2A

.LBA0C
        LDA     #$FF
        STA     L10E4
.LBA11
;; Floppy drive controller acceptance.
;; Returns C=0 iff correct FDC fitted.

IF PLATFORM = PLAT_BBC
;; Confirm Acorn WD 1770 controller, reject i8271
        LDA     #$5A
        STA     LFE85
        LDA     LFE85
        CMP     #$5A
        BNE     LBA25
;; NB Vacant address read as $FE returning C=1, fail.
;; Hence cannot be optimised to CMP LFE85!
;; Continue with C=1:

;; this test fails on the Master
        LDA     LFE80
        AND     #$03
        BEQ     LBA25
;; if i8271 status register at $FE80 then return C=1, fail.

ELIF PLATFORM = PLAT_MASTER
        LDA     #$5A
        STA     LFE85
        LDA     LFE85
        CMP     #$5A
        BNE     LBA25

        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
ENDIF

        CLC
.LBA25
        RTS

.LBA26
        LDA     #$40
        BNE     LBA2C

.LBA2A
        LDA     #$C0
.LBA2C
        STA     L10E0
        TXA
        TSX
        STX     L10E7
        PHA
        JSR     LBBB4

        JSR     LBB92

        PLA
IF PLATFORM = PLAT_BBC OR PLATFORM = PLAT_MASTER
        TAX
ELSE
        TAY
ENDIF
        BIT     L00A1
        BMI     LBA4D

        LDA     L00BC
        STA     wriol-LBCDF+rdiol-LBC79+L0D00+$01
        LDA     L00BD
        STA     wriol-LBCDF+rdiol-LBC79+L0D00+$02
        BNE     LBA57           ;assumes not writing from zero page!

.LBA4D
        LDA     L00BE
        STA     rdios-LBC79+L0D00+$01
        LDA     L00BF
        STA     rdios-LBC79+L0D00+$02
.LBA57
IF PLATFORM = PLAT_BBC OR PLATFORM = PLAT_MASTER
        LDA     L1003,X
        PHA
        AND     #$1F
        BEQ     LBA63

.LBA5F
        PLA
        JMP     LBF66

.LBA63
        PLA
        PHA
        AND     #$40
        BNE     LBA5F

        PLA
        AND     #$20
        BNE     LBA72

        LDA     #latch0 EOR latchd
        BNE     LBA74

ELSE
        LDA     L1003,Y
        ASL     A
        BMI     LBA5F           ;if b6=1 then bad drive
        ASL     A
        ASL     A
        BEQ     LBA63           ;if b4..b0 = $00 then LBA valid

.LBA5F
        JMP     LBF66           ;else bad drive

.LBA63
        LDA     #latch0 EOR latchd
        BCC     LBA74           ;if b5=0 then select drive 0

ENDIF

.LBA72
        LDA     #latch0 EOR latch1 EOR latchd
.LBA74
        STA     L0D5E
        ROR     L10E4
        SEC
        ROL     L10E4
IF PLATFORM = PLAT_BBC OR PLATFORM = PLAT_MASTER
        LDA     L1001,X         ;can save 1; LDYAX/LDAAX/TAX/TYA
        PHA
        LDA     L1002,X
        TAX
        PLA
        LDY     #$FF
ELSE
        LDA     L1001,Y
        LDX     L1002,Y
ENDIF
        JSR     LBFA2           ;convert LBA to CS

        STA     L00A4           ;store sector number
        STY     L00A5           ;store track number
        TYA                     ;subtract 80 tracks
        SEC
        SBC     #$50            ;if underflow
        BMI     LBA9B           ;then access side 0 of drive

        STA     L00A5           ;else store new track number
        JSR     LBD22           ;select side 2 of drive

.LBA9B
IF PLATFORM = PLAT_O2791 OR PLATFORM = PLAT_O2793 OR PLATFORM = PLAT_U2793
        JSR     reslat
ELSE
        LDA     L0D5E
        STA     latch
ENDIF
IF latch1 AND $01
        ROR     A               ;sample Drive Select 0
IF latch0 AND $01
        BCC     LBAB0           ;if drive 0 selected then fall through
ELSE
        BCS     LBAB0
ENDIF
ELSE
        AND     #latchm
IF latch0 AND latchm
        BEQ     LBAB0
ELSE
        BNE     LBAB0
ENDIF
ENDIF

        LDA     L10E5           ;get head position of drive 0
        STA     L00A3           ;set current head position
        BIT     L10E4           ;if drive 0 calibrated
        BPL     LBABD           ;then execute command

        BMI     LBABA           ;else calibrate drive

.LBAB0
        LDA     L10E6
        STA     L00A3
        BIT     L10E4           ;if drive 1 calibrated
        BVC     LBABD           ;then execute command

.LBABA
        JSR     LBD3F           ;else calibrate drive

.LBABD
        JSR     LBAC6           ;seek track

        JSR     LBCFD           ;execute read/write command

        JMP     LBFAE           ;exit OSWORD command

.LBAC6                          ;Seek track
        JSR     LBD2B           ;command not chained (quit when finished)

        LDX     #fdctrk-fdc-$01
        JSR     LBB09           ;store FDC track register

        INX                     ;x = fdcsec-fdc-$01
        JSR     LBB09           ;store FDC sector register

        INX                     ;x = fdcdat-fdc-$01
        JSR     LBB09           ;returns value written to data register

IF PLATFORM = PLAT_BBC OR PLATFORM = PLAT_MASTER
        CMP     L00A3           ;if target track = current track
        BEQ     LBAF4           ;then no seeking to do, finish
ELSE
;WD 279X boards need a Drive Ready signal to accept Type II/III
;commands.  Always do a seek to wake up the drive.
;NB The extra ID read hits performance on other boards, but as we wait
;for Drive Ready on all of them now, we're stuck with it.
ENDIF

        ROR     L10E4
        SEC
        ROL     L10E4
        LDA     #$14 EOR hdload ;$14 = seek, verify on track
        ORA     L0D5C
IF sense
        EOR     #sense
ENDIF
        STA     fdccmd          ;sends Type I commands only
        JSR     LBCC2

        LDA     L00A1           ;b0=error result from FDC
        ROR     A
        BCC     LBAF4           ;if no error then finish, else:

.LBAF1
        JMP     LBFAE           ;exit OSWORD command

.LBAF4
        LDA     L00A5           ;get target track
        STA     L00A3           ;store current track
        BIT     L00A1
        BVS     LBB06

        LDY     #$05            ;XY+5 = SCSI command
        LDA     (L00B0),Y
        CMP     #$0B            ;if command = $0B
IF PLATFORM = PLAT_BBC OR PLATFORM = PLAT_MASTER
        BNE     LBB06           ;can save 2; rm (!)
ENDIF

        BEQ     LBAF1           ;then exit OSWORD command

.LBB06
        JMP     LBD2B           ;else L00A2 b0=0 wait for command to finish

.LBB09
        LDA     L00A3,X
IF sense
        EOR     #sense
ENDIF
        STA     fdc+$01,X
        CMP     fdc+$01,X
        BNE     LBB09

        RTS

.LBB14
        TSX
        STX     L10E7
        LDA     #$10
        STA     L10E0
        JSR     LBB42

        JSR     LBDA6

        BEQ     LBAF1

.LBB25
        STA     L10E2
        TSX
        STX     L10E7
        LDA     #$10
        STA     L00B1
        LDA     #$15
        STA     L00B0
        LDA     #$00
        STA     L10E0
        JSR     LBB42

        JSR     LBD58

        JMP     LBFAE

.LBB42
IF PLATFORM = PLAT_BBC OR PLATFORM = PLAT_MASTER
        LDA     #$00            ;can save 1; LDY/INY
        STA     L10E3
        LDY     #$01
ELSE
        LDY     #$00
        STY     L10E3
        INY                     ;y=$01
ENDIF
        LDA     (L00B0),Y
        STA     L00B2
        INY
        LDA     (L00B0),Y
        STA     L00B3
        INY
        LDA     (L00B0),Y
        TAX
        INY
        LDA     (L00B0),Y
        INX
        BEQ     LBB5F

        INX
        BNE     LBB63

.LBB5F
        CMP     #$FF            ;if MSB address = $FF
        BEQ     LBB6A           ;then in I/O processor

.LBB63
        BIT     L00CD           ;else if Tube absent
        BPL     LBB6A           ;then in I/O processor

        JSR     L8027

.LBB6A
        LDY     #$05
        LDA     (L00B0),Y
        CMP     #$08
        BEQ     LBB82

        CMP     #$0A
        BEQ     LBB89

        CMP     #$0B
        BEQ     LBB82

        LDA     #$67            ;bad command
        STA     L10E3
        JMP     LBFAE

.LBB82
        ROL     L10E0           ;b7 = read from disc
        SEC
        ROR     L10E0
.LBB89
        JSR     LBBB4           ;set stepping and precomp from keyboard links

        JSR     LBB92           ;set up NMI area

        JMP     LBEFF

.LBB92
        JSR     LBBDA           ;claim NMI area

        LDA     L10E8           ;copy stepping rate
        STA     L0D5C           ;to NMI area
        LDA     #$00
        STA     L00A0
        STA     L00A2
        LDA     L10E0
        ORA     #$20
        STA     L10E0
        STA     L00A1
        LDA     L00CD
        STA     L0D5D
        JSR     LBBF1           ;install ISR in NMI area

        RTS

.LBBB4
IF PLATFORM = PLAT_BBC OR PLATFORM = PLAT_MASTER
        LDA     #$00            ;can save 8; store zeroes or constants directly
        STA     L0D56           ;disable precompensation
        STA     L10E8           ;set 6 millisecond stepping rate
        LDA     #$FF            ;OSBYTE $FF = read/write startup options
        LDX     #$00            ;can save 3; JSR L84A0
        TAY
        JSR     OSBYTE
ELSE
        LDA     #$FF            ;OSBYTE $FF = read/write startup options
        JSR     L84A0           ;call OSBYTE with X=$00, Y=$FF
ENDIF

        TXA
IF PLATFORM = PLAT_BBC OR PLATFORM = PLAT_MASTER
        PHA                     ;can save 1; TXA again
        AND     #$20            ;test bit 5 -- link 3, bit CLEAR = link made
        BEQ     LBBCF

        LDA     #$03            ;if link 3 unmade then set stepping rate
        STA     L10E8           ;30 ms (WD 1770) / 3 ms (WD 1772)
.LBBCF
        PLA
        AND     #$10            ;test bit 4 -- link 4, bit CLEAR = link made
        BEQ     LBBD9

        LDA     #$02            ;if link 4 unmade then enable precompensation
        STA     L0D56           ;while writing sectors or tracks
.LBBD9
ELSE
        AND     #$20            ;test bit 5 -- link 3, bit CLEAR = link made
        BEQ     LBBCC           ;link 3 made = 6 ms

        LDA     #$03            ;link 3 unmade = 30 ms (WD 1770) / 3 ms (WD 1772)
.LBBCC
        STA     L10E8           ;set stepping rate
        TXA
        AND     #$10            ;test bit 4 -- link 4, bit CLEAR = link made
        BEQ     LBBD6           ;link 4 made = disable write precompensation

        LDA     #$02            ;link 4 unmade = enable write precompensation
.LBBD6
        STA     L0D56           ;set write precompensation flag
ENDIF
        RTS


IF PLATFORM = PLAT_BBC OR PLATFORM = PLAT_MASTER
.LBBDA
        LDA     #$8F
        LDX     #$0C
        LDY     #$FF
        JSR     OSBYTE

        STY     L10E1
        RTS

.LBBE7
        LDY     L10E1
        LDA     #$8F
        LDX     #$0B
        JMP     OSBYTE
ELSE
.LBBDA
        LDY     #$FF
        LDX     #$0C
.svop
        LDA     #$8F
        JSR     OSBYTE

        STY     L10E1
        RTS

.LBBE7
        LDY     L10E1
        LDX     #$0B
        BNE     svop
ENDIF

IF PLATFORM = PLAT_BBC OR PLATFORM = PLAT_MASTER
.LBBF1
        LDY     #rdioe-LBC79-$01
.LBBF3
        LDA     LBC79,Y
        STA     L0D00,Y
        DEY
        BPL     LBBF3           ;can save 1; BNE/INY

        LDY     #$01
ELSE
.LBBF1
        LDY     #rdioe-LBC79
.LBBF3
        LDA     LBC79-$01,Y
        DEY
        STA     L0D00,Y
        BNE     LBBF3

        STY     L00A7           ;clear transfer-chain token
        INY                     ;y=$01
ENDIF
        LDA     (L00B0),Y
        STA     rdios-LBC79+L0D00+$01
        INY
        LDA     (L00B0),Y
        STA     rdios-LBC79+L0D00+$02
        BIT     L00A1
        BMI     LBC12

        LDA     #$5F            ;also mask {WriteProtect}
        STA     rdiom-LBC79+L0D00+$01
.LBC12
IF PLATFORM = PLAT_BBC OR PLATFORM = PLAT_MASTER
        BIT     L00CD
        BVC     LBC21

        LDA     L00A1
        AND     #$FD
        STA     L00A1
        JSR     LBC2D
;returns N=1 if L00A1 b4=1

        BMI     LBC24

.LBC21
        JSR     LBC5C

.LBC24
        STA     L0D5F           ;can save 3; rm
        LDA     L00F4
        STA     rdior-LBC79+L0D00+$01
        RTS

.LBC2D
        LDA     L00A1           ;can save 2; rm
        ROL     A
        LDA     #$00
        ROL     A
        LDY     #$10
        LDX     #$27
        JSR     L0406

        LDA     L00A1
        AND     #$10
        BEQ     LBC4F

        BIT     L00A1
        BMI     LBC50

        LDY     #wrtue-LBCED-$01
.LBC46
        LDA     LBCED,Y
        STA     rdiol-LBC79+L0D00,Y
        DEY
        BPL     LBC46

.LBC4F
        RTS

.LBC50
        LDY     #rdtue-LBCF5-$01
.LBC52
        LDA     LBCF5,Y
        STA     rdiol-LBC79+L0D00,Y
        DEY
        BPL     LBC52

        RTS

.LBC5C
        BIT     L00A1
        BMI     LBC78

        LDY     #wrioe-LBCDF-$01
.LBC62
        LDA     LBCDF,Y
        STA     rdiol-LBC79+L0D00,Y
        DEY
        BPL     LBC62

        LDY     #$01
        LDA     (L00B0),Y
        STA     wriol-LBCDF+rdiol-LBC79+L0D00+$01
        INY
        LDA     (L00B0),Y
        STA     wriol-LBCDF+rdiol-LBC79+L0D00+$02
.LBC78
        RTS
ELSE
        BIT     L00CD
        LDA     L00A1
        BVC     LBC21

        AND     #$FD
        STA     L00A1
        ROL     A
        LDA     #$00
        ROL     A
        LDY     #$10
        LDX     #$27
        JSR     L0406

        LDY     #rdtue-LBCF5-$01
        LDA     #$10
        BIT     L00A1           ;N=read from disc Z=read/write to I/O proc.
        BEQ     LBC21

;       BMI     LBC46
;       LDY     #wrtue-LBCED-$01        ;same value
.LBC46
        LDA     LBCF5,Y
        BIT     L00A1
        BMI     strdtu
        LDA     LBCED,Y
.strdtu
        STA     rdiol-LBC79+L0D00,Y
        DEY
        BPL     LBC46
.LBC21
        BMI     LBC24
        LDY     #wrioe-LBCDF
.LBC62
        LDA     LBCDF-$01,Y
        DEY
        STA     rdiol-LBC79+L0D00,Y
        BNE     LBC62

        INY                     ;y=$01
        LDA     (L00B0),Y
        STA     wriol-LBCDF+rdiol-LBC79+L0D00+$01
        INY
        LDA     (L00B0),Y
        STA     wriol-LBCDF+rdiol-LBC79+L0D00+$02
.LBC24
        LDA     L00F4
        STA     rdior-LBC79+L0D00+$01
        RTS

ENDIF

;;;  Start of NMI handler
.LBC79
        PHA
        LDA     fdcsta
.rdiop
IF (stsens EOR sense EOR $80) AND $5F
        EOR     #stsens EOR sense EOR $80
ENDIF
.rdiom
        AND     #$1F
        CMP     #$03
        BNE     LBC93

.rdiol
        LDA     fdcdat
IF sense
        EOR     #sense
ENDIF
.rdios
        STA     LFFFF
        INC     rdios-LBC79+L0D00+$01
        BNE     LBC91

        INC     rdios-LBC79+L0D00+$02
.LBC91
        PLA
        RTI

.LBC93
IF PLATFORM = PLAT_BBC OR PLATFORM = PLAT_MASTER
        AND     #$58
        BEQ     LBCA5
ELSE
        AND     #$59
        BEQ     LBCA5
        ROR     A
        BCS     LBC91
        ASL     A
ENDIF

        STA     L00A0
        ROR     L00A1
        SEC
        ROL     L00A1
.LBC9E
        ROR     L00A2
        SEC
        ROL     L00A2
        PLA
        RTI

.LBCA5
IF PLATFORM = PLAT_BBC OR PLATFORM = PLAT_MASTER
        BIT     L00A2
        BVC     LBC9E
ELSE
        ASL     L00A7   ;if we don't have the token
        BEQ     LBC9E   ;then mark the transfer finished
                        ;(the other thread may clear the flag again)
ENDIF

        LDA     L00F4   ;else save current ROM (= ADFS)
        PHA
.rdior
        LDA     #$00    ;page in ADFS ROM
        STA     L00F4
        STA     LFE30
        TXA             ;save X
        PHA
        JSR     LBE69   ;start next sector of transfer

        PLA             ;restore X
        TAX
        PLA             ;restore previous ROM (= ADFS)
        STA     L00F4
        STA     LFE30
        PLA
        RTI             ;end interrupt

.rdioe
;;;  End of NMI handler

IF PLATFORM = PLAT_BBC OR PLATFORM = PLAT_MASTER
.LBCC2
        LDA     L00A2
        ROR     A
        BCC     LBCC8

        RTS

.LBCC8
        LDA     L0D5D
        AND     #$10
        BEQ     LBCC2

        BIT     L00FF
        BPL     LBCC2

        LDA     #latchr
        STA     latch

ELSE
;Opus 2791/2793, Challenger and Solidisk boards
;do not raise NMIs from their INTRQ pins.
;Wait for fdcsta to be valid after sending the command,
;then fake a ghost NMI each time around the busy loop.
;Real NMIs handle DRQs so suppress them here.

;Hitting glitch issues on Challenger (confirmed on two
;machines) if the LDA fdcsta is assembled at certain
;addresses - I'm guessing even ones.
;Pad the loop to ensure the address is odd.  This might not
;be the best solution as I can only test locally; if it
;doesn't work here, I'll cobble something else together.
.shoe
IF shoe AND $01
ELSE
        NOP
ENDIF

.busy1
        LDA     #>busy3
        PHA
        LDA     #<busy3
        PHA
        PHP
        PHA
        LDA     fdcsta          ;address of opcode must be odd
IF (stsens EOR sense) AND $02
        ORA     #$02            ;suppress DRQ
ELSE
        AND     #$FD            ;suppress DRQ
ENDIF
        JMP     rdiop-LBC79+L0D00

.LBCC2
        JSR     delay           ;wait 64 microseconds

.busy3
        LDA     L00A2
        ROR     A
        BCC     LBCC8

        RTS

.LBCC8
        LDA     L0D5D
        AND     #$10
        BEQ     busy1

        BIT     L00FF
        BPL     busy1

;UDM WD 2793 has a reset latch but we reuse the Opus code.  Otherwise,
;the third-party controllers supported here do not have a reset latch.
;Send Force Interrupt instead and do not disable the drive (such that
;the controller is in the idle spin state with the motor stopped) or
;change the latches (such that a drive activity LED suddenly lights
;or the index pulses are lost.)
        LDA     #$D0 EOR sense
        STA     fdccmd
        JSR     delay

IF PLATFORM = PLAT_O2791 OR PLATFORM = PLAT_O2793 OR PLATFORM = PLAT_U2793
;On WD 279x, seek the current track to unload the head.
;NB On the other third-party controllers, aborting a command
;on an empty drive leaves both drives running indefinitely.
        LDA     L00A3
IF sense
        EOR     #sense
ENDIF
.setdat
        STA     fdcdat
        CMP     fdcdat
        BNE     setdat
        LDA     #$10
        ORA     L0D5C           ;apply stepping rate
IF sense
        EOR     #sense          ;do not load head
ENDIF
        STA     fdccmd          ;sends Type I commands only
        JSR     delay
ENDIF

IF shoe AND $01
        NOP
ENDIF
ENDIF

        LDA     #$6F
        STA     L00A0
        JMP     LBFAE

;; Fragement of NMI handler
;; copied to &0D0A
.LBCDF
.wriol
        LDA     LFFFF
IF sense
        EOR     #sense
ENDIF
.wrios
        STA     fdcdat
        INC     wriol-LBCDF+rdiol-LBC79+L0D00+$01
        BNE     LBCED
        INC     wriol-LBCDF+rdiol-LBC79+L0D00+$02
.wrioe
;; end of fragment

;; Fragement of NMI handler
;; copied to &0D0A
.LBCED
        LDA     LFEE5
IF sense
        EOR     #sense
ENDIF
        STA     fdcdat
        BCS     LBC91-rdiol+LBCED
.wrtue
;; end of fragment

;; Fragement of NMI handler
;; copied to &0D0A
.LBCF5
        LDA     fdcdat
IF sense
        EOR     #sense
ENDIF
        STA     LFEE5
        BCS     LBC91-rdiol+LBCF5
.rdtue
;; end of fragment


.LBCFD                          ;Execute read/write command
IF PLATFORM = PLAT_BBC OR PLATFORM = PLAT_MASTER
        BIT     L00A1
        BMI     LBD0E

        LDA     L00A3
        CMP     #$14
        LDA     #$A0            ;$A0 = write sector
        BCC     LBD10           ;if track number >= 20

        ORA     L0D56           ;then apply precomp setting from keyboard link 4
        BNE     LBD10

.LBD0E
        LDA     #$80            ;$80 = read sector
.LBD10
        JSR     LBD4C

        STA     fdccmd
        JMP     LBCC2

IF PRESERVE_PADDING
        ;; TODO/FIX - how is this referenced?
        LDA     L0D5E
        AND     #($FF-latch2)
        STA     L0D5E
        RTS
ENDIF
ELSE
        LDA     #$80            ;$80 = read sector
        BIT     L00A1
        BMI     LBD0E

        LDA     L00A3
        CMP     #$14
        LDA     #$A0            ;$A0 = write sector
        BCC     LBD10           ;if track number >= 20

IF PLATFORM = PLAT_O2791 OR PLATFORM = PLAT_O2793 OR PLATFORM = PLAT_U2793
;On WD 279X bit 1 is the Side Compare flag, do not set
ELSE
        ORA     L0D56           ;then apply precomp setting from keyboard link 4
ENDIF
.LBD0E
.LBD10
        JSR     LBD4C           ;apply head settling delay on second sector

        JSR     stacmd          ;wait for drive ready then send command
        JMP     LBCC2           ;wait until command(s) finished

ENDIF

.LBD22                          ;Select side 2 (top side) of drive
        LDA     L0D5E
IF latch0 AND latch2
        AND     #latch2 EOR $FF
ELSE
        ORA     #latch2
ENDIF
        STA     L0D5E
        RTS

.LBD2B
        ROR     L00A2
IF PLATFORM = PLAT_BBC OR PLATFORM = PLAT_MASTER
        CLC                     ;can save 1; ASL
        ROL     L00A2
ELSE
        ASL     L00A2
ENDIF
        RTS

IF PLATFORM = PLAT_BBC OR PLATFORM = PLAT_MASTER
.LBD31
        LDA     L00A2
        AND     #$F7
        STA     L00A2
        RTS

.LBD38
        LDA     L00A2
        AND     #$FD
        STA     L00A2
        RTS
ELSE
.LBD31
        LDA     #$F7
        BNE     anda2

.LBD38
        LDA     #$FD
.anda2
        AND     L00A2
        STA     L00A2
        RTS
ENDIF

.LBD3F                          ;Calibrate drive
        LDA     #$00            ;$00 = restore
        STA     L00A3           ;set current track = 0
        ORA     L0D5C           ;apply stepping rate
IF hdload EOR sense
        EOR     #hdload EOR sense
ENDIF
        STA     fdccmd          ;sends Type I commands only
        JMP     LBCC2           ;wait for command to finish

.LBD4C
        ROR     L10E4
        BCC     LBD54

        ORA     #$04            ;enable head settling delay
IF PLATFORM = PLAT_BBC OR PLATFORM = PLAT_MASTER
        CLC
.LBD54
        ROL     L10E4
ELSE
.LBD54
        ASL     L10E4
ENDIF
        RTS

.LBD58
        LDA     L10E2
        STA     rdios-LBC79+L0D00+$02
        LDA     #$00
        STA     rdios-LBC79+L0D00+$01
        JSR     LBAC6

        JSR     LBCFD

        LDA     L00A3
        PHA
        LDA     L1016
        STA     L00A5
        LDA     L1017
        STA     L00A6
IF PLATFORM = PLAT_BBC OR PLATFORM = PLAT_MASTER
        LDA     #$00
        STA     L00A3
ELSE
        LDY     #$00
        STY     L00A3
ENDIF
        LDA     L10E2
        STA     L00A4
        BIT     L00CD
        BVC     LBD97

IF PLATFORM = PLAT_BBC OR PLATFORM = PLAT_MASTER
        LDY     #$00
ENDIF
.LBD85
        LDA     (L00A3),Y
        LDX     #$07
.LBD89
        DEX
        BNE     LBD89

        STA     LFEE5
        INY
        CPY     L101E
        BNE     LBD85

        BEQ     LBDA2

.LBD97
        LDY     L101E
.LBD9A
        DEY
        LDA     (L00A3),Y
        STA     (L00A5),Y
        TYA
        BNE     LBD9A

.LBDA2
        PLA
        STA     L00A3
        RTS

.LBDA6
        JSR     LBAC6

        LDA     L00A2
        ORA     #$40
        STA     L00A2
        LDY     #$07
        LDA     (L00B0),Y
        STA     L0D58
        INY
        LDA     (L00B0),Y
        INY
        CLC
        ADC     (L00B0),Y
        STA     L0D59
        BCC     LBDC5

        INC     L0D58
.LBDC5
IF PLATFORM = PLAT_BBC OR PLATFORM = PLAT_MASTER
        LDA     L0D58           ;can save 1; LDX
        TAX
        LDA     L0D59
        LDY     #$FF
ELSE
        LDX     L0D58
        LDA     L0D59
ENDIF
        JSR     LBFA2           ;returns flags set on A

IF PLATFORM = PLAT_BBC OR PLATFORM = PLAT_MASTER
        CMP     #$00
ENDIF
        BNE     LBDD7

        LDA     #$10
.LBDD7
        LDY     #$09
        SEC
        SBC     (L00B0),Y
        BCS     LBDFB

        LDA     #$10
        SEC
        SBC     L00A4
        STA     L0D58
        LDA     (L00B0),Y
        SEC
        SBC     L0D58
        LDX     #$00
IF PLATFORM = PLAT_BBC OR PLATFORM = PLAT_MASTER
        LDY     #$FF
ENDIF
        JSR     LBFA2           ;returns flags set on A

        STY     L0D57
        STA     L0D59
        BPL     LBE0C           ;branch always taken

.LBDFB
        LDY     #$09
        LDA     (L00B0),Y
        STA     L0D58
IF PLATFORM = PLAT_BBC OR PLATFORM = PLAT_MASTER
        LDA     #$FF            ;can save 1; LDX/INX
        STA     L0D57
        LDA     #$00
        STA     L0D59
ELSE
        LDX     #$FF
        STX     L0D57
        INX                     ;x=$00
        STX     L0D59
ENDIF
.LBE0C
        LDA     #$00
        STA     L0D5A
        INC     L0D57
        DEC     L0D58
        LDX     #fdcsec-fdc-$01
        JSR     LBB09

IF PLATFORM = PLAT_BBC OR PLATFORM = PLAT_MASTER
        BIT     L00A1           ;can save 2; preset A=$80 here
        BMI     LBE27
ELSE
        LDA     #$80            ;$80 = read sector
        BIT     L00A1
        BMI     LBE29
ENDIF

        LDA     #$A0            ;$A0 = write sector
IF PLATFORM = PLAT_O2791 OR PLATFORM = PLAT_O2793 OR PLATFORM = PLAT_U2793
;On WD 279X bit 1 is the Side Compare flag, do not set
ELSE
        ORA     L0D56           ;apply precomp setting from keyboard link 4
ENDIF
IF PLATFORM = PLAT_BBC OR PLATFORM = PLAT_MASTER
        BNE     LBE29           ;-- unconditionally!

.LBE27
        LDA     #$80            ;$80 = read sector
ENDIF
.LBE29
        STA     L00A6
        JSR     LBD2B

        LDA     L00A6
IF PLATFORM = PLAT_BBC OR PLATFORM = PLAT_MASTER
        STA     fdccmd
ELSE
        JSR     stacmd          ;wait for drive ready then send command
ENDIF
.LBE33
        JSR     LBCC2

        LDA     L00A2
        AND     #$02
        BEQ     LBE4E

        JSR     LBD2B

        JSR     LBD38

        LDA     #$54 EOR hdload ;$54 = step in, update track reg., verify on track
        ORA     L0D5C
IF PLATFORM = PLAT_BBC OR PLATFORM = PLAT_MASTER
        STA     fdccmd          ;sends Type I commands only
ELSE
        JSR     stacmd          ;place token and send Type I command
ENDIF
        INC     L00A3
        BNE     LBE33

.LBE4E
        LDA     L00A2
        AND     #$08
        BEQ     LBE83

        JSR     LBD2B

        JSR     LBD31

        INC     L00A3
        JSR     LBD22           ;select side 2 of drive

        LDA     #$00 EOR hdload ;$00 = restore
        ORA     L0D5C
IF sense
        EOR     #sense
ENDIF
        STA     fdccmd          ;sends Type I commands only
IF sense AND $80
        BMI     LBE33
ELSE
        BPL     LBE33
ENDIF

.LBE69
IF PLATFORM = PLAT_BBC OR PLATFORM = PLAT_MASTER
ELSE
        LDA     fdcsta          ;did the INTRQ thread start the next transfer
        ROR     A               ;before we got the token?
IF (stsens EOR sense) AND $01
        BCS     next            ;if not then we will
ELSE
        BCC     next            ;if not then we will
ENDIF
        LDA     #$40            ;else we're holding the next command's token
        STA     L00A7           ;put it back
        RTS                     ;L00A2 b0=0, transfer continues

.next
ENDIF
        JSR     LBD2B

        JSR     LBE84

        TXA
        BNE     LBE78

        ROR     L00A2           ;b0=1, transfer finished
        SEC
        ROL     L00A2
        RTS

.LBE78
        JSR     LBD38

        LDA     L00A6
        JSR     LBD4C

IF PLATFORM = PLAT_BBC OR PLATFORM = PLAT_MASTER
        STA     fdccmd
ELSE
        JSR     stacmd          ;wait for drive ready then send command
ENDIF
.LBE83
        RTS

.LBE84
        LDA     L0D58
        BNE     LBEED

        LDA     L0D57
        BNE     LBE9D

        LDA     L0D59
        BNE     LBE97

        LDX     #$00
        BEQ     LBEFE

.LBE97
        DEC     L0D59
        JMP     LBEF0

.LBE9D
        LDA     L0D5A
        BNE     LBEE7

        ROR     L10E4
        SEC
        ROL     L10E4
        LDA     fdctrk
IF sense
        EOR     #sense
ENDIF
        CMP     #$4F
        BCC     LBECF

        LDA     L0D5E
        AND     #latch2
IF latch0 AND latch2
        BNE     LBEBC
ELSE
        BEQ     LBEBC
ENDIF

        LDX     #$00
IF PLATFORM = PLAT_BBC OR PLATFORM = PLAT_MASTER
        JMP     LBEF2
ELSE
        BEQ     LBEF2
ENDIF

.LBEBC
        LDA     #$FF
        STA     L00A3
        JSR     LBD22

IF PLATFORM = PLAT_O2791 OR PLATFORM = PLAT_O2793 OR PLATFORM = PLAT_U2793
        JSR     reslat
ELSE
        LDA     L0D5E
        STA     latch
ENDIF
        LDA     L00A2
        ORA     #$08
        BNE     LBED3

.LBECF
        LDA     L00A2
        ORA     #$02
.LBED3
        STA     L00A2
        DEC     L0D57
        BEQ     LBEDF

        LDA     #$10
        STA     L0D5A
.LBEDF
        LDA     #$FE            ;current sector = -2
        STA     L00A4           ;(-1 gets written to sector register)
        LDX     #$00
        BEQ     LBEF2

.LBEE7
        DEC     L0D5A
        JMP     LBEF0

.LBEED
        DEC     L0D58
.LBEF0
        LDX     #$FF
.LBEF2
        INC     L00A4
.LBEF4
        LDA     L00A4
IF sense
        EOR     #sense
ENDIF
        STA     fdcsec
        CMP     fdcsec
        BNE     LBEF4

.LBEFE
        RTS

.LBEFF
        LDY     #$06            ;XY+6 b7..5 = drive number
        LDA     (L00B0),Y
        ORA     L1117           ;OR with current drive
        STA     L00A6           ;store drive to operate on
        AND     #$1F            ;if b20..b16 LBA all clear then proceed
IF PLATFORM = PLAT_BBC OR PLATFORM = PLAT_MASTER
        BEQ     LBF0F           ;can save 3; fall through

        JMP     LBF66           ;else LBA out of range
ELSE
        BNE     LBF66           ;else LBA out of range
ENDIF

.LBF0F
        BIT     L00A6           ;if drive number b1 = 0
        BVC     LBF19           ;then proceed

        LDA     #$65            ;else no such drive??
        STA     L00A0
        BNE     LBF6A

.LBF19
        LDA     L00A6           ;test drive number b0
        AND     #$20
        BNE     LBF23           ;if drive 1 then branch, else:

        LDA     #latch0 EOR latchd      ;set latch for drive 0
IF latch0 EOR latchd
        BNE     LBF25
ELSE
        BEQ     LBF25
ENDIF

.LBF23
        LDA     #latch0 EOR latch1 EOR latchd   ;set latch for drive 1
.LBF25
        STA     L0D5E
        ROR     L10E4
        SEC
        ROL     L10E4
        JSR     LBF55

IF PLATFORM = PLAT_O2791 OR PLATFORM = PLAT_O2793 OR PLATFORM = PLAT_U2793
        JSR     reslat
ELSE
        LDA     L0D5E
        STA     latch
ENDIF
IF latch1 AND $01
        ROR     A               ;sample Drive Select 0
IF latch0 AND $01
        BCC     LBF47           ;if drive 0 selected then fall through
ELSE
        BCS     LBF47
ENDIF
ELSE
        AND     #latchm
IF latch0 AND latchm
        BEQ     LBF47
ELSE
        BNE     LBF47
ENDIF
ENDIF

        LDA     L10E5           ;get head position of drive 0
        STA     L00A3           ;set current head position
        BIT     L10E4           ;if drive 0 calibrated
        BPL     LBF54           ;then exit

        BMI     LBF51           ;else calibrate drive.

.LBF47
        LDA     L10E6
        STA     L00A3
        BIT     L10E4           ;if drive 1 calibrated
        BVC     LBF54           ;then exit

.LBF51
        JSR     LBD3F           ;else calibrate drive.

.LBF54
        RTS

.LBF55
        LDY     #$07            ;XY+7 = MSB LBA
        LDA     (L00B0),Y
        CMP     #$0A
        BCC     LBF86

IF PLATFORM = PLAT_BBC OR PLATFORM = PLAT_MASTER
        BNE     LBF66

        INY                     ;XY+8 = LSB LBA
        LDA     (L00B0),Y
        CMP     #$00            ;sets C=1
        BCC     LBF6C           ;branch never taken
ENDIF

.LBF66
        LDA     #$61            ;LBA out of range
        STA     L00A0

IF PATCH_DATACENTRE

        BNE     LBFAE
.LBF6A
.LBF6C
        LDX     L00B0
        LDY     L00B1
        LDA     #$76
        JSR     OSWORD
        JMP     LBFAE
        PAD00   14

ELSE

.LBF6A
        BNE     LBFAE

.LBF6C
        LDA     L00A1
        AND     #$10
        BEQ     LBF86

        LDY     #$09
        LDA     (L00B0),Y
        DEY
        CLC
        ADC     (L00B0),Y
        BCS     LBF80

IF PLATFORM = PLAT_BBC OR PLATFORM = PLAT_MASTER
        CMP     #$01            ;can save 2; BEQ
        BCC     LBF86
ELSE
        BEQ     LBF86
ENDIF

.LBF80
        LDA     #$63
        STA     L00A0
        BNE     LBFAE
ENDIF

.LBF86
        LDY     #$07
        LDA     (L00B0),Y
        TAX
        INY
        LDA     (L00B0),Y
IF PLATFORM = PLAT_BBC OR PLATFORM = PLAT_MASTER
        LDY     #$FF
ENDIF
        JSR     LBFA2           ;convert LBA to CS

        STA     L00A4           ;store sector number
        STY     L00A5           ;store track number
        TYA                     ;subtract 80 tracks
        SEC
        SBC     #$50            ;if underflow
        BMI     LBFAD           ;then access side 0 of drive

        STA     L00A5           ;else store new track number
        JMP     LBD22           ;select side 2 of drive

.LBFA2                          ;Convert LBA to CS
IF PLATFORM = PLAT_BBC OR PLATFORM = PLAT_MASTER
        SEC
        SBC     #$10
        INY
        BCS     LBFA2

        DEX
        BPL     LBFA2
ELSE
        LDY     #$FF
.atotl
        SEC
        SBC     #$10
        INY
        BCS     atotl

        DEX
        BPL     atotl
ENDIF

        ADC     #$10            ;returns flags set on A
.LBFAD
        RTS

.LBFAE                          ;Exit OSWORD command
        LDX     L10E7
        TXS
        LDA     L10E0
        AND     #$20
        BEQ     LBFE0

        LDA     L0D5E
IF latch1 AND $01
        ROR     A               ;sample Drive Select 0
        LDA     L00A3           ;get current track number
IF latch0 AND $01
        BCC     LBFCD           ;if drive 0 selected then fall through
ELSE
        BCS     LBFCD
ENDIF
ELSE
        AND     #latchm
        CMP     #$01
        LDA     L00A3
IF latch0 AND latchm
        BCC     LBFCD
ELSE
        BCS     LBFCD
ENDIF
ENDIF

        STA     L10E5           ;store head position of drive 0
        ROL     L10E4           ;b7=0 mark drive 0 calibrated
IF PLATFORM = PLAT_BBC OR PLATFORM = PLAT_MASTER
        CLC                     ;can save 1; LSR
        ROR     L10E4
        BCS     LBFD8
ELSE
        LSR     L10E4
        BPL     LBFD8
ENDIF

.LBFCD
        STA     L10E6           ;store head position of drive 1
        LDA     L10E4           ;b6=0 mark drive 1 calibrated
        AND     #$BF
        STA     L10E4
.LBFD8
        LDA     L00A0           ;get command result
        STA     L10E3
        JSR     LBBE7           ;release NMI area

.LBFE0
        JSR     L8043           ;release Tube if claimed

        LDX     L00B0           ;restore X=LSB control block address
        LDA     L10E3           ;get command result
        BEQ     LBFF1           ;if no error then return A=0??

        ORA     #$40            ;else set A b6 = error from floppy drive
        LDY     #$FF            ;mark both drives uncalibrated
        STY     L10E4
.LBFF1
        LDY     L00B1           ;restore Y=MSB control block address
        AND     #$7F            ;ensure A b7 clear
        RTS

IF PLATFORM = PLAT_BBC OR PLATFORM = PLAT_MASTER
ELSE
IF PLATFORM = PLAT_O2791 OR PLATFORM = PLAT_O2793 OR PLATFORM = PLAT_U2793
;Opus 2791/2793 boards do not have a reset latch and execute command $03
;(Restore, 30 ms stepping, unload head) on Break.  Send Force Interrupt
;to cancel the command and let the next Restore or Seek load the head.
;A write command should not be in progress but just in case, wait to
;ensure Write Gate is low before changing the latches.

.reslat
        LDA     #$D0 EOR sense
        STA     fdccmd
        JSR     delay
        LDA     L0D5E
        STA     latch           ;returns latch value in A
        RTS
ENDIF

.stacmd
IF sense
        EOR     #sense
ENDIF
        PHA                     ;in case a command just occurred
        JSR     delay           ;wait 64 us for status register to be valid
        LDA     L00A2
        AND     #$40            ;place token for starting next sector
        STA     L00A7
        PLA
IF sense AND $80
        BMI     sendit          ;if a Type I command, start now
ELSE
        BPL     sendit          ;if a Type I command, start now
ENDIF
.dwait
        BIT     fdcsta          ;test b7 of status register
        NOP                     ;allow indeterminate level to settle
IF (stsens EOR sense) AND $80
        BPL     dwait           ;loop until Ready
ELSE
        BMI     dwait           ;loop until Ready
ENDIF
.sendit
        STA     fdccmd          ;send command immediately when ready
        RTS

.delay                          ;Wait 64 microseconds
        LDA     #$1A            ;carry flag doesn't matter
.delayl
        SBC     #$01
        BNE     delayl
        RTS
ENDIF

IF (PLATFORM = PLAT_BBC OR PLATFORM = PLAT_MASTER) AND PRESERVE_PADDING
        EQUS    "and Hugo."
    IF PATCH_IDE_JGH
        EQUB    $23
    ELSE
        EQUB    $0D
    ENDIF
ENDIF
