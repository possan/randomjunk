
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
// Time-date stamp:            0x474ff430
// Ptr to symbol table:        0x00000000
// Number of symbols:          0x00000000
// Size of optional header:    0x00e0
// Characteristics:            0x010e
// ----- PE Optional Header (32 bit):
// Magic:                          0x010b
// Major linker version:           0x08
// Minor linker version:           0x00
// Size of code:                   0x00002400
// Size of init.data:              0x00000600
// Size of uninit.data:            0x00000000
// Addr. of entry point:           0x000042fe
// Base of code:                   0x00002000
// Base of data:                   0x00006000
// Image base:                     0x00400000
// Section alignment:              0x00002000
// File alignment:                 0x00000200
// Major OS version:               0x0004
// Minor OS version:               0x0000
// Major image version:            0x0000
// Minor image version:            0x0000
// Major subsystem version:        0x0004
// Minor subsystem version:        0x0000
// Size of image:                  0x0000a000
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
// 0x000042b0 [0x0000004b] address [size] of Import Directory:          
// 0x00006000 [0x000002b0] address [size] of Resource Directory:        
// 0x00000000 [0x00000000] address [size] of Exception Directory:       
// 0x00000000 [0x00000000] address [size] of Security Directory:        
// 0x00008000 [0x0000000c] address [size] of Base Relocation Table:     
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
//              0x00002304 Virtual Size
//              0x00002000 Virtual Address
//              0x00002400 Size of Raw Data
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
//              0x00006000 Virtual Address
//              0x00000400 Size of Raw Data
//              0x00002600 Pointer to Raw Data
//              0x00000000 Pointer to Relocations
//              0x00000000 Pointer to Linenumbers
//                  0x0000 Number of Relocations
//                  0x0000 Number of Linenumbers
//              0x40000040 Characteristics
//                         CNT_INITIALIZED_DATA
//                         MEM_READ

//              .reloc
//              0x0000000c Virtual Size
//              0x00008000 Virtual Address
//              0x00000200 Size of Raw Data
//              0x00002a00 Pointer to Raw Data
//              0x00000000 Pointer to Relocations
//              0x00000000 Pointer to Linenumbers
//                  0x0000 Number of Relocations
//                  0x0000 Number of Linenumbers
//              0x42000040 Characteristics
//                         CNT_INITIALIZED_DATA
//                         MEM_DISCARDABLE
//                         MEM_READ

// Base Relocation Table
//              0x00004000 Page RVA
//              0x0000000c Block Size
//              0x00000002 Number of Entries
//              Entry 1: Type 0x3 Offset 0x00000300
//              Entry 2: Type 0x0 Offset 0x00000000

// Import Address Table
//     DLL : mscoree.dll
//              0x00002000 Import Address Table
//              0x000042ee Import Name Table
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
// 0x00002d40 [0x00001570] address [size] of Metadata Directory:        
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
//              0x00000808 Size
//              '#~' Name
//    Stream 2:
//              0x00000874 Offset
//              0x00000970 Size
//              '#Strings' Name
//    Stream 3:
//              0x000011e4 Offset
//              0x00000098 Size
//              '#US' Name
//    Stream 4:
//              0x0000127c Offset
//              0x00000010 Size
//              '#GUID' Name
//    Stream 5:
//              0x0000128c Offset
//              0x000002e4 Size
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

// File size            : 11264
// PE header size       : 512 (496 used)    ( 4.55%)
// PE additional info   : 855               ( 7.59%)
// Num.of PE sections   : 3
// CLR header size     : 72                 ( 0.64%)
// CLR meta-data size  : 5488               (48.72%)
// CLR additional info : 0                  ( 0.00%)
// CLR method headers  : 129                ( 1.15%)
// Managed code         : 2873              (25.51%)
// Data                 : 1536              (13.64%)
// Unaccounted          : -201              (-1.78%)

// Num.of PE sections   : 3
//   .text    - 9216
//   .rsrc    - 1024
//   .reloc   - 512

// CLR meta-data size  : 5488
//   Module        -    1 (10 bytes)
//   TypeDef       -    6 (84 bytes)      0 interfaces, 1 explicit layout
//   TypeRef       -   71 (426 bytes)
//   MethodDef     -   19 (266 bytes)     0 abstract, 0 native, 19 bodies
//   FieldDef      -   15 (90 bytes)      0 constant
//   MemberRef     -  100 (600 bytes)
//   ParamDef      -   29 (174 bytes)
//   Constant      -    1 (6 bytes)
//   CustomAttribute-    3 (18 bytes)
//   ClassLayout   -    2 (16 bytes)
//   StandAloneSig -    7 (14 bytes)
//   TypeSpec      -    1 (2 bytes)
//   Assembly      -    1 (22 bytes)
//   AssemblyRef   -   10 (200 bytes)
//   NestedClass   -    2 (8 bytes)
//   FieldRVA      -    5 (30 bytes)
//   Strings       -  2414 bytes
//   Blobs         -   740 bytes
//   UserStrings   -   152 bytes
//   Guids         -    16 bytes
//   Uncategorized -   200 bytes

// CLR method headers : 129
//   Num.of method bodies  - 19
//   Num.of fat headers    - 10
//   Num.of tiny headers   - 9

// Managed code : 2873
//   Ave method size - 151
// Classes defined in this module:
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
// Class Program                        (auto) (ansi) 
// Class Demo                           (auto) (ansi) 
// Class <PrivateImplementationDetails>{E739F0E2-6F17-481A-ABF2-14ED27536515} (auto) (ansi) 
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
.assembly extern /*23000003*/ Microsoft.DirectX.Direct3D
{
  .publickeytoken = (31 BF 38 56 AD 36 4E 35 )                         // 1.8V.6N5
  .ver 1:0:2902:0
}
.assembly extern /*23000004*/ Microsoft.DirectX.Direct3DX
{
  .publickeytoken = (31 BF 38 56 AD 36 4E 35 )                         // 1.8V.6N5
  .ver 1:0:2902:0
}
.assembly extern /*23000005*/ Microsoft.DirectX.DirectSound
{
  .publickeytoken = (31 BF 38 56 AD 36 4E 35 )                         // 1.8V.6N5
  .ver 1:0:2902:0
}
.assembly extern /*23000006*/ System.Windows.Forms as System.Windows.Forms_5
{
  .publickeytoken = (B7 7A 5C 56 19 34 E0 89 )                         // .z\V.4..
  .hash = (46 CF F1 2A B1 D2 B5 94 71 B8 95 F2 3D 65 06 C2   // F..*....q...=e..
           33 D3 CF 05 )                                     // 3...
  .ver 1:0:5000:0
}
.assembly extern /*23000007*/ mscorlib as mscorlib_6
{
  .publickeytoken = (B7 7A 5C 56 19 34 E0 89 )                         // .z\V.4..
  .hash = (39 E4 FC 93 06 1A 5E 87 28 97 0F 5F AC AD B4 21   // 9.....^.(.._...!
           EF 71 E8 D2 )                                     // .q..
  .ver 1:0:5000:0
}
.assembly extern /*23000008*/ Microsoft.DirectX
{
  .publickeytoken = (31 BF 38 56 AD 36 4E 35 )                         // 1.8V.6N5
  .ver 1:0:2902:0
}
.assembly extern /*23000009*/ System.Drawing
{
  .publickeytoken = (B0 3F 5F 7F 11 D5 0A 3A )                         // .?_....:
  .ver 2:0:0:0
}
.assembly extern /*2300000A*/ System.Drawing as System.Drawing_9
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
// MVID: {E739F0E2-6F17-481A-ABF2-14ED27536515}
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
    IL_0000:  /* 73   | (06)000005       */ newobj     instance void a.Demo/*02000003*/::.ctor() /* 06000005 */
    IL_0005:  /* 80   | (04)000001       */ stsfld     class a.Demo/*02000003*/ a.Program/*02000002*/::F1 /* 04000001 */
    IL_000a:  /* 7E   | (04)000001       */ ldsfld     class a.Demo/*02000003*/ a.Program/*02000002*/::F1 /* 04000001 */
    IL_000f:  /* 6F   | (0A)000003       */ callvirt   instance void [System.Windows.Forms/*23000002*/]System.Windows.Forms.Control/*0100000C*/::Show() /* 0A000003 */
    IL_0014:  /* 2B   | 0F               */ br.s       IL_0025

    IL_0016:  /* 7E   | (04)000001       */ ldsfld     class a.Demo/*02000003*/ a.Program/*02000002*/::F1 /* 04000001 */
    IL_001b:  /* 6F   | (06)000004       */ callvirt   instance void a.Demo/*02000003*/::R_FR() /* 06000004 */
    IL_0020:  /* 28   | (0A)000004       */ call       void [System.Windows.Forms/*23000002*/]System.Windows.Forms.Application/*0100000D*/::DoEvents() /* 0A000004 */
    IL_0025:  /* 7E   | (04)000001       */ ldsfld     class a.Demo/*02000003*/ a.Program/*02000002*/::F1 /* 04000001 */
    IL_002a:  /* 6F   | (0A)000005       */ callvirt   instance bool [System.Windows.Forms/*23000002*/]System.Windows.Forms.Control/*0100000C*/::get_Created() /* 0A000005 */
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
  .field /*04000003*/ private class [Microsoft.DirectX.Direct3D/*23000003*/]Microsoft.DirectX.Direct3D.Device/*01000003*/ dev2
  .field /*04000004*/ private class [Microsoft.DirectX.Direct3D/*23000003*/]Microsoft.DirectX.Direct3D.VertexBuffer/*01000004*/ vb
  .field /*04000005*/ private class [Microsoft.DirectX.Direct3DX/*23000004*/]Microsoft.DirectX.Direct3D.Effect/*01000005*/ eff
  .field /*04000006*/ private valuetype [mscorlib/*23000001*/]System.DateTime/*01000006*/ t_start
  .field /*04000007*/ private class [Microsoft.DirectX.DirectSound/*23000005*/]Microsoft.DirectX.DirectSound.Device/*01000008*/ sounddevice
  .field /*04000008*/ private class [Microsoft.DirectX.DirectSound/*23000005*/]Microsoft.DirectX.DirectSound.SecondaryBuffer/*01000009*/ buffer
  .field /*04000009*/ public float32[] S_F
  .field /*0400000A*/ public uint8[] S_B
  .method /*06000003*/ public hidebysig instance void 
          R_IN() cil managed
  // SIG: 20 00 01
  {
    // Method begins at RVA 0x208c
    // Code size       569 (0x239)
    .maxstack  8
    .locals /*11000001*/ init (class [Microsoft.DirectX.Direct3D/*23000003*/]Microsoft.DirectX.Direct3D.PresentParameters/*0100000E*/ V_0,
             valuetype [Microsoft.DirectX.Direct3D/*23000003*/]Microsoft.DirectX.Direct3D.CustomVertex/*01000015*//PositionNormal/*01000016*/[] V_1,
             int32 V_2,
             float32 V_3,
             float32 V_4,
             string V_5,
             class [Microsoft.DirectX.Direct3D/*23000003*/]Microsoft.DirectX.Direct3D.PresentParameters/*0100000E*/[] V_6)
    IL_0000:  /* 73   | (0A)000007       */ newobj     instance void [Microsoft.DirectX.Direct3D/*23000003*/]Microsoft.DirectX.Direct3D.PresentParameters/*0100000E*/::.ctor() /* 0A000007 */
    IL_0005:  /* 0A   |                  */ stloc.0
    IL_0006:  /* 06   |                  */ ldloc.0
    IL_0007:  /* 17   |                  */ ldc.i4.1
    IL_0008:  /* 6F   | (0A)000008       */ callvirt   instance void [Microsoft.DirectX.Direct3D/*23000003*/]Microsoft.DirectX.Direct3D.PresentParameters/*0100000E*/::set_Windowed(bool) /* 0A000008 */
    IL_000d:  /* 06   |                  */ ldloc.0
    IL_000e:  /* 17   |                  */ ldc.i4.1
    IL_000f:  /* 6F   | (0A)000009       */ callvirt   instance void [Microsoft.DirectX.Direct3D/*23000003*/]Microsoft.DirectX.Direct3D.PresentParameters/*0100000E*/::set_SwapEffect(valuetype [Microsoft.DirectX.Direct3D/*23000003*/]Microsoft.DirectX.Direct3D.SwapEffect/*0100000F*/) /* 0A000009 */
    IL_0014:  /* 06   |                  */ ldloc.0
    IL_0015:  /* 17   |                  */ ldc.i4.1
    IL_0016:  /* 6F   | (0A)00000A       */ callvirt   instance void [Microsoft.DirectX.Direct3D/*23000003*/]Microsoft.DirectX.Direct3D.PresentParameters/*0100000E*/::set_EnableAutoDepthStencil(bool) /* 0A00000A */
    IL_001b:  /* 06   |                  */ ldloc.0
    IL_001c:  /* 1F   | 50               */ ldc.i4.s   80
    IL_001e:  /* 6F   | (0A)00000B       */ callvirt   instance void [Microsoft.DirectX.Direct3D/*23000003*/]Microsoft.DirectX.Direct3D.PresentParameters/*0100000E*/::set_AutoDepthStencilFormat(valuetype [Microsoft.DirectX.Direct3D/*23000003*/]Microsoft.DirectX.Direct3D.DepthFormat/*01000010*/) /* 0A00000B */
    IL_0023:  /* 06   |                  */ ldloc.0
    IL_0024:  /* 17   |                  */ ldc.i4.1
    IL_0025:  /* 6F   | (0A)00000C       */ callvirt   instance void [Microsoft.DirectX.Direct3D/*23000003*/]Microsoft.DirectX.Direct3D.PresentParameters/*0100000E*/::set_BackBufferCount(int32) /* 0A00000C */
    IL_002a:  /* 06   |                  */ ldloc.0
    IL_002b:  /* 1F   | 16               */ ldc.i4.s   22
    IL_002d:  /* 6F   | (0A)00000D       */ callvirt   instance void [Microsoft.DirectX.Direct3D/*23000003*/]Microsoft.DirectX.Direct3D.PresentParameters/*0100000E*/::set_BackBufferFormat(valuetype [Microsoft.DirectX.Direct3D/*23000003*/]Microsoft.DirectX.Direct3D.Format/*01000011*/) /* 0A00000D */
    IL_0032:  /* 06   |                  */ ldloc.0
    IL_0033:  /* 20   | 58020000         */ ldc.i4     0x258
    IL_0038:  /* 6F   | (0A)00000E       */ callvirt   instance void [Microsoft.DirectX.Direct3D/*23000003*/]Microsoft.DirectX.Direct3D.PresentParameters/*0100000E*/::set_BackBufferHeight(int32) /* 0A00000E */
    IL_003d:  /* 06   |                  */ ldloc.0
    IL_003e:  /* 20   | 20030000         */ ldc.i4     0x320
    IL_0043:  /* 6F   | (0A)00000F       */ callvirt   instance void [Microsoft.DirectX.Direct3D/*23000003*/]Microsoft.DirectX.Direct3D.PresentParameters/*0100000E*/::set_BackBufferWidth(int32) /* 0A00000F */
    IL_0048:  /* 02   |                  */ ldarg.0
    IL_0049:  /* 16   |                  */ ldc.i4.0
    IL_004a:  /* 17   |                  */ ldc.i4.1
    IL_004b:  /* 02   |                  */ ldarg.0
    IL_004c:  /* 1F   | 20               */ ldc.i4.s   32
    IL_004e:  /* 17   |                  */ ldc.i4.1
    IL_004f:  /* 8D   | (01)00000E       */ newarr     [Microsoft.DirectX.Direct3D/*23000003*/]Microsoft.DirectX.Direct3D.PresentParameters/*0100000E*/
    IL_0054:  /* 13   | 06               */ stloc.s    V_6
    IL_0056:  /* 11   | 06               */ ldloc.s    V_6
    IL_0058:  /* 16   |                  */ ldc.i4.0
    IL_0059:  /* 06   |                  */ ldloc.0
    IL_005a:  /* A2   |                  */ stelem.ref
    IL_005b:  /* 11   | 06               */ ldloc.s    V_6
    IL_005d:  /* 73   | (0A)000010       */ newobj     instance void [Microsoft.DirectX.Direct3D/*23000003*/]Microsoft.DirectX.Direct3D.Device/*01000003*/::.ctor(int32,
                                                                                                                                                                  valuetype [Microsoft.DirectX.Direct3D/*23000003*/]Microsoft.DirectX.Direct3D.DeviceType/*01000012*/,
                                                                                                                                                                  class [System.Windows.Forms_5/*23000006*/]System.Windows.Forms.Control/*01000013*/,
                                                                                                                                                                  valuetype [Microsoft.DirectX.Direct3D/*23000003*/]Microsoft.DirectX.Direct3D.CreateFlags/*01000014*/,
                                                                                                                                                                  class [Microsoft.DirectX.Direct3D/*23000003*/]Microsoft.DirectX.Direct3D.PresentParameters/*0100000E*/[]) /* 0A000010 */
    IL_0062:  /* 7D   | (04)000003       */ stfld      class [Microsoft.DirectX.Direct3D/*23000003*/]Microsoft.DirectX.Direct3D.Device/*01000003*/ a.Demo/*02000003*/::dev2 /* 04000003 */
    IL_0067:  /* 02   |                  */ ldarg.0
    IL_0068:  /* 7B   | (04)000003       */ ldfld      class [Microsoft.DirectX.Direct3D/*23000003*/]Microsoft.DirectX.Direct3D.Device/*01000003*/ a.Demo/*02000003*/::dev2 /* 04000003 */
    IL_006d:  /* 6F   | (0A)000011       */ callvirt   instance bool [Microsoft.DirectX.Direct3D/*23000003*/]Microsoft.DirectX.Direct3D.Device/*01000003*/::CheckCooperativeLevel() /* 0A000011 */
    IL_0072:  /* 26   |                  */ pop
    IL_0073:  /* 02   |                  */ ldarg.0
    IL_0074:  /* D0   | (01)000016       */ ldtoken    [Microsoft.DirectX.Direct3D/*23000003*/]Microsoft.DirectX.Direct3D.CustomVertex/*01000015*//PositionNormal/*01000016*/
    IL_0079:  /* 28   | (0A)000012       */ call       class [mscorlib/*23000001*/]System.Type/*01000017*/ [mscorlib/*23000001*/]System.Type/*01000017*/::GetTypeFromHandle(valuetype [mscorlib/*23000001*/]System.RuntimeTypeHandle/*01000018*/) /* 0A000012 */
    IL_007e:  /* 1F   | 64               */ ldc.i4.s   100
    IL_0080:  /* 02   |                  */ ldarg.0
    IL_0081:  /* 7B   | (04)000003       */ ldfld      class [Microsoft.DirectX.Direct3D/*23000003*/]Microsoft.DirectX.Direct3D.Device/*01000003*/ a.Demo/*02000003*/::dev2 /* 04000003 */
    IL_0086:  /* 1E   |                  */ ldc.i4.8
    IL_0087:  /* 1F   | 12               */ ldc.i4.s   18
    IL_0089:  /* 16   |                  */ ldc.i4.0
    IL_008a:  /* 73   | (0A)000013       */ newobj     instance void [Microsoft.DirectX.Direct3D/*23000003*/]Microsoft.DirectX.Direct3D.VertexBuffer/*01000004*/::.ctor(class [mscorlib_6/*23000007*/]System.Type/*01000019*/,
                                                                                                                                                                        int32,
                                                                                                                                                                        class [Microsoft.DirectX.Direct3D/*23000003*/]Microsoft.DirectX.Direct3D.Device/*01000003*/,
                                                                                                                                                                        valuetype [Microsoft.DirectX.Direct3D/*23000003*/]Microsoft.DirectX.Direct3D.Usage/*0100001A*/,
                                                                                                                                                                        valuetype [Microsoft.DirectX.Direct3D/*23000003*/]Microsoft.DirectX.Direct3D.VertexFormats/*0100001B*/,
                                                                                                                                                                        valuetype [Microsoft.DirectX.Direct3D/*23000003*/]Microsoft.DirectX.Direct3D.Pool/*0100001C*/) /* 0A000013 */
    IL_008f:  /* 7D   | (04)000004       */ stfld      class [Microsoft.DirectX.Direct3D/*23000003*/]Microsoft.DirectX.Direct3D.VertexBuffer/*01000004*/ a.Demo/*02000003*/::vb /* 04000004 */
    IL_0094:  /* 02   |                  */ ldarg.0
    IL_0095:  /* 7B   | (04)000004       */ ldfld      class [Microsoft.DirectX.Direct3D/*23000003*/]Microsoft.DirectX.Direct3D.VertexBuffer/*01000004*/ a.Demo/*02000003*/::vb /* 04000004 */
    IL_009a:  /* 16   |                  */ ldc.i4.0
    IL_009b:  /* 16   |                  */ ldc.i4.0
    IL_009c:  /* 6F   | (0A)000014       */ callvirt   instance class [mscorlib_6/*23000007*/]System.Array/*0100001D*/ [Microsoft.DirectX.Direct3D/*23000003*/]Microsoft.DirectX.Direct3D.VertexBuffer/*01000004*/::Lock(int32,
                                                                                                                                                                                                                         valuetype [Microsoft.DirectX.Direct3D/*23000003*/]Microsoft.DirectX.Direct3D.LockFlags/*0100001E*/) /* 0A000014 */
    IL_00a1:  /* 74   | (1B)000001       */ castclass  valuetype [Microsoft.DirectX.Direct3D/*23000003*/]Microsoft.DirectX.Direct3D.CustomVertex/*01000015*//PositionNormal/*01000016*/[]/*1B000001*/
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
    IL_00dc:  /* 28   | (0A)000015       */ call       float64 [mscorlib/*23000001*/]System.Math/*0100001F*/::Sin(float64) /* 0A000015 */
    IL_00e1:  /* 6B   |                  */ conv.r4
    IL_00e2:  /* 58   |                  */ add
    IL_00e3:  /* 13   | 04               */ stloc.s    V_4
    IL_00e5:  /* 07   |                  */ ldloc.1
    IL_00e6:  /* 18   |                  */ ldc.i4.2
    IL_00e7:  /* 08   |                  */ ldloc.2
    IL_00e8:  /* 5A   |                  */ mul
    IL_00e9:  /* 8F   | (01)000016       */ ldelema    [Microsoft.DirectX.Direct3D/*23000003*/]Microsoft.DirectX.Direct3D.CustomVertex/*01000015*//PositionNormal/*01000016*/
    IL_00ee:  /* 11   | 04               */ ldloc.s    V_4
    IL_00f0:  /* 09   |                  */ ldloc.3
    IL_00f1:  /* 6C   |                  */ conv.r8
    IL_00f2:  /* 28   | (0A)000015       */ call       float64 [mscorlib/*23000001*/]System.Math/*0100001F*/::Sin(float64) /* 0A000015 */
    IL_00f7:  /* 6B   |                  */ conv.r4
    IL_00f8:  /* 5A   |                  */ mul
    IL_00f9:  /* 22   | 000080BF         */ ldc.r4     -1.
    IL_00fe:  /* 11   | 04               */ ldloc.s    V_4
    IL_0100:  /* 09   |                  */ ldloc.3
    IL_0101:  /* 6C   |                  */ conv.r8
    IL_0102:  /* 28   | (0A)000016       */ call       float64 [mscorlib/*23000001*/]System.Math/*0100001F*/::Cos(float64) /* 0A000016 */
    IL_0107:  /* 6B   |                  */ conv.r4
    IL_0108:  /* 5A   |                  */ mul
    IL_0109:  /* 73   | (0A)000017       */ newobj     instance void [Microsoft.DirectX/*23000008*/]Microsoft.DirectX.Vector3/*01000020*/::.ctor(float32,
                                                                                                                                                 float32,
                                                                                                                                                 float32) /* 0A000017 */
    IL_010e:  /* 28   | (0A)000018       */ call       instance void [Microsoft.DirectX.Direct3D/*23000003*/]Microsoft.DirectX.Direct3D.CustomVertex/*01000015*//PositionNormal/*01000016*/::set_Position(valuetype [Microsoft.DirectX/*23000008*/]Microsoft.DirectX.Vector3/*01000020*/) /* 0A000018 */
    IL_0113:  /* 07   |                  */ ldloc.1
    IL_0114:  /* 18   |                  */ ldc.i4.2
    IL_0115:  /* 08   |                  */ ldloc.2
    IL_0116:  /* 5A   |                  */ mul
    IL_0117:  /* 8F   | (01)000016       */ ldelema    [Microsoft.DirectX.Direct3D/*23000003*/]Microsoft.DirectX.Direct3D.CustomVertex/*01000015*//PositionNormal/*01000016*/
    IL_011c:  /* 11   | 04               */ ldloc.s    V_4
    IL_011e:  /* 09   |                  */ ldloc.3
    IL_011f:  /* 6C   |                  */ conv.r8
    IL_0120:  /* 28   | (0A)000015       */ call       float64 [mscorlib/*23000001*/]System.Math/*0100001F*/::Sin(float64) /* 0A000015 */
    IL_0125:  /* 6B   |                  */ conv.r4
    IL_0126:  /* 5A   |                  */ mul
    IL_0127:  /* 22   | 00000000         */ ldc.r4     0.0
    IL_012c:  /* 11   | 04               */ ldloc.s    V_4
    IL_012e:  /* 09   |                  */ ldloc.3
    IL_012f:  /* 6C   |                  */ conv.r8
    IL_0130:  /* 28   | (0A)000016       */ call       float64 [mscorlib/*23000001*/]System.Math/*0100001F*/::Cos(float64) /* 0A000016 */
    IL_0135:  /* 6B   |                  */ conv.r4
    IL_0136:  /* 5A   |                  */ mul
    IL_0137:  /* 73   | (0A)000017       */ newobj     instance void [Microsoft.DirectX/*23000008*/]Microsoft.DirectX.Vector3/*01000020*/::.ctor(float32,
                                                                                                                                                 float32,
                                                                                                                                                 float32) /* 0A000017 */
    IL_013c:  /* 28   | (0A)000019       */ call       instance void [Microsoft.DirectX.Direct3D/*23000003*/]Microsoft.DirectX.Direct3D.CustomVertex/*01000015*//PositionNormal/*01000016*/::set_Normal(valuetype [Microsoft.DirectX/*23000008*/]Microsoft.DirectX.Vector3/*01000020*/) /* 0A000019 */
    IL_0141:  /* 07   |                  */ ldloc.1
    IL_0142:  /* 18   |                  */ ldc.i4.2
    IL_0143:  /* 08   |                  */ ldloc.2
    IL_0144:  /* 5A   |                  */ mul
    IL_0145:  /* 17   |                  */ ldc.i4.1
    IL_0146:  /* 58   |                  */ add
    IL_0147:  /* 8F   | (01)000016       */ ldelema    [Microsoft.DirectX.Direct3D/*23000003*/]Microsoft.DirectX.Direct3D.CustomVertex/*01000015*//PositionNormal/*01000016*/
    IL_014c:  /* 11   | 04               */ ldloc.s    V_4
    IL_014e:  /* 09   |                  */ ldloc.3
    IL_014f:  /* 6C   |                  */ conv.r8
    IL_0150:  /* 28   | (0A)000015       */ call       float64 [mscorlib/*23000001*/]System.Math/*0100001F*/::Sin(float64) /* 0A000015 */
    IL_0155:  /* 6B   |                  */ conv.r4
    IL_0156:  /* 5A   |                  */ mul
    IL_0157:  /* 22   | 0000803F         */ ldc.r4     1.
    IL_015c:  /* 11   | 04               */ ldloc.s    V_4
    IL_015e:  /* 09   |                  */ ldloc.3
    IL_015f:  /* 6C   |                  */ conv.r8
    IL_0160:  /* 28   | (0A)000016       */ call       float64 [mscorlib/*23000001*/]System.Math/*0100001F*/::Cos(float64) /* 0A000016 */
    IL_0165:  /* 6B   |                  */ conv.r4
    IL_0166:  /* 5A   |                  */ mul
    IL_0167:  /* 73   | (0A)000017       */ newobj     instance void [Microsoft.DirectX/*23000008*/]Microsoft.DirectX.Vector3/*01000020*/::.ctor(float32,
                                                                                                                                                 float32,
                                                                                                                                                 float32) /* 0A000017 */
    IL_016c:  /* 28   | (0A)000018       */ call       instance void [Microsoft.DirectX.Direct3D/*23000003*/]Microsoft.DirectX.Direct3D.CustomVertex/*01000015*//PositionNormal/*01000016*/::set_Position(valuetype [Microsoft.DirectX/*23000008*/]Microsoft.DirectX.Vector3/*01000020*/) /* 0A000018 */
    IL_0171:  /* 07   |                  */ ldloc.1
    IL_0172:  /* 18   |                  */ ldc.i4.2
    IL_0173:  /* 08   |                  */ ldloc.2
    IL_0174:  /* 5A   |                  */ mul
    IL_0175:  /* 17   |                  */ ldc.i4.1
    IL_0176:  /* 58   |                  */ add
    IL_0177:  /* 8F   | (01)000016       */ ldelema    [Microsoft.DirectX.Direct3D/*23000003*/]Microsoft.DirectX.Direct3D.CustomVertex/*01000015*//PositionNormal/*01000016*/
    IL_017c:  /* 11   | 04               */ ldloc.s    V_4
    IL_017e:  /* 09   |                  */ ldloc.3
    IL_017f:  /* 6C   |                  */ conv.r8
    IL_0180:  /* 28   | (0A)000015       */ call       float64 [mscorlib/*23000001*/]System.Math/*0100001F*/::Sin(float64) /* 0A000015 */
    IL_0185:  /* 6B   |                  */ conv.r4
    IL_0186:  /* 5A   |                  */ mul
    IL_0187:  /* 22   | 00000000         */ ldc.r4     0.0
    IL_018c:  /* 11   | 04               */ ldloc.s    V_4
    IL_018e:  /* 09   |                  */ ldloc.3
    IL_018f:  /* 6C   |                  */ conv.r8
    IL_0190:  /* 28   | (0A)000016       */ call       float64 [mscorlib/*23000001*/]System.Math/*0100001F*/::Cos(float64) /* 0A000016 */
    IL_0195:  /* 6B   |                  */ conv.r4
    IL_0196:  /* 5A   |                  */ mul
    IL_0197:  /* 73   | (0A)000017       */ newobj     instance void [Microsoft.DirectX/*23000008*/]Microsoft.DirectX.Vector3/*01000020*/::.ctor(float32,
                                                                                                                                                 float32,
                                                                                                                                                 float32) /* 0A000017 */
    IL_019c:  /* 28   | (0A)000019       */ call       instance void [Microsoft.DirectX.Direct3D/*23000003*/]Microsoft.DirectX.Direct3D.CustomVertex/*01000015*//PositionNormal/*01000016*/::set_Normal(valuetype [Microsoft.DirectX/*23000008*/]Microsoft.DirectX.Vector3/*01000020*/) /* 0A000019 */
    IL_01a1:  /* 08   |                  */ ldloc.2
    IL_01a2:  /* 17   |                  */ ldc.i4.1
    IL_01a3:  /* 58   |                  */ add
    IL_01a4:  /* 0C   |                  */ stloc.2
    IL_01a5:  /* 08   |                  */ ldloc.2
    IL_01a6:  /* 1F   | 32               */ ldc.i4.s   50
    IL_01a8:  /* 3F   | 01FFFFFF         */ blt        IL_00ae

    IL_01ad:  /* 02   |                  */ ldarg.0
    IL_01ae:  /* 7B   | (04)000004       */ ldfld      class [Microsoft.DirectX.Direct3D/*23000003*/]Microsoft.DirectX.Direct3D.VertexBuffer/*01000004*/ a.Demo/*02000003*/::vb /* 04000004 */
    IL_01b3:  /* 6F   | (0A)00001A       */ callvirt   instance void [Microsoft.DirectX.Direct3D/*23000003*/]Microsoft.DirectX.Direct3D.VertexBuffer/*01000004*/::Unlock() /* 0A00001A */
    IL_01b8:  /* 02   |                  */ ldarg.0
    IL_01b9:  /* 7B   | (04)000003       */ ldfld      class [Microsoft.DirectX.Direct3D/*23000003*/]Microsoft.DirectX.Direct3D.Device/*01000003*/ a.Demo/*02000003*/::dev2 /* 04000003 */
    IL_01be:  /* 6F   | (0A)00001B       */ callvirt   instance class [Microsoft.DirectX.Direct3D/*23000003*/]Microsoft.DirectX.Direct3D.RenderStateManager/*01000021*/ [Microsoft.DirectX.Direct3D/*23000003*/]Microsoft.DirectX.Direct3D.Device/*01000003*/::get_RenderState() /* 0A00001B */
    IL_01c3:  /* 17   |                  */ ldc.i4.1
    IL_01c4:  /* 6F   | (0A)00001C       */ callvirt   instance void [Microsoft.DirectX.Direct3D/*23000003*/]Microsoft.DirectX.Direct3D.RenderStateManager/*01000021*/::set_CullMode(valuetype [Microsoft.DirectX.Direct3D/*23000003*/]Microsoft.DirectX.Direct3D.Cull/*01000022*/) /* 0A00001C */
    IL_01c9:  /* 02   |                  */ ldarg.0
    IL_01ca:  /* 7B   | (04)000003       */ ldfld      class [Microsoft.DirectX.Direct3D/*23000003*/]Microsoft.DirectX.Direct3D.Device/*01000003*/ a.Demo/*02000003*/::dev2 /* 04000003 */
    IL_01cf:  /* 6F   | (0A)00001B       */ callvirt   instance class [Microsoft.DirectX.Direct3D/*23000003*/]Microsoft.DirectX.Direct3D.RenderStateManager/*01000021*/ [Microsoft.DirectX.Direct3D/*23000003*/]Microsoft.DirectX.Direct3D.Device/*01000003*/::get_RenderState() /* 0A00001B */
    IL_01d4:  /* 17   |                  */ ldc.i4.1
    IL_01d5:  /* 6F   | (0A)00001D       */ callvirt   instance void [Microsoft.DirectX.Direct3D/*23000003*/]Microsoft.DirectX.Direct3D.RenderStateManager/*01000021*/::set_ZBufferEnable(bool) /* 0A00001D */
    IL_01da:  /* 02   |                  */ ldarg.0
    IL_01db:  /* 7B   | (04)000003       */ ldfld      class [Microsoft.DirectX.Direct3D/*23000003*/]Microsoft.DirectX.Direct3D.Device/*01000003*/ a.Demo/*02000003*/::dev2 /* 04000003 */
    IL_01e0:  /* 6F   | (0A)00001B       */ callvirt   instance class [Microsoft.DirectX.Direct3D/*23000003*/]Microsoft.DirectX.Direct3D.RenderStateManager/*01000021*/ [Microsoft.DirectX.Direct3D/*23000003*/]Microsoft.DirectX.Direct3D.Device/*01000003*/::get_RenderState() /* 0A00001B */
    IL_01e5:  /* 17   |                  */ ldc.i4.1
    IL_01e6:  /* 6F   | (0A)00001E       */ callvirt   instance void [Microsoft.DirectX.Direct3D/*23000003*/]Microsoft.DirectX.Direct3D.RenderStateManager/*01000021*/::set_Lighting(bool) /* 0A00001E */
    IL_01eb:  /* 72   | (70)000001       */ ldstr      "" /* 70000001 */
    IL_01f0:  /* 13   | 05               */ stloc.s    V_5
    IL_01f2:  /* 02   |                  */ ldarg.0
    IL_01f3:  /* 02   |                  */ ldarg.0
    IL_01f4:  /* 7B   | (04)000003       */ ldfld      class [Microsoft.DirectX.Direct3D/*23000003*/]Microsoft.DirectX.Direct3D.Device/*01000003*/ a.Demo/*02000003*/::dev2 /* 04000003 */
    IL_01f9:  /* 72   | (70)000003       */ ldstr      "test.fx" /* 70000003 */
    IL_01fe:  /* 14   |                  */ ldnull
    IL_01ff:  /* 16   |                  */ ldc.i4.0
    IL_0200:  /* 14   |                  */ ldnull
    IL_0201:  /* 12   | 05               */ ldloca.s   V_5
    IL_0203:  /* 28   | (0A)00001F       */ call       class [Microsoft.DirectX.Direct3DX/*23000004*/]Microsoft.DirectX.Direct3D.Effect/*01000005*/ [Microsoft.DirectX.Direct3DX/*23000004*/]Microsoft.DirectX.Direct3D.Effect/*01000005*/::FromFile(class [Microsoft.DirectX.Direct3D/*23000003*/]Microsoft.DirectX.Direct3D.Device/*01000003*/,
                                                                                                                                                                                                                                                     string,
                                                                                                                                                                                                                                                     class [Microsoft.DirectX.Direct3DX/*23000004*/]Microsoft.DirectX.Direct3D.Include/*01000023*/,
                                                                                                                                                                                                                                                     valuetype [Microsoft.DirectX.Direct3DX/*23000004*/]Microsoft.DirectX.Direct3D.ShaderFlags/*01000024*/,
                                                                                                                                                                                                                                                     class [Microsoft.DirectX.Direct3DX/*23000004*/]Microsoft.DirectX.Direct3D.EffectPool/*01000025*/,
                                                                                                                                                                                                                                                     string&) /* 0A00001F */
    IL_0208:  /* 7D   | (04)000005       */ stfld      class [Microsoft.DirectX.Direct3DX/*23000004*/]Microsoft.DirectX.Direct3D.Effect/*01000005*/ a.Demo/*02000003*/::eff /* 04000005 */
    IL_020d:  /* 11   | 05               */ ldloc.s    V_5
    IL_020f:  /* 72   | (70)000001       */ ldstr      "" /* 70000001 */
    IL_0214:  /* 28   | (0A)000020       */ call       bool [mscorlib/*23000001*/]System.String/*01000026*/::op_Inequality(string,
                                                                                                                           string) /* 0A000020 */
    IL_0219:  /* 2C   | 12               */ brfalse.s  IL_022d

    IL_021b:  /* 72   | (70)000013       */ ldstr      "effect err: " /* 70000013 */
    IL_0220:  /* 11   | 05               */ ldloc.s    V_5
    IL_0222:  /* 28   | (0A)000021       */ call       string [mscorlib/*23000001*/]System.String/*01000026*/::Concat(string,
                                                                                                                      string) /* 0A000021 */
    IL_0227:  /* 28   | (0A)000022       */ call       valuetype [System.Windows.Forms/*23000002*/]System.Windows.Forms.DialogResult/*01000028*/ [System.Windows.Forms/*23000002*/]System.Windows.Forms.MessageBox/*01000027*/::Show(string) /* 0A000022 */
    IL_022c:  /* 26   |                  */ pop
    IL_022d:  /* 02   |                  */ ldarg.0
    IL_022e:  /* 28   | (0A)000023       */ call       valuetype [mscorlib/*23000001*/]System.DateTime/*01000006*/ [mscorlib/*23000001*/]System.DateTime/*01000006*/::get_Now() /* 0A000023 */
    IL_0233:  /* 7D   | (04)000006       */ stfld      valuetype [mscorlib/*23000001*/]System.DateTime/*01000006*/ a.Demo/*02000003*/::t_start /* 04000006 */
    IL_0238:  /* 2A   |                  */ ret
  } // end of method Demo::R_IN

  .method /*06000004*/ public hidebysig instance void 
          R_FR() cil managed
  // SIG: 20 00 01
  {
    // Method begins at RVA 0x22d4
    // Code size       677 (0x2a5)
    .maxstack  7
    .locals /*11000002*/ init (valuetype [mscorlib/*23000001*/]System.TimeSpan/*01000029*/ V_0,
             float64 V_1,
             valuetype [System.Drawing/*23000009*/]System.Drawing.Color/*0100002A*/ V_2,
             valuetype [Microsoft.DirectX.Direct3D/*23000003*/]Microsoft.DirectX.Direct3D.Material/*0100002D*/ V_3,
             int32 V_4)
    IL_0000:  /* 28   | (0A)000023       */ call       valuetype [mscorlib/*23000001*/]System.DateTime/*01000006*/ [mscorlib/*23000001*/]System.DateTime/*01000006*/::get_Now() /* 0A000023 */
    IL_0005:  /* 02   |                  */ ldarg.0
    IL_0006:  /* 7B   | (04)000006       */ ldfld      valuetype [mscorlib/*23000001*/]System.DateTime/*01000006*/ a.Demo/*02000003*/::t_start /* 04000006 */
    IL_000b:  /* 28   | (0A)000024       */ call       valuetype [mscorlib/*23000001*/]System.TimeSpan/*01000029*/ [mscorlib/*23000001*/]System.DateTime/*01000006*/::op_Subtraction(valuetype [mscorlib/*23000001*/]System.DateTime/*01000006*/,
                                                                                                                                                                                     valuetype [mscorlib/*23000001*/]System.DateTime/*01000006*/) /* 0A000024 */
    IL_0010:  /* 0A   |                  */ stloc.0
    IL_0011:  /* 12   | 00               */ ldloca.s   V_0
    IL_0013:  /* 28   | (0A)000025       */ call       instance float64 [mscorlib/*23000001*/]System.TimeSpan/*01000029*/::get_TotalSeconds() /* 0A000025 */
    IL_0018:  /* 0B   |                  */ stloc.1
    IL_0019:  /* 02   |                  */ ldarg.0
    IL_001a:  /* 7B   | (04)000003       */ ldfld      class [Microsoft.DirectX.Direct3D/*23000003*/]Microsoft.DirectX.Direct3D.Device/*01000003*/ a.Demo/*02000003*/::dev2 /* 04000003 */
    IL_001f:  /* 19   |                  */ ldc.i4.3
    IL_0020:  /* 28   | (0A)000026       */ call       valuetype [System.Drawing/*23000009*/]System.Drawing.Color/*0100002A*/ [System.Drawing/*23000009*/]System.Drawing.Color/*0100002A*/::get_Blue() /* 0A000026 */
    IL_0025:  /* 22   | 0000803F         */ ldc.r4     1.
    IL_002a:  /* 16   |                  */ ldc.i4.0
    IL_002b:  /* 6F   | (0A)000027       */ callvirt   instance void [Microsoft.DirectX.Direct3D/*23000003*/]Microsoft.DirectX.Direct3D.Device/*01000003*/::Clear(valuetype [Microsoft.DirectX.Direct3D/*23000003*/]Microsoft.DirectX.Direct3D.ClearFlags/*0100002B*/,
                                                                                                                                                                  valuetype [System.Drawing_9/*2300000A*/]System.Drawing.Color/*0100002C*/,
                                                                                                                                                                  float32,
                                                                                                                                                                  int32) /* 0A000027 */
    IL_0030:  /* 02   |                  */ ldarg.0
    IL_0031:  /* 7B   | (04)000003       */ ldfld      class [Microsoft.DirectX.Direct3D/*23000003*/]Microsoft.DirectX.Direct3D.Device/*01000003*/ a.Demo/*02000003*/::dev2 /* 04000003 */
    IL_0036:  /* 6F   | (0A)000028       */ callvirt   instance void [Microsoft.DirectX.Direct3D/*23000003*/]Microsoft.DirectX.Direct3D.Device/*01000003*/::BeginScene() /* 0A000028 */
    IL_003b:  /* 28   | (0A)000029       */ call       valuetype [System.Drawing/*23000009*/]System.Drawing.Color/*0100002A*/ [System.Drawing/*23000009*/]System.Drawing.Color/*0100002A*/::get_White() /* 0A000029 */
    IL_0040:  /* 0C   |                  */ stloc.2
    IL_0041:  /* 12   | 03               */ ldloca.s   V_3
    IL_0043:  /* 28   | (0A)00002A       */ call       instance void [Microsoft.DirectX.Direct3D/*23000003*/]Microsoft.DirectX.Direct3D.Material/*0100002D*/::.ctor() /* 0A00002A */
    IL_0048:  /* 12   | 03               */ ldloca.s   V_3
    IL_004a:  /* 08   |                  */ ldloc.2
    IL_004b:  /* 28   | (0A)00002B       */ call       instance void [Microsoft.DirectX.Direct3D/*23000003*/]Microsoft.DirectX.Direct3D.Material/*0100002D*/::set_Diffuse(valuetype [System.Drawing_9/*2300000A*/]System.Drawing.Color/*0100002C*/) /* 0A00002B */
    IL_0050:  /* 12   | 03               */ ldloca.s   V_3
    IL_0052:  /* 08   |                  */ ldloc.2
    IL_0053:  /* 28   | (0A)00002C       */ call       instance void [Microsoft.DirectX.Direct3D/*23000003*/]Microsoft.DirectX.Direct3D.Material/*0100002D*/::set_Ambient(valuetype [System.Drawing_9/*2300000A*/]System.Drawing.Color/*0100002C*/) /* 0A00002C */
    IL_0058:  /* 02   |                  */ ldarg.0
    IL_0059:  /* 7B   | (04)000003       */ ldfld      class [Microsoft.DirectX.Direct3D/*23000003*/]Microsoft.DirectX.Direct3D.Device/*01000003*/ a.Demo/*02000003*/::dev2 /* 04000003 */
    IL_005e:  /* 09   |                  */ ldloc.3
    IL_005f:  /* 6F   | (0A)00002D       */ callvirt   instance void [Microsoft.DirectX.Direct3D/*23000003*/]Microsoft.DirectX.Direct3D.Device/*01000003*/::set_Material(valuetype [Microsoft.DirectX.Direct3D/*23000003*/]Microsoft.DirectX.Direct3D.Material/*0100002D*/) /* 0A00002D */
    IL_0064:  /* 28   | (0A)00002E       */ call       int32 [mscorlib/*23000001*/]System.Environment/*0100002E*/::get_TickCount() /* 0A00002E */
    IL_0069:  /* 6B   |                  */ conv.r4
    IL_006a:  /* 22   | 00800944         */ ldc.r4     550.
    IL_006f:  /* 5B   |                  */ div
    IL_0070:  /* 6C   |                  */ conv.r8
    IL_0071:  /* 28   | (0A)000016       */ call       float64 [mscorlib/*23000001*/]System.Math/*0100001F*/::Cos(float64) /* 0A000016 */
    IL_0076:  /* 6B   |                  */ conv.r4
    IL_0077:  /* 22   | 0000803F         */ ldc.r4     1.
    IL_007c:  /* 28   | (0A)00002E       */ call       int32 [mscorlib/*23000001*/]System.Environment/*0100002E*/::get_TickCount() /* 0A00002E */
    IL_0081:  /* 6B   |                  */ conv.r4
    IL_0082:  /* 22   | 00007A43         */ ldc.r4     250.
    IL_0087:  /* 5B   |                  */ div
    IL_0088:  /* 6C   |                  */ conv.r8
    IL_0089:  /* 28   | (0A)000015       */ call       float64 [mscorlib/*23000001*/]System.Math/*0100001F*/::Sin(float64) /* 0A000015 */
    IL_008e:  /* 6B   |                  */ conv.r4
    IL_008f:  /* 22   | 00000000         */ ldc.r4     0.0
    IL_0094:  /* 73   | (0A)00002F       */ newobj     instance void [Microsoft.DirectX/*23000008*/]Microsoft.DirectX.Vector4/*0100002F*/::.ctor(float32,
                                                                                                                                                 float32,
                                                                                                                                                 float32,
                                                                                                                                                 float32) /* 0A00002F */
    IL_0099:  /* 26   |                  */ pop
    IL_009a:  /* 02   |                  */ ldarg.0
    IL_009b:  /* 7B   | (04)000003       */ ldfld      class [Microsoft.DirectX.Direct3D/*23000003*/]Microsoft.DirectX.Direct3D.Device/*01000003*/ a.Demo/*02000003*/::dev2 /* 04000003 */
    IL_00a0:  /* 6F   | (0A)000030       */ callvirt   instance class [Microsoft.DirectX.Direct3D/*23000003*/]Microsoft.DirectX.Direct3D.Transforms/*01000030*/ [Microsoft.DirectX.Direct3D/*23000003*/]Microsoft.DirectX.Direct3D.Device/*01000003*/::get_Transform() /* 0A000030 */
    IL_00a5:  /* 28   | (0A)00002E       */ call       int32 [mscorlib/*23000001*/]System.Environment/*0100002E*/::get_TickCount() /* 0A00002E */
    IL_00aa:  /* 6B   |                  */ conv.r4
    IL_00ab:  /* 22   | 00007A43         */ ldc.r4     250.
    IL_00b0:  /* 5B   |                  */ div
    IL_00b1:  /* 6C   |                  */ conv.r8
    IL_00b2:  /* 28   | (0A)000016       */ call       float64 [mscorlib/*23000001*/]System.Math/*0100001F*/::Cos(float64) /* 0A000016 */
    IL_00b7:  /* 6B   |                  */ conv.r4
    IL_00b8:  /* 22   | 0000803F         */ ldc.r4     1.
    IL_00bd:  /* 28   | (0A)00002E       */ call       int32 [mscorlib/*23000001*/]System.Environment/*0100002E*/::get_TickCount() /* 0A00002E */
    IL_00c2:  /* 6B   |                  */ conv.r4
    IL_00c3:  /* 22   | 00007A43         */ ldc.r4     250.
    IL_00c8:  /* 5B   |                  */ div
    IL_00c9:  /* 6C   |                  */ conv.r8
    IL_00ca:  /* 28   | (0A)000015       */ call       float64 [mscorlib/*23000001*/]System.Math/*0100001F*/::Sin(float64) /* 0A000015 */
    IL_00cf:  /* 6B   |                  */ conv.r4
    IL_00d0:  /* 73   | (0A)000017       */ newobj     instance void [Microsoft.DirectX/*23000008*/]Microsoft.DirectX.Vector3/*01000020*/::.ctor(float32,
                                                                                                                                                 float32,
                                                                                                                                                 float32) /* 0A000017 */
    IL_00d5:  /* 28   | (0A)00002E       */ call       int32 [mscorlib/*23000001*/]System.Environment/*0100002E*/::get_TickCount() /* 0A00002E */
    IL_00da:  /* 6B   |                  */ conv.r4
    IL_00db:  /* 22   | 00803B45         */ ldc.r4     3000.
    IL_00e0:  /* 5B   |                  */ div
    IL_00e1:  /* 28   | (0A)000031       */ call       valuetype [Microsoft.DirectX/*23000008*/]Microsoft.DirectX.Matrix/*01000031*/ [Microsoft.DirectX/*23000008*/]Microsoft.DirectX.Matrix/*01000031*/::RotationAxis(valuetype [Microsoft.DirectX/*23000008*/]Microsoft.DirectX.Vector3/*01000020*/,
                                                                                                                                                                                                                       float32) /* 0A000031 */
    IL_00e6:  /* 6F   | (0A)000032       */ callvirt   instance void [Microsoft.DirectX.Direct3D/*23000003*/]Microsoft.DirectX.Direct3D.Transforms/*01000030*/::set_World(valuetype [Microsoft.DirectX/*23000008*/]Microsoft.DirectX.Matrix/*01000031*/) /* 0A000032 */
    IL_00eb:  /* 02   |                  */ ldarg.0
    IL_00ec:  /* 7B   | (04)000003       */ ldfld      class [Microsoft.DirectX.Direct3D/*23000003*/]Microsoft.DirectX.Direct3D.Device/*01000003*/ a.Demo/*02000003*/::dev2 /* 04000003 */
    IL_00f1:  /* 6F   | (0A)000030       */ callvirt   instance class [Microsoft.DirectX.Direct3D/*23000003*/]Microsoft.DirectX.Direct3D.Transforms/*01000030*/ [Microsoft.DirectX.Direct3D/*23000003*/]Microsoft.DirectX.Direct3D.Device/*01000003*/::get_Transform() /* 0A000030 */
    IL_00f6:  /* 22   | 00000000         */ ldc.r4     0.0
    IL_00fb:  /* 22   | 00008040         */ ldc.r4     4.
    IL_0100:  /* 22   | 0000A0C0         */ ldc.r4     -5.
    IL_0105:  /* 73   | (0A)000017       */ newobj     instance void [Microsoft.DirectX/*23000008*/]Microsoft.DirectX.Vector3/*01000020*/::.ctor(float32,
                                                                                                                                                 float32,
                                                                                                                                                 float32) /* 0A000017 */
    IL_010a:  /* 22   | 00000000         */ ldc.r4     0.0
    IL_010f:  /* 22   | 00000000         */ ldc.r4     0.0
    IL_0114:  /* 22   | 00000000         */ ldc.r4     0.0
    IL_0119:  /* 73   | (0A)000017       */ newobj     instance void [Microsoft.DirectX/*23000008*/]Microsoft.DirectX.Vector3/*01000020*/::.ctor(float32,
                                                                                                                                                 float32,
                                                                                                                                                 float32) /* 0A000017 */
    IL_011e:  /* 22   | 00000000         */ ldc.r4     0.0
    IL_0123:  /* 22   | 0000803F         */ ldc.r4     1.
    IL_0128:  /* 22   | 00000000         */ ldc.r4     0.0
    IL_012d:  /* 73   | (0A)000017       */ newobj     instance void [Microsoft.DirectX/*23000008*/]Microsoft.DirectX.Vector3/*01000020*/::.ctor(float32,
                                                                                                                                                 float32,
                                                                                                                                                 float32) /* 0A000017 */
    IL_0132:  /* 28   | (0A)000033       */ call       valuetype [Microsoft.DirectX/*23000008*/]Microsoft.DirectX.Matrix/*01000031*/ [Microsoft.DirectX/*23000008*/]Microsoft.DirectX.Matrix/*01000031*/::LookAtLH(valuetype [Microsoft.DirectX/*23000008*/]Microsoft.DirectX.Vector3/*01000020*/,
                                                                                                                                                                                                                   valuetype [Microsoft.DirectX/*23000008*/]Microsoft.DirectX.Vector3/*01000020*/,
                                                                                                                                                                                                                   valuetype [Microsoft.DirectX/*23000008*/]Microsoft.DirectX.Vector3/*01000020*/) /* 0A000033 */
    IL_0137:  /* 6F   | (0A)000034       */ callvirt   instance void [Microsoft.DirectX.Direct3D/*23000003*/]Microsoft.DirectX.Direct3D.Transforms/*01000030*/::set_View(valuetype [Microsoft.DirectX/*23000008*/]Microsoft.DirectX.Matrix/*01000031*/) /* 0A000034 */
    IL_013c:  /* 02   |                  */ ldarg.0
    IL_013d:  /* 7B   | (04)000003       */ ldfld      class [Microsoft.DirectX.Direct3D/*23000003*/]Microsoft.DirectX.Direct3D.Device/*01000003*/ a.Demo/*02000003*/::dev2 /* 04000003 */
    IL_0142:  /* 6F   | (0A)000030       */ callvirt   instance class [Microsoft.DirectX.Direct3D/*23000003*/]Microsoft.DirectX.Direct3D.Transforms/*01000030*/ [Microsoft.DirectX.Direct3D/*23000003*/]Microsoft.DirectX.Direct3D.Device/*01000003*/::get_Transform() /* 0A000030 */
    IL_0147:  /* 22   | DB0F493F         */ ldc.r4     0.78539819
    IL_014c:  /* 22   | 0000803F         */ ldc.r4     1.
    IL_0151:  /* 22   | 0000803F         */ ldc.r4     1.
    IL_0156:  /* 22   | 0000C842         */ ldc.r4     100.
    IL_015b:  /* 28   | (0A)000035       */ call       valuetype [Microsoft.DirectX/*23000008*/]Microsoft.DirectX.Matrix/*01000031*/ [Microsoft.DirectX/*23000008*/]Microsoft.DirectX.Matrix/*01000031*/::PerspectiveFovLH(float32,
                                                                                                                                                                                                                           float32,
                                                                                                                                                                                                                           float32,
                                                                                                                                                                                                                           float32) /* 0A000035 */
    IL_0160:  /* 6F   | (0A)000036       */ callvirt   instance void [Microsoft.DirectX.Direct3D/*23000003*/]Microsoft.DirectX.Direct3D.Transforms/*01000030*/::set_Projection(valuetype [Microsoft.DirectX/*23000008*/]Microsoft.DirectX.Matrix/*01000031*/) /* 0A000036 */
    IL_0165:  /* 22   | 0000803F         */ ldc.r4     1.
    IL_016a:  /* 22   | 0000803F         */ ldc.r4     1.
    IL_016f:  /* 22   | 0000803F         */ ldc.r4     1.
    IL_0174:  /* 22   | 0000803F         */ ldc.r4     1.
    IL_0179:  /* 73   | (0A)000037       */ newobj     instance void [Microsoft.DirectX.Direct3D/*23000003*/]Microsoft.DirectX.Direct3D.ColorValue/*01000032*/::.ctor(float32,
                                                                                                                                                                      float32,
                                                                                                                                                                      float32,
                                                                                                                                                                      float32) /* 0A000037 */
    IL_017e:  /* 26   |                  */ pop
    IL_017f:  /* 22   | 0000803F         */ ldc.r4     1.
    IL_0184:  /* 22   | 0000803F         */ ldc.r4     1.
    IL_0189:  /* 22   | 00000000         */ ldc.r4     0.0
    IL_018e:  /* 22   | 0000803F         */ ldc.r4     1.
    IL_0193:  /* 73   | (0A)000037       */ newobj     instance void [Microsoft.DirectX.Direct3D/*23000003*/]Microsoft.DirectX.Direct3D.ColorValue/*01000032*/::.ctor(float32,
                                                                                                                                                                      float32,
                                                                                                                                                                      float32,
                                                                                                                                                                      float32) /* 0A000037 */
    IL_0198:  /* 26   |                  */ pop
    IL_0199:  /* 02   |                  */ ldarg.0
    IL_019a:  /* 7B   | (04)000005       */ ldfld      class [Microsoft.DirectX.Direct3DX/*23000004*/]Microsoft.DirectX.Direct3D.Effect/*01000005*/ a.Demo/*02000003*/::eff /* 04000005 */
    IL_019f:  /* 72   | (70)00002D       */ ldstr      "projectionMatrix" /* 7000002D */
    IL_01a4:  /* 28   | (0A)000038       */ call       class [Microsoft.DirectX.Direct3DX/*23000004*/]Microsoft.DirectX.Direct3D.EffectHandle/*01000033*/ [Microsoft.DirectX.Direct3DX/*23000004*/]Microsoft.DirectX.Direct3D.EffectHandle/*01000033*/::op_Implicit(string) /* 0A000038 */
    IL_01a9:  /* 02   |                  */ ldarg.0
    IL_01aa:  /* 7B   | (04)000003       */ ldfld      class [Microsoft.DirectX.Direct3D/*23000003*/]Microsoft.DirectX.Direct3D.Device/*01000003*/ a.Demo/*02000003*/::dev2 /* 04000003 */
    IL_01af:  /* 6F   | (0A)000030       */ callvirt   instance class [Microsoft.DirectX.Direct3D/*23000003*/]Microsoft.DirectX.Direct3D.Transforms/*01000030*/ [Microsoft.DirectX.Direct3D/*23000003*/]Microsoft.DirectX.Direct3D.Device/*01000003*/::get_Transform() /* 0A000030 */
    IL_01b4:  /* 6F   | (0A)000039       */ callvirt   instance valuetype [Microsoft.DirectX/*23000008*/]Microsoft.DirectX.Matrix/*01000031*/ [Microsoft.DirectX.Direct3D/*23000003*/]Microsoft.DirectX.Direct3D.Transforms/*01000030*/::get_Projection() /* 0A000039 */
    IL_01b9:  /* 6F   | (0A)00003A       */ callvirt   instance void [Microsoft.DirectX.Direct3DX/*23000004*/]Microsoft.DirectX.Direct3D.BaseEffect/*01000034*/::SetValue(class [Microsoft.DirectX.Direct3DX/*23000004*/]Microsoft.DirectX.Direct3D.EffectHandle/*01000033*/,
                                                                                                                                                                          valuetype [Microsoft.DirectX/*23000008*/]Microsoft.DirectX.Matrix/*01000031*/) /* 0A00003A */
    IL_01be:  /* 02   |                  */ ldarg.0
    IL_01bf:  /* 7B   | (04)000005       */ ldfld      class [Microsoft.DirectX.Direct3DX/*23000004*/]Microsoft.DirectX.Direct3D.Effect/*01000005*/ a.Demo/*02000003*/::eff /* 04000005 */
    IL_01c4:  /* 72   | (70)00004F       */ ldstr      "viewMatrix" /* 7000004F */
    IL_01c9:  /* 28   | (0A)000038       */ call       class [Microsoft.DirectX.Direct3DX/*23000004*/]Microsoft.DirectX.Direct3D.EffectHandle/*01000033*/ [Microsoft.DirectX.Direct3DX/*23000004*/]Microsoft.DirectX.Direct3D.EffectHandle/*01000033*/::op_Implicit(string) /* 0A000038 */
    IL_01ce:  /* 02   |                  */ ldarg.0
    IL_01cf:  /* 7B   | (04)000003       */ ldfld      class [Microsoft.DirectX.Direct3D/*23000003*/]Microsoft.DirectX.Direct3D.Device/*01000003*/ a.Demo/*02000003*/::dev2 /* 04000003 */
    IL_01d4:  /* 6F   | (0A)000030       */ callvirt   instance class [Microsoft.DirectX.Direct3D/*23000003*/]Microsoft.DirectX.Direct3D.Transforms/*01000030*/ [Microsoft.DirectX.Direct3D/*23000003*/]Microsoft.DirectX.Direct3D.Device/*01000003*/::get_Transform() /* 0A000030 */
    IL_01d9:  /* 6F   | (0A)00003B       */ callvirt   instance valuetype [Microsoft.DirectX/*23000008*/]Microsoft.DirectX.Matrix/*01000031*/ [Microsoft.DirectX.Direct3D/*23000003*/]Microsoft.DirectX.Direct3D.Transforms/*01000030*/::get_View() /* 0A00003B */
    IL_01de:  /* 6F   | (0A)00003A       */ callvirt   instance void [Microsoft.DirectX.Direct3DX/*23000004*/]Microsoft.DirectX.Direct3D.BaseEffect/*01000034*/::SetValue(class [Microsoft.DirectX.Direct3DX/*23000004*/]Microsoft.DirectX.Direct3D.EffectHandle/*01000033*/,
                                                                                                                                                                          valuetype [Microsoft.DirectX/*23000008*/]Microsoft.DirectX.Matrix/*01000031*/) /* 0A00003A */
    IL_01e3:  /* 02   |                  */ ldarg.0
    IL_01e4:  /* 7B   | (04)000005       */ ldfld      class [Microsoft.DirectX.Direct3DX/*23000004*/]Microsoft.DirectX.Direct3D.Effect/*01000005*/ a.Demo/*02000003*/::eff /* 04000005 */
    IL_01e9:  /* 72   | (70)000065       */ ldstr      "worldMatrix" /* 70000065 */
    IL_01ee:  /* 28   | (0A)000038       */ call       class [Microsoft.DirectX.Direct3DX/*23000004*/]Microsoft.DirectX.Direct3D.EffectHandle/*01000033*/ [Microsoft.DirectX.Direct3DX/*23000004*/]Microsoft.DirectX.Direct3D.EffectHandle/*01000033*/::op_Implicit(string) /* 0A000038 */
    IL_01f3:  /* 02   |                  */ ldarg.0
    IL_01f4:  /* 7B   | (04)000003       */ ldfld      class [Microsoft.DirectX.Direct3D/*23000003*/]Microsoft.DirectX.Direct3D.Device/*01000003*/ a.Demo/*02000003*/::dev2 /* 04000003 */
    IL_01f9:  /* 6F   | (0A)000030       */ callvirt   instance class [Microsoft.DirectX.Direct3D/*23000003*/]Microsoft.DirectX.Direct3D.Transforms/*01000030*/ [Microsoft.DirectX.Direct3D/*23000003*/]Microsoft.DirectX.Direct3D.Device/*01000003*/::get_Transform() /* 0A000030 */
    IL_01fe:  /* 6F   | (0A)00003C       */ callvirt   instance valuetype [Microsoft.DirectX/*23000008*/]Microsoft.DirectX.Matrix/*01000031*/ [Microsoft.DirectX.Direct3D/*23000003*/]Microsoft.DirectX.Direct3D.Transforms/*01000030*/::get_World() /* 0A00003C */
    IL_0203:  /* 6F   | (0A)00003A       */ callvirt   instance void [Microsoft.DirectX.Direct3DX/*23000004*/]Microsoft.DirectX.Direct3D.BaseEffect/*01000034*/::SetValue(class [Microsoft.DirectX.Direct3DX/*23000004*/]Microsoft.DirectX.Direct3D.EffectHandle/*01000033*/,
                                                                                                                                                                          valuetype [Microsoft.DirectX/*23000008*/]Microsoft.DirectX.Matrix/*01000031*/) /* 0A00003A */
    IL_0208:  /* 02   |                  */ ldarg.0
    IL_0209:  /* 7B   | (04)000005       */ ldfld      class [Microsoft.DirectX.Direct3DX/*23000004*/]Microsoft.DirectX.Direct3D.Effect/*01000005*/ a.Demo/*02000003*/::eff /* 04000005 */
    IL_020e:  /* 72   | (70)00007D       */ ldstr      "appTime" /* 7000007D */
    IL_0213:  /* 28   | (0A)000038       */ call       class [Microsoft.DirectX.Direct3DX/*23000004*/]Microsoft.DirectX.Direct3D.EffectHandle/*01000033*/ [Microsoft.DirectX.Direct3DX/*23000004*/]Microsoft.DirectX.Direct3D.EffectHandle/*01000033*/::op_Implicit(string) /* 0A000038 */
    IL_0218:  /* 07   |                  */ ldloc.1
    IL_0219:  /* 6B   |                  */ conv.r4
    IL_021a:  /* 6F   | (0A)00003D       */ callvirt   instance void [Microsoft.DirectX.Direct3DX/*23000004*/]Microsoft.DirectX.Direct3D.BaseEffect/*01000034*/::SetValue(class [Microsoft.DirectX.Direct3DX/*23000004*/]Microsoft.DirectX.Direct3D.EffectHandle/*01000033*/,
                                                                                                                                                                          float32) /* 0A00003D */
    IL_021f:  /* 02   |                  */ ldarg.0
    IL_0220:  /* 7B   | (04)000003       */ ldfld      class [Microsoft.DirectX.Direct3D/*23000003*/]Microsoft.DirectX.Direct3D.Device/*01000003*/ a.Demo/*02000003*/::dev2 /* 04000003 */
    IL_0225:  /* 16   |                  */ ldc.i4.0
    IL_0226:  /* 02   |                  */ ldarg.0
    IL_0227:  /* 7B   | (04)000004       */ ldfld      class [Microsoft.DirectX.Direct3D/*23000003*/]Microsoft.DirectX.Direct3D.VertexBuffer/*01000004*/ a.Demo/*02000003*/::vb /* 04000004 */
    IL_022c:  /* 16   |                  */ ldc.i4.0
    IL_022d:  /* 6F   | (0A)00003E       */ callvirt   instance void [Microsoft.DirectX.Direct3D/*23000003*/]Microsoft.DirectX.Direct3D.Device/*01000003*/::SetStreamSource(int32,
                                                                                                                                                                            class [Microsoft.DirectX.Direct3D/*23000003*/]Microsoft.DirectX.Direct3D.VertexBuffer/*01000004*/,
                                                                                                                                                                            int32) /* 0A00003E */
    IL_0232:  /* 02   |                  */ ldarg.0
    IL_0233:  /* 7B   | (04)000003       */ ldfld      class [Microsoft.DirectX.Direct3D/*23000003*/]Microsoft.DirectX.Direct3D.Device/*01000003*/ a.Demo/*02000003*/::dev2 /* 04000003 */
    IL_0238:  /* 1F   | 12               */ ldc.i4.s   18
    IL_023a:  /* 6F   | (0A)00003F       */ callvirt   instance void [Microsoft.DirectX.Direct3D/*23000003*/]Microsoft.DirectX.Direct3D.Device/*01000003*/::set_VertexFormat(valuetype [Microsoft.DirectX.Direct3D/*23000003*/]Microsoft.DirectX.Direct3D.VertexFormats/*0100001B*/) /* 0A00003F */
    IL_023f:  /* 02   |                  */ ldarg.0
    IL_0240:  /* 7B   | (04)000005       */ ldfld      class [Microsoft.DirectX.Direct3DX/*23000004*/]Microsoft.DirectX.Direct3D.Effect/*01000005*/ a.Demo/*02000003*/::eff /* 04000005 */
    IL_0245:  /* 16   |                  */ ldc.i4.0
    IL_0246:  /* 6F   | (0A)000040       */ callvirt   instance int32 [Microsoft.DirectX.Direct3DX/*23000004*/]Microsoft.DirectX.Direct3D.Effect/*01000005*/::Begin(valuetype [Microsoft.DirectX.Direct3DX/*23000004*/]Microsoft.DirectX.Direct3D.FX/*01000035*/) /* 0A000040 */
    IL_024b:  /* 26   |                  */ pop
    IL_024c:  /* 16   |                  */ ldc.i4.0
    IL_024d:  /* 13   | 04               */ stloc.s    V_4
    IL_024f:  /* 2B   | 2D               */ br.s       IL_027e

    IL_0251:  /* 02   |                  */ ldarg.0
    IL_0252:  /* 7B   | (04)000005       */ ldfld      class [Microsoft.DirectX.Direct3DX/*23000004*/]Microsoft.DirectX.Direct3D.Effect/*01000005*/ a.Demo/*02000003*/::eff /* 04000005 */
    IL_0257:  /* 11   | 04               */ ldloc.s    V_4
    IL_0259:  /* 6F   | (0A)000041       */ callvirt   instance void [Microsoft.DirectX.Direct3DX/*23000004*/]Microsoft.DirectX.Direct3D.Effect/*01000005*/::BeginPass(int32) /* 0A000041 */
    IL_025e:  /* 02   |                  */ ldarg.0
    IL_025f:  /* 7B   | (04)000003       */ ldfld      class [Microsoft.DirectX.Direct3D/*23000003*/]Microsoft.DirectX.Direct3D.Device/*01000003*/ a.Demo/*02000003*/::dev2 /* 04000003 */
    IL_0264:  /* 1B   |                  */ ldc.i4.5
    IL_0265:  /* 16   |                  */ ldc.i4.0
    IL_0266:  /* 1F   | 62               */ ldc.i4.s   98
    IL_0268:  /* 6F   | (0A)000042       */ callvirt   instance void [Microsoft.DirectX.Direct3D/*23000003*/]Microsoft.DirectX.Direct3D.Device/*01000003*/::DrawPrimitives(valuetype [Microsoft.DirectX.Direct3D/*23000003*/]Microsoft.DirectX.Direct3D.PrimitiveType/*01000036*/,
                                                                                                                                                                           int32,
                                                                                                                                                                           int32) /* 0A000042 */
    IL_026d:  /* 02   |                  */ ldarg.0
    IL_026e:  /* 7B   | (04)000005       */ ldfld      class [Microsoft.DirectX.Direct3DX/*23000004*/]Microsoft.DirectX.Direct3D.Effect/*01000005*/ a.Demo/*02000003*/::eff /* 04000005 */
    IL_0273:  /* 6F   | (0A)000043       */ callvirt   instance void [Microsoft.DirectX.Direct3DX/*23000004*/]Microsoft.DirectX.Direct3D.Effect/*01000005*/::EndPass() /* 0A000043 */
    IL_0278:  /* 11   | 04               */ ldloc.s    V_4
    IL_027a:  /* 17   |                  */ ldc.i4.1
    IL_027b:  /* 58   |                  */ add
    IL_027c:  /* 13   | 04               */ stloc.s    V_4
    IL_027e:  /* 11   | 04               */ ldloc.s    V_4
    IL_0280:  /* 1A   |                  */ ldc.i4.4
    IL_0281:  /* 32   | CE               */ blt.s      IL_0251

    IL_0283:  /* 02   |                  */ ldarg.0
    IL_0284:  /* 7B   | (04)000005       */ ldfld      class [Microsoft.DirectX.Direct3DX/*23000004*/]Microsoft.DirectX.Direct3D.Effect/*01000005*/ a.Demo/*02000003*/::eff /* 04000005 */
    IL_0289:  /* 6F   | (0A)000044       */ callvirt   instance void [Microsoft.DirectX.Direct3DX/*23000004*/]Microsoft.DirectX.Direct3D.Effect/*01000005*/::End() /* 0A000044 */
    IL_028e:  /* 02   |                  */ ldarg.0
    IL_028f:  /* 7B   | (04)000003       */ ldfld      class [Microsoft.DirectX.Direct3D/*23000003*/]Microsoft.DirectX.Direct3D.Device/*01000003*/ a.Demo/*02000003*/::dev2 /* 04000003 */
    IL_0294:  /* 6F   | (0A)000045       */ callvirt   instance void [Microsoft.DirectX.Direct3D/*23000003*/]Microsoft.DirectX.Direct3D.Device/*01000003*/::EndScene() /* 0A000045 */
    IL_0299:  /* 02   |                  */ ldarg.0
    IL_029a:  /* 7B   | (04)000003       */ ldfld      class [Microsoft.DirectX.Direct3D/*23000003*/]Microsoft.DirectX.Direct3D.Device/*01000003*/ a.Demo/*02000003*/::dev2 /* 04000003 */
    IL_029f:  /* 6F   | (0A)000046       */ callvirt   instance void [Microsoft.DirectX.Direct3D/*23000003*/]Microsoft.DirectX.Direct3D.Device/*01000003*/::Present() /* 0A000046 */
    IL_02a4:  /* 2A   |                  */ ret
  } // end of method Demo::R_FR

  .method /*06000005*/ public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  // SIG: 20 00 01
  {
    // Method begins at RVA 0x2585
    // Code size       35 (0x23)
    .maxstack  8
    IL_0000:  /* 02   |                  */ ldarg.0
    IL_0001:  /* 28   | (0A)000047       */ call       instance void [System.Windows.Forms/*23000002*/]System.Windows.Forms.Form/*01000002*/::.ctor() /* 0A000047 */
    IL_0006:  /* 02   |                  */ ldarg.0
    IL_0007:  /* 20   | 20030000         */ ldc.i4     0x320
    IL_000c:  /* 28   | (0A)000048       */ call       instance void [System.Windows.Forms/*23000002*/]System.Windows.Forms.Control/*0100000C*/::set_Width(int32) /* 0A000048 */
    IL_0011:  /* 02   |                  */ ldarg.0
    IL_0012:  /* 20   | 58020000         */ ldc.i4     0x258
    IL_0017:  /* 28   | (0A)000049       */ call       instance void [System.Windows.Forms/*23000002*/]System.Windows.Forms.Control/*0100000C*/::set_Height(int32) /* 0A000049 */
    IL_001c:  /* 02   |                  */ ldarg.0
    IL_001d:  /* 28   | (06)000003       */ call       instance void a.Demo/*02000003*/::R_IN() /* 06000003 */
    IL_0022:  /* 2A   |                  */ ret
  } // end of method Demo::.ctor

  .method /*06000006*/ family hidebysig virtual 
          instance void  OnCreateControl() cil managed
  // SIG: 20 00 01
  {
    // Method begins at RVA 0x25a9
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  /* 02   |                  */ ldarg.0
    IL_0001:  /* 28   | (0A)00004A       */ call       instance void [System.Windows.Forms/*23000002*/]System.Windows.Forms.Form/*01000002*/::OnCreateControl() /* 0A00004A */
    IL_0006:  /* 2A   |                  */ ret
  } // end of method Demo::OnCreateControl

  .method /*06000007*/ family hidebysig virtual 
          instance void  OnShown(class [mscorlib/*23000001*/]System.EventArgs/*01000007*/ e) cil managed
  // SIG: 20 01 01 12 1D
  {
    // Method begins at RVA 0x25b1
    // Code size       14 (0xe)
    .maxstack  8
    IL_0000:  /* 02   |                  */ ldarg.0
    IL_0001:  /* 03   |                  */ ldarg.1
    IL_0002:  /* 28   | (0A)00004B       */ call       instance void [System.Windows.Forms/*23000002*/]System.Windows.Forms.Form/*01000002*/::OnShown(class [mscorlib/*23000001*/]System.EventArgs/*01000007*/) /* 0A00004B */
    IL_0007:  /* 02   |                  */ ldarg.0
    IL_0008:  /* 28   | (06)000008       */ call       instance void a.Demo/*02000003*/::Run() /* 06000008 */
    IL_000d:  /* 2A   |                  */ ret
  } // end of method Demo::OnShown

  .method /*06000008*/ public hidebysig instance void 
          Run() cil managed
  // SIG: 20 00 01
  {
    // Method begins at RVA 0x25c0
    // Code size       184 (0xb8)
    .maxstack  4
    .locals /*11000003*/ init (valuetype [Microsoft.DirectX.DirectSound/*23000005*/]Microsoft.DirectX.DirectSound.WaveFormat/*01000038*/ V_0,
             class [Microsoft.DirectX.DirectSound/*23000005*/]Microsoft.DirectX.DirectSound.BufferDescription/*0100003A*/ V_1)
    IL_0000:  /* 02   |                  */ ldarg.0
    IL_0001:  /* 28   | (06)000013       */ call       instance void a.Demo/*02000003*/::S_RNDR() /* 06000013 */
    IL_0006:  /* 02   |                  */ ldarg.0
    IL_0007:  /* 73   | (0A)00004C       */ newobj     instance void [Microsoft.DirectX.DirectSound/*23000005*/]Microsoft.DirectX.DirectSound.Device/*01000008*/::.ctor() /* 0A00004C */
    IL_000c:  /* 7D   | (04)000007       */ stfld      class [Microsoft.DirectX.DirectSound/*23000005*/]Microsoft.DirectX.DirectSound.Device/*01000008*/ a.Demo/*02000003*/::sounddevice /* 04000007 */
    IL_0011:  /* 02   |                  */ ldarg.0
    IL_0012:  /* 7B   | (04)000007       */ ldfld      class [Microsoft.DirectX.DirectSound/*23000005*/]Microsoft.DirectX.DirectSound.Device/*01000008*/ a.Demo/*02000003*/::sounddevice /* 04000007 */
    IL_0017:  /* 7E   | (04)000001       */ ldsfld     class a.Demo/*02000003*/ a.Program/*02000002*/::F1 /* 04000001 */
    IL_001c:  /* 17   |                  */ ldc.i4.1
    IL_001d:  /* 6F   | (0A)00004D       */ callvirt   instance void [Microsoft.DirectX.DirectSound/*23000005*/]Microsoft.DirectX.DirectSound.Device/*01000008*/::SetCooperativeLevel(class [System.Windows.Forms_5/*23000006*/]System.Windows.Forms.Control/*01000013*/,
                                                                                                                                                                                      valuetype [Microsoft.DirectX.DirectSound/*23000005*/]Microsoft.DirectX.DirectSound.CooperativeLevel/*01000037*/) /* 0A00004D */
    IL_0022:  /* 12   | 00               */ ldloca.s   V_0
    IL_0024:  /* 28   | (0A)00004E       */ call       instance void [Microsoft.DirectX.DirectSound/*23000005*/]Microsoft.DirectX.DirectSound.WaveFormat/*01000038*/::.ctor() /* 0A00004E */
    IL_0029:  /* 12   | 00               */ ldloca.s   V_0
    IL_002b:  /* 17   |                  */ ldc.i4.1
    IL_002c:  /* 28   | (0A)00004F       */ call       instance void [Microsoft.DirectX.DirectSound/*23000005*/]Microsoft.DirectX.DirectSound.WaveFormat/*01000038*/::set_FormatTag(valuetype [Microsoft.DirectX.DirectSound/*23000005*/]Microsoft.DirectX.DirectSound.WaveFormatTag/*01000039*/) /* 0A00004F */
    IL_0031:  /* 12   | 00               */ ldloca.s   V_0
    IL_0033:  /* 20   | 44AC0000         */ ldc.i4     0xac44
    IL_0038:  /* 28   | (0A)000050       */ call       instance void [Microsoft.DirectX.DirectSound/*23000005*/]Microsoft.DirectX.DirectSound.WaveFormat/*01000038*/::set_SamplesPerSecond(int32) /* 0A000050 */
    IL_003d:  /* 12   | 00               */ ldloca.s   V_0
    IL_003f:  /* 1F   | 10               */ ldc.i4.s   16
    IL_0041:  /* 28   | (0A)000051       */ call       instance void [Microsoft.DirectX.DirectSound/*23000005*/]Microsoft.DirectX.DirectSound.WaveFormat/*01000038*/::set_BitsPerSample(int16) /* 0A000051 */
    IL_0046:  /* 12   | 00               */ ldloca.s   V_0
    IL_0048:  /* 17   |                  */ ldc.i4.1
    IL_0049:  /* 28   | (0A)000052       */ call       instance void [Microsoft.DirectX.DirectSound/*23000005*/]Microsoft.DirectX.DirectSound.WaveFormat/*01000038*/::set_Channels(int16) /* 0A000052 */
    IL_004e:  /* 12   | 00               */ ldloca.s   V_0
    IL_0050:  /* 18   |                  */ ldc.i4.2
    IL_0051:  /* 28   | (0A)000053       */ call       instance void [Microsoft.DirectX.DirectSound/*23000005*/]Microsoft.DirectX.DirectSound.WaveFormat/*01000038*/::set_BlockAlign(int16) /* 0A000053 */
    IL_0056:  /* 12   | 00               */ ldloca.s   V_0
    IL_0058:  /* 20   | 88580100         */ ldc.i4     0x15888
    IL_005d:  /* 28   | (0A)000054       */ call       instance void [Microsoft.DirectX.DirectSound/*23000005*/]Microsoft.DirectX.DirectSound.WaveFormat/*01000038*/::set_AverageBytesPerSecond(int32) /* 0A000054 */
    IL_0062:  /* 06   |                  */ ldloc.0
    IL_0063:  /* 73   | (0A)000055       */ newobj     instance void [Microsoft.DirectX.DirectSound/*23000005*/]Microsoft.DirectX.DirectSound.BufferDescription/*0100003A*/::.ctor(valuetype [Microsoft.DirectX.DirectSound/*23000005*/]Microsoft.DirectX.DirectSound.WaveFormat/*01000038*/) /* 0A000055 */
    IL_0068:  /* 0B   |                  */ stloc.1
    IL_0069:  /* 07   |                  */ ldloc.1
    IL_006a:  /* 02   |                  */ ldarg.0
    IL_006b:  /* 7B   | (04)00000A       */ ldfld      uint8[] a.Demo/*02000003*/::S_B /* 0400000A */
    IL_0070:  /* 8E   |                  */ ldlen
    IL_0071:  /* 69   |                  */ conv.i4
    IL_0072:  /* 6F   | (0A)000056       */ callvirt   instance void [Microsoft.DirectX.DirectSound/*23000005*/]Microsoft.DirectX.DirectSound.BufferDescription/*0100003A*/::set_BufferBytes(int32) /* 0A000056 */
    IL_0077:  /* 07   |                  */ ldloc.1
    IL_0078:  /* 17   |                  */ ldc.i4.1
    IL_0079:  /* 6F   | (0A)000057       */ callvirt   instance void [Microsoft.DirectX.DirectSound/*23000005*/]Microsoft.DirectX.DirectSound.BufferDescription/*0100003A*/::set_GlobalFocus(bool) /* 0A000057 */
    IL_007e:  /* 07   |                  */ ldloc.1
    IL_007f:  /* 17   |                  */ ldc.i4.1
    IL_0080:  /* 6F   | (0A)000058       */ callvirt   instance void [Microsoft.DirectX.DirectSound/*23000005*/]Microsoft.DirectX.DirectSound.BufferDescription/*0100003A*/::set_ControlEffects(bool) /* 0A000058 */
    IL_0085:  /* 02   |                  */ ldarg.0
    IL_0086:  /* 07   |                  */ ldloc.1
    IL_0087:  /* 02   |                  */ ldarg.0
    IL_0088:  /* 7B   | (04)000007       */ ldfld      class [Microsoft.DirectX.DirectSound/*23000005*/]Microsoft.DirectX.DirectSound.Device/*01000008*/ a.Demo/*02000003*/::sounddevice /* 04000007 */
    IL_008d:  /* 73   | (0A)000059       */ newobj     instance void [Microsoft.DirectX.DirectSound/*23000005*/]Microsoft.DirectX.DirectSound.SecondaryBuffer/*01000009*/::.ctor(class [Microsoft.DirectX.DirectSound/*23000005*/]Microsoft.DirectX.DirectSound.BufferDescription/*0100003A*/,
                                                                                                                                                                                 class [Microsoft.DirectX.DirectSound/*23000005*/]Microsoft.DirectX.DirectSound.Device/*01000008*/) /* 0A000059 */
    IL_0092:  /* 7D   | (04)000008       */ stfld      class [Microsoft.DirectX.DirectSound/*23000005*/]Microsoft.DirectX.DirectSound.SecondaryBuffer/*01000009*/ a.Demo/*02000003*/::buffer /* 04000008 */
    IL_0097:  /* 02   |                  */ ldarg.0
    IL_0098:  /* 7B   | (04)000008       */ ldfld      class [Microsoft.DirectX.DirectSound/*23000005*/]Microsoft.DirectX.DirectSound.SecondaryBuffer/*01000009*/ a.Demo/*02000003*/::buffer /* 04000008 */
    IL_009d:  /* 16   |                  */ ldc.i4.0
    IL_009e:  /* 02   |                  */ ldarg.0
    IL_009f:  /* 7B   | (04)00000A       */ ldfld      uint8[] a.Demo/*02000003*/::S_B /* 0400000A */
    IL_00a4:  /* 16   |                  */ ldc.i4.0
    IL_00a5:  /* 6F   | (0A)00005A       */ callvirt   instance void [Microsoft.DirectX.DirectSound/*23000005*/]Microsoft.DirectX.DirectSound.Buffer/*0100003B*/::Write(int32,
                                                                                                                                                                        class [mscorlib_6/*23000007*/]System.Array/*0100001D*/,
                                                                                                                                                                        valuetype [Microsoft.DirectX.DirectSound/*23000005*/]Microsoft.DirectX.DirectSound.LockFlag/*0100003C*/) /* 0A00005A */
    IL_00aa:  /* 02   |                  */ ldarg.0
    IL_00ab:  /* 7B   | (04)000008       */ ldfld      class [Microsoft.DirectX.DirectSound/*23000005*/]Microsoft.DirectX.DirectSound.SecondaryBuffer/*01000009*/ a.Demo/*02000003*/::buffer /* 04000008 */
    IL_00b0:  /* 16   |                  */ ldc.i4.0
    IL_00b1:  /* 16   |                  */ ldc.i4.0
    IL_00b2:  /* 6F   | (0A)00005B       */ callvirt   instance void [Microsoft.DirectX.DirectSound/*23000005*/]Microsoft.DirectX.DirectSound.Buffer/*0100003B*/::Play(int32,
                                                                                                                                                                       valuetype [Microsoft.DirectX.DirectSound/*23000005*/]Microsoft.DirectX.DirectSound.BufferPlayFlags/*0100003D*/) /* 0A00005B */
    IL_00b7:  /* 2A   |                  */ ret
  } // end of method Demo::Run

  .method /*06000009*/ public hidebysig instance void 
          Stop() cil managed
  // SIG: 20 00 01
  {
    // Method begins at RVA 0x2684
    // Code size       36 (0x24)
    .maxstack  8
    IL_0000:  /* 72   | (70)00008D       */ ldstr      "stop" /* 7000008D */
    IL_0005:  /* 28   | (0A)00005C       */ call       void [mscorlib/*23000001*/]System.Console/*0100003E*/::WriteLine(string) /* 0A00005C */
    IL_000a:  /* 02   |                  */ ldarg.0
    IL_000b:  /* 7B   | (04)000008       */ ldfld      class [Microsoft.DirectX.DirectSound/*23000005*/]Microsoft.DirectX.DirectSound.SecondaryBuffer/*01000009*/ a.Demo/*02000003*/::buffer /* 04000008 */
    IL_0010:  /* 14   |                  */ ldnull
    IL_0011:  /* 28   | (0A)00005D       */ call       bool [Microsoft.DirectX.DirectSound/*23000005*/]Microsoft.DirectX.DirectSound.SecondaryBuffer/*01000009*/::op_Inequality(class [Microsoft.DirectX.DirectSound/*23000005*/]Microsoft.DirectX.DirectSound.SecondaryBuffer/*01000009*/,
                                                                                                                                                                                class [Microsoft.DirectX.DirectSound/*23000005*/]Microsoft.DirectX.DirectSound.SecondaryBuffer/*01000009*/) /* 0A00005D */
    IL_0016:  /* 2C   | 0B               */ brfalse.s  IL_0023

    IL_0018:  /* 02   |                  */ ldarg.0
    IL_0019:  /* 7B   | (04)000008       */ ldfld      class [Microsoft.DirectX.DirectSound/*23000005*/]Microsoft.DirectX.DirectSound.SecondaryBuffer/*01000009*/ a.Demo/*02000003*/::buffer /* 04000008 */
    IL_001e:  /* 6F   | (0A)00005E       */ callvirt   instance void [Microsoft.DirectX.DirectSound/*23000005*/]Microsoft.DirectX.DirectSound.Buffer/*0100003B*/::Stop() /* 0A00005E */
    IL_0023:  /* 2A   |                  */ ret
  } // end of method Demo::Stop

  .method /*0600000A*/ public hidebysig instance void 
          FP(int32 startsample,
             int32 numsamples,
             float32 startpitch,
             float32 pitchmult,
             float32 startvol,
             float32 volmult) cil managed
  // SIG: 20 06 01 08 08 0C 0C 0C 0C
  {
    // Method begins at RVA 0x26ac
    // Code size       106 (0x6a)
    .maxstack  3
    .locals /*11000004*/ init (float32 V_0,
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
    IL_002e:  /* 28   | (0A)000015       */ call       float64 [mscorlib/*23000001*/]System.Math/*0100001F*/::Sin(float64) /* 0A000015 */
    IL_0033:  /* 6B   |                  */ conv.r4
    IL_0034:  /* 5A   |                  */ mul
    IL_0035:  /* 13   | 04               */ stloc.s    V_4
    IL_0037:  /* 02   |                  */ ldarg.0
    IL_0038:  /* 7B   | (04)000009       */ ldfld      float32[] a.Demo/*02000003*/::S_F /* 04000009 */
    IL_003d:  /* 03   |                  */ ldarg.1
    IL_003e:  /* 09   |                  */ ldloc.3
    IL_003f:  /* 58   |                  */ add
    IL_0040:  /* 8F   | (01)00003F       */ ldelema    [mscorlib/*23000001*/]System.Single/*0100003F*/
    IL_0045:  /* 25   |                  */ dup
    IL_0046:  /* 71   | (01)00003F       */ ldobj      [mscorlib/*23000001*/]System.Single/*0100003F*/
    IL_004b:  /* 11   | 04               */ ldloc.s    V_4
    IL_004d:  /* 58   |                  */ add
    IL_004e:  /* 81   | (01)00003F       */ stobj      [mscorlib/*23000001*/]System.Single/*0100003F*/
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

  .method /*0600000B*/ public hidebysig instance void 
          FN(int32 startsample,
             int32 numsamples,
             int32 dirt,
             float32 startvol,
             float32 volmult) cil managed
  // SIG: 20 05 01 08 08 08 0C 0C
  {
    // Method begins at RVA 0x2724
    // Code size       110 (0x6e)
    .maxstack  3
    .locals /*11000005*/ init (float32 V_0,
             float32 V_1,
             class [mscorlib/*23000001*/]System.Random/*01000040*/ V_2,
             int32 V_3,
             int32 V_4,
             float32 V_5)
    IL_0000:  /* 0E   | 04               */ ldarg.s    startvol
    IL_0002:  /* 0A   |                  */ stloc.0
    IL_0003:  /* 22   | 00000000         */ ldc.r4     0.0
    IL_0008:  /* 0B   |                  */ stloc.1
    IL_0009:  /* 73   | (0A)00005F       */ newobj     instance void [mscorlib/*23000001*/]System.Random/*01000040*/::.ctor() /* 0A00005F */
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
    IL_0022:  /* 6F   | (0A)000060       */ callvirt   instance float64 [mscorlib/*23000001*/]System.Random/*01000040*/::NextDouble() /* 0A000060 */
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
    IL_0041:  /* 7B   | (04)000009       */ ldfld      float32[] a.Demo/*02000003*/::S_F /* 04000009 */
    IL_0046:  /* 03   |                  */ ldarg.1
    IL_0047:  /* 11   | 04               */ ldloc.s    V_4
    IL_0049:  /* 58   |                  */ add
    IL_004a:  /* 8F   | (01)00003F       */ ldelema    [mscorlib/*23000001*/]System.Single/*0100003F*/
    IL_004f:  /* 25   |                  */ dup
    IL_0050:  /* 71   | (01)00003F       */ ldobj      [mscorlib/*23000001*/]System.Single/*0100003F*/
    IL_0055:  /* 11   | 05               */ ldloc.s    V_5
    IL_0057:  /* 58   |                  */ add
    IL_0058:  /* 81   | (01)00003F       */ stobj      [mscorlib/*23000001*/]System.Single/*0100003F*/
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

  .method /*0600000C*/ public hidebysig instance void 
          FSQ(int32 startsample,
              int32 numsamples,
              float32 startpitch,
              float32 startvol,
              float32 volmult) cil managed
  // SIG: 20 05 01 08 08 0C 0C 0C
  {
    // Method begins at RVA 0x27a0
    // Code size       109 (0x6d)
    .maxstack  3
    .locals /*11000006*/ init (float32 V_0,
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
    IL_0030:  /* 7B   | (04)000009       */ ldfld      float32[] a.Demo/*02000003*/::S_F /* 04000009 */
    IL_0035:  /* 03   |                  */ ldarg.1
    IL_0036:  /* 09   |                  */ ldloc.3
    IL_0037:  /* 58   |                  */ add
    IL_0038:  /* 8F   | (01)00003F       */ ldelema    [mscorlib/*23000001*/]System.Single/*0100003F*/
    IL_003d:  /* 25   |                  */ dup
    IL_003e:  /* 71   | (01)00003F       */ ldobj      [mscorlib/*23000001*/]System.Single/*0100003F*/
    IL_0043:  /* 11   | 04               */ ldloc.s    V_4
    IL_0045:  /* 58   |                  */ add
    IL_0046:  /* 81   | (01)00003F       */ stobj      [mscorlib/*23000001*/]System.Single/*0100003F*/
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

  .method /*0600000D*/ public hidebysig instance void 
          FSA(int32 startsample,
              int32 numsamples,
              float32 startpitch,
              float32 startvol,
              float32 volmult) cil managed
  // SIG: 20 05 01 08 08 0C 0C 0C
  {
    // Method begins at RVA 0x281c
    // Code size       112 (0x70)
    .maxstack  3
    .locals /*11000006*/ init (float32 V_0,
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
    IL_0033:  /* 7B   | (04)000009       */ ldfld      float32[] a.Demo/*02000003*/::S_F /* 04000009 */
    IL_0038:  /* 03   |                  */ ldarg.1
    IL_0039:  /* 09   |                  */ ldloc.3
    IL_003a:  /* 58   |                  */ add
    IL_003b:  /* 8F   | (01)00003F       */ ldelema    [mscorlib/*23000001*/]System.Single/*0100003F*/
    IL_0040:  /* 25   |                  */ dup
    IL_0041:  /* 71   | (01)00003F       */ ldobj      [mscorlib/*23000001*/]System.Single/*0100003F*/
    IL_0046:  /* 11   | 04               */ ldloc.s    V_4
    IL_0048:  /* 58   |                  */ add
    IL_0049:  /* 81   | (01)00003F       */ stobj      [mscorlib/*23000001*/]System.Single/*0100003F*/
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

  .method /*0600000E*/ public hidebysig instance void 
          S_BD(int32 startsample) cil managed
  // SIG: 20 01 01 08
  {
    // Method begins at RVA 0x2898
    // Code size       97 (0x61)
    .maxstack  7
    IL_0000:  /* 02   |                  */ ldarg.0
    IL_0001:  /* 03   |                  */ ldarg.1
    IL_0002:  /* 20   | B80B0000         */ ldc.i4     0xbb8
    IL_0007:  /* 22   | 00007A44         */ ldc.r4     1000.
    IL_000c:  /* 22   | 77BE7F3F         */ ldc.r4     0.99900001
    IL_0011:  /* 22   | 6666663F         */ ldc.r4     0.89999998
    IL_0016:  /* 22   | 58FF7F3F         */ ldc.r4     0.99998999
    IL_001b:  /* 28   | (06)00000A       */ call       instance void a.Demo/*02000003*/::FP(int32,
                                                                                            int32,
                                                                                            float32,
                                                                                            float32,
                                                                                            float32,
                                                                                            float32) /* 0600000A */
    IL_0020:  /* 02   |                  */ ldarg.0
    IL_0021:  /* 03   |                  */ ldarg.1
    IL_0022:  /* 20   | 88130000         */ ldc.i4     0x1388
    IL_0027:  /* 22   | 0000FA44         */ ldc.r4     2000.
    IL_002c:  /* 22   | A4707D3F         */ ldc.r4     0.99000001
    IL_0031:  /* 22   | C3F5283F         */ ldc.r4     0.66000003
    IL_0036:  /* 22   | 58FF7F3F         */ ldc.r4     0.99998999
    IL_003b:  /* 28   | (06)00000A       */ call       instance void a.Demo/*02000003*/::FP(int32,
                                                                                            int32,
                                                                                            float32,
                                                                                            float32,
                                                                                            float32,
                                                                                            float32) /* 0600000A */
    IL_0040:  /* 02   |                  */ ldarg.0
    IL_0041:  /* 03   |                  */ ldarg.1
    IL_0042:  /* 20   | 204E0000         */ ldc.i4     0x4e20
    IL_0047:  /* 22   | 0000DC42         */ ldc.r4     110.
    IL_004c:  /* 22   | 0000803F         */ ldc.r4     1.
    IL_0051:  /* 22   | 0000803F         */ ldc.r4     1.
    IL_0056:  /* 22   | EFFF7F3F         */ ldc.r4     0.99999899
    IL_005b:  /* 28   | (06)00000A       */ call       instance void a.Demo/*02000003*/::FP(int32,
                                                                                            int32,
                                                                                            float32,
                                                                                            float32,
                                                                                            float32,
                                                                                            float32) /* 0600000A */
    IL_0060:  /* 2A   |                  */ ret
  } // end of method Demo::S_BD

  .method /*0600000F*/ public hidebysig instance void 
          S_SD(int32 startsample) cil managed
  // SIG: 20 01 01 08
  {
    // Method begins at RVA 0x2905
    // Code size       47 (0x2f)
    .maxstack  8
    IL_0000:  /* 02   |                  */ ldarg.0
    IL_0001:  /* 03   |                  */ ldarg.1
    IL_0002:  /* 20   | D0070000         */ ldc.i4     0x7d0
    IL_0007:  /* 18   |                  */ ldc.i4.2
    IL_0008:  /* 22   | CDCC4C3F         */ ldc.r4     0.80000001
    IL_000d:  /* 22   | 77BE7F3F         */ ldc.r4     0.99900001
    IL_0012:  /* 28   | (06)00000B       */ call       instance void a.Demo/*02000003*/::FN(int32,
                                                                                            int32,
                                                                                            int32,
                                                                                            float32,
                                                                                            float32) /* 0600000B */
    IL_0017:  /* 02   |                  */ ldarg.0
    IL_0018:  /* 03   |                  */ ldarg.1
    IL_0019:  /* 20   | 40060000         */ ldc.i4     0x640
    IL_001e:  /* 19   |                  */ ldc.i4.3
    IL_001f:  /* 22   | 0000003F         */ ldc.r4     0.5
    IL_0024:  /* 22   | 77BE7F3F         */ ldc.r4     0.99900001
    IL_0029:  /* 28   | (06)00000B       */ call       instance void a.Demo/*02000003*/::FN(int32,
                                                                                            int32,
                                                                                            int32,
                                                                                            float32,
                                                                                            float32) /* 0600000B */
    IL_002e:  /* 2A   |                  */ ret
  } // end of method Demo::S_SD

  .method /*06000010*/ public hidebysig instance void 
          S_CH(int32 startsample) cil managed
  // SIG: 20 01 01 08
  {
    // Method begins at RVA 0x2935
    // Code size       24 (0x18)
    .maxstack  8
    IL_0000:  /* 02   |                  */ ldarg.0
    IL_0001:  /* 03   |                  */ ldarg.1
    IL_0002:  /* 20   | 800C0000         */ ldc.i4     0xc80
    IL_0007:  /* 17   |                  */ ldc.i4.1
    IL_0008:  /* 22   | 9A99193F         */ ldc.r4     0.60000002
    IL_000d:  /* 22   | C9767E3F         */ ldc.r4     0.99400002
    IL_0012:  /* 28   | (06)00000B       */ call       instance void a.Demo/*02000003*/::FN(int32,
                                                                                            int32,
                                                                                            int32,
                                                                                            float32,
                                                                                            float32) /* 0600000B */
    IL_0017:  /* 2A   |                  */ ret
  } // end of method Demo::S_CH

  .method /*06000011*/ public hidebysig instance void 
          S_OH(int32 startsample) cil managed
  // SIG: 20 01 01 08
  {
    // Method begins at RVA 0x294e
    // Code size       24 (0x18)
    .maxstack  8
    IL_0000:  /* 02   |                  */ ldarg.0
    IL_0001:  /* 03   |                  */ ldarg.1
    IL_0002:  /* 20   | 581B0000         */ ldc.i4     0x1b58
    IL_0007:  /* 18   |                  */ ldc.i4.2
    IL_0008:  /* 22   | CDCCCC3E         */ ldc.r4     0.40000001
    IL_000d:  /* 22   | 77BE7F3F         */ ldc.r4     0.99900001
    IL_0012:  /* 28   | (06)00000B       */ call       instance void a.Demo/*02000003*/::FN(int32,
                                                                                            int32,
                                                                                            int32,
                                                                                            float32,
                                                                                            float32) /* 0600000B */
    IL_0017:  /* 2A   |                  */ ret
  } // end of method Demo::S_OH

  .method /*06000012*/ public hidebysig instance void 
          S_RS(int32 startsample,
               int32 bp) cil managed
  // SIG: 20 02 01 08 08
  {
    // Method begins at RVA 0x2968
    // Code size       79 (0x4f)
    .maxstack  6
    IL_0000:  /* 02   |                  */ ldarg.0
    IL_0001:  /* 03   |                  */ ldarg.1
    IL_0002:  /* 20   | 983A0000         */ ldc.i4     0x3a98
    IL_0007:  /* 04   |                  */ ldarg.2
    IL_0008:  /* 6B   |                  */ conv.r4
    IL_0009:  /* 22   | 0000003F         */ ldc.r4     0.5
    IL_000e:  /* 22   | 3BDF7F3F         */ ldc.r4     0.99949998
    IL_0013:  /* 28   | (06)00000D       */ call       instance void a.Demo/*02000003*/::FSA(int32,
                                                                                             int32,
                                                                                             float32,
                                                                                             float32,
                                                                                             float32) /* 0600000D */
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
    IL_002f:  /* 28   | (06)00000D       */ call       instance void a.Demo/*02000003*/::FSA(int32,
                                                                                             int32,
                                                                                             float32,
                                                                                             float32,
                                                                                             float32) /* 0600000D */
    IL_0034:  /* 02   |                  */ ldarg.0
    IL_0035:  /* 03   |                  */ ldarg.1
    IL_0036:  /* 20   | 983A0000         */ ldc.i4     0x3a98
    IL_003b:  /* 04   |                  */ ldarg.2
    IL_003c:  /* 19   |                  */ ldc.i4.3
    IL_003d:  /* 5B   |                  */ div
    IL_003e:  /* 6B   |                  */ conv.r4
    IL_003f:  /* 22   | 0000003F         */ ldc.r4     0.5
    IL_0044:  /* 22   | 92CB7F3F         */ ldc.r4     0.99919999
    IL_0049:  /* 28   | (06)00000D       */ call       instance void a.Demo/*02000003*/::FSA(int32,
                                                                                             int32,
                                                                                             float32,
                                                                                             float32,
                                                                                             float32) /* 0600000D */
    IL_004e:  /* 2A   |                  */ ret
  } // end of method Demo::S_RS

  .method /*06000013*/ public hidebysig instance void 
          S_RNDR() cil managed
  // SIG: 20 00 01
  {
    // Method begins at RVA 0x2ae8
    // Code size       586 (0x24a)
    .maxstack  4
    .locals /*11000007*/ init (int32 V_0,
             int32 V_1,
             int32 V_2,
             int32[] V_3,
             int32[] V_4,
             int32[] V_5,
             int32[] V_6,
             class [mscorlib/*23000001*/]System.Random/*01000040*/ V_7,
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
    IL_0008:  /* 8D   | (01)00003F       */ newarr     [mscorlib/*23000001*/]System.Single/*0100003F*/
    IL_000d:  /* 7D   | (04)000009       */ stfld      float32[] a.Demo/*02000003*/::S_F /* 04000009 */
    IL_0012:  /* 1E   |                  */ ldc.i4.8
    IL_0013:  /* 0B   |                  */ stloc.1
    IL_0014:  /* 20   | 814F0000         */ ldc.i4     0x4f81
    IL_0019:  /* 0C   |                  */ stloc.2
    IL_001a:  /* 1F   | 10               */ ldc.i4.s   16
    IL_001c:  /* 8D   | (01)000041       */ newarr     [mscorlib/*23000001*/]System.Int32/*01000041*/
    IL_0021:  /* 25   |                  */ dup
    IL_0022:  /* D0   | (04)00000B       */ ldtoken    field valuetype '<PrivateImplementationDetails>{E739F0E2-6F17-481A-ABF2-14ED27536515}'/*02000004*//'__StaticArrayInitTypeSize=64'/*02000005*/ '<PrivateImplementationDetails>{E739F0E2-6F17-481A-ABF2-14ED27536515}'/*02000004*/::'$$method0x6000013-1' /* 0400000B */
    IL_0027:  /* 28   | (0A)000062       */ call       void [mscorlib/*23000001*/]System.Runtime.CompilerServices.RuntimeHelpers/*01000044*/::InitializeArray(class [mscorlib/*23000001*/]System.Array/*01000045*/,
                                                                                                                                                              valuetype [mscorlib/*23000001*/]System.RuntimeFieldHandle/*01000046*/) /* 0A000062 */
    IL_002c:  /* 0D   |                  */ stloc.3
    IL_002d:  /* 1F   | 10               */ ldc.i4.s   16
    IL_002f:  /* 8D   | (01)000041       */ newarr     [mscorlib/*23000001*/]System.Int32/*01000041*/
    IL_0034:  /* 25   |                  */ dup
    IL_0035:  /* D0   | (04)00000C       */ ldtoken    field valuetype '<PrivateImplementationDetails>{E739F0E2-6F17-481A-ABF2-14ED27536515}'/*02000004*//'__StaticArrayInitTypeSize=64'/*02000005*/ '<PrivateImplementationDetails>{E739F0E2-6F17-481A-ABF2-14ED27536515}'/*02000004*/::'$$method0x6000013-2' /* 0400000C */
    IL_003a:  /* 28   | (0A)000062       */ call       void [mscorlib/*23000001*/]System.Runtime.CompilerServices.RuntimeHelpers/*01000044*/::InitializeArray(class [mscorlib/*23000001*/]System.Array/*01000045*/,
                                                                                                                                                              valuetype [mscorlib/*23000001*/]System.RuntimeFieldHandle/*01000046*/) /* 0A000062 */
    IL_003f:  /* 13   | 04               */ stloc.s    V_4
    IL_0041:  /* 1F   | 10               */ ldc.i4.s   16
    IL_0043:  /* 8D   | (01)000041       */ newarr     [mscorlib/*23000001*/]System.Int32/*01000041*/
    IL_0048:  /* 25   |                  */ dup
    IL_0049:  /* D0   | (04)00000D       */ ldtoken    field valuetype '<PrivateImplementationDetails>{E739F0E2-6F17-481A-ABF2-14ED27536515}'/*02000004*//'__StaticArrayInitTypeSize=64'/*02000005*/ '<PrivateImplementationDetails>{E739F0E2-6F17-481A-ABF2-14ED27536515}'/*02000004*/::'$$method0x6000013-3' /* 0400000D */
    IL_004e:  /* 28   | (0A)000062       */ call       void [mscorlib/*23000001*/]System.Runtime.CompilerServices.RuntimeHelpers/*01000044*/::InitializeArray(class [mscorlib/*23000001*/]System.Array/*01000045*/,
                                                                                                                                                              valuetype [mscorlib/*23000001*/]System.RuntimeFieldHandle/*01000046*/) /* 0A000062 */
    IL_0053:  /* 13   | 05               */ stloc.s    V_5
    IL_0055:  /* 1F   | 10               */ ldc.i4.s   16
    IL_0057:  /* 8D   | (01)000041       */ newarr     [mscorlib/*23000001*/]System.Int32/*01000041*/
    IL_005c:  /* 25   |                  */ dup
    IL_005d:  /* D0   | (04)00000E       */ ldtoken    field valuetype '<PrivateImplementationDetails>{E739F0E2-6F17-481A-ABF2-14ED27536515}'/*02000004*//'__StaticArrayInitTypeSize=64'/*02000005*/ '<PrivateImplementationDetails>{E739F0E2-6F17-481A-ABF2-14ED27536515}'/*02000004*/::'$$method0x6000013-4' /* 0400000E */
    IL_0062:  /* 28   | (0A)000062       */ call       void [mscorlib/*23000001*/]System.Runtime.CompilerServices.RuntimeHelpers/*01000044*/::InitializeArray(class [mscorlib/*23000001*/]System.Array/*01000045*/,
                                                                                                                                                              valuetype [mscorlib/*23000001*/]System.RuntimeFieldHandle/*01000046*/) /* 0A000062 */
    IL_0067:  /* 13   | 06               */ stloc.s    V_6
    IL_0069:  /* 20   | 39300000         */ ldc.i4     0x3039
    IL_006e:  /* 73   | (0A)000063       */ newobj     instance void [mscorlib/*23000001*/]System.Random/*01000040*/::.ctor(int32) /* 0A000063 */
    IL_0073:  /* 13   | 07               */ stloc.s    V_7
    IL_0075:  /* 16   |                  */ ldc.i4.0
    IL_0076:  /* 13   | 08               */ stloc.s    V_8
    IL_0078:  /* 38   | 4A010000         */ br         IL_01c7

    IL_007d:  /* 1E   |                  */ ldc.i4.8
    IL_007e:  /* 8D   | (01)000041       */ newarr     [mscorlib/*23000001*/]System.Int32/*01000041*/
    IL_0083:  /* 25   |                  */ dup
    IL_0084:  /* D0   | (04)00000F       */ ldtoken    field valuetype '<PrivateImplementationDetails>{E739F0E2-6F17-481A-ABF2-14ED27536515}'/*02000004*//'__StaticArrayInitTypeSize=32'/*02000006*/ '<PrivateImplementationDetails>{E739F0E2-6F17-481A-ABF2-14ED27536515}'/*02000004*/::'$$method0x6000013-5' /* 0400000F */
    IL_0089:  /* 28   | (0A)000062       */ call       void [mscorlib/*23000001*/]System.Runtime.CompilerServices.RuntimeHelpers/*01000044*/::InitializeArray(class [mscorlib/*23000001*/]System.Array/*01000045*/,
                                                                                                                                                              valuetype [mscorlib/*23000001*/]System.RuntimeFieldHandle/*01000046*/) /* 0A000062 */
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
    IL_00c8:  /* 6F   | (0A)000064       */ callvirt   instance int32 [mscorlib/*23000001*/]System.Random/*01000040*/::Next() /* 0A000064 */
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
    IL_00dd:  /* 28   | (06)00000E       */ call       instance void a.Demo/*02000003*/::S_BD(int32) /* 0600000E */
    IL_00e2:  /* 11   | 07               */ ldloc.s    V_7
    IL_00e4:  /* 6F   | (0A)000064       */ callvirt   instance int32 [mscorlib/*23000001*/]System.Random/*01000040*/::Next() /* 0A000064 */
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
    IL_00fa:  /* 28   | (06)00000F       */ call       instance void a.Demo/*02000003*/::S_SD(int32) /* 0600000F */
    IL_00ff:  /* 11   | 07               */ ldloc.s    V_7
    IL_0101:  /* 6F   | (0A)000064       */ callvirt   instance int32 [mscorlib/*23000001*/]System.Random/*01000040*/::Next() /* 0A000064 */
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
    IL_0117:  /* 28   | (06)000010       */ call       instance void a.Demo/*02000003*/::S_CH(int32) /* 06000010 */
    IL_011c:  /* 11   | 07               */ ldloc.s    V_7
    IL_011e:  /* 6F   | (0A)000064       */ callvirt   instance int32 [mscorlib/*23000001*/]System.Random/*01000040*/::Next() /* 0A000064 */
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
    IL_0134:  /* 28   | (06)000011       */ call       instance void a.Demo/*02000003*/::S_OH(int32) /* 06000011 */
    IL_0139:  /* 11   | 07               */ ldloc.s    V_7
    IL_013b:  /* 6F   | (0A)000064       */ callvirt   instance int32 [mscorlib/*23000001*/]System.Random/*01000040*/::Next() /* 0A000064 */
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
    IL_0150:  /* 28   | (06)000012       */ call       instance void a.Demo/*02000003*/::S_RS(int32,
                                                                                              int32) /* 06000012 */
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
    IL_0163:  /* 28   | (06)000012       */ call       instance void a.Demo/*02000003*/::S_RS(int32,
                                                                                              int32) /* 06000012 */
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
    IL_0176:  /* 28   | (06)000012       */ call       instance void a.Demo/*02000003*/::S_RS(int32,
                                                                                              int32) /* 06000012 */
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
    IL_0189:  /* 28   | (06)000012       */ call       instance void a.Demo/*02000003*/::S_RS(int32,
                                                                                              int32) /* 06000012 */
    IL_018e:  /* 11   | 07               */ ldloc.s    V_7
    IL_0190:  /* 6F   | (0A)000064       */ callvirt   instance int32 [mscorlib/*23000001*/]System.Random/*01000040*/::Next() /* 0A000064 */
    IL_0195:  /* 1F   | 64               */ ldc.i4.s   100
    IL_0197:  /* 5D   |                  */ rem
    IL_0198:  /* 13   | 0E               */ stloc.s    V_14
    IL_019a:  /* 11   | 07               */ ldloc.s    V_7
    IL_019c:  /* 6F   | (0A)000064       */ callvirt   instance int32 [mscorlib/*23000001*/]System.Random/*01000040*/::Next() /* 0A000064 */
    IL_01a1:  /* 1F   | 64               */ ldc.i4.s   100
    IL_01a3:  /* 5D   |                  */ rem
    IL_01a4:  /* 13   | 0E               */ stloc.s    V_14
    IL_01a6:  /* 11   | 07               */ ldloc.s    V_7
    IL_01a8:  /* 6F   | (0A)000064       */ callvirt   instance int32 [mscorlib/*23000001*/]System.Random/*01000040*/::Next() /* 0A000064 */
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
    IL_01d3:  /* 8D   | (01)000047       */ newarr     [mscorlib/*23000001*/]System.Byte/*01000047*/
    IL_01d8:  /* 7D   | (04)00000A       */ stfld      uint8[] a.Demo/*02000003*/::S_B /* 0400000A */
    IL_01dd:  /* 16   |                  */ ldc.i4.0
    IL_01de:  /* 13   | 0F               */ stloc.s    V_15
    IL_01e0:  /* 2B   | 62               */ br.s       IL_0244

    IL_01e2:  /* 02   |                  */ ldarg.0
    IL_01e3:  /* 7B   | (04)000009       */ ldfld      float32[] a.Demo/*02000003*/::S_F /* 04000009 */
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
    IL_0219:  /* 7B   | (04)00000A       */ ldfld      uint8[] a.Demo/*02000003*/::S_B /* 0400000A */
    IL_021e:  /* 11   | 0F               */ ldloc.s    V_15
    IL_0220:  /* 18   |                  */ ldc.i4.2
    IL_0221:  /* 5A   |                  */ mul
    IL_0222:  /* 11   | 11               */ ldloc.s    V_17
    IL_0224:  /* 20   | FF000000         */ ldc.i4     0xff
    IL_0229:  /* 5F   |                  */ and
    IL_022a:  /* D2   |                  */ conv.u1
    IL_022b:  /* 9C   |                  */ stelem.i1
    IL_022c:  /* 02   |                  */ ldarg.0
    IL_022d:  /* 7B   | (04)00000A       */ ldfld      uint8[] a.Demo/*02000003*/::S_B /* 0400000A */
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

} // end of class a.Demo

.class /*02000004*/ private auto ansi '<PrivateImplementationDetails>{E739F0E2-6F17-481A-ABF2-14ED27536515}'
       extends [mscorlib/*23000001*/]System.Object/*01000001*/
{
  .class /*02000005*/ explicit ansi sealed nested private '__StaticArrayInitTypeSize=64'
         extends [mscorlib/*23000001*/]System.ValueType/*01000043*/
  {
    .pack 1
    .size 64
  } // end of class '__StaticArrayInitTypeSize=64'

  .class /*02000006*/ explicit ansi sealed nested private '__StaticArrayInitTypeSize=32'
         extends [mscorlib/*23000001*/]System.ValueType/*01000043*/
  {
    .pack 1
    .size 32
  } // end of class '__StaticArrayInitTypeSize=32'

  .field /*0400000B*/ static assembly valuetype '<PrivateImplementationDetails>{E739F0E2-6F17-481A-ABF2-14ED27536515}'/*02000004*//'__StaticArrayInitTypeSize=64'/*02000005*/ '$$method0x6000013-1' at I_000029C8
  .field /*0400000C*/ static assembly valuetype '<PrivateImplementationDetails>{E739F0E2-6F17-481A-ABF2-14ED27536515}'/*02000004*//'__StaticArrayInitTypeSize=64'/*02000005*/ '$$method0x6000013-2' at I_00002A08
  .field /*0400000D*/ static assembly valuetype '<PrivateImplementationDetails>{E739F0E2-6F17-481A-ABF2-14ED27536515}'/*02000004*//'__StaticArrayInitTypeSize=64'/*02000005*/ '$$method0x6000013-3' at I_00002A48
  .field /*0400000E*/ static assembly valuetype '<PrivateImplementationDetails>{E739F0E2-6F17-481A-ABF2-14ED27536515}'/*02000004*//'__StaticArrayInitTypeSize=64'/*02000005*/ '$$method0x6000013-4' at I_00002A88
  .field /*0400000F*/ static assembly valuetype '<PrivateImplementationDetails>{E739F0E2-6F17-481A-ABF2-14ED27536515}'/*02000004*//'__StaticArrayInitTypeSize=32'/*02000006*/ '$$method0x6000013-5' at I_00002AC8
} // end of class '<PrivateImplementationDetails>{E739F0E2-6F17-481A-ABF2-14ED27536515}'


// =============================================================

.data cil I_000029C8 = bytearray (
                 64 00 00 00 0F 00 00 00 05 00 00 00 23 00 00 00  // d...........#...
                 69 00 00 00 05 00 00 00 1E 00 00 00 05 00 00 00  // i...............
                 69 00 00 00 05 00 00 00 0F 00 00 00 05 00 00 00  // i...............
                 69 00 00 00 0F 00 00 00 19 00 00 00 2D 00 00 00) // i...........-...
.data cil I_00002A08 = bytearray (
                 05 00 00 00 05 00 00 00 05 00 00 00 2D 00 00 00  // ............-...
                 64 00 00 00 05 00 00 00 05 00 00 00 32 00 00 00  // d...........2...
                 05 00 00 00 23 00 00 00 05 00 00 00 05 00 00 00  // ....#...........
                 64 00 00 00 05 00 00 00 05 00 00 00 37 00 00 00) // d...........7...
.data cil I_00002A48 = bytearray (
                 00 00 00 00 4B 00 00 00 4B 00 00 00 23 00 00 00  // ....K...K...#...
                 00 00 00 00 55 00 00 00 55 00 00 00 00 00 00 00  // ....U...U.......
                 05 00 00 00 4B 00 00 00 4B 00 00 00 05 00 00 00  // ....K...K.......
                 05 00 00 00 55 00 00 00 5F 00 00 00 37 00 00 00) // ....U..._...7...
.data cil I_00002A88 = bytearray (
                 05 00 00 00 05 00 00 00 50 00 00 00 05 00 00 00  // ........P.......
                 05 00 00 00 05 00 00 00 55 00 00 00 00 00 00 00  // ........U.......
                 05 00 00 00 05 00 00 00 4B 00 00 00 05 00 00 00  // ........K.......
                 05 00 00 00 2D 00 00 00 55 00 00 00 2D 00 00 00) // ....-...U...-...
.data cil I_00002AC8 = bytearray (
                 2C 01 00 00 C8 00 00 00 2C 01 00 00 0A 01 00 00  // ,.......,.......
                 2C 01 00 00 C8 00 00 00 2C 01 00 00 A4 01 00 00) // ,.......,.......
// *********** DISASSEMBLY COMPLETE ***********************
// WARNING: Created Win32 resource file microsynth1-decompile.res
