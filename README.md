# Acorn ADFS 1.0x / 1.3x - Release 006

## Summary

* The 1.0x builds are for the Electron
* The 1.3x builds are for the Model B
* The 1.x0 builds include the SCSI and Floppy Drivers
* The 1.x3 builds include th IDE and Floppy Drivers

## Details

The following top level builds exist:

__src/top_ADFS130.asm__

* The original Acorn ADFS for the Model B
* preserves all padding and dead code
* contains HELP message: Advanced DFS 1.30
* md5sum = 831ee90ac5d49ba5507252faf0c12536 (will never change)
* 0 bytes free

__src/top_ADFS133.asm__

* My preferred Acorn ADFS build with IDE drivers for the Model B
* includes most of JGH's v1.23 IDE Patch
* excludes the PRESERVE CONTEXT patch
* excludes the TUBE DELAY patch
* doesn't preserve padding, so code is squished up and dead code removed
* contains HELP message: Acorn ADFS 1.33.005 (with my build number)
* md5sum = b4689ca3ce0e4f498b5755a0acabb415 (will change)
* currently 151 bytes free

__src/top_DC133.asm__

* The IDE version of Acorn ADFS shipped in 2008 with Data Centre
* includes JGH's v1.18 IDE Patch
* preserves all padding and dead code
* contains HELP message: Advanced DFS 1.30
* md5sum = c7714bd93602fdc11d2cdaab4af03b07 (will never change)
* 0 bytes free

__src/top_ELK100.asm__

* Non-original ADFS 1.00 for the Acorn Electron
* identical to ADFS 1.30, but with Electrion I/O addresses
* preserves all padding and dead code
* contains HELP message: Advanced DFS 1.00
* md5sum = 883ab9513765f25d16277fce4a4581bc (might change)
* 0 bytes free

__src/top_ELK103.asm__

* My preferred Acorn ADFS build with IDE drivers for the Electron
* includes most of JGH's v1.23 IDE Patch
* excludes the PRESERVE CONTEXT patch
* excludes the TUBE DELAY patch
* doesn't preserve padding, so code is squished up and dead code removed
* contains HELP message: Electron ADFS 1.03.005 (with my build number)
* md5sum = 2c376ce62391118f23135b0925b39340 (will change)
* currently 7 bytes free

__src/top_ELK130E.asm__

* Mincebert's Acorn ADFS 1.30E build for the Electron
* based on the above ELK100 build with the following changes:
* the version string is Acorn ADFS 1.30E
* patches \*COMPACT to hide the cursor when run and re-enable it afterwards to avoid disk corruption
* md5sum = e42ca60fd0949a23800e8fa66bf441a6 (will change)
* currently 7 bytes free

__src/top_JGH133.asm__

* JGH's Acorn ADFS build with IDE drivers for the Model B
* contains his complete v1.23 IDE patch
* identical to the version here: http://mdfs.net/Info/Comp/BBC/IDE/ADFS/ADFS133
* preserves all padding and dead code
* contains HELP message: Acorn ADFS 1.33r23
* md5sum = aab586a76794b9d5a32f3e2aa5bc8121 (will change)
* 0 bytes free

__src/top_MAST130.asm__

* Acorn ADFS 1.30 adapted for the Master register addresses
* preserves all padding and dead code
* contains HELP message: Advanced DFS 1.30
* md5sum = a9014b75fc0e1efbbe89acb20c4a75b8
* 0 bytes free

## Additional controllers

This distribution supports the following third-party floppy drive
controllers, all on the Model B:

| Filename | Controller         | Tested on    | Included in adfs.ssd |
|----------|--------------------|--------------|----------------------|
| O2791A   | Opus 2791          | hardware     | no                   |
| O2793A   | Opus 2793          | MAME         | no                   |
| U2793A   | UDM/Microware 2793 | MAME         | no                   |
| O1770A   | Opus 1770          | b2, BeebEm   | yes                  |
| CHALLA   | Opus Challenger 3  | hardware, b2 | yes                  |
| W1770A   | Watford 1770       | BeebEm       | yes                  |
| S1770A   | Solidisk 1770      | MAME         | yes                  |

_Sincere thanks to the authors of the b2, BeebEm and MAME emulators._

All ROMs are titled Acorn ADFS 1.39.  
Use ADFS 1.30 with later issues of the Watford and Solidisk controllers,
which are compatible with the standard Acorn interface.  

## Full build log
```
Blank build/adfs.ssd created

Building ADFS130...
    code ends at &C000  ( 0 bytes free )
    mdsum is 831ee90ac5d49ba5507252faf0c12536 -
Building ADFS133...
    code ends at &BF69  ( 151 bytes free )
    mdsum is b4689ca3ce0e4f498b5755a0acabb415 -
Building CHALLA...
    code ends at &BF46  ( 186 bytes free )
    mdsum is 21debe756ffcf8f50dea7a641ad91c81 -
Building DC133...
    code ends at &C000  ( 0 bytes free )
    mdsum is c7714bd93602fdc11d2cdaab4af03b07 -
Building ELK100...
    code ends at &C000  ( 0 bytes free )
    mdsum is 883ab9513765f25d16277fce4a4581bc -
Building ELK103...
    code ends at &BFF9  ( 7 bytes free )
    mdsum is 2c376ce62391118f23135b0925b39340 -
Building ELK130E...
    code ends at &BFF9  ( 7 bytes free )
    mdsum is e42ca60fd0949a23800e8fa66bf441a6 -
Building JGH133...
    code ends at &C000  ( 0 bytes free )
    mdsum is aab586a76794b9d5a32f3e2aa5bc8121 -
Building MAST130...
    code ends at &C000  ( 0 bytes free )
    mdsum is a9014b75fc0e1efbbe89acb20c4a75b8 -
Building O1770A...
    code ends at &BF41  ( 191 bytes free )
    mdsum is a7b38606d40f0e629c862bcb7f927acb -
Building S1770A...
    code ends at &BF41  ( 191 bytes free )
    mdsum is 76c5cf5d05c209042e4eb8dae672b85b -
Building W1770A...
    code ends at &BF46  ( 186 bytes free )
    mdsum is 6f7f691b17592bfc2ff2445904398302 -

Disk title:  (1)  Disk size: &320 - 200K
Boot Option: 0 (None)   File count: 12

Filename:  Lck Lo.add Ex.add Length Sct
$.W1770A       008000 008000 004000 2C2
$.S1770A       008000 008000 004000 282
$.O1770A       008000 008000 004000 242
$.MAST130      008000 008000 004000 202
$.JGH133       008000 008000 004000 1C2
$.ELK130E      008000 008000 004000 182
$.ELK103       008000 008000 004000 142
$.ELK100       008000 008000 004000 102
$.DC133        008000 008000 004000 0C2
$.CHALLA       008000 008000 004000 082
$.ADFS133      008000 008000 004000 042
$.ADFS130      008000 008000 004000 002
```
