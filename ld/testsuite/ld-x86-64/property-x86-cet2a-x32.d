#source: property-x86-empty.s
#source: property-x86-ibt.s
#source: property-x86-shstk.s
#source: property-x86-3.s
#as: --x32 -mx86-used-note=yes
#ld: -r -m elf32_x86_64 -z cet-report=warning
#warning: .*: warning: missing IBT and SHSTK properties.*: warning: missing SHSTK property.*: warning: missing IBT property
#readelf: -n

Displaying notes found in: .note.gnu.property
[ 	]+Owner[ 	]+Data size[ 	]+Description
  GNU                  0x00000024	NT_GNU_PROPERTY_TYPE_0
      Properties: x86 ISA needed: x86-64-v2, x86-64-v3, <unknown: 10>, <unknown: 20>
	x86 feature used: x86
	x86 ISA used: x86-64-v3, <unknown: 8>, <unknown: 20>, <unknown: 80>
