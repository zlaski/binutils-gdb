#name: x86-64 property 12
#source: property-12.s
#as: -mx86-used-note=yes --generate-missing-build-notes=no
#readelf: -n

Displaying notes found in: .note.gnu.property
[ 	]+Owner[ 	]+Data size[ 	]+Description
  GNU                  0x[0-9a-f]+	NT_GNU_PROPERTY_TYPE_0
      Properties: x86 ISA used: x86-64-v4
	x86 feature used: x86, XMM, MASK
