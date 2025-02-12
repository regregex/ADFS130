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
* md5sum = 5a2d9bdd3f9e22171d7fe430bc34137a (will change)
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
* md5sum = 4570f38426640f8bb6434c52775c8b23 (will change)
* currently 7 bytes free

__src/top_ELK130E.asm__

* Mincebert's Acorn ADFS 1.30E build for the Electron
* based on the above ELK100 build with the following changes:
* the version string is Acorn ADFS 1.30E
* patches \*COMPACT to hide the cursor when run and re-enable it afterwards to avoid disk corruption
* md5sum = 2441643d5121f8441298acf444bfe69f (will change)
* currently 7 bytes free

__src/top_JGH133.asm__

* JGH's Acorn ADFS build with IDE drivers for the Model B
* contains his complete v1.23 IDE patch
* identical to the version here: http://mdfs.net/Info/Comp/BBC/IDE/ADFS/ADFS133
* preserves all padding and dead code
* contains HELP message: Acorn ADFS 1.33r23
* md5sum = 2be42f51899aded44607c5167d72e34d (will change)
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

| Filename | Controller        | Tested on    | Included in adfs.ssd |
|----------|-------------------|--------------|----------------------|
| O2791A   | Opus 2791         | hardware     | no                   |
| O2793A   | Opus 2793         | &ndash;      | no                   |
| O1770A   | Opus 1770         | b2, BeebEm   | yes                  |
| CHALLA   | Opus Challenger 3 | hardware, b2 | yes                  |
| W1770A   | Watford 1770      | BeebEm       | yes                  |
| S1770A   | Solidisk 1770     | &ndash;      | yes                  |

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
    mdsum is 5a2d9bdd3f9e22171d7fe430bc34137a -
Building CHALLA...
    code ends at &BF4C  ( 180 bytes free )
    mdsum is aa9a01cdc0d4b85c810d435e3d8bb99a -
Building DC133...
    code ends at &C000  ( 0 bytes free )
    mdsum is c7714bd93602fdc11d2cdaab4af03b07 -
Building ELK100...
    code ends at &C000  ( 0 bytes free )
    mdsum is 883ab9513765f25d16277fce4a4581bc -
Building ELK103...
    code ends at &BFF9  ( 7 bytes free )
    mdsum is 4570f38426640f8bb6434c52775c8b23 -
Building ELK130E...
    code ends at &BFF9  ( 7 bytes free )
    mdsum is 2441643d5121f8441298acf444bfe69f -
Building JGH133...
    code ends at &C000  ( 0 bytes free )
    mdsum is 2be42f51899aded44607c5167d72e34d -
Building MAST130...
    code ends at &C000  ( 0 bytes free )
    mdsum is a9014b75fc0e1efbbe89acb20c4a75b8 -
Building O1770A...
    code ends at &BF47  ( 185 bytes free )
    mdsum is 31b35815c1cbf33eb9eca37ad3aa010e -
Building S1770A...
    code ends at &BF47  ( 185 bytes free )
    mdsum is d88cbb73d5ff7571a16c6fe4c4f18f9c -
Building W1770A...
    code ends at &BF4C  ( 180 bytes free )
    mdsum is fc5cfea43a68b00d8e14531539e5226c -

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
