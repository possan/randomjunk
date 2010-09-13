
//  Microsoft (R) .NET Framework IL Disassembler.  Version 2.0.50727.42
//  Copyright (c) Microsoft Corporation.  All rights reserved.


// warning : THIS IS A PARTIAL DISASSEMBLY, NOT SUITABLE FOR RE-ASSEMBLING


// ----- DOS Header:
// Magic:                      0x5a4d
// Bytes on last page:         0x0090
// Pages in file:              0x0003
// Relocations:                0x0000
// Size of header (paragraphs):0x0004
// Min extra paragraphs:       0x0000
// Max extra paragraphs:       0xffff
// Initial (relative) SS:      0x0000
// Initial SP:                 0x00b8
// Checksum:                   0x0000
// Initial IP:                 0x0000
// Initial (relative) CS:      0x0000
// File addr. of reloc table:  0x0040
// Overlay number:             0x0000
// OEM identifier:             0x0000
// OEM info:                   0x0000
// File addr. of COFF header:  0x0080
// ----- COFF/PE Headers:
// Signature:                  0x00004550
// ----- COFF Header:
// Machine:                    0x014c
// Number of sections:         0x0003
// Time-date stamp:            0x474f0ca3
// Ptr to symbol table:        0x00000000
// Number of symbols:          0x00000000
// Size of optional header:    0x00e0
// Characteristics:            0x010e
// ----- PE Optional Header (32 bit):
// Magic:                          0x010b
// Major linker version:           0x08
// Minor linker version:           0x00
// Size of code:                   0x00002000
// Size of init.data:              0x00000600
// Size of uninit.data:            0x00000000
// Addr. of entry point:           0x00003f9e
// Base of code:                   0x00002000
// Base of data:                   0x00004000
// Image base:                     0x00400000
// Section alignment:              0x00002000
// File alignment:                 0x00000200
// Major OS version:               0x0004
// Minor OS version:               0x0000
// Major image version:            0x0000
// Minor image version:            0x0000
// Major subsystem version:        0x0004
// Minor subsystem version:        0x0000
// Size of image:                  0x00008000
// Size of headers:                0x00000200
// Checksum:                       0x00000000
// Subsystem:                      0x00000002
// DLL characteristics:            0x00000540
// Size of stack reserve:          0x00100000
// Size of stack commit:           0x00001000
// Size of heap reserve:           0x00100000
// Size of heap commit:            0x00001000
// Loader flags:                   0x00000000
// Directories:                    0x00000010
// 0x00000000 [0x00000000] address [size] of Export Directory:          
// 0x00003f48 [0x00000053] address [size] of Import Directory:          
// 0x00004000 [0x000002b0] address [size] of Resource Directory:        
// 0x00000000 [0x00000000] address [size] of Exception Directory:       
// 0x00000000 [0x00000000] address [size] of Security Directory:        
// 0x00006000 [0x0000000c] address [size] of Base Relocation Table:     
// 0x00000000 [0x00000000] address [size] of Debug Directory:           
// 0x00000000 [0x00000000] address [size] of Architecture Specific:     
// 0x00000000 [0x00000000] address [size] of Global Pointer:            
// 0x00000000 [0x00000000] address [size] of TLS Directory:             
// 0x00000000 [0x00000000] address [size] of Load Config Directory:     
// 0x00000000 [0x00000000] address [size] of Bound Import Directory:    
// 0x00002000 [0x00000008] address [size] of Import Address Table:      
// 0x00000000 [0x00000000] address [size] of Delay Load IAT:            
// 0x00002008 [0x00000048] address [size] of CLR Header:                


// Image sections:
//              .text
//              0x00001fa4 Virtual Size
//              0x00002000 Virtual Address
//              0x00002000 Size of Raw Data
//              0x00000200 Pointer to Raw Data
//              0x00000000 Pointer to Relocations
//              0x00000000 Pointer to Linenumbers
//                  0x0000 Number of Relocations
//                  0x0000 Number of Linenumbers
//              0x60000020 Characteristics
//                         CNT_CODE
//                         MEM_EXECUTE
//                         MEM_READ

//              .rsrc
//              0x000002b0 Virtual Size
//              0x00004000 Virtual Address
//              0x00000400 Size of Raw Data
//              0x00002200 Pointer to Raw Data
//              0x00000000 Pointer to Relocations
//              0x00000000 Pointer to Linenumbers
//                  0x0000 Number of Relocations
//                  0x0000 Number of Linenumbers
//              0x40000040 Characteristics
//                         CNT_INITIALIZED_DATA
//                         MEM_READ

//              .reloc
//              0x0000000c Virtual Size
//              0x00006000 Virtual Address
//              0x00000200 Size of Raw Data
//              0x00002600 Pointer to Raw Data
//              0x00000000 Pointer to Relocations
//              0x00000000 Pointer to Linenumbers
//                  0x0000 Number of Relocations
//                  0x0000 Number of Linenumbers
//              0x42000040 Characteristics
//                         CNT_INITIALIZED_DATA
//                         MEM_DISCARDABLE
//                         MEM_READ

// Base Relocation Table
//              0x00003000 Page RVA
//              0x0000000c Block Size
//              0x00000002 Number of Entries
//              Entry 1: Type 0x3 Offset 0x00000fa0
//              Entry 2: Type 0x0 Offset 0x00000000

// Import Address Table
//     DLL : mscoree.dll
//              0x00002000 Import Address Table
//              0x00003f8e Import Name Table
//              0          Time Date Stamp
//              0          Index of First Forwarder Reference
//
//              0x0000  _CorExeMain

// Delay Load Import Address Table
// No data.

// Entry point code:
//FF 25 00 20 40 00 


// ----- CLR Header:
// Header size:                        0x00000048
// Major runtime version:              0x0002
// Minor runtime version:              0x0005
// 0x00002c38 [0x00001310] address [size] of Metadata Directory:        
// Flags:                              0x00000001
// Entry point token:                  0x06000001
// 0x00000000 [0x00000000] address [size] of Resources Directory:       
// 0x00000000 [0x00000000] address [size] of Strong Name Signature:     
// 0x00000000 [0x00000000] address [size] of CodeManager Table:         
// 0x00000000 [0x00000000] address [size] of VTableFixups Directory:    
// 0x00000000 [0x00000000] address [size] of Export Address Table:      
// 0x00000000 [0x00000000] address [size] of Precompile Header:         

// Metadata Header
//    Storage Signature:
//              0x424a5342 Signature
//                  0x0001 Major Version
//                  0x0001 Minor Version
//              0x00000000 Extra Data Offset
//              0x0000000c Version String Length
//              'v2.0.50727' Version String
//    Storage Header:
//                    0x00 Flags
//                  0x0005 Number of Streams
//    Stream 1:
//              0x0000006c Offset
//              0x00000760 Size
//              '#~' Name
//    Stream 2:
//              0x000007cc Offset
//              0x00000894 Size
//              '#Strings' Name
//    Stream 3:
//              0x00001060 Offset
//              0x0000000c Size
//              '#US' Name
//    Stream 4:
//              0x0000106c Offset
//              0x00000010 Size
//              '#GUID' Name
//    Stream 5:
//              0x0000107c Offset
//              0x00000294 Size
//              '#Blob' Name

//    Metadata Stream Header:
//              0x00000000 Reserved
//                    0x02 Major
//                    0x00 Minor
//                    0x00 Heaps
//                    0x01 Rid
//      0x0000020928029d57 MaskValid
//      0x000016003301fa00 Sorted

// Code Manager Table:
//  default


// Export Address Table Jumps:
// No data.

// File size            : 10240
// PE header size       : 512 (496 used)    ( 5.00%)
// PE additional info   : 863               ( 8.43%)
// Num.of PE sections   : 3
// CLR header size     : 72                 ( 0.70%)
// CLR meta-data size  : 4880               (47.66%)
// CLR additional info : 0                  ( 0.00%)
// CLR method headers  : 129                ( 1.26%)
// Managed code         : 2614              (25.53%)
// Data                 : 1536              (15.00%)
// Unaccounted          : -366              (-3.57%)

// Num.of PE sections   : 3
//   .text    - 8192
//   .rsrc    - 1024
//   .reloc   - 512

// CLR meta-data size  : 4880
//   Module        -    1 (10 bytes)
//   TypeDef       -    6 (84 bytes)      0 interfaces, 1 explicit layout
//   TypeRef       -   60 (360 bytes)
//   MethodDef     -   19 (266 bytes)     0 abstract, 0 native, 19 bodies
//   FieldDef      -   13 (78 bytes)      0 constant
//   MemberRef     -   88 (528 bytes)
//   ParamDef      -   29 (174 bytes)
//   Constant      -    1 (6 bytes)
//   CustomAttribute-    3 (18 bytes)
//   ClassLayout   -    2 (16 bytes)
//   StandAloneSig -    7 (14 bytes)
//   TypeSpec      -    1 (2 bytes)
//   Assembly      -    1 (22 bytes)
//   AssemblyRef   -    9 (180 bytes)
//   NestedClass   -    2 (8 bytes)
//   FieldRVA      -    5 (30 bytes)
//   Strings       -  2196 bytes
//   Blobs         -   660 bytes
//   UserStrings   -    12 bytes
//   Guids         -    16 bytes
//   Uncategorized -   200 bytes

// CLR method headers : 129
//   Num.of method bodies  - 19
//   Num.of fat headers    - 10
//   Num.of tiny headers   - 9

// Managed code : 2614
//   Ave method size - 137
// Classes defined in this module:
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
// Class Program                        (auto) (ansi) 
// Class Demo                           (auto) (ansi) 
// Class <PrivateImplementationDetails>{8FC85AE7-6EFF-4E93-911C-3A61D4E19073} (auto) (ansi) 
// Class __StaticArrayInitTypeSize=64   (explicit) (ansi) (sealed) (nested private) 
// Class __StaticArrayInitTypeSize=32   (explicit) (ansi) (sealed) (nested private) 
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~


// Metadata version: v2.0.50727
.assembly extern /*23000001*/ mscorlib
{
  .publickeytoken = (B7 7A 5C 56 19 34 E0 89 )                         // .z\V.4..
  .ver 2:0:0:0
}
.assembly extern /*23000002*/ System.Windows.Forms
{
  .publickeytoken = (B7 7A 5C 56 19 34 E0 89 )                         // .z\V.4..
  .ver 2:0:0:0
}
.assembly extern /*23000003*/ Microsoft.DirectX.DirectSound
{
  .publickeytoken = (31 BF 38 56 AD 36 4E 35 )                         // 1.8V.6N5
  .ver 1:0:2902:0
}
.assembly extern /*23000004*/ Microsoft.DirectX.Direct3D
{
  .publickeytoken = (31 BF 38 56 AD 36 4E 35 )                         // 1.8V.6N5
  .ver 1:0:2902:0
}
.assembly extern /*23000005*/ System.Windows.Forms as System.Windows.Forms_4
{
  .publickeytoken = (B7 7A 5C 56 19 34 E0 89 )                         // .z\V.4..
  .hash = (F1 22 DE 9B 59 BA 3D 79 BD 7F FE AC F9 5B 86 3A   // ."..Y.=y.....[.:
           A0 54 E2 71 )                                     // .T.q
  .ver 1:0:5000:0
}
.assembly extern /*23000006*/ mscorlib as mscorlib_5
{
  .publickeytoken = (B7 7A 5C 56 19 34 E0 89 )                         // .z\V.4..
  .hash = (AB 74 A6 A8 1D E6 70 59 FD BE DE D7 9F 2F E3 E4   // .t....pY...../..
           7B 27 2C 18 )                                     // {',.
  .ver 1:0:5000:0
}
.assembly extern /*23000007*/ Microsoft.DirectX
{
  .publickeytoken = (31 BF 38 56 AD 36 4E 35 )                         // 1.8V.6N5
  .ver 1:0:2902:0
}
.assembly extern /*23000008*/ System.Drawing
{
  .publickeytoken = (B0 3F 5F 7F 11 D5 0A 3A )                         // .?_....:
  .ver 2:0:0:0
}
.assembly extern /*23000009*/ System.Drawing as System.Drawing_8
{
  .publickeytoken = (B0 3F 5F 7F 11 D5 0A 3A )                         // .?_....:
  .hash = (01 F2 8E 4D 2E 2C 74 F0 83 0A 38 19 0C D6 04 59   // ...M.,t...8....Y
           7A 24 81 23 )                                     // z$.#
  .ver 1:0:5000:0
}
.assembly /*20000001*/ microsynth1
{
  .hash algorithm 0x00008004
  .ver 0:0:0:0
}
.module microsynth1.exe
// MVID: {8FC85AE7-6EFF-4E93-911C-3A61D4E19073}
.imagebase 0x00400000
.file alignment 0x00000200
.stackreserve 0x00100000
.subsystem 0x0002       // WINDOWS_GUI
.corflags 0x00000001    //  ILONLY
// Image base: 0x02EC0000


// =============== CLASS MEMBERS DECLARATION ===================

.class /*02000002*/ private auto ansi beforefieldinit a.Program
       extends [mscorlib/*23000001*/]System.Object/*01000001*/
{
  .field /*04000001*/ public static class a.Demo/*02000003*/ F1
  .method /*06000001*/ private hidebysig static 
          void  Main(string[] args) cil managed
  // SIG: 00 01 01 1D 0E
  {
    .entrypoint
    // Method begins at RVA 0x2050
    // Code size       50 (0x32)
    .maxstack  8
    IL_0000:  /* 73   | (06)000003       */ newobj     instance void a.Demo/*02000003*/::.ctor() /* 06000003 */
    IL_0005:  /* 80   | (04)000001       */ stsfld     class a.Demo/*02000003*/ a.Program/*02000002*/::F1 /* 04000001 */
    IL_000a:  /* 7E   | (04)000001       */ ldsfld     class a.Demo/*02000003*/ a.Program/*02000002*/::F1 /* 04000001 */
    IL_000f:  /* 6F   | (0A)000003       */ callvirt   instance void [System.Windows.Forms/*23000002*/]System.Windows.Forms.Control/*0100000A*/::Show() /* 0A000003 */
    IL_0014:  /* 2B   | 0F               */ br.s       IL_0025

    IL_0016:  /* 7E   | (04)000001       */ ldsfld     class a.Demo/*02000003*/ a.Program/*02000002*/::F1 /* 04000001 */
    IL_001b:  /* 6F   | (06)000013       */ callvirt   instance void a.Demo/*02000003*/::R_FR() /* 06000013 */
    IL_0020:  /* 28   | (0A)000004       */ call       void [System.Windows.Forms/*23000002*/]System.Windows.Forms.Application/*0100000B*/::DoEvents() /* 0A000004 */
    IL_0025:  /* 7E   | (04)000001       */ ldsfld     class a.Demo/*02000003*/ a.Program/*02000002*/::F1 /* 04000001 */
    IL_002a:  /* 6F   | (0A)000005       */ callvirt   instance bool [System.Windows.Forms/*23000002*/]System.Windows.Forms.Control/*0100000A*/::get_Created() /* 0A000005 */
    IL_002f:  /* 2D   | E5               */ brtrue.s   IL_0016

    IL_0031:  /* 2A   |                  */ ret
  } // end of method Program::Main

  .method /*06000002*/ public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  // SIG: 20 00 01
  {
    // Method begins at RVA 0x2083
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  /* 02   |                  */ ldarg.0
    IL_0001:  /* 28   | (0A)000006       */ call       instance void [mscorlib/*23000001*/]System.Object/*01000001*/::.ctor() /* 0A000006 */
    IL_0006:  /* 2A   |                  */ ret
  } // end of method Program::.ctor

} // end of class a.Program

.class /*02000003*/ private auto ansi beforefieldinit a.Demo
       extends [System.Windows.Forms/*23000002*/]System.Windows.Forms.Form/*01000002*/
{
  .field /*04000002*/ public static literal int32 BPM = int32(0x00000082)
  .field /*04000003*/ public float32[] S_F
  .field /*04000004*/ public uint8[] S_B
  .field /*04000005*/ private class [Microsoft.DirectX.DirectSound/*23000003*/]Microsoft.DirectX.DirectSound.Device/*01000004*/ sounddevice
  .field /*04000006*/ private class [Microsoft.DirectX.DirectSound/*23000003*/]Microsoft.DirectX.DirectSound.SecondaryBuffer/*01000005*/ buffer
  .field /*04000007*/ private class [Microsoft.DirectX.Direct3D/*23000004*/]Microsoft.DirectX.Direct3D.Device/*01000006*/ dev2
  .field /*04000008*/ private class [Microsoft.DirectX.Direct3D/*23000004*/]Microsoft.DirectX.Direct3D.VertexBuffer/*01000007*/ vb
  .method /*06000003*/ public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  // SIG: 20 00 01
  {
    // Method begins at RVA 0x208b
    // Code size       13 (0xd)
    .maxstack  8
    IL_0000:  /* 02   |                  */ ldarg.0
    IL_0001:  /* 28   | (0A)000007       */ call       instance void [System.Windows.Forms/*23000002*/]System.Windows.Forms.Form/*01000002*/::.ctor() /* 0A000007 */
    IL_0006:  /* 02   |                  */ ldarg.0
    IL_0007:  /* 28   | (06)000012       */ call       instance void a.Demo/*02000003*/::R_IN() /* 06000012 */
    IL_000c:  /* 2A   |                  */ ret
  } // end of method Demo::.ctor

  .method /*06000004*/ family hidebysig virtual 
          instance void  OnCreateControl() cil managed
  // SIG: 20 00 01
  {
    // Method begins at RVA 0x2099
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  /* 02   |                  */ ldarg.0
    IL_0001:  /* 28   | (0A)000008       */ call       instance void [System.Windows.Forms/*23000002*/]System.Windows.Forms.Form/*01000002*/::OnCreateControl() /* 0A000008 */
    IL_0006:  /* 2A   |                  */ ret
  } // end of method Demo::OnCreateControl

  .method /*06000005*/ family hidebysig virtual 
          instance void  OnShown(class [mscorlib/*23000001*/]System.EventArgs/*01000003*/ e) cil managed
  // SIG: 20 01 01 12 0D
  {
    // Method begins at RVA 0x20a1
    // Code size       14 (0xe)
    .maxstack  8
    IL_0000:  /* 02   |                  */ ldarg.0
    IL_0001:  /* 03   |                  */ ldarg.1
    IL_0002:  /* 28   | (0A)000009       */ call       instance void [System.Windows.Forms/*23000002*/]System.Windows.Forms.Form/*01000002*/::OnShown(class [mscorlib/*23000001*/]System.EventArgs/*01000003*/) /* 0A000009 */
    IL_0007:  /* 02   |                  */ ldarg.0
    IL_0008:  /* 28   | (06)000010       */ call       instance void a.Demo/*02000003*/::Run() /* 06000010 */
    IL_000d:  /* 2A   |                  */ ret
  } // end of method Demo::OnShown

  .method /*06000006*/ public hidebysig instance void 
          FP(int32 startsample,
             int32 numsamples,
             float32 startpitch,
             float32 pitchmult,
             float32 startvol,
             float32 volmult) cil managed
  // SIG: 20 06 01 08 08 0C 0C 0C 0C
  {
    // Method begins at RVA 0x20b0
    // Code size       106 (0x6a)
    .maxstack  3
    .locals /*11000001*/ init (float32 V_0,
             float32 V_1,
             float32 V_2,
             int32 V_3,
             float32 V_4)
    IL_0000:  /* 22   | 00000000         */ ldc.r4     0.0
    IL_0005:  /* 0A   |                  */ stloc.0
    IL_0006:  /* 05   |                  */ ldarg.3
    IL_0007:  /* 0B   |                  */ stloc.1
    IL_0008:  /* 0E   | 05               */ ldarg.s    startvol
    IL_000a:  /* 0C   |                  */ stloc.2
    IL_000b:  /* 16   |                  */ ldc.i4.0
    IL_000c:  /* 0D   |                  */ stloc.3
    IL_000d:  /* 2B   | 56               */ br.s       IL_0065

    IL_000f:  /* 08   |                  */ ldloc.2
    IL_0010:  /* 22   | 00000000         */ ldc.r4     0.0
    IL_0015:  /* 36   | 4A               */ ble.un.s   IL_0061

    IL_0017:  /* 08   |                  */ ldloc.2
    IL_0018:  /* 06   |                  */ ldloc.0
    IL_0019:  /* 6C   |                  */ conv.r8
    IL_001a:  /* 23   | 894160E5D0220940 */ ldc.r8     3.1419999999999999
    IL_0023:  /* 5A   |                  */ mul
    IL_0024:  /* 23   | 000000008088E540 */ ldc.r8     44100.
    IL_002d:  /* 5B   |                  */ div
    IL_002e:  /* 28   | (0A)00000A       */ call       float64 [mscorlib/*23000001*/]System.Math/*0100000C*/::Sin(float64) /* 0A00000A */
    IL_0033:  /* 6B   |                  */ conv.r4
    IL_0034:  /* 5A   |                  */ mul
    IL_0035:  /* 13   | 04               */ stloc.s    V_4
    IL_0037:  /* 02   |                  */ ldarg.0
    IL_0038:  /* 7B   | (04)000003       */ ldfld      float32[] a.Demo/*02000003*/::S_F /* 04000003 */
    IL_003d:  /* 03   |                  */ ldarg.1
    IL_003e:  /* 09   |                  */ ldloc.3
    IL_003f:  /* 58   |                  */ add
    IL_0040:  /* 8F   | (01)00000D       */ ldelema    [mscorlib/*23000001*/]System.Single/*0100000D*/
    IL_0045:  /* 25   |                  */ dup
    IL_0046:  /* 71   | (01)00000D       */ ldobj      [mscorlib/*23000001*/]System.Single/*0100000D*/
    IL_004b:  /* 11   | 04               */ ldloc.s    V_4
    IL_004d:  /* 58   |                  */ add
    IL_004e:  /* 81   | (01)00000D       */ stobj      [mscorlib/*23000001*/]System.Single/*0100000D*/
    IL_0053:  /* 06   |                  */ ldloc.0
    IL_0054:  /* 07   |                  */ ldloc.1
    IL_0055:  /* 58   |                  */ add
    IL_0056:  /* 0A   |                  */ stloc.0
    IL_0057:  /* 07   |                  */ ldloc.1
    IL_0058:  /* 0E   | 04               */ ldarg.s    pitchmult
    IL_005a:  /* 5A   |                  */ mul
    IL_005b:  /* 0B   |                  */ stloc.1
    IL_005c:  /* 08   |                  */ ldloc.2
    IL_005d:  /* 0E   | 06               */ ldarg.s    volmult
    IL_005f:  /* 5A   |                  */ mul
    IL_0060:  /* 0C   |                  */ stloc.2
    IL_0061:  /* 09   |                  */ ldloc.3
    IL_0062:  /* 17   |                  */ ldc.i4.1
    IL_0063:  /* 58   |                  */ add
    IL_0064:  /* 0D   |                  */ stloc.3
    IL_0065:  /* 09   |                  */ ldloc.3
    IL_0066:  /* 04   |                  */ ldarg.2
    IL_0067:  /* 32   | A6               */ blt.s      IL_000f

    IL_0069:  /* 2A   |                  */ ret
  } // end of method Demo::FP

  .method /*06000007*/ public hidebysig instance void 
          FN(int32 startsample,
             int32 numsamples,
             int32 dirt,
             float32 startvol,
             float32 volmult) cil managed
  // SIG: 20 05 01 08 08 08 0C 0C
  {
    // Method begins at RVA 0x2128
    // Code size       110 (0x6e)
    .maxstack  3
    .locals /*11000002*/ init (float32 V_0,
             float32 V_1,
             class [mscorlib/*23000001*/]System.Random/*0100000E*/ V_2,
             int32 V_3,
             int32 V_4,
             float32 V_5)
    IL_0000:  /* 0E   | 04               */ ldarg.s    startvol
    IL_0002:  /* 0A   |                  */ stloc.0
    IL_0003:  /* 22   | 00000000         */ ldc.r4     0.0
    IL_0008:  /* 0B   |                  */ stloc.1
    IL_0009:  /* 73   | (0A)00000B       */ newobj     instance void [mscorlib/*23000001*/]System.Random/*0100000E*/::.ctor() /* 0A00000B */
    IL_000e:  /* 0C   |                  */ stloc.2
    IL_000f:  /* 16   |                  */ ldc.i4.0
    IL_0010:  /* 0D   |                  */ stloc.3
    IL_0011:  /* 16   |                  */ ldc.i4.0
    IL_0012:  /* 13   | 04               */ stloc.s    V_4
    IL_0014:  /* 2B   | 52               */ br.s       IL_0068

    IL_0016:  /* 06   |                  */ ldloc.0
    IL_0017:  /* 22   | 00000000         */ ldc.r4     0.0
    IL_001c:  /* 36   | 44               */ ble.un.s   IL_0062

    IL_001e:  /* 09   |                  */ ldloc.3
    IL_001f:  /* 2D   | 16               */ brtrue.s   IL_0037

    IL_0021:  /* 08   |                  */ ldloc.2
    IL_0022:  /* 6F   | (0A)00000C       */ callvirt   instance float64 [mscorlib/*23000001*/]System.Random/*0100000E*/::NextDouble() /* 0A00000C */
    IL_0027:  /* 6B   |                  */ conv.r4
    IL_0028:  /* 22   | 00000040         */ ldc.r4     2.
    IL_002d:  /* 5A   |                  */ mul
    IL_002e:  /* 22   | 0000803F         */ ldc.r4     1.
    IL_0033:  /* 59   |                  */ sub
    IL_0034:  /* 0B   |                  */ stloc.1
    IL_0035:  /* 05   |                  */ ldarg.3
    IL_0036:  /* 0D   |                  */ stloc.3
    IL_0037:  /* 09   |                  */ ldloc.3
    IL_0038:  /* 17   |                  */ ldc.i4.1
    IL_0039:  /* 59   |                  */ sub
    IL_003a:  /* 0D   |                  */ stloc.3
    IL_003b:  /* 06   |                  */ ldloc.0
    IL_003c:  /* 07   |                  */ ldloc.1
    IL_003d:  /* 5A   |                  */ mul
    IL_003e:  /* 13   | 05               */ stloc.s    V_5
    IL_0040:  /* 02   |                  */ ldarg.0
    IL_0041:  /* 7B   | (04)000003       */ ldfld      float32[] a.Demo/*02000003*/::S_F /* 04000003 */
    IL_0046:  /* 03   |                  */ ldarg.1
    IL_0047:  /* 11   | 04               */ ldloc.s    V_4
    IL_0049:  /* 58   |                  */ add
    IL_004a:  /* 8F   | (01)00000D       */ ldelema    [mscorlib/*23000001*/]System.Single/*0100000D*/
    IL_004f:  /* 25   |                  */ dup
    IL_0050:  /* 71   | (01)00000D       */ ldobj      [mscorlib/*23000001*/]System.Single/*0100000D*/
    IL_0055:  /* 11   | 05               */ ldloc.s    V_5
    IL_0057:  /* 58   |                  */ add
    IL_0058:  /* 81   | (01)00000D       */ stobj      [mscorlib/*23000001*/]System.Single/*0100000D*/
    IL_005d:  /* 06   |                  */ ldloc.0
    IL_005e:  /* 0E   | 05               */ ldarg.s    volmult
    IL_0060:  /* 5A   |                  */ mul
    IL_0061:  /* 0A   |                  */ stloc.0
    IL_0062:  /* 11   | 04               */ ldloc.s    V_4
    IL_0064:  /* 17   |                  */ ldc.i4.1
    IL_0065:  /* 58   |                  */ add
    IL_0066:  /* 13   | 04               */ stloc.s    V_4
    IL_0068:  /* 11   | 04               */ ldloc.s    V_4
    IL_006a:  /* 04   |                  */ ldarg.2
    IL_006b:  /* 32   | A9               */ blt.s      IL_0016

    IL_006d:  /* 2A   |                  */ ret
  } // end of method Demo::FN

  .method /*06000008*/ public hidebysig instance void 
          FSQ(int32 startsample,
              int32 numsamples,
              float32 startpitch,
              float32 startvol,
              float32 volmult) cil managed
  // SIG: 20 05 01 08 08 0C 0C 0C
  {
    // Method begins at RVA 0x21a4
    // Code size       109 (0x6d)
    .maxstack  3
    .locals /*11000003*/ init (float32 V_0,
             int32 V_1,
             int32 V_2,
             int32 V_3,
             float32 V_4)
    IL_0000:  /* 0E   | 04               */ ldarg.s    startvol
    IL_0002:  /* 0A   |                  */ stloc.0
    IL_0003:  /* 16   |                  */ ldc.i4.0
    IL_0004:  /* 0B   |                  */ stloc.1
    IL_0005:  /* 22   | 00000046         */ ldc.r4     8192.
    IL_000a:  /* 05   |                  */ ldarg.3
    IL_000b:  /* 5A   |                  */ mul
    IL_000c:  /* 22   | 00442C47         */ ldc.r4     44100.
    IL_0011:  /* 5B   |                  */ div
    IL_0012:  /* 69   |                  */ conv.i4
    IL_0013:  /* 0C   |                  */ stloc.2
    IL_0014:  /* 16   |                  */ ldc.i4.0
    IL_0015:  /* 0D   |                  */ stloc.3
    IL_0016:  /* 2B   | 50               */ br.s       IL_0068

    IL_0018:  /* 06   |                  */ ldloc.0
    IL_0019:  /* 22   | 00000000         */ ldc.r4     0.0
    IL_001e:  /* 36   | 44               */ ble.un.s   IL_0064

    IL_0020:  /* 06   |                  */ ldloc.0
    IL_0021:  /* 13   | 04               */ stloc.s    V_4
    IL_0023:  /* 07   |                  */ ldloc.1
    IL_0024:  /* 20   | 00800000         */ ldc.i4     0x8000
    IL_0029:  /* 2F   | 04               */ bge.s      IL_002f

    IL_002b:  /* 06   |                  */ ldloc.0
    IL_002c:  /* 65   |                  */ neg
    IL_002d:  /* 13   | 04               */ stloc.s    V_4
    IL_002f:  /* 02   |                  */ ldarg.0
    IL_0030:  /* 7B   | (04)000003       */ ldfld      float32[] a.Demo/*02000003*/::S_F /* 04000003 */
    IL_0035:  /* 03   |                  */ ldarg.1
    IL_0036:  /* 09   |                  */ ldloc.3
    IL_0037:  /* 58   |                  */ add
    IL_0038:  /* 8F   | (01)00000D       */ ldelema    [mscorlib/*23000001*/]System.Single/*0100000D*/
    IL_003d:  /* 25   |                  */ dup
    IL_003e:  /* 71   | (01)00000D       */ ldobj      [mscorlib/*23000001*/]System.Single/*0100000D*/
    IL_0043:  /* 11   | 04               */ ldloc.s    V_4
    IL_0045:  /* 58   |                  */ add
    IL_0046:  /* 81   | (01)00000D       */ stobj      [mscorlib/*23000001*/]System.Single/*0100000D*/
    IL_004b:  /* 06   |                  */ ldloc.0
    IL_004c:  /* 0E   | 05               */ ldarg.s    volmult
    IL_004e:  /* 5A   |                  */ mul
    IL_004f:  /* 0A   |                  */ stloc.0
    IL_0050:  /* 07   |                  */ ldloc.1
    IL_0051:  /* 08   |                  */ ldloc.2
    IL_0052:  /* 58   |                  */ add
    IL_0053:  /* 0B   |                  */ stloc.1
    IL_0054:  /* 07   |                  */ ldloc.1
    IL_0055:  /* 20   | 00000100         */ ldc.i4     0x10000
    IL_005a:  /* 32   | 08               */ blt.s      IL_0064

    IL_005c:  /* 07   |                  */ ldloc.1
    IL_005d:  /* 20   | 00000100         */ ldc.i4     0x10000
    IL_0062:  /* 59   |                  */ sub
    IL_0063:  /* 0B   |                  */ stloc.1
    IL_0064:  /* 09   |                  */ ldloc.3
    IL_0065:  /* 17   |                  */ ldc.i4.1
    IL_0066:  /* 58   |                  */ add
    IL_0067:  /* 0D   |                  */ stloc.3
    IL_0068:  /* 09   |                  */ ldloc.3
    IL_0069:  /* 04   |                  */ ldarg.2
    IL_006a:  /* 32   | AC               */ blt.s      IL_0018

    IL_006c:  /* 2A   |                  */ ret
  } // end of method Demo::FSQ

  .method /*06000009*/ public hidebysig instance void 
          FSA(int32 startsample,
              int32 numsamples,
              float32 startpitch,
              float32 startvol,
              float32 volmult) cil managed
  // SIG: 20 05 01 08 08 0C 0C 0C
  {
    // Method begins at RVA 0x2220
    // Code size       112 (0x70)
    .maxstack  3
    .locals /*11000003*/ init (float32 V_0,
             int32 V_1,
             int32 V_2,
             int32 V_3,
             float32 V_4)
    IL_0000:  /* 0E   | 04               */ ldarg.s    startvol
    IL_0002:  /* 0A   |                  */ stloc.0
    IL_0003:  /* 16   |                  */ ldc.i4.0
    IL_0004:  /* 0B   |                  */ stloc.1
    IL_0005:  /* 22   | 00008047         */ ldc.r4     65536.
    IL_000a:  /* 05   |                  */ ldarg.3
    IL_000b:  /* 5A   |                  */ mul
    IL_000c:  /* 22   | 00442C47         */ ldc.r4     44100.
    IL_0011:  /* 5B   |                  */ div
    IL_0012:  /* 69   |                  */ conv.i4
    IL_0013:  /* 0C   |                  */ stloc.2
    IL_0014:  /* 16   |                  */ ldc.i4.0
    IL_0015:  /* 0D   |                  */ stloc.3
    IL_0016:  /* 2B   | 53               */ br.s       IL_006b

    IL_0018:  /* 06   |                  */ ldloc.0
    IL_0019:  /* 22   | 00000000         */ ldc.r4     0.0
    IL_001e:  /* 36   | 47               */ ble.un.s   IL_0067

    IL_0020:  /* 07   |                  */ ldloc.1
    IL_0021:  /* 6B   |                  */ conv.r4
    IL_0022:  /* 22   | 00000047         */ ldc.r4     32768.
    IL_0027:  /* 5B   |                  */ div
    IL_0028:  /* 22   | 0000803F         */ ldc.r4     1.
    IL_002d:  /* 59   |                  */ sub
    IL_002e:  /* 06   |                  */ ldloc.0
    IL_002f:  /* 5A   |                  */ mul
    IL_0030:  /* 13   | 04               */ stloc.s    V_4
    IL_0032:  /* 02   |                  */ ldarg.0
    IL_0033:  /* 7B   | (04)000003       */ ldfld      float32[] a.Demo/*02000003*/::S_F /* 04000003 */
    IL_0038:  /* 03   |                  */ ldarg.1
    IL_0039:  /* 09   |                  */ ldloc.3
    IL_003a:  /* 58   |                  */ add
    IL_003b:  /* 8F   | (01)00000D       */ ldelema    [mscorlib/*23000001*/]System.Single/*0100000D*/
    IL_0040:  /* 25   |                  */ dup
    IL_0041:  /* 71   | (01)00000D       */ ldobj      [mscorlib/*23000001*/]System.Single/*0100000D*/
    IL_0046:  /* 11   | 04               */ ldloc.s    V_4
    IL_0048:  /* 58   |                  */ add
    IL_0049:  /* 81   | (01)00000D       */ stobj      [mscorlib/*23000001*/]System.Single/*0100000D*/
    IL_004e:  /* 06   |                  */ ldloc.0
    IL_004f:  /* 0E   | 05               */ ldarg.s    volmult
    IL_0051:  /* 5A   |                  */ mul
    IL_0052:  /* 0A   |                  */ stloc.0
    IL_0053:  /* 07   |                  */ ldloc.1
    IL_0054:  /* 08   |                  */ ldloc.2
    IL_0055:  /* 58   |                  */ add
    IL_0056:  /* 0B   |                  */ stloc.1
    IL_0057:  /* 07   |                  */ ldloc.1
    IL_0058:  /* 20   | 00000100         */ ldc.i4     0x10000
    IL_005d:  /* 32   | 08               */ blt.s      IL_0067

    IL_005f:  /* 07   |                  */ ldloc.1
    IL_0060:  /* 20   | 00000100         */ ldc.i4     0x10000
    IL_0065:  /* 59   |                  */ sub
    IL_0066:  /* 0B   |                  */ stloc.1
    IL_0067:  /* 09   |                  */ ldloc.3
    IL_0068:  /* 17   |                  */ ldc.i4.1
    IL_0069:  /* 58   |                  */ add
    IL_006a:  /* 0D   |                  */ stloc.3
    IL_006b:  /* 09   |                  */ ldloc.3
    IL_006c:  /* 04   |                  */ ldarg.2
    IL_006d:  /* 32   | A9               */ blt.s      IL_0018

    IL_006f:  /* 2A   |                  */ ret
  } // end of method Demo::FSA

  .method /*0600000A*/ public hidebysig instance void 
          S_BD(int32 startsample) cil managed
  // SIG: 20 01 01 08
  {
    // Method begins at RVA 0x229c
    // Code size       97 (0x61)
    .maxstack  7
    IL_0000:  /* 02   |                  */ ldarg.0
    IL_0001:  /* 03   |                  */ ldarg.1
    IL_0002:  /* 20   | B80B0000         */ ldc.i4     0xbb8
    IL_0007:  /* 22   | 00007A44         */ ldc.r4     1000.
    IL_000c:  /* 22   | 77BE7F3F         */ ldc.r4     0.99900001
    IL_0011:  /* 22   | 6666663F         */ ldc.r4     0.89999998
    IL_0016:  /* 22   | 58FF7F3F         */ ldc.r4     0.99998999
    IL_001b:  /* 28   | (06)000006       */ call       instance void a.Demo/*02000003*/::FP(int32,
                                                                                            int32,
                                                                                            float32,
                                                                                            float32,
                                                                                            float32,
                                                                                            float32) /* 06000006 */
    IL_0020:  /* 02   |                  */ ldarg.0
    IL_0021:  /* 03   |                  */ ldarg.1
    IL_0022:  /* 20   | 88130000         */ ldc.i4     0x1388
    IL_0027:  /* 22   | 0000FA44         */ ldc.r4     2000.
    IL_002c:  /* 22   | A4707D3F         */ ldc.r4     0.99000001
    IL_0031:  /* 22   | C3F5283F         */ ldc.r4     0.66000003
    IL_0036:  /* 22   | 58FF7F3F         */ ldc.r4     0.99998999
    IL_003b:  /* 28   | (06)000006       */ call       instance void a.Demo/*02000003*/::FP(int32,
                                                                                            int32,
                                                                                            float32,
                                                                                            float32,
                                                                                            float32,
                                                                                            float32) /* 06000006 */
    IL_0040:  /* 02   |                  */ ldarg.0
    IL_0041:  /* 03   |                  */ ldarg.1
    IL_0042:  /* 20   | 204E0000         */ ldc.i4     0x4e20
    IL_0047:  /* 22   | 0000DC42         */ ldc.r4     110.
    IL_004c:  /* 22   | 0000803F         */ ldc.r4     1.
    IL_0051:  /* 22   | 0000803F         */ ldc.r4     1.
    IL_0056:  /* 22   | EFFF7F3F         */ ldc.r4     0.99999899
    IL_005b:  /* 28   | (06)000006       */ call       instance void a.Demo/*02000003*/::FP(int32,
                                                                                            int32,
                                                                                            float32,
                                                                                            float32,
                                                                                            float32,
                                                                                            float32) /* 06000006 */
    IL_0060:  /* 2A   |                  */ ret
  } // end of method Demo::S_BD

  .method /*0600000B*/ public hidebysig instance void 
          S_SD(int32 startsample) cil managed
  // SIG: 20 01 01 08
  {
    // Method begins at RVA 0x2309
    // Code size       47 (0x2f)
    .maxstack  8
    IL_0000:  /* 02   |                  */ ldarg.0
    IL_0001:  /* 03   |                  */ ldarg.1
    IL_0002:  /* 20   | D0070000         */ ldc.i4     0x7d0
    IL_0007:  /* 18   |                  */ ldc.i4.2
    IL_0008:  /* 22   | CDCC4C3F         */ ldc.r4     0.80000001
    IL_000d:  /* 22   | 77BE7F3F         */ ldc.r4     0.99900001
    IL_0012:  /* 28   | (06)000007       */ call       instance void a.Demo/*02000003*/::FN(int32,
                                                                                            int32,
                                                                                            int32,
                                                                                            float32,
                                                                                            float32) /* 06000007 */
    IL_0017:  /* 02   |                  */ ldarg.0
    IL_0018:  /* 03   |                  */ ldarg.1
    IL_0019:  /* 20   | 40060000         */ ldc.i4     0x640
    IL_001e:  /* 19   |                  */ ldc.i4.3
    IL_001f:  /* 22   | 0000003F         */ ldc.r4     0.5
    IL_0024:  /* 22   | 77BE7F3F         */ ldc.r4     0.99900001
    IL_0029:  /* 28   | (06)000007       */ call       instance void a.Demo/*02000003*/::FN(int32,
                                                                                            int32,
                                                                                            int32,
                                                                                            float32,
                                                                                            float32) /* 06000007 */
    IL_002e:  /* 2A   |                  */ ret
  } // end of method Demo::S_SD

  .method /*0600000C*/ public hidebysig instance void 
          S_CH(int32 startsample) cil managed
  // SIG: 20 01 01 08
  {
    // Method begins at RVA 0x2339
    // Code size       24 (0x18)
    .maxstack  8
    IL_0000:  /* 02   |                  */ ldarg.0
    IL_0001:  /* 03   |                  */ ldarg.1
    IL_0002:  /* 20   | 800C0000         */ ldc.i4     0xc80
    IL_0007:  /* 17   |                  */ ldc.i4.1
    IL_0008:  /* 22   | 9A99193F         */ ldc.r4     0.60000002
    IL_000d:  /* 22   | C9767E3F         */ ldc.r4     0.99400002
    IL_0012:  /* 28   | (06)000007       */ call       instance void a.Demo/*02000003*/::FN(int32,
                                                                                            int32,
                                                                                            int32,
                                                                                            float32,
                                                                                            float32) /* 06000007 */
    IL_0017:  /* 2A   |                  */ ret
  } // end of method Demo::S_CH

  .method /*0600000D*/ public hidebysig instance void 
          S_OH(int32 startsample) cil managed
  // SIG: 20 01 01 08
  {
    // Method begins at RVA 0x2352
    // Code size       24 (0x18)
    .maxstack  8
    IL_0000:  /* 02   |                  */ ldarg.0
    IL_0001:  /* 03   |                  */ ldarg.1
    IL_0002:  /* 20   | 581B0000         */ ldc.i4     0x1b58
    IL_0007:  /* 18   |                  */ ldc.i4.2
    IL_0008:  /* 22   | CDCCCC3E         */ ldc.r4     0.40000001
    IL_000d:  /* 22   | 77BE7F3F         */ ldc.r4     0.99900001
    IL_0012:  /* 28   | (06)000007       */ call       instance void a.Demo/*02000003*/::FN(int32,
                                                                                            int32,
                                                                                            int32,
                                                                                            float32,
                                                                                            float32) /* 06000007 */
    IL_0017:  /* 2A   |                  */ ret
  } // end of method Demo::S_OH

  .method /*0600000E*/ public hidebysig instance void 
          S_RS(int32 startsample,
               int32 bp) cil managed
  // SIG: 20 02 01 08 08
  {
    // Method begins at RVA 0x236c
    // Code size       79 (0x4f)
    .maxstack  6
    IL_0000:  /* 02   |                  */ ldarg.0
    IL_0001:  /* 03   |                  */ ldarg.1
    IL_0002:  /* 20   | 983A0000         */ ldc.i4     0x3a98
    IL_0007:  /* 04   |                  */ ldarg.2
    IL_0008:  /* 6B   |                  */ conv.r4
    IL_0009:  /* 22   | 0000003F         */ ldc.r4     0.5
    IL_000e:  /* 22   | 3BDF7F3F         */ ldc.r4     0.99949998
    IL_0013:  /* 28   | (06)000009       */ call       instance void a.Demo/*02000003*/::FSA(int32,
                                                                                             int32,
                                                                                             float32,
                                                                                             float32,
                                                                                             float32) /* 06000009 */
    IL_0018:  /* 02   |                  */ ldarg.0
    IL_0019:  /* 03   |                  */ ldarg.1
    IL_001a:  /* 20   | 983A0000         */ ldc.i4     0x3a98
    IL_001f:  /* 04   |                  */ ldarg.2
    IL_0020:  /* 18   |                  */ ldc.i4.2
    IL_0021:  /* 5A   |                  */ mul
    IL_0022:  /* 19   |                  */ ldc.i4.3
    IL_0023:  /* 5B   |                  */ div
    IL_0024:  /* 6B   |                  */ conv.r4
    IL_0025:  /* 22   | 0000003F         */ ldc.r4     0.5
    IL_002a:  /* 22   | 92CB7F3F         */ ldc.r4     0.99919999
    IL_002f:  /* 28   | (06)000009       */ call       instance void a.Demo/*02000003*/::FSA(int32,
                                                                                             int32,
                                                                                             float32,
                                                                                             float32,
                                                                                             float32) /* 06000009 */
    IL_0034:  /* 02   |                  */ ldarg.0
    IL_0035:  /* 03   |                  */ ldarg.1
    IL_0036:  /* 20   | 983A0000         */ ldc.i4     0x3a98
    IL_003b:  /* 04   |                  */ ldarg.2
    IL_003c:  /* 19   |                  */ ldc.i4.3
    IL_003d:  /* 5B   |                  */ div
    IL_003e:  /* 6B   |                  */ conv.r4
    IL_003f:  /* 22   | 0000003F         */ ldc.r4     0.5
    IL_0044:  /* 22   | 92CB7F3F         */ ldc.r4     0.99919999
    IL_0049:  /* 28   | (06)000009       */ call       instance void a.Demo/*02000003*/::FSA(int32,
                                                                                             int32,
                                                                                             float32,
                                                                                             float32,
                                                                                             float32) /* 06000009 */
    IL_004e:  /* 2A   |                  */ ret
  } // end of method Demo::S_RS

  .method /*0600000F*/ public hidebysig instance void 
          S_RNDR() cil managed
  // SIG: 20 00 01
  {
    // Method begins at RVA 0x24e8
    // Code size       586 (0x24a)
    .maxstack  4
    .locals /*11000004*/ init (int32 V_0,
             int32 V_1,
             int32 V_2,
             int32[] V_3,
             int32[] V_4,
             int32[] V_5,
             int32[] V_6,
             class [mscorlib/*23000001*/]System.Random/*0100000E*/ V_7,
             int32 V_8,
             int32[] V_9,
             int32 V_10,
             int32 V_11,
             int32 V_12,
             int32 V_13,
             int32 V_14,
             int32 V_15,
             float32 V_16,
             int16 V_17)
    IL_0000:  /* 20   | F05F2800         */ ldc.i4     0x285ff0
    IL_0005:  /* 0A   |                  */ stloc.0
    IL_0006:  /* 02   |                  */ ldarg.0
    IL_0007:  /* 06   |                  */ ldloc.0
    IL_0008:  /* 8D   | (01)00000D       */ newarr     [mscorlib/*23000001*/]System.Single/*0100000D*/
    IL_000d:  /* 7D   | (04)000003       */ stfld      float32[] a.Demo/*02000003*/::S_F /* 04000003 */
    IL_0012:  /* 1E   |                  */ ldc.i4.8
    IL_0013:  /* 0B   |                  */ stloc.1
    IL_0014:  /* 20   | 814F0000         */ ldc.i4     0x4f81
    IL_0019:  /* 0C   |                  */ stloc.2
    IL_001a:  /* 1F   | 10               */ ldc.i4.s   16
    IL_001c:  /* 8D   | (01)00000F       */ newarr     [mscorlib/*23000001*/]System.Int32/*0100000F*/
    IL_0021:  /* 25   |                  */ dup
    IL_0022:  /* D0   | (04)000009       */ ldtoken    field valuetype '<PrivateImplementationDetails>{8FC85AE7-6EFF-4E93-911C-3A61D4E19073}'/*02000004*//'__StaticArrayInitTypeSize=64'/*02000005*/ '<PrivateImplementationDetails>{8FC85AE7-6EFF-4E93-911C-3A61D4E19073}'/*02000004*/::'$$method0x600000f-1' /* 04000009 */
    IL_0027:  /* 28   | (0A)00000E       */ call       void [mscorlib/*23000001*/]System.Runtime.CompilerServices.RuntimeHelpers/*01000012*/::InitializeArray(class [mscorlib/*23000001*/]System.Array/*01000013*/,
                                                                                                                                                              valuetype [mscorlib/*23000001*/]System.RuntimeFieldHandle/*01000014*/) /* 0A00000E */
    IL_002c:  /* 0D   |                  */ stloc.3
    IL_002d:  /* 1F   | 10               */ ldc.i4.s   16
    IL_002f:  /* 8D   | (01)00000F       */ newarr     [mscorlib/*23000001*/]System.Int32/*0100000F*/
    IL_0034:  /* 25   |                  */ dup
    IL_0035:  /* D0   | (04)00000A       */ ldtoken    field valuetype '<PrivateImplementationDetails>{8FC85AE7-6EFF-4E93-911C-3A61D4E19073}'/*02000004*//'__StaticArrayInitTypeSize=64'/*02000005*/ '<PrivateImplementationDetails>{8FC85AE7-6EFF-4E93-911C-3A61D4E19073}'/*02000004*/::'$$method0x600000f-2' /* 0400000A */
    IL_003a:  /* 28   | (0A)00000E       */ call       void [mscorlib/*23000001*/]System.Runtime.CompilerServices.RuntimeHelpers/*01000012*/::InitializeArray(class [mscorlib/*23000001*/]System.Array/*01000013*/,
                                                                                                                                                              valuetype [mscorlib/*23000001*/]System.RuntimeFieldHandle/*01000014*/) /* 0A00000E */
    IL_003f:  /* 13   | 04               */ stloc.s    V_4
    IL_0041:  /* 1F   | 10               */ ldc.i4.s   16
    IL_0043:  /* 8D   | (01)00000F       */ newarr     [mscorlib/*23000001*/]System.Int32/*0100000F*/
    IL_0048:  /* 25   |                  */ dup
    IL_0049:  /* D0   | (04)00000B       */ ldtoken    field valuetype '<PrivateImplementationDetails>{8FC85AE7-6EFF-4E93-911C-3A61D4E19073}'/*02000004*//'__StaticArrayInitTypeSize=64'/*02000005*/ '<PrivateImplementationDetails>{8FC85AE7-6EFF-4E93-911C-3A61D4E19073}'/*02000004*/::'$$method0x600000f-3' /* 0400000B */
    IL_004e:  /* 28   | (0A)00000E       */ call       void [mscorlib/*23000001*/]System.Runtime.CompilerServices.RuntimeHelpers/*01000012*/::InitializeArray(class [mscorlib/*23000001*/]System.Array/*01000013*/,
                                                                                                                                                              valuetype [mscorlib/*23000001*/]System.RuntimeFieldHandle/*01000014*/) /* 0A00000E */
    IL_0053:  /* 13   | 05               */ stloc.s    V_5
    IL_0055:  /* 1F   | 10               */ ldc.i4.s   16
    IL_0057:  /* 8D   | (01)00000F       */ newarr     [mscorlib/*23000001*/]System.Int32/*0100000F*/
    IL_005c:  /* 25   |                  */ dup
    IL_005d:  /* D0   | (04)00000C       */ ldtoken    field valuetype '<PrivateImplementationDetails>{8FC85AE7-6EFF-4E93-911C-3A61D4E19073}'/*02000004*//'__StaticArrayInitTypeSize=64'/*02000005*/ '<PrivateImplementationDetails>{8FC85AE7-6EFF-4E93-911C-3A61D4E19073}'/*02000004*/::'$$method0x600000f-4' /* 0400000C */
    IL_0062:  /* 28   | (0A)00000E       */ call       void [mscorlib/*23000001*/]System.Runtime.CompilerServices.RuntimeHelpers/*01000012*/::InitializeArray(class [mscorlib/*23000001*/]System.Array/*01000013*/,
                                                                                                                                                              valuetype [mscorlib/*23000001*/]System.RuntimeFieldHandle/*01000014*/) /* 0A00000E */
    IL_0067:  /* 13   | 06               */ stloc.s    V_6
    IL_0069:  /* 20   | 39300000         */ ldc.i4     0x3039
    IL_006e:  /* 73   | (0A)00000F       */ newobj     instance void [mscorlib/*23000001*/]System.Random/*0100000E*/::.ctor(int32) /* 0A00000F */
    IL_0073:  /* 13   | 07               */ stloc.s    V_7
    IL_0075:  /* 16   |                  */ ldc.i4.0
    IL_0076:  /* 13   | 08               */ stloc.s    V_8
    IL_0078:  /* 38   | 4A010000         */ br         IL_01c7

    IL_007d:  /* 1E   |                  */ ldc.i4.8
    IL_007e:  /* 8D   | (01)00000F       */ newarr     [mscorlib/*23000001*/]System.Int32/*0100000F*/
    IL_0083:  /* 25   |                  */ dup
    IL_0084:  /* D0   | (04)00000D       */ ldtoken    field valuetype '<PrivateImplementationDetails>{8FC85AE7-6EFF-4E93-911C-3A61D4E19073}'/*02000004*//'__StaticArrayInitTypeSize=32'/*02000006*/ '<PrivateImplementationDetails>{8FC85AE7-6EFF-4E93-911C-3A61D4E19073}'/*02000004*/::'$$method0x600000f-5' /* 0400000D */
    IL_0089:  /* 28   | (0A)00000E       */ call       void [mscorlib/*23000001*/]System.Runtime.CompilerServices.RuntimeHelpers/*01000012*/::InitializeArray(class [mscorlib/*23000001*/]System.Array/*01000013*/,
                                                                                                                                                              valuetype [mscorlib/*23000001*/]System.RuntimeFieldHandle/*01000014*/) /* 0A00000E */
    IL_008e:  /* 13   | 09               */ stloc.s    V_9
    IL_0090:  /* 11   | 09               */ ldloc.s    V_9
    IL_0092:  /* 11   | 08               */ ldloc.s    V_8
    IL_0094:  /* 1E   |                  */ ldc.i4.8
    IL_0095:  /* 5D   |                  */ rem
    IL_0096:  /* 94   |                  */ ldelem.i4
    IL_0097:  /* 13   | 0A               */ stloc.s    V_10
    IL_0099:  /* 16   |                  */ ldc.i4.0
    IL_009a:  /* 13   | 0B               */ stloc.s    V_11
    IL_009c:  /* 38   | 17010000         */ br         IL_01b8

    IL_00a1:  /* 11   | 08               */ ldloc.s    V_8
    IL_00a3:  /* 1F   | 10               */ ldc.i4.s   16
    IL_00a5:  /* 5A   |                  */ mul
    IL_00a6:  /* 11   | 0B               */ ldloc.s    V_11
    IL_00a8:  /* 58   |                  */ add
    IL_00a9:  /* 13   | 0C               */ stloc.s    V_12
    IL_00ab:  /* 11   | 0C               */ ldloc.s    V_12
    IL_00ad:  /* 08   |                  */ ldloc.2
    IL_00ae:  /* 5A   |                  */ mul
    IL_00af:  /* 1A   |                  */ ldc.i4.4
    IL_00b0:  /* 5B   |                  */ div
    IL_00b1:  /* 13   | 0D               */ stloc.s    V_13
    IL_00b3:  /* 16   |                  */ ldc.i4.0
    IL_00b4:  /* 13   | 0E               */ stloc.s    V_14
    IL_00b6:  /* 11   | 0B               */ ldloc.s    V_11
    IL_00b8:  /* 18   |                  */ ldc.i4.2
    IL_00b9:  /* 5D   |                  */ rem
    IL_00ba:  /* 17   |                  */ ldc.i4.1
    IL_00bb:  /* 33   | 09               */ bne.un.s   IL_00c6

    IL_00bd:  /* 11   | 0D               */ ldloc.s    V_13
    IL_00bf:  /* 08   |                  */ ldloc.2
    IL_00c0:  /* 1F   | 14               */ ldc.i4.s   20
    IL_00c2:  /* 5B   |                  */ div
    IL_00c3:  /* 58   |                  */ add
    IL_00c4:  /* 13   | 0D               */ stloc.s    V_13
    IL_00c6:  /* 11   | 07               */ ldloc.s    V_7
    IL_00c8:  /* 6F   | (0A)000010       */ callvirt   instance int32 [mscorlib/*23000001*/]System.Random/*0100000E*/::Next() /* 0A000010 */
    IL_00cd:  /* 1F   | 64               */ ldc.i4.s   100
    IL_00cf:  /* 5D   |                  */ rem
    IL_00d0:  /* 13   | 0E               */ stloc.s    V_14
    IL_00d2:  /* 11   | 0E               */ ldloc.s    V_14
    IL_00d4:  /* 09   |                  */ ldloc.3
    IL_00d5:  /* 11   | 0B               */ ldloc.s    V_11
    IL_00d7:  /* 94   |                  */ ldelem.i4
    IL_00d8:  /* 30   | 08               */ bgt.s      IL_00e2

    IL_00da:  /* 02   |                  */ ldarg.0
    IL_00db:  /* 11   | 0D               */ ldloc.s    V_13
    IL_00dd:  /* 28   | (06)00000A       */ call       instance void a.Demo/*02000003*/::S_BD(int32) /* 0600000A */
    IL_00e2:  /* 11   | 07               */ ldloc.s    V_7
    IL_00e4:  /* 6F   | (0A)000010       */ callvirt   instance int32 [mscorlib/*23000001*/]System.Random/*0100000E*/::Next() /* 0A000010 */
    IL_00e9:  /* 1F   | 64               */ ldc.i4.s   100
    IL_00eb:  /* 5D   |                  */ rem
    IL_00ec:  /* 13   | 0E               */ stloc.s    V_14
    IL_00ee:  /* 11   | 0E               */ ldloc.s    V_14
    IL_00f0:  /* 11   | 04               */ ldloc.s    V_4
    IL_00f2:  /* 11   | 0B               */ ldloc.s    V_11
    IL_00f4:  /* 94   |                  */ ldelem.i4
    IL_00f5:  /* 30   | 08               */ bgt.s      IL_00ff

    IL_00f7:  /* 02   |                  */ ldarg.0
    IL_00f8:  /* 11   | 0D               */ ldloc.s    V_13
    IL_00fa:  /* 28   | (06)00000B       */ call       instance void a.Demo/*02000003*/::S_SD(int32) /* 0600000B */
    IL_00ff:  /* 11   | 07               */ ldloc.s    V_7
    IL_0101:  /* 6F   | (0A)000010       */ callvirt   instance int32 [mscorlib/*23000001*/]System.Random/*0100000E*/::Next() /* 0A000010 */
    IL_0106:  /* 1F   | 64               */ ldc.i4.s   100
    IL_0108:  /* 5D   |                  */ rem
    IL_0109:  /* 13   | 0E               */ stloc.s    V_14
    IL_010b:  /* 11   | 0E               */ ldloc.s    V_14
    IL_010d:  /* 11   | 05               */ ldloc.s    V_5
    IL_010f:  /* 11   | 0B               */ ldloc.s    V_11
    IL_0111:  /* 94   |                  */ ldelem.i4
    IL_0112:  /* 30   | 08               */ bgt.s      IL_011c

    IL_0114:  /* 02   |                  */ ldarg.0
    IL_0115:  /* 11   | 0D               */ ldloc.s    V_13
    IL_0117:  /* 28   | (06)00000C       */ call       instance void a.Demo/*02000003*/::S_CH(int32) /* 0600000C */
    IL_011c:  /* 11   | 07               */ ldloc.s    V_7
    IL_011e:  /* 6F   | (0A)000010       */ callvirt   instance int32 [mscorlib/*23000001*/]System.Random/*0100000E*/::Next() /* 0A000010 */
    IL_0123:  /* 1F   | 64               */ ldc.i4.s   100
    IL_0125:  /* 5D   |                  */ rem
    IL_0126:  /* 13   | 0E               */ stloc.s    V_14
    IL_0128:  /* 11   | 0E               */ ldloc.s    V_14
    IL_012a:  /* 11   | 06               */ ldloc.s    V_6
    IL_012c:  /* 11   | 0B               */ ldloc.s    V_11
    IL_012e:  /* 94   |                  */ ldelem.i4
    IL_012f:  /* 30   | 08               */ bgt.s      IL_0139

    IL_0131:  /* 02   |                  */ ldarg.0
    IL_0132:  /* 11   | 0D               */ ldloc.s    V_13
    IL_0134:  /* 28   | (06)00000D       */ call       instance void a.Demo/*02000003*/::S_OH(int32) /* 0600000D */
    IL_0139:  /* 11   | 07               */ ldloc.s    V_7
    IL_013b:  /* 6F   | (0A)000010       */ callvirt   instance int32 [mscorlib/*23000001*/]System.Random/*0100000E*/::Next() /* 0A000010 */
    IL_0140:  /* 1F   | 64               */ ldc.i4.s   100
    IL_0142:  /* 5D   |                  */ rem
    IL_0143:  /* 13   | 0E               */ stloc.s    V_14
    IL_0145:  /* 11   | 0B               */ ldloc.s    V_11
    IL_0147:  /* 1A   |                  */ ldc.i4.4
    IL_0148:  /* 5D   |                  */ rem
    IL_0149:  /* 2D   | 0A               */ brtrue.s   IL_0155

    IL_014b:  /* 02   |                  */ ldarg.0
    IL_014c:  /* 11   | 0D               */ ldloc.s    V_13
    IL_014e:  /* 11   | 0A               */ ldloc.s    V_10
    IL_0150:  /* 28   | (06)00000E       */ call       instance void a.Demo/*02000003*/::S_RS(int32,
                                                                                              int32) /* 0600000E */
    IL_0155:  /* 11   | 0B               */ ldloc.s    V_11
    IL_0157:  /* 1A   |                  */ ldc.i4.4
    IL_0158:  /* 5D   |                  */ rem
    IL_0159:  /* 17   |                  */ ldc.i4.1
    IL_015a:  /* 33   | 0C               */ bne.un.s   IL_0168

    IL_015c:  /* 02   |                  */ ldarg.0
    IL_015d:  /* 11   | 0D               */ ldloc.s    V_13
    IL_015f:  /* 11   | 0A               */ ldloc.s    V_10
    IL_0161:  /* 17   |                  */ ldc.i4.1
    IL_0162:  /* 63   |                  */ shr
    IL_0163:  /* 28   | (06)00000E       */ call       instance void a.Demo/*02000003*/::S_RS(int32,
                                                                                              int32) /* 0600000E */
    IL_0168:  /* 11   | 0B               */ ldloc.s    V_11
    IL_016a:  /* 1A   |                  */ ldc.i4.4
    IL_016b:  /* 5D   |                  */ rem
    IL_016c:  /* 18   |                  */ ldc.i4.2
    IL_016d:  /* 33   | 0C               */ bne.un.s   IL_017b

    IL_016f:  /* 02   |                  */ ldarg.0
    IL_0170:  /* 11   | 0D               */ ldloc.s    V_13
    IL_0172:  /* 11   | 0A               */ ldloc.s    V_10
    IL_0174:  /* 17   |                  */ ldc.i4.1
    IL_0175:  /* 62   |                  */ shl
    IL_0176:  /* 28   | (06)00000E       */ call       instance void a.Demo/*02000003*/::S_RS(int32,
                                                                                              int32) /* 0600000E */
    IL_017b:  /* 11   | 0B               */ ldloc.s    V_11
    IL_017d:  /* 1A   |                  */ ldc.i4.4
    IL_017e:  /* 5D   |                  */ rem
    IL_017f:  /* 19   |                  */ ldc.i4.3
    IL_0180:  /* 33   | 0C               */ bne.un.s   IL_018e

    IL_0182:  /* 02   |                  */ ldarg.0
    IL_0183:  /* 11   | 0D               */ ldloc.s    V_13
    IL_0185:  /* 11   | 0A               */ ldloc.s    V_10
    IL_0187:  /* 17   |                  */ ldc.i4.1
    IL_0188:  /* 62   |                  */ shl
    IL_0189:  /* 28   | (06)00000E       */ call       instance void a.Demo/*02000003*/::S_RS(int32,
                                                                                              int32) /* 0600000E */
    IL_018e:  /* 11   | 07               */ ldloc.s    V_7
    IL_0190:  /* 6F   | (0A)000010       */ callvirt   instance int32 [mscorlib/*23000001*/]System.Random/*0100000E*/::Next() /* 0A000010 */
    IL_0195:  /* 1F   | 64               */ ldc.i4.s   100
    IL_0197:  /* 5D   |                  */ rem
    IL_0198:  /* 13   | 0E               */ stloc.s    V_14
    IL_019a:  /* 11   | 07               */ ldloc.s    V_7
    IL_019c:  /* 6F   | (0A)000010       */ callvirt   instance int32 [mscorlib/*23000001*/]System.Random/*0100000E*/::Next() /* 0A000010 */
    IL_01a1:  /* 1F   | 64               */ ldc.i4.s   100
    IL_01a3:  /* 5D   |                  */ rem
    IL_01a4:  /* 13   | 0E               */ stloc.s    V_14
    IL_01a6:  /* 11   | 07               */ ldloc.s    V_7
    IL_01a8:  /* 6F   | (0A)000010       */ callvirt   instance int32 [mscorlib/*23000001*/]System.Random/*0100000E*/::Next() /* 0A000010 */
    IL_01ad:  /* 1F   | 64               */ ldc.i4.s   100
    IL_01af:  /* 5D   |                  */ rem
    IL_01b0:  /* 13   | 0E               */ stloc.s    V_14
    IL_01b2:  /* 11   | 0B               */ ldloc.s    V_11
    IL_01b4:  /* 17   |                  */ ldc.i4.1
    IL_01b5:  /* 58   |                  */ add
    IL_01b6:  /* 13   | 0B               */ stloc.s    V_11
    IL_01b8:  /* 11   | 0B               */ ldloc.s    V_11
    IL_01ba:  /* 1F   | 10               */ ldc.i4.s   16
    IL_01bc:  /* 3F   | E0FEFFFF         */ blt        IL_00a1

    IL_01c1:  /* 11   | 08               */ ldloc.s    V_8
    IL_01c3:  /* 17   |                  */ ldc.i4.1
    IL_01c4:  /* 58   |                  */ add
    IL_01c5:  /* 13   | 08               */ stloc.s    V_8
    IL_01c7:  /* 11   | 08               */ ldloc.s    V_8
    IL_01c9:  /* 07   |                  */ ldloc.1
    IL_01ca:  /* 3F   | AEFEFFFF         */ blt        IL_007d

    IL_01cf:  /* 02   |                  */ ldarg.0
    IL_01d0:  /* 06   |                  */ ldloc.0
    IL_01d1:  /* 18   |                  */ ldc.i4.2
    IL_01d2:  /* 5A   |                  */ mul
    IL_01d3:  /* 8D   | (01)000015       */ newarr     [mscorlib/*23000001*/]System.Byte/*01000015*/
    IL_01d8:  /* 7D   | (04)000004       */ stfld      uint8[] a.Demo/*02000003*/::S_B /* 04000004 */
    IL_01dd:  /* 16   |                  */ ldc.i4.0
    IL_01de:  /* 13   | 0F               */ stloc.s    V_15
    IL_01e0:  /* 2B   | 62               */ br.s       IL_0244

    IL_01e2:  /* 02   |                  */ ldarg.0
    IL_01e3:  /* 7B   | (04)000003       */ ldfld      float32[] a.Demo/*02000003*/::S_F /* 04000003 */
    IL_01e8:  /* 11   | 0F               */ ldloc.s    V_15
    IL_01ea:  /* 98   |                  */ ldelem.r4
    IL_01eb:  /* 22   | 00401C46         */ ldc.r4     10000.
    IL_01f0:  /* 5A   |                  */ mul
    IL_01f1:  /* 13   | 10               */ stloc.s    V_16
    IL_01f3:  /* 11   | 10               */ ldloc.s    V_16
    IL_01f5:  /* 22   | 00FEFFC6         */ ldc.r4     -32767.
    IL_01fa:  /* 35   | 07               */ bgt.un.s   IL_0203

    IL_01fc:  /* 22   | 00FEFFC6         */ ldc.r4     -32767.
    IL_0201:  /* 13   | 10               */ stloc.s    V_16
    IL_0203:  /* 11   | 10               */ ldloc.s    V_16
    IL_0205:  /* 22   | 00FEFF46         */ ldc.r4     32767.
    IL_020a:  /* 37   | 07               */ blt.un.s   IL_0213

    IL_020c:  /* 22   | 00FEFF46         */ ldc.r4     32767.
    IL_0211:  /* 13   | 10               */ stloc.s    V_16
    IL_0213:  /* 11   | 10               */ ldloc.s    V_16
    IL_0215:  /* 68   |                  */ conv.i2
    IL_0216:  /* 13   | 11               */ stloc.s    V_17
    IL_0218:  /* 02   |                  */ ldarg.0
    IL_0219:  /* 7B   | (04)000004       */ ldfld      uint8[] a.Demo/*02000003*/::S_B /* 04000004 */
    IL_021e:  /* 11   | 0F               */ ldloc.s    V_15
    IL_0220:  /* 18   |                  */ ldc.i4.2
    IL_0221:  /* 5A   |                  */ mul
    IL_0222:  /* 11   | 11               */ ldloc.s    V_17
    IL_0224:  /* 20   | FF000000         */ ldc.i4     0xff
    IL_0229:  /* 5F   |                  */ and
    IL_022a:  /* D2   |                  */ conv.u1
    IL_022b:  /* 9C   |                  */ stelem.i1
    IL_022c:  /* 02   |                  */ ldarg.0
    IL_022d:  /* 7B   | (04)000004       */ ldfld      uint8[] a.Demo/*02000003*/::S_B /* 04000004 */
    IL_0232:  /* 11   | 0F               */ ldloc.s    V_15
    IL_0234:  /* 18   |                  */ ldc.i4.2
    IL_0235:  /* 5A   |                  */ mul
    IL_0236:  /* 17   |                  */ ldc.i4.1
    IL_0237:  /* 58   |                  */ add
    IL_0238:  /* 11   | 11               */ ldloc.s    V_17
    IL_023a:  /* 1E   |                  */ ldc.i4.8
    IL_023b:  /* 63   |                  */ shr
    IL_023c:  /* D2   |                  */ conv.u1
    IL_023d:  /* 9C   |                  */ stelem.i1
    IL_023e:  /* 11   | 0F               */ ldloc.s    V_15
    IL_0240:  /* 17   |                  */ ldc.i4.1
    IL_0241:  /* 58   |                  */ add
    IL_0242:  /* 13   | 0F               */ stloc.s    V_15
    IL_0244:  /* 11   | 0F               */ ldloc.s    V_15
    IL_0246:  /* 06   |                  */ ldloc.0
    IL_0247:  /* 32   | 99               */ blt.s      IL_01e2

    IL_0249:  /* 2A   |                  */ ret
  } // end of method Demo::S_RNDR

  .method /*06000010*/ public hidebysig instance void 
          Run() cil managed
  // SIG: 20 00 01
  {
    // Method begins at RVA 0x2740
    // Code size       184 (0xb8)
    .maxstack  4
    .locals /*11000005*/ init (valuetype [Microsoft.DirectX.DirectSound/*23000003*/]Microsoft.DirectX.DirectSound.WaveFormat/*01000018*/ V_0,
             class [Microsoft.DirectX.DirectSound/*23000003*/]Microsoft.DirectX.DirectSound.BufferDescription/*0100001A*/ V_1)
    IL_0000:  /* 02   |                  */ ldarg.0
    IL_0001:  /* 28   | (06)00000F       */ call       instance void a.Demo/*02000003*/::S_RNDR() /* 0600000F */
    IL_0006:  /* 02   |                  */ ldarg.0
    IL_0007:  /* 73   | (0A)000011       */ newobj     instance void [Microsoft.DirectX.DirectSound/*23000003*/]Microsoft.DirectX.DirectSound.Device/*01000004*/::.ctor() /* 0A000011 */
    IL_000c:  /* 7D   | (04)000005       */ stfld      class [Microsoft.DirectX.DirectSound/*23000003*/]Microsoft.DirectX.DirectSound.Device/*01000004*/ a.Demo/*02000003*/::sounddevice /* 04000005 */
    IL_0011:  /* 02   |                  */ ldarg.0
    IL_0012:  /* 7B   | (04)000005       */ ldfld      class [Microsoft.DirectX.DirectSound/*23000003*/]Microsoft.DirectX.DirectSound.Device/*01000004*/ a.Demo/*02000003*/::sounddevice /* 04000005 */
    IL_0017:  /* 7E   | (04)000001       */ ldsfld     class a.Demo/*02000003*/ a.Program/*02000002*/::F1 /* 04000001 */
    IL_001c:  /* 17   |                  */ ldc.i4.1
    IL_001d:  /* 6F   | (0A)000012       */ callvirt   instance void [Microsoft.DirectX.DirectSound/*23000003*/]Microsoft.DirectX.DirectSound.Device/*01000004*/::SetCooperativeLevel(class [System.Windows.Forms_4/*23000005*/]System.Windows.Forms.Control/*01000016*/,
                                                                                                                                                                                      valuetype [Microsoft.DirectX.DirectSound/*23000003*/]Microsoft.DirectX.DirectSound.CooperativeLevel/*01000017*/) /* 0A000012 */
    IL_0022:  /* 12   | 00               */ ldloca.s   V_0
    IL_0024:  /* 28   | (0A)000013       */ call       instance void [Microsoft.DirectX.DirectSound/*23000003*/]Microsoft.DirectX.DirectSound.WaveFormat/*01000018*/::.ctor() /* 0A000013 */
    IL_0029:  /* 12   | 00               */ ldloca.s   V_0
    IL_002b:  /* 17   |                  */ ldc.i4.1
    IL_002c:  /* 28   | (0A)000014       */ call       instance void [Microsoft.DirectX.DirectSound/*23000003*/]Microsoft.DirectX.DirectSound.WaveFormat/*01000018*/::set_FormatTag(valuetype [Microsoft.DirectX.DirectSound/*23000003*/]Microsoft.DirectX.DirectSound.WaveFormatTag/*01000019*/) /* 0A000014 */
    IL_0031:  /* 12   | 00               */ ldloca.s   V_0
    IL_0033:  /* 20   | 44AC0000         */ ldc.i4     0xac44
    IL_0038:  /* 28   | (0A)000015       */ call       instance void [Microsoft.DirectX.DirectSound/*23000003*/]Microsoft.DirectX.DirectSound.WaveFormat/*01000018*/::set_SamplesPerSecond(int32) /* 0A000015 */
    IL_003d:  /* 12   | 00               */ ldloca.s   V_0
    IL_003f:  /* 1F   | 10               */ ldc.i4.s   16
    IL_0041:  /* 28   | (0A)000016       */ call       instance void [Microsoft.DirectX.DirectSound/*23000003*/]Microsoft.DirectX.DirectSound.WaveFormat/*01000018*/::set_BitsPerSample(int16) /* 0A000016 */
    IL_0046:  /* 12   | 00               */ ldloca.s   V_0
    IL_0048:  /* 17   |                  */ ldc.i4.1
    IL_0049:  /* 28   | (0A)000017       */ call       instance void [Microsoft.DirectX.DirectSound/*23000003*/]Microsoft.DirectX.DirectSound.WaveFormat/*01000018*/::set_Channels(int16) /* 0A000017 */
    IL_004e:  /* 12   | 00               */ ldloca.s   V_0
    IL_0050:  /* 18   |                  */ ldc.i4.2
    IL_0051:  /* 28   | (0A)000018       */ call       instance void [Microsoft.DirectX.DirectSound/*23000003*/]Microsoft.DirectX.DirectSound.WaveFormat/*01000018*/::set_BlockAlign(int16) /* 0A000018 */
    IL_0056:  /* 12   | 00               */ ldloca.s   V_0
    IL_0058:  /* 20   | 88580100         */ ldc.i4     0x15888
    IL_005d:  /* 28   | (0A)000019       */ call       instance void [Microsoft.DirectX.DirectSound/*23000003*/]Microsoft.DirectX.DirectSound.WaveFormat/*01000018*/::set_AverageBytesPerSecond(int32) /* 0A000019 */
    IL_0062:  /* 06   |                  */ ldloc.0
    IL_0063:  /* 73   | (0A)00001A       */ newobj     instance void [Microsoft.DirectX.DirectSound/*23000003*/]Microsoft.DirectX.DirectSound.BufferDescription/*0100001A*/::.ctor(valuetype [Microsoft.DirectX.DirectSound/*23000003*/]Microsoft.DirectX.DirectSound.WaveFormat/*01000018*/) /* 0A00001A */
    IL_0068:  /* 0B   |                  */ stloc.1
    IL_0069:  /* 07   |                  */ ldloc.1
    IL_006a:  /* 02   |                  */ ldarg.0
    IL_006b:  /* 7B   | (04)000004       */ ldfld      uint8[] a.Demo/*02000003*/::S_B /* 04000004 */
    IL_0070:  /* 8E   |                  */ ldlen
    IL_0071:  /* 69   |                  */ conv.i4
    IL_0072:  /* 6F   | (0A)00001B       */ callvirt   instance void [Microsoft.DirectX.DirectSound/*23000003*/]Microsoft.DirectX.DirectSound.BufferDescription/*0100001A*/::set_BufferBytes(int32) /* 0A00001B */
    IL_0077:  /* 07   |                  */ ldloc.1
    IL_0078:  /* 17   |                  */ ldc.i4.1
    IL_0079:  /* 6F   | (0A)00001C       */ callvirt   instance void [Microsoft.DirectX.DirectSound/*23000003*/]Microsoft.DirectX.DirectSound.BufferDescription/*0100001A*/::set_GlobalFocus(bool) /* 0A00001C */
    IL_007e:  /* 07   |                  */ ldloc.1
    IL_007f:  /* 17   |                  */ ldc.i4.1
    IL_0080:  /* 6F   | (0A)00001D       */ callvirt   instance void [Microsoft.DirectX.DirectSound/*23000003*/]Microsoft.DirectX.DirectSound.BufferDescription/*0100001A*/::set_ControlEffects(bool) /* 0A00001D */
    IL_0085:  /* 02   |                  */ ldarg.0
    IL_0086:  /* 07   |                  */ ldloc.1
    IL_0087:  /* 02   |                  */ ldarg.0
    IL_0088:  /* 7B   | (04)000005       */ ldfld      class [Microsoft.DirectX.DirectSound/*23000003*/]Microsoft.DirectX.DirectSound.Device/*01000004*/ a.Demo/*02000003*/::sounddevice /* 04000005 */
    IL_008d:  /* 73   | (0A)00001E       */ newobj     instance void [Microsoft.DirectX.DirectSound/*23000003*/]Microsoft.DirectX.DirectSound.SecondaryBuffer/*01000005*/::.ctor(class [Microsoft.DirectX.DirectSound/*23000003*/]Microsoft.DirectX.DirectSound.BufferDescription/*0100001A*/,
                                                                                                                                                                                 class [Microsoft.DirectX.DirectSound/*23000003*/]Microsoft.DirectX.DirectSound.Device/*01000004*/) /* 0A00001E */
    IL_0092:  /* 7D   | (04)000006       */ stfld      class [Microsoft.DirectX.DirectSound/*23000003*/]Microsoft.DirectX.DirectSound.SecondaryBuffer/*01000005*/ a.Demo/*02000003*/::buffer /* 04000006 */
    IL_0097:  /* 02   |                  */ ldarg.0
    IL_0098:  /* 7B   | (04)000006       */ ldfld      class [Microsoft.DirectX.DirectSound/*23000003*/]Microsoft.DirectX.DirectSound.SecondaryBuffer/*01000005*/ a.Demo/*02000003*/::buffer /* 04000006 */
    IL_009d:  /* 16   |                  */ ldc.i4.0
    IL_009e:  /* 02   |                  */ ldarg.0
    IL_009f:  /* 7B   | (04)000004       */ ldfld      uint8[] a.Demo/*02000003*/::S_B /* 04000004 */
    IL_00a4:  /* 16   |                  */ ldc.i4.0
    IL_00a5:  /* 6F   | (0A)00001F       */ callvirt   instance void [Microsoft.DirectX.DirectSound/*23000003*/]Microsoft.DirectX.DirectSound.Buffer/*0100001B*/::Write(int32,
                                                                                                                                                                        class [mscorlib_5/*23000006*/]System.Array/*0100001C*/,
                                                                                                                                                                        valuetype [Microsoft.DirectX.DirectSound/*23000003*/]Microsoft.DirectX.DirectSound.LockFlag/*0100001D*/) /* 0A00001F */
    IL_00aa:  /* 02   |                  */ ldarg.0
    IL_00ab:  /* 7B   | (04)000006       */ ldfld      class [Microsoft.DirectX.DirectSound/*23000003*/]Microsoft.DirectX.DirectSound.SecondaryBuffer/*01000005*/ a.Demo/*02000003*/::buffer /* 04000006 */
    IL_00b0:  /* 16   |                  */ ldc.i4.0
    IL_00b1:  /* 16   |                  */ ldc.i4.0
    IL_00b2:  /* 6F   | (0A)000020       */ callvirt   instance void [Microsoft.DirectX.DirectSound/*23000003*/]Microsoft.DirectX.DirectSound.Buffer/*0100001B*/::Play(int32,
                                                                                                                                                                       valuetype [Microsoft.DirectX.DirectSound/*23000003*/]Microsoft.DirectX.DirectSound.BufferPlayFlags/*0100001E*/) /* 0A000020 */
    IL_00b7:  /* 2A   |                  */ ret
  } // end of method Demo::Run

  .method /*06000011*/ public hidebysig instance void 
          Stop() cil managed
  // SIG: 20 00 01
  {
    // Method begins at RVA 0x2804
    // Code size       36 (0x24)
    .maxstack  8
    IL_0000:  /* 72   | (70)000001       */ ldstr      "stop" /* 70000001 */
    IL_0005:  /* 28   | (0A)000021       */ call       void [mscorlib/*23000001*/]System.Console/*0100001F*/::WriteLine(string) /* 0A000021 */
    IL_000a:  /* 02   |                  */ ldarg.0
    IL_000b:  /* 7B   | (04)000006       */ ldfld      class [Microsoft.DirectX.DirectSound/*23000003*/]Microsoft.DirectX.DirectSound.SecondaryBuffer/*01000005*/ a.Demo/*02000003*/::buffer /* 04000006 */
    IL_0010:  /* 14   |                  */ ldnull
    IL_0011:  /* 28   | (0A)000022       */ call       bool [Microsoft.DirectX.DirectSound/*23000003*/]Microsoft.DirectX.DirectSound.SecondaryBuffer/*01000005*/::op_Inequality(class [Microsoft.DirectX.DirectSound/*23000003*/]Microsoft.DirectX.DirectSound.SecondaryBuffer/*01000005*/,
                                                                                                                                                                                class [Microsoft.DirectX.DirectSound/*23000003*/]Microsoft.DirectX.DirectSound.SecondaryBuffer/*01000005*/) /* 0A000022 */
    IL_0016:  /* 2C   | 0B               */ brfalse.s  IL_0023

    IL_0018:  /* 02   |                  */ ldarg.0
    IL_0019:  /* 7B   | (04)000006       */ ldfld      class [Microsoft.DirectX.DirectSound/*23000003*/]Microsoft.DirectX.DirectSound.SecondaryBuffer/*01000005*/ a.Demo/*02000003*/::buffer /* 04000006 */
    IL_001e:  /* 6F   | (0A)000023       */ callvirt   instance void [Microsoft.DirectX.DirectSound/*23000003*/]Microsoft.DirectX.DirectSound.Buffer/*0100001B*/::Stop() /* 0A000023 */
    IL_0023:  /* 2A   |                  */ ret
  } // end of method Demo::Stop

  .method /*06000012*/ public hidebysig instance void 
          R_IN() cil managed
  // SIG: 20 00 01
  {
    // Method begins at RVA 0x282c
    // Code size       492 (0x1ec)
    .maxstack  8
    .locals /*11000006*/ init (class [Microsoft.DirectX.Direct3D/*23000004*/]Microsoft.DirectX.Direct3D.PresentParameters/*01000020*/ V_0,
             valuetype [Microsoft.DirectX.Direct3D/*23000004*/]Microsoft.DirectX.Direct3D.CustomVertex/*01000026*//PositionNormal/*01000027*/[] V_1,
             int32 V_2,
             float32 V_3,
             float32 V_4,
             class [Microsoft.DirectX.Direct3D/*23000004*/]Microsoft.DirectX.Direct3D.PresentParameters/*01000020*/[] V_5)
    IL_0000:  /* 73   | (0A)000024       */ newobj     instance void [Microsoft.DirectX.Direct3D/*23000004*/]Microsoft.DirectX.Direct3D.PresentParameters/*01000020*/::.ctor() /* 0A000024 */
    IL_0005:  /* 0A   |                  */ stloc.0
    IL_0006:  /* 06   |                  */ ldloc.0
    IL_0007:  /* 17   |                  */ ldc.i4.1
    IL_0008:  /* 6F   | (0A)000025       */ callvirt   instance void [Microsoft.DirectX.Direct3D/*23000004*/]Microsoft.DirectX.Direct3D.PresentParameters/*01000020*/::set_Windowed(bool) /* 0A000025 */
    IL_000d:  /* 06   |                  */ ldloc.0
    IL_000e:  /* 17   |                  */ ldc.i4.1
    IL_000f:  /* 6F   | (0A)000026       */ callvirt   instance void [Microsoft.DirectX.Direct3D/*23000004*/]Microsoft.DirectX.Direct3D.PresentParameters/*01000020*/::set_SwapEffect(valuetype [Microsoft.DirectX.Direct3D/*23000004*/]Microsoft.DirectX.Direct3D.SwapEffect/*01000021*/) /* 0A000026 */
    IL_0014:  /* 06   |                  */ ldloc.0
    IL_0015:  /* 17   |                  */ ldc.i4.1
    IL_0016:  /* 6F   | (0A)000027       */ callvirt   instance void [Microsoft.DirectX.Direct3D/*23000004*/]Microsoft.DirectX.Direct3D.PresentParameters/*01000020*/::set_EnableAutoDepthStencil(bool) /* 0A000027 */
    IL_001b:  /* 06   |                  */ ldloc.0
    IL_001c:  /* 1F   | 50               */ ldc.i4.s   80
    IL_001e:  /* 6F   | (0A)000028       */ callvirt   instance void [Microsoft.DirectX.Direct3D/*23000004*/]Microsoft.DirectX.Direct3D.PresentParameters/*01000020*/::set_AutoDepthStencilFormat(valuetype [Microsoft.DirectX.Direct3D/*23000004*/]Microsoft.DirectX.Direct3D.DepthFormat/*01000022*/) /* 0A000028 */
    IL_0023:  /* 06   |                  */ ldloc.0
    IL_0024:  /* 17   |                  */ ldc.i4.1
    IL_0025:  /* 6F   | (0A)000029       */ callvirt   instance void [Microsoft.DirectX.Direct3D/*23000004*/]Microsoft.DirectX.Direct3D.PresentParameters/*01000020*/::set_BackBufferCount(int32) /* 0A000029 */
    IL_002a:  /* 06   |                  */ ldloc.0
    IL_002b:  /* 1F   | 16               */ ldc.i4.s   22
    IL_002d:  /* 6F   | (0A)00002A       */ callvirt   instance void [Microsoft.DirectX.Direct3D/*23000004*/]Microsoft.DirectX.Direct3D.PresentParameters/*01000020*/::set_BackBufferFormat(valuetype [Microsoft.DirectX.Direct3D/*23000004*/]Microsoft.DirectX.Direct3D.Format/*01000023*/) /* 0A00002A */
    IL_0032:  /* 06   |                  */ ldloc.0
    IL_0033:  /* 20   | 58020000         */ ldc.i4     0x258
    IL_0038:  /* 6F   | (0A)00002B       */ callvirt   instance void [Microsoft.DirectX.Direct3D/*23000004*/]Microsoft.DirectX.Direct3D.PresentParameters/*01000020*/::set_BackBufferHeight(int32) /* 0A00002B */
    IL_003d:  /* 06   |                  */ ldloc.0
    IL_003e:  /* 20   | 20030000         */ ldc.i4     0x320
    IL_0043:  /* 6F   | (0A)00002C       */ callvirt   instance void [Microsoft.DirectX.Direct3D/*23000004*/]Microsoft.DirectX.Direct3D.PresentParameters/*01000020*/::set_BackBufferWidth(int32) /* 0A00002C */
    IL_0048:  /* 02   |                  */ ldarg.0
    IL_0049:  /* 16   |                  */ ldc.i4.0
    IL_004a:  /* 17   |                  */ ldc.i4.1
    IL_004b:  /* 02   |                  */ ldarg.0
    IL_004c:  /* 1F   | 20               */ ldc.i4.s   32
    IL_004e:  /* 17   |                  */ ldc.i4.1
    IL_004f:  /* 8D   | (01)000020       */ newarr     [Microsoft.DirectX.Direct3D/*23000004*/]Microsoft.DirectX.Direct3D.PresentParameters/*01000020*/
    IL_0054:  /* 13   | 05               */ stloc.s    V_5
    IL_0056:  /* 11   | 05               */ ldloc.s    V_5
    IL_0058:  /* 16   |                  */ ldc.i4.0
    IL_0059:  /* 06   |                  */ ldloc.0
    IL_005a:  /* A2   |                  */ stelem.ref
    IL_005b:  /* 11   | 05               */ ldloc.s    V_5
    IL_005d:  /* 73   | (0A)00002D       */ newobj     instance void [Microsoft.DirectX.Direct3D/*23000004*/]Microsoft.DirectX.Direct3D.Device/*01000006*/::.ctor(int32,
                                                                                                                                                                  valuetype [Microsoft.DirectX.Direct3D/*23000004*/]Microsoft.DirectX.Direct3D.DeviceType/*01000024*/,
                                                                                                                                                                  class [System.Windows.Forms_4/*23000005*/]System.Windows.Forms.Control/*01000016*/,
                                                                                                                                                                  valuetype [Microsoft.DirectX.Direct3D/*23000004*/]Microsoft.DirectX.Direct3D.CreateFlags/*01000025*/,
                                                                                                                                                                  class [Microsoft.DirectX.Direct3D/*23000004*/]Microsoft.DirectX.Direct3D.PresentParameters/*01000020*/[]) /* 0A00002D */
    IL_0062:  /* 7D   | (04)000007       */ stfld      class [Microsoft.DirectX.Direct3D/*23000004*/]Microsoft.DirectX.Direct3D.Device/*01000006*/ a.Demo/*02000003*/::dev2 /* 04000007 */
    IL_0067:  /* 02   |                  */ ldarg.0
    IL_0068:  /* 7B   | (04)000007       */ ldfld      class [Microsoft.DirectX.Direct3D/*23000004*/]Microsoft.DirectX.Direct3D.Device/*01000006*/ a.Demo/*02000003*/::dev2 /* 04000007 */
    IL_006d:  /* 6F   | (0A)00002E       */ callvirt   instance bool [Microsoft.DirectX.Direct3D/*23000004*/]Microsoft.DirectX.Direct3D.Device/*01000006*/::CheckCooperativeLevel() /* 0A00002E */
    IL_0072:  /* 26   |                  */ pop
    IL_0073:  /* 02   |                  */ ldarg.0
    IL_0074:  /* D0   | (01)000027       */ ldtoken    [Microsoft.DirectX.Direct3D/*23000004*/]Microsoft.DirectX.Direct3D.CustomVertex/*01000026*//PositionNormal/*01000027*/
    IL_0079:  /* 28   | (0A)00002F       */ call       class [mscorlib/*23000001*/]System.Type/*01000028*/ [mscorlib/*23000001*/]System.Type/*01000028*/::GetTypeFromHandle(valuetype [mscorlib/*23000001*/]System.RuntimeTypeHandle/*01000029*/) /* 0A00002F */
    IL_007e:  /* 1F   | 64               */ ldc.i4.s   100
    IL_0080:  /* 02   |                  */ ldarg.0
    IL_0081:  /* 7B   | (04)000007       */ ldfld      class [Microsoft.DirectX.Direct3D/*23000004*/]Microsoft.DirectX.Direct3D.Device/*01000006*/ a.Demo/*02000003*/::dev2 /* 04000007 */
    IL_0086:  /* 1E   |                  */ ldc.i4.8
    IL_0087:  /* 1F   | 12               */ ldc.i4.s   18
    IL_0089:  /* 16   |                  */ ldc.i4.0
    IL_008a:  /* 73   | (0A)000030       */ newobj     instance void [Microsoft.DirectX.Direct3D/*23000004*/]Microsoft.DirectX.Direct3D.VertexBuffer/*01000007*/::.ctor(class [mscorlib_5/*23000006*/]System.Type/*0100002A*/,
                                                                                                                                                                        int32,
                                                                                                                                                                        class [Microsoft.DirectX.Direct3D/*23000004*/]Microsoft.DirectX.Direct3D.Device/*01000006*/,
                                                                                                                                                                        valuetype [Microsoft.DirectX.Direct3D/*23000004*/]Microsoft.DirectX.Direct3D.Usage/*0100002B*/,
                                                                                                                                                                        valuetype [Microsoft.DirectX.Direct3D/*23000004*/]Microsoft.DirectX.Direct3D.VertexFormats/*0100002C*/,
                                                                                                                                                                        valuetype [Microsoft.DirectX.Direct3D/*23000004*/]Microsoft.DirectX.Direct3D.Pool/*0100002D*/) /* 0A000030 */
    IL_008f:  /* 7D   | (04)000008       */ stfld      class [Microsoft.DirectX.Direct3D/*23000004*/]Microsoft.DirectX.Direct3D.VertexBuffer/*01000007*/ a.Demo/*02000003*/::vb /* 04000008 */
    IL_0094:  /* 02   |                  */ ldarg.0
    IL_0095:  /* 7B   | (04)000008       */ ldfld      class [Microsoft.DirectX.Direct3D/*23000004*/]Microsoft.DirectX.Direct3D.VertexBuffer/*01000007*/ a.Demo/*02000003*/::vb /* 04000008 */
    IL_009a:  /* 16   |                  */ ldc.i4.0
    IL_009b:  /* 16   |                  */ ldc.i4.0
    IL_009c:  /* 6F   | (0A)000031       */ callvirt   instance class [mscorlib_5/*23000006*/]System.Array/*0100001C*/ [Microsoft.DirectX.Direct3D/*23000004*/]Microsoft.DirectX.Direct3D.VertexBuffer/*01000007*/::Lock(int32,
                                                                                                                                                                                                                         valuetype [Microsoft.DirectX.Direct3D/*23000004*/]Microsoft.DirectX.Direct3D.LockFlags/*0100002E*/) /* 0A000031 */
    IL_00a1:  /* 74   | (1B)000001       */ castclass  valuetype [Microsoft.DirectX.Direct3D/*23000004*/]Microsoft.DirectX.Direct3D.CustomVertex/*01000026*//PositionNormal/*01000027*/[]/*1B000001*/
    IL_00a6:  /* 0B   |                  */ stloc.1
    IL_00a7:  /* 16   |                  */ ldc.i4.0
    IL_00a8:  /* 0C   |                  */ stloc.2
    IL_00a9:  /* 38   | F7000000         */ br         IL_01a5

    IL_00ae:  /* 23   | 182D4454FB211940 */ ldc.r8     6.2831853071795862
    IL_00b7:  /* 08   |                  */ ldloc.2
    IL_00b8:  /* 6C   |                  */ conv.r8
    IL_00b9:  /* 5A   |                  */ mul
    IL_00ba:  /* 6B   |                  */ conv.r4
    IL_00bb:  /* 22   | 00001C42         */ ldc.r4     39.
    IL_00c0:  /* 5B   |                  */ div
    IL_00c1:  /* 0D   |                  */ stloc.3
    IL_00c2:  /* 22   | 0000C03F         */ ldc.r4     1.5
    IL_00c7:  /* 08   |                  */ ldloc.2
    IL_00c8:  /* 6B   |                  */ conv.r4
    IL_00c9:  /* 22   | 00004040         */ ldc.r4     3.
    IL_00ce:  /* 5A   |                  */ mul
    IL_00cf:  /* 22   | DB0F4940         */ ldc.r4     3.1415927
    IL_00d4:  /* 5A   |                  */ mul
    IL_00d5:  /* 22   | 0000C841         */ ldc.r4     25.
    IL_00da:  /* 5B   |                  */ div
    IL_00db:  /* 6C   |                  */ conv.r8
    IL_00dc:  /* 28   | (0A)00000A       */ call       float64 [mscorlib/*23000001*/]System.Math/*0100000C*/::Sin(float64) /* 0A00000A */
    IL_00e1:  /* 6B   |                  */ conv.r4
    IL_00e2:  /* 58   |                  */ add
    IL_00e3:  /* 13   | 04               */ stloc.s    V_4
    IL_00e5:  /* 07   |                  */ ldloc.1
    IL_00e6:  /* 18   |                  */ ldc.i4.2
    IL_00e7:  /* 08   |                  */ ldloc.2
    IL_00e8:  /* 5A   |                  */ mul
    IL_00e9:  /* 8F   | (01)000027       */ ldelema    [Microsoft.DirectX.Direct3D/*23000004*/]Microsoft.DirectX.Direct3D.CustomVertex/*01000026*//PositionNormal/*01000027*/
    IL_00ee:  /* 11   | 04               */ ldloc.s    V_4
    IL_00f0:  /* 09   |                  */ ldloc.3
    IL_00f1:  /* 6C   |                  */ conv.r8
    IL_00f2:  /* 28   | (0A)00000A       */ call       float64 [mscorlib/*23000001*/]System.Math/*0100000C*/::Sin(float64) /* 0A00000A */
    IL_00f7:  /* 6B   |                  */ conv.r4
    IL_00f8:  /* 5A   |                  */ mul
    IL_00f9:  /* 22   | 000080BF         */ ldc.r4     -1.
    IL_00fe:  /* 11   | 04               */ ldloc.s    V_4
    IL_0100:  /* 09   |                  */ ldloc.3
    IL_0101:  /* 6C   |                  */ conv.r8
    IL_0102:  /* 28   | (0A)000032       */ call       float64 [mscorlib/*23000001*/]System.Math/*0100000C*/::Cos(float64) /* 0A000032 */
    IL_0107:  /* 6B   |                  */ conv.r4
    IL_0108:  /* 5A   |                  */ mul
    IL_0109:  /* 73   | (0A)000033       */ newobj     instance void [Microsoft.DirectX/*23000007*/]Microsoft.DirectX.Vector3/*0100002F*/::.ctor(float32,
                                                                                                                                                 float32,
                                                                                                                                                 float32) /* 0A000033 */
    IL_010e:  /* 28   | (0A)000034       */ call       instance void [Microsoft.DirectX.Direct3D/*23000004*/]Microsoft.DirectX.Direct3D.CustomVertex/*01000026*//PositionNormal/*01000027*/::set_Position(valuetype [Microsoft.DirectX/*23000007*/]Microsoft.DirectX.Vector3/*0100002F*/) /* 0A000034 */
    IL_0113:  /* 07   |                  */ ldloc.1
    IL_0114:  /* 18   |                  */ ldc.i4.2
    IL_0115:  /* 08   |                  */ ldloc.2
    IL_0116:  /* 5A   |                  */ mul
    IL_0117:  /* 8F   | (01)000027       */ ldelema    [Microsoft.DirectX.Direct3D/*23000004*/]Microsoft.DirectX.Direct3D.CustomVertex/*01000026*//PositionNormal/*01000027*/
    IL_011c:  /* 11   | 04               */ ldloc.s    V_4
    IL_011e:  /* 09   |                  */ ldloc.3
    IL_011f:  /* 6C   |                  */ conv.r8
    IL_0120:  /* 28   | (0A)00000A       */ call       float64 [mscorlib/*23000001*/]System.Math/*0100000C*/::Sin(float64) /* 0A00000A */
    IL_0125:  /* 6B   |                  */ conv.r4
    IL_0126:  /* 5A   |                  */ mul
    IL_0127:  /* 22   | 00000000         */ ldc.r4     0.0
    IL_012c:  /* 11   | 04               */ ldloc.s    V_4
    IL_012e:  /* 09   |                  */ ldloc.3
    IL_012f:  /* 6C   |                  */ conv.r8
    IL_0130:  /* 28   | (0A)000032       */ call       float64 [mscorlib/*23000001*/]System.Math/*0100000C*/::Cos(float64) /* 0A000032 */
    IL_0135:  /* 6B   |                  */ conv.r4
    IL_0136:  /* 5A   |                  */ mul
    IL_0137:  /* 73   | (0A)000033       */ newobj     instance void [Microsoft.DirectX/*23000007*/]Microsoft.DirectX.Vector3/*0100002F*/::.ctor(float32,
                                                                                                                                                 float32,
                                                                                                                                                 float32) /* 0A000033 */
    IL_013c:  /* 28   | (0A)000035       */ call       instance void [Microsoft.DirectX.Direct3D/*23000004*/]Microsoft.DirectX.Direct3D.CustomVertex/*01000026*//PositionNormal/*01000027*/::set_Normal(valuetype [Microsoft.DirectX/*23000007*/]Microsoft.DirectX.Vector3/*0100002F*/) /* 0A000035 */
    IL_0141:  /* 07   |                  */ ldloc.1
    IL_0142:  /* 18   |                  */ ldc.i4.2
    IL_0143:  /* 08   |                  */ ldloc.2
    IL_0144:  /* 5A   |                  */ mul
    IL_0145:  /* 17   |                  */ ldc.i4.1
    IL_0146:  /* 58   |                  */ add
    IL_0147:  /* 8F   | (01)000027       */ ldelema    [Microsoft.DirectX.Direct3D/*23000004*/]Microsoft.DirectX.Direct3D.CustomVertex/*01000026*//PositionNormal/*01000027*/
    IL_014c:  /* 11   | 04               */ ldloc.s    V_4
    IL_014e:  /* 09   |                  */ ldloc.3
    IL_014f:  /* 6C   |                  */ conv.r8
    IL_0150:  /* 28   | (0A)00000A       */ call       float64 [mscorlib/*23000001*/]System.Math/*0100000C*/::Sin(float64) /* 0A00000A */
    IL_0155:  /* 6B   |                  */ conv.r4
    IL_0156:  /* 5A   |                  */ mul
    IL_0157:  /* 22   | 0000803F         */ ldc.r4     1.
    IL_015c:  /* 11   | 04               */ ldloc.s    V_4
    IL_015e:  /* 09   |                  */ ldloc.3
    IL_015f:  /* 6C   |                  */ conv.r8
    IL_0160:  /* 28   | (0A)000032       */ call       float64 [mscorlib/*23000001*/]System.Math/*0100000C*/::Cos(float64) /* 0A000032 */
    IL_0165:  /* 6B   |                  */ conv.r4
    IL_0166:  /* 5A   |                  */ mul
    IL_0167:  /* 73   | (0A)000033       */ newobj     instance void [Microsoft.DirectX/*23000007*/]Microsoft.DirectX.Vector3/*0100002F*/::.ctor(float32,
                                                                                                                                                 float32,
                                                                                                                                                 float32) /* 0A000033 */
    IL_016c:  /* 28   | (0A)000034       */ call       instance void [Microsoft.DirectX.Direct3D/*23000004*/]Microsoft.DirectX.Direct3D.CustomVertex/*01000026*//PositionNormal/*01000027*/::set_Position(valuetype [Microsoft.DirectX/*23000007*/]Microsoft.DirectX.Vector3/*0100002F*/) /* 0A000034 */
    IL_0171:  /* 07   |                  */ ldloc.1
    IL_0172:  /* 18   |                  */ ldc.i4.2
    IL_0173:  /* 08   |                  */ ldloc.2
    IL_0174:  /* 5A   |                  */ mul
    IL_0175:  /* 17   |                  */ ldc.i4.1
    IL_0176:  /* 58   |                  */ add
    IL_0177:  /* 8F   | (01)000027       */ ldelema    [Microsoft.DirectX.Direct3D/*23000004*/]Microsoft.DirectX.Direct3D.CustomVertex/*01000026*//PositionNormal/*01000027*/
    IL_017c:  /* 11   | 04               */ ldloc.s    V_4
    IL_017e:  /* 09   |                  */ ldloc.3
    IL_017f:  /* 6C   |                  */ conv.r8
    IL_0180:  /* 28   | (0A)00000A       */ call       float64 [mscorlib/*23000001*/]System.Math/*0100000C*/::Sin(float64) /* 0A00000A */
    IL_0185:  /* 6B   |                  */ conv.r4
    IL_0186:  /* 5A   |                  */ mul
    IL_0187:  /* 22   | 00000000         */ ldc.r4     0.0
    IL_018c:  /* 11   | 04               */ ldloc.s    V_4
    IL_018e:  /* 09   |                  */ ldloc.3
    IL_018f:  /* 6C   |                  */ conv.r8
    IL_0190:  /* 28   | (0A)000032       */ call       float64 [mscorlib/*23000001*/]System.Math/*0100000C*/::Cos(float64) /* 0A000032 */
    IL_0195:  /* 6B   |                  */ conv.r4
    IL_0196:  /* 5A   |                  */ mul
    IL_0197:  /* 73   | (0A)000033       */ newobj     instance void [Microsoft.DirectX/*23000007*/]Microsoft.DirectX.Vector3/*0100002F*/::.ctor(float32,
                                                                                                                                                 float32,
                                                                                                                                                 float32) /* 0A000033 */
    IL_019c:  /* 28   | (0A)000035       */ call       instance void [Microsoft.DirectX.Direct3D/*23000004*/]Microsoft.DirectX.Direct3D.CustomVertex/*01000026*//PositionNormal/*01000027*/::set_Normal(valuetype [Microsoft.DirectX/*23000007*/]Microsoft.DirectX.Vector3/*0100002F*/) /* 0A000035 */
    IL_01a1:  /* 08   |                  */ ldloc.2
    IL_01a2:  /* 17   |                  */ ldc.i4.1
    IL_01a3:  /* 58   |                  */ add
    IL_01a4:  /* 0C   |                  */ stloc.2
    IL_01a5:  /* 08   |                  */ ldloc.2
    IL_01a6:  /* 1F   | 32               */ ldc.i4.s   50
    IL_01a8:  /* 3F   | 01FFFFFF         */ blt        IL_00ae

    IL_01ad:  /* 02   |                  */ ldarg.0
    IL_01ae:  /* 7B   | (04)000008       */ ldfld      class [Microsoft.DirectX.Direct3D/*23000004*/]Microsoft.DirectX.Direct3D.VertexBuffer/*01000007*/ a.Demo/*02000003*/::vb /* 04000008 */
    IL_01b3:  /* 6F   | (0A)000036       */ callvirt   instance void [Microsoft.DirectX.Direct3D/*23000004*/]Microsoft.DirectX.Direct3D.VertexBuffer/*01000007*/::Unlock() /* 0A000036 */
    IL_01b8:  /* 02   |                  */ ldarg.0
    IL_01b9:  /* 7B   | (04)000007       */ ldfld      class [Microsoft.DirectX.Direct3D/*23000004*/]Microsoft.DirectX.Direct3D.Device/*01000006*/ a.Demo/*02000003*/::dev2 /* 04000007 */
    IL_01be:  /* 6F   | (0A)000037       */ callvirt   instance class [Microsoft.DirectX.Direct3D/*23000004*/]Microsoft.DirectX.Direct3D.RenderStateManager/*01000030*/ [Microsoft.DirectX.Direct3D/*23000004*/]Microsoft.DirectX.Direct3D.Device/*01000006*/::get_RenderState() /* 0A000037 */
    IL_01c3:  /* 17   |                  */ ldc.i4.1
    IL_01c4:  /* 6F   | (0A)000038       */ callvirt   instance void [Microsoft.DirectX.Direct3D/*23000004*/]Microsoft.DirectX.Direct3D.RenderStateManager/*01000030*/::set_CullMode(valuetype [Microsoft.DirectX.Direct3D/*23000004*/]Microsoft.DirectX.Direct3D.Cull/*01000031*/) /* 0A000038 */
    IL_01c9:  /* 02   |                  */ ldarg.0
    IL_01ca:  /* 7B   | (04)000007       */ ldfld      class [Microsoft.DirectX.Direct3D/*23000004*/]Microsoft.DirectX.Direct3D.Device/*01000006*/ a.Demo/*02000003*/::dev2 /* 04000007 */
    IL_01cf:  /* 6F   | (0A)000037       */ callvirt   instance class [Microsoft.DirectX.Direct3D/*23000004*/]Microsoft.DirectX.Direct3D.RenderStateManager/*01000030*/ [Microsoft.DirectX.Direct3D/*23000004*/]Microsoft.DirectX.Direct3D.Device/*01000006*/::get_RenderState() /* 0A000037 */
    IL_01d4:  /* 17   |                  */ ldc.i4.1
    IL_01d5:  /* 6F   | (0A)000039       */ callvirt   instance void [Microsoft.DirectX.Direct3D/*23000004*/]Microsoft.DirectX.Direct3D.RenderStateManager/*01000030*/::set_ZBufferEnable(bool) /* 0A000039 */
    IL_01da:  /* 02   |                  */ ldarg.0
    IL_01db:  /* 7B   | (04)000007       */ ldfld      class [Microsoft.DirectX.Direct3D/*23000004*/]Microsoft.DirectX.Direct3D.Device/*01000006*/ a.Demo/*02000003*/::dev2 /* 04000007 */
    IL_01e0:  /* 6F   | (0A)000037       */ callvirt   instance class [Microsoft.DirectX.Direct3D/*23000004*/]Microsoft.DirectX.Direct3D.RenderStateManager/*01000030*/ [Microsoft.DirectX.Direct3D/*23000004*/]Microsoft.DirectX.Direct3D.Device/*01000006*/::get_RenderState() /* 0A000037 */
    IL_01e5:  /* 17   |                  */ ldc.i4.1
    IL_01e6:  /* 6F   | (0A)00003A       */ callvirt   instance void [Microsoft.DirectX.Direct3D/*23000004*/]Microsoft.DirectX.Direct3D.RenderStateManager/*01000030*/::set_Lighting(bool) /* 0A00003A */
    IL_01eb:  /* 2A   |                  */ ret
  } // end of method Demo::R_IN

  .method /*06000013*/ public hidebysig instance void 
          R_FR() cil managed
  // SIG: 20 00 01
  {
    // Method begins at RVA 0x2a24
    // Code size       517 (0x205)
    .maxstack  7
    .locals /*11000007*/ init (valuetype [System.Drawing/*23000008*/]System.Drawing.Color/*01000032*/ V_0,
             valuetype [Microsoft.DirectX.Direct3D/*23000004*/]Microsoft.DirectX.Direct3D.Material/*01000035*/ V_1)
    IL_0000:  /* 02   |                  */ ldarg.0
    IL_0001:  /* 7B   | (04)000007       */ ldfld      class [Microsoft.DirectX.Direct3D/*23000004*/]Microsoft.DirectX.Direct3D.Device/*01000006*/ a.Demo/*02000003*/::dev2 /* 04000007 */
    IL_0006:  /* 19   |                  */ ldc.i4.3
    IL_0007:  /* 28   | (0A)00003B       */ call       valuetype [System.Drawing/*23000008*/]System.Drawing.Color/*01000032*/ [System.Drawing/*23000008*/]System.Drawing.Color/*01000032*/::get_Blue() /* 0A00003B */
    IL_000c:  /* 22   | 0000803F         */ ldc.r4     1.
    IL_0011:  /* 16   |                  */ ldc.i4.0
    IL_0012:  /* 6F   | (0A)00003C       */ callvirt   instance void [Microsoft.DirectX.Direct3D/*23000004*/]Microsoft.DirectX.Direct3D.Device/*01000006*/::Clear(valuetype [Microsoft.DirectX.Direct3D/*23000004*/]Microsoft.DirectX.Direct3D.ClearFlags/*01000033*/,
                                                                                                                                                                  valuetype [System.Drawing_8/*23000009*/]System.Drawing.Color/*01000034*/,
                                                                                                                                                                  float32,
                                                                                                                                                                  int32) /* 0A00003C */
    IL_0017:  /* 02   |                  */ ldarg.0
    IL_0018:  /* 7B   | (04)000007       */ ldfld      class [Microsoft.DirectX.Direct3D/*23000004*/]Microsoft.DirectX.Direct3D.Device/*01000006*/ a.Demo/*02000003*/::dev2 /* 04000007 */
    IL_001d:  /* 6F   | (0A)00003D       */ callvirt   instance void [Microsoft.DirectX.Direct3D/*23000004*/]Microsoft.DirectX.Direct3D.Device/*01000006*/::BeginScene() /* 0A00003D */
    IL_0022:  /* 28   | (0A)00003E       */ call       valuetype [System.Drawing/*23000008*/]System.Drawing.Color/*01000032*/ [System.Drawing/*23000008*/]System.Drawing.Color/*01000032*/::get_White() /* 0A00003E */
    IL_0027:  /* 0A   |                  */ stloc.0
    IL_0028:  /* 12   | 01               */ ldloca.s   V_1
    IL_002a:  /* 28   | (0A)00003F       */ call       instance void [Microsoft.DirectX.Direct3D/*23000004*/]Microsoft.DirectX.Direct3D.Material/*01000035*/::.ctor() /* 0A00003F */
    IL_002f:  /* 12   | 01               */ ldloca.s   V_1
    IL_0031:  /* 06   |                  */ ldloc.0
    IL_0032:  /* 28   | (0A)000040       */ call       instance void [Microsoft.DirectX.Direct3D/*23000004*/]Microsoft.DirectX.Direct3D.Material/*01000035*/::set_Diffuse(valuetype [System.Drawing_8/*23000009*/]System.Drawing.Color/*01000034*/) /* 0A000040 */
    IL_0037:  /* 12   | 01               */ ldloca.s   V_1
    IL_0039:  /* 06   |                  */ ldloc.0
    IL_003a:  /* 28   | (0A)000041       */ call       instance void [Microsoft.DirectX.Direct3D/*23000004*/]Microsoft.DirectX.Direct3D.Material/*01000035*/::set_Ambient(valuetype [System.Drawing_8/*23000009*/]System.Drawing.Color/*01000034*/) /* 0A000041 */
    IL_003f:  /* 02   |                  */ ldarg.0
    IL_0040:  /* 7B   | (04)000007       */ ldfld      class [Microsoft.DirectX.Direct3D/*23000004*/]Microsoft.DirectX.Direct3D.Device/*01000006*/ a.Demo/*02000003*/::dev2 /* 04000007 */
    IL_0045:  /* 07   |                  */ ldloc.1
    IL_0046:  /* 6F   | (0A)000042       */ callvirt   instance void [Microsoft.DirectX.Direct3D/*23000004*/]Microsoft.DirectX.Direct3D.Device/*01000006*/::set_Material(valuetype [Microsoft.DirectX.Direct3D/*23000004*/]Microsoft.DirectX.Direct3D.Material/*01000035*/) /* 0A000042 */
    IL_004b:  /* 02   |                  */ ldarg.0
    IL_004c:  /* 7B   | (04)000007       */ ldfld      class [Microsoft.DirectX.Direct3D/*23000004*/]Microsoft.DirectX.Direct3D.Device/*01000006*/ a.Demo/*02000003*/::dev2 /* 04000007 */
    IL_0051:  /* 6F   | (0A)000043       */ callvirt   instance class [Microsoft.DirectX.Direct3D/*23000004*/]Microsoft.DirectX.Direct3D.LightsCollection/*01000036*/ [Microsoft.DirectX.Direct3D/*23000004*/]Microsoft.DirectX.Direct3D.Device/*01000006*/::get_Lights() /* 0A000043 */
    IL_0056:  /* 16   |                  */ ldc.i4.0
    IL_0057:  /* 6F   | (0A)000044       */ callvirt   instance class [Microsoft.DirectX.Direct3D/*23000004*/]Microsoft.DirectX.Direct3D.Light/*01000037*/ [Microsoft.DirectX.Direct3D/*23000004*/]Microsoft.DirectX.Direct3D.LightsCollection/*01000036*/::get_Item(int32) /* 0A000044 */
    IL_005c:  /* 19   |                  */ ldc.i4.3
    IL_005d:  /* 6F   | (0A)000045       */ callvirt   instance void [Microsoft.DirectX.Direct3D/*23000004*/]Microsoft.DirectX.Direct3D.Light/*01000037*/::set_Type(valuetype [Microsoft.DirectX.Direct3D/*23000004*/]Microsoft.DirectX.Direct3D.LightType/*01000038*/) /* 0A000045 */
    IL_0062:  /* 02   |                  */ ldarg.0
    IL_0063:  /* 7B   | (04)000007       */ ldfld      class [Microsoft.DirectX.Direct3D/*23000004*/]Microsoft.DirectX.Direct3D.Device/*01000006*/ a.Demo/*02000003*/::dev2 /* 04000007 */
    IL_0068:  /* 6F   | (0A)000043       */ callvirt   instance class [Microsoft.DirectX.Direct3D/*23000004*/]Microsoft.DirectX.Direct3D.LightsCollection/*01000036*/ [Microsoft.DirectX.Direct3D/*23000004*/]Microsoft.DirectX.Direct3D.Device/*01000006*/::get_Lights() /* 0A000043 */
    IL_006d:  /* 16   |                  */ ldc.i4.0
    IL_006e:  /* 6F   | (0A)000044       */ callvirt   instance class [Microsoft.DirectX.Direct3D/*23000004*/]Microsoft.DirectX.Direct3D.Light/*01000037*/ [Microsoft.DirectX.Direct3D/*23000004*/]Microsoft.DirectX.Direct3D.LightsCollection/*01000036*/::get_Item(int32) /* 0A000044 */
    IL_0073:  /* 28   | (0A)000046       */ call       valuetype [System.Drawing/*23000008*/]System.Drawing.Color/*01000032*/ [System.Drawing/*23000008*/]System.Drawing.Color/*01000032*/::get_DarkTurquoise() /* 0A000046 */
    IL_0078:  /* 6F   | (0A)000047       */ callvirt   instance void [Microsoft.DirectX.Direct3D/*23000004*/]Microsoft.DirectX.Direct3D.Light/*01000037*/::set_Diffuse(valuetype [System.Drawing_8/*23000009*/]System.Drawing.Color/*01000034*/) /* 0A000047 */
    IL_007d:  /* 02   |                  */ ldarg.0
    IL_007e:  /* 7B   | (04)000007       */ ldfld      class [Microsoft.DirectX.Direct3D/*23000004*/]Microsoft.DirectX.Direct3D.Device/*01000006*/ a.Demo/*02000003*/::dev2 /* 04000007 */
    IL_0083:  /* 6F   | (0A)000043       */ callvirt   instance class [Microsoft.DirectX.Direct3D/*23000004*/]Microsoft.DirectX.Direct3D.LightsCollection/*01000036*/ [Microsoft.DirectX.Direct3D/*23000004*/]Microsoft.DirectX.Direct3D.Device/*01000006*/::get_Lights() /* 0A000043 */
    IL_0088:  /* 16   |                  */ ldc.i4.0
    IL_0089:  /* 6F   | (0A)000044       */ callvirt   instance class [Microsoft.DirectX.Direct3D/*23000004*/]Microsoft.DirectX.Direct3D.Light/*01000037*/ [Microsoft.DirectX.Direct3D/*23000004*/]Microsoft.DirectX.Direct3D.LightsCollection/*01000036*/::get_Item(int32) /* 0A000044 */
    IL_008e:  /* 28   | (0A)000048       */ call       int32 [mscorlib/*23000001*/]System.Environment/*01000039*/::get_TickCount() /* 0A000048 */
    IL_0093:  /* 6B   |                  */ conv.r4
    IL_0094:  /* 22   | 00800944         */ ldc.r4     550.
    IL_0099:  /* 5B   |                  */ div
    IL_009a:  /* 6C   |                  */ conv.r8
    IL_009b:  /* 28   | (0A)000032       */ call       float64 [mscorlib/*23000001*/]System.Math/*0100000C*/::Cos(float64) /* 0A000032 */
    IL_00a0:  /* 6B   |                  */ conv.r4
    IL_00a1:  /* 22   | 0000803F         */ ldc.r4     1.
    IL_00a6:  /* 28   | (0A)000048       */ call       int32 [mscorlib/*23000001*/]System.Environment/*01000039*/::get_TickCount() /* 0A000048 */
    IL_00ab:  /* 6B   |                  */ conv.r4
    IL_00ac:  /* 22   | 00007A43         */ ldc.r4     250.
    IL_00b1:  /* 5B   |                  */ div
    IL_00b2:  /* 6C   |                  */ conv.r8
    IL_00b3:  /* 28   | (0A)00000A       */ call       float64 [mscorlib/*23000001*/]System.Math/*0100000C*/::Sin(float64) /* 0A00000A */
    IL_00b8:  /* 6B   |                  */ conv.r4
    IL_00b9:  /* 73   | (0A)000033       */ newobj     instance void [Microsoft.DirectX/*23000007*/]Microsoft.DirectX.Vector3/*0100002F*/::.ctor(float32,
                                                                                                                                                 float32,
                                                                                                                                                 float32) /* 0A000033 */
    IL_00be:  /* 6F   | (0A)000049       */ callvirt   instance void [Microsoft.DirectX.Direct3D/*23000004*/]Microsoft.DirectX.Direct3D.Light/*01000037*/::set_Direction(valuetype [Microsoft.DirectX/*23000007*/]Microsoft.DirectX.Vector3/*0100002F*/) /* 0A000049 */
    IL_00c3:  /* 02   |                  */ ldarg.0
    IL_00c4:  /* 7B   | (04)000007       */ ldfld      class [Microsoft.DirectX.Direct3D/*23000004*/]Microsoft.DirectX.Direct3D.Device/*01000006*/ a.Demo/*02000003*/::dev2 /* 04000007 */
    IL_00c9:  /* 6F   | (0A)000043       */ callvirt   instance class [Microsoft.DirectX.Direct3D/*23000004*/]Microsoft.DirectX.Direct3D.LightsCollection/*01000036*/ [Microsoft.DirectX.Direct3D/*23000004*/]Microsoft.DirectX.Direct3D.Device/*01000006*/::get_Lights() /* 0A000043 */
    IL_00ce:  /* 16   |                  */ ldc.i4.0
    IL_00cf:  /* 6F   | (0A)000044       */ callvirt   instance class [Microsoft.DirectX.Direct3D/*23000004*/]Microsoft.DirectX.Direct3D.Light/*01000037*/ [Microsoft.DirectX.Direct3D/*23000004*/]Microsoft.DirectX.Direct3D.LightsCollection/*01000036*/::get_Item(int32) /* 0A000044 */
    IL_00d4:  /* 17   |                  */ ldc.i4.1
    IL_00d5:  /* 6F   | (0A)00004A       */ callvirt   instance void [Microsoft.DirectX.Direct3D/*23000004*/]Microsoft.DirectX.Direct3D.Light/*01000037*/::set_Enabled(bool) /* 0A00004A */
    IL_00da:  /* 02   |                  */ ldarg.0
    IL_00db:  /* 7B   | (04)000007       */ ldfld      class [Microsoft.DirectX.Direct3D/*23000004*/]Microsoft.DirectX.Direct3D.Device/*01000006*/ a.Demo/*02000003*/::dev2 /* 04000007 */
    IL_00e0:  /* 6F   | (0A)000037       */ callvirt   instance class [Microsoft.DirectX.Direct3D/*23000004*/]Microsoft.DirectX.Direct3D.RenderStateManager/*01000030*/ [Microsoft.DirectX.Direct3D/*23000004*/]Microsoft.DirectX.Direct3D.Device/*01000006*/::get_RenderState() /* 0A000037 */
    IL_00e5:  /* 20   | 20202000         */ ldc.i4     0x202020
    IL_00ea:  /* 28   | (0A)00004B       */ call       valuetype [System.Drawing/*23000008*/]System.Drawing.Color/*01000032*/ [System.Drawing/*23000008*/]System.Drawing.Color/*01000032*/::FromArgb(int32) /* 0A00004B */
    IL_00ef:  /* 6F   | (0A)00004C       */ callvirt   instance void [Microsoft.DirectX.Direct3D/*23000004*/]Microsoft.DirectX.Direct3D.RenderStateManager/*01000030*/::set_Ambient(valuetype [System.Drawing_8/*23000009*/]System.Drawing.Color/*01000034*/) /* 0A00004C */
    IL_00f4:  /* 02   |                  */ ldarg.0
    IL_00f5:  /* 7B   | (04)000007       */ ldfld      class [Microsoft.DirectX.Direct3D/*23000004*/]Microsoft.DirectX.Direct3D.Device/*01000006*/ a.Demo/*02000003*/::dev2 /* 04000007 */
    IL_00fa:  /* 6F   | (0A)00004D       */ callvirt   instance class [Microsoft.DirectX.Direct3D/*23000004*/]Microsoft.DirectX.Direct3D.Transforms/*0100003A*/ [Microsoft.DirectX.Direct3D/*23000004*/]Microsoft.DirectX.Direct3D.Device/*01000006*/::get_Transform() /* 0A00004D */
    IL_00ff:  /* 28   | (0A)000048       */ call       int32 [mscorlib/*23000001*/]System.Environment/*01000039*/::get_TickCount() /* 0A000048 */
    IL_0104:  /* 6B   |                  */ conv.r4
    IL_0105:  /* 22   | 00007A43         */ ldc.r4     250.
    IL_010a:  /* 5B   |                  */ div
    IL_010b:  /* 6C   |                  */ conv.r8
    IL_010c:  /* 28   | (0A)000032       */ call       float64 [mscorlib/*23000001*/]System.Math/*0100000C*/::Cos(float64) /* 0A000032 */
    IL_0111:  /* 6B   |                  */ conv.r4
    IL_0112:  /* 22   | 0000803F         */ ldc.r4     1.
    IL_0117:  /* 28   | (0A)000048       */ call       int32 [mscorlib/*23000001*/]System.Environment/*01000039*/::get_TickCount() /* 0A000048 */
    IL_011c:  /* 6B   |                  */ conv.r4
    IL_011d:  /* 22   | 00007A43         */ ldc.r4     250.
    IL_0122:  /* 5B   |                  */ div
    IL_0123:  /* 6C   |                  */ conv.r8
    IL_0124:  /* 28   | (0A)00000A       */ call       float64 [mscorlib/*23000001*/]System.Math/*0100000C*/::Sin(float64) /* 0A00000A */
    IL_0129:  /* 6B   |                  */ conv.r4
    IL_012a:  /* 73   | (0A)000033       */ newobj     instance void [Microsoft.DirectX/*23000007*/]Microsoft.DirectX.Vector3/*0100002F*/::.ctor(float32,
                                                                                                                                                 float32,
                                                                                                                                                 float32) /* 0A000033 */
    IL_012f:  /* 28   | (0A)000048       */ call       int32 [mscorlib/*23000001*/]System.Environment/*01000039*/::get_TickCount() /* 0A000048 */
    IL_0134:  /* 6B   |                  */ conv.r4
    IL_0135:  /* 22   | 00803B45         */ ldc.r4     3000.
    IL_013a:  /* 5B   |                  */ div
    IL_013b:  /* 28   | (0A)00004E       */ call       valuetype [Microsoft.DirectX/*23000007*/]Microsoft.DirectX.Matrix/*0100003B*/ [Microsoft.DirectX/*23000007*/]Microsoft.DirectX.Matrix/*0100003B*/::RotationAxis(valuetype [Microsoft.DirectX/*23000007*/]Microsoft.DirectX.Vector3/*0100002F*/,
                                                                                                                                                                                                                       float32) /* 0A00004E */
    IL_0140:  /* 6F   | (0A)00004F       */ callvirt   instance void [Microsoft.DirectX.Direct3D/*23000004*/]Microsoft.DirectX.Direct3D.Transforms/*0100003A*/::set_World(valuetype [Microsoft.DirectX/*23000007*/]Microsoft.DirectX.Matrix/*0100003B*/) /* 0A00004F */
    IL_0145:  /* 02   |                  */ ldarg.0
    IL_0146:  /* 7B   | (04)000007       */ ldfld      class [Microsoft.DirectX.Direct3D/*23000004*/]Microsoft.DirectX.Direct3D.Device/*01000006*/ a.Demo/*02000003*/::dev2 /* 04000007 */
    IL_014b:  /* 6F   | (0A)00004D       */ callvirt   instance class [Microsoft.DirectX.Direct3D/*23000004*/]Microsoft.DirectX.Direct3D.Transforms/*0100003A*/ [Microsoft.DirectX.Direct3D/*23000004*/]Microsoft.DirectX.Direct3D.Device/*01000006*/::get_Transform() /* 0A00004D */
    IL_0150:  /* 22   | 00000000         */ ldc.r4     0.0
    IL_0155:  /* 22   | 00008040         */ ldc.r4     4.
    IL_015a:  /* 22   | 0000A0C0         */ ldc.r4     -5.
    IL_015f:  /* 73   | (0A)000033       */ newobj     instance void [Microsoft.DirectX/*23000007*/]Microsoft.DirectX.Vector3/*0100002F*/::.ctor(float32,
                                                                                                                                                 float32,
                                                                                                                                                 float32) /* 0A000033 */
    IL_0164:  /* 22   | 00000000         */ ldc.r4     0.0
    IL_0169:  /* 22   | 00000000         */ ldc.r4     0.0
    IL_016e:  /* 22   | 00000000         */ ldc.r4     0.0
    IL_0173:  /* 73   | (0A)000033       */ newobj     instance void [Microsoft.DirectX/*23000007*/]Microsoft.DirectX.Vector3/*0100002F*/::.ctor(float32,
                                                                                                                                                 float32,
                                                                                                                                                 float32) /* 0A000033 */
    IL_0178:  /* 22   | 00000000         */ ldc.r4     0.0
    IL_017d:  /* 22   | 0000803F         */ ldc.r4     1.
    IL_0182:  /* 22   | 00000000         */ ldc.r4     0.0
    IL_0187:  /* 73   | (0A)000033       */ newobj     instance void [Microsoft.DirectX/*23000007*/]Microsoft.DirectX.Vector3/*0100002F*/::.ctor(float32,
                                                                                                                                                 float32,
                                                                                                                                                 float32) /* 0A000033 */
    IL_018c:  /* 28   | (0A)000050       */ call       valuetype [Microsoft.DirectX/*23000007*/]Microsoft.DirectX.Matrix/*0100003B*/ [Microsoft.DirectX/*23000007*/]Microsoft.DirectX.Matrix/*0100003B*/::LookAtLH(valuetype [Microsoft.DirectX/*23000007*/]Microsoft.DirectX.Vector3/*0100002F*/,
                                                                                                                                                                                                                   valuetype [Microsoft.DirectX/*23000007*/]Microsoft.DirectX.Vector3/*0100002F*/,
                                                                                                                                                                                                                   valuetype [Microsoft.DirectX/*23000007*/]Microsoft.DirectX.Vector3/*0100002F*/) /* 0A000050 */
    IL_0191:  /* 6F   | (0A)000051       */ callvirt   instance void [Microsoft.DirectX.Direct3D/*23000004*/]Microsoft.DirectX.Direct3D.Transforms/*0100003A*/::set_View(valuetype [Microsoft.DirectX/*23000007*/]Microsoft.DirectX.Matrix/*0100003B*/) /* 0A000051 */
    IL_0196:  /* 02   |                  */ ldarg.0
    IL_0197:  /* 7B   | (04)000007       */ ldfld      class [Microsoft.DirectX.Direct3D/*23000004*/]Microsoft.DirectX.Direct3D.Device/*01000006*/ a.Demo/*02000003*/::dev2 /* 04000007 */
    IL_019c:  /* 6F   | (0A)00004D       */ callvirt   instance class [Microsoft.DirectX.Direct3D/*23000004*/]Microsoft.DirectX.Direct3D.Transforms/*0100003A*/ [Microsoft.DirectX.Direct3D/*23000004*/]Microsoft.DirectX.Direct3D.Device/*01000006*/::get_Transform() /* 0A00004D */
    IL_01a1:  /* 22   | DB0F493F         */ ldc.r4     0.78539819
    IL_01a6:  /* 22   | 0000803F         */ ldc.r4     1.
    IL_01ab:  /* 22   | 0000803F         */ ldc.r4     1.
    IL_01b0:  /* 22   | 0000C842         */ ldc.r4     100.
    IL_01b5:  /* 28   | (0A)000052       */ call       valuetype [Microsoft.DirectX/*23000007*/]Microsoft.DirectX.Matrix/*0100003B*/ [Microsoft.DirectX/*23000007*/]Microsoft.DirectX.Matrix/*0100003B*/::PerspectiveFovLH(float32,
                                                                                                                                                                                                                           float32,
                                                                                                                                                                                                                           float32,
                                                                                                                                                                                                                           float32) /* 0A000052 */
    IL_01ba:  /* 6F   | (0A)000053       */ callvirt   instance void [Microsoft.DirectX.Direct3D/*23000004*/]Microsoft.DirectX.Direct3D.Transforms/*0100003A*/::set_Projection(valuetype [Microsoft.DirectX/*23000007*/]Microsoft.DirectX.Matrix/*0100003B*/) /* 0A000053 */
    IL_01bf:  /* 02   |                  */ ldarg.0
    IL_01c0:  /* 7B   | (04)000007       */ ldfld      class [Microsoft.DirectX.Direct3D/*23000004*/]Microsoft.DirectX.Direct3D.Device/*01000006*/ a.Demo/*02000003*/::dev2 /* 04000007 */
    IL_01c5:  /* 16   |                  */ ldc.i4.0
    IL_01c6:  /* 02   |                  */ ldarg.0
    IL_01c7:  /* 7B   | (04)000008       */ ldfld      class [Microsoft.DirectX.Direct3D/*23000004*/]Microsoft.DirectX.Direct3D.VertexBuffer/*01000007*/ a.Demo/*02000003*/::vb /* 04000008 */
    IL_01cc:  /* 16   |                  */ ldc.i4.0
    IL_01cd:  /* 6F   | (0A)000054       */ callvirt   instance void [Microsoft.DirectX.Direct3D/*23000004*/]Microsoft.DirectX.Direct3D.Device/*01000006*/::SetStreamSource(int32,
                                                                                                                                                                            class [Microsoft.DirectX.Direct3D/*23000004*/]Microsoft.DirectX.Direct3D.VertexBuffer/*01000007*/,
                                                                                                                                                                            int32) /* 0A000054 */
    IL_01d2:  /* 02   |                  */ ldarg.0
    IL_01d3:  /* 7B   | (04)000007       */ ldfld      class [Microsoft.DirectX.Direct3D/*23000004*/]Microsoft.DirectX.Direct3D.Device/*01000006*/ a.Demo/*02000003*/::dev2 /* 04000007 */
    IL_01d8:  /* 1F   | 12               */ ldc.i4.s   18
    IL_01da:  /* 6F   | (0A)000055       */ callvirt   instance void [Microsoft.DirectX.Direct3D/*23000004*/]Microsoft.DirectX.Direct3D.Device/*01000006*/::set_VertexFormat(valuetype [Microsoft.DirectX.Direct3D/*23000004*/]Microsoft.DirectX.Direct3D.VertexFormats/*0100002C*/) /* 0A000055 */
    IL_01df:  /* 02   |                  */ ldarg.0
    IL_01e0:  /* 7B   | (04)000007       */ ldfld      class [Microsoft.DirectX.Direct3D/*23000004*/]Microsoft.DirectX.Direct3D.Device/*01000006*/ a.Demo/*02000003*/::dev2 /* 04000007 */
    IL_01e5:  /* 1B   |                  */ ldc.i4.5
    IL_01e6:  /* 16   |                  */ ldc.i4.0
    IL_01e7:  /* 1F   | 62               */ ldc.i4.s   98
    IL_01e9:  /* 6F   | (0A)000056       */ callvirt   instance void [Microsoft.DirectX.Direct3D/*23000004*/]Microsoft.DirectX.Direct3D.Device/*01000006*/::DrawPrimitives(valuetype [Microsoft.DirectX.Direct3D/*23000004*/]Microsoft.DirectX.Direct3D.PrimitiveType/*0100003C*/,
                                                                                                                                                                           int32,
                                                                                                                                                                           int32) /* 0A000056 */
    IL_01ee:  /* 02   |                  */ ldarg.0
    IL_01ef:  /* 7B   | (04)000007       */ ldfld      class [Microsoft.DirectX.Direct3D/*23000004*/]Microsoft.DirectX.Direct3D.Device/*01000006*/ a.Demo/*02000003*/::dev2 /* 04000007 */
    IL_01f4:  /* 6F   | (0A)000057       */ callvirt   instance void [Microsoft.DirectX.Direct3D/*23000004*/]Microsoft.DirectX.Direct3D.Device/*01000006*/::EndScene() /* 0A000057 */
    IL_01f9:  /* 02   |                  */ ldarg.0
    IL_01fa:  /* 7B   | (04)000007       */ ldfld      class [Microsoft.DirectX.Direct3D/*23000004*/]Microsoft.DirectX.Direct3D.Device/*01000006*/ a.Demo/*02000003*/::dev2 /* 04000007 */
    IL_01ff:  /* 6F   | (0A)000058       */ callvirt   instance void [Microsoft.DirectX.Direct3D/*23000004*/]Microsoft.DirectX.Direct3D.Device/*01000006*/::Present() /* 0A000058 */
    IL_0204:  /* 2A   |                  */ ret
  } // end of method Demo::R_FR

} // end of class a.Demo

.class /*02000004*/ private auto ansi '<PrivateImplementationDetails>{8FC85AE7-6EFF-4E93-911C-3A61D4E19073}'
       extends [mscorlib/*23000001*/]System.Object/*01000001*/
{
  .class /*02000005*/ explicit ansi sealed nested private '__StaticArrayInitTypeSize=64'
         extends [mscorlib/*23000001*/]System.ValueType/*01000011*/
  {
    .pack 1
    .size 64
  } // end of class '__StaticArrayInitTypeSize=64'

  .class /*02000006*/ explicit ansi sealed nested private '__StaticArrayInitTypeSize=32'
         extends [mscorlib/*23000001*/]System.ValueType/*01000011*/
  {
    .pack 1
    .size 32
  } // end of class '__StaticArrayInitTypeSize=32'

  .field /*04000009*/ static assembly valuetype '<PrivateImplementationDetails>{8FC85AE7-6EFF-4E93-911C-3A61D4E19073}'/*02000004*//'__StaticArrayInitTypeSize=64'/*02000005*/ '$$method0x600000f-1' at I_000023C8
  .field /*0400000A*/ static assembly valuetype '<PrivateImplementationDetails>{8FC85AE7-6EFF-4E93-911C-3A61D4E19073}'/*02000004*//'__StaticArrayInitTypeSize=64'/*02000005*/ '$$method0x600000f-2' at I_00002408
  .field /*0400000B*/ static assembly valuetype '<PrivateImplementationDetails>{8FC85AE7-6EFF-4E93-911C-3A61D4E19073}'/*02000004*//'__StaticArrayInitTypeSize=64'/*02000005*/ '$$method0x600000f-3' at I_00002448
  .field /*0400000C*/ static assembly valuetype '<PrivateImplementationDetails>{8FC85AE7-6EFF-4E93-911C-3A61D4E19073}'/*02000004*//'__StaticArrayInitTypeSize=64'/*02000005*/ '$$method0x600000f-4' at I_00002488
  .field /*0400000D*/ static assembly valuetype '<PrivateImplementationDetails>{8FC85AE7-6EFF-4E93-911C-3A61D4E19073}'/*02000004*//'__StaticArrayInitTypeSize=32'/*02000006*/ '$$method0x600000f-5' at I_000024C8
} // end of class '<PrivateImplementationDetails>{8FC85AE7-6EFF-4E93-911C-3A61D4E19073}'


// =============================================================

.data cil I_000023C8 = bytearray (
                 64 00 00 00 0F 00 00 00 05 00 00 00 23 00 00 00  // d...........#...
                 69 00 00 00 05 00 00 00 1E 00 00 00 05 00 00 00  // i...............
                 69 00 00 00 05 00 00 00 0F 00 00 00 05 00 00 00  // i...............
                 69 00 00 00 0F 00 00 00 19 00 00 00 2D 00 00 00) // i...........-...
.data cil I_00002408 = bytearray (
                 05 00 00 00 05 00 00 00 05 00 00 00 2D 00 00 00  // ............-...
                 64 00 00 00 05 00 00 00 05 00 00 00 32 00 00 00  // d...........2...
                 05 00 00 00 23 00 00 00 05 00 00 00 05 00 00 00  // ....#...........
                 64 00 00 00 05 00 00 00 05 00 00 00 37 00 00 00) // d...........7...
.data cil I_00002448 = bytearray (
                 00 00 00 00 4B 00 00 00 4B 00 00 00 23 00 00 00  // ....K...K...#...
                 00 00 00 00 55 00 00 00 55 00 00 00 00 00 00 00  // ....U...U.......
                 05 00 00 00 4B 00 00 00 4B 00 00 00 05 00 00 00  // ....K...K.......
                 05 00 00 00 55 00 00 00 5F 00 00 00 37 00 00 00) // ....U..._...7...
.data cil I_00002488 = bytearray (
                 05 00 00 00 05 00 00 00 50 00 00 00 05 00 00 00  // ........P.......
                 05 00 00 00 05 00 00 00 55 00 00 00 00 00 00 00  // ........U.......
                 05 00 00 00 05 00 00 00 4B 00 00 00 05 00 00 00  // ........K.......
                 05 00 00 00 2D 00 00 00 55 00 00 00 2D 00 00 00) // ....-...U...-...
.data cil I_000024C8 = bytearray (
                 2C 01 00 00 C8 00 00 00 2C 01 00 00 0A 01 00 00  // ,.......,.......
                 2C 01 00 00 C8 00 00 00 2C 01 00 00 A4 01 00 00) // ,.......,.......
// *********** DISASSEMBLY COMPLETE ***********************
// WARNING: Created Win32 resource file microsynth1-decompile.res
