
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
// Time-date stamp:            0x474ebe27
// Ptr to symbol table:        0x00000000
// Number of symbols:          0x00000000
// Size of optional header:    0x00e0
// Characteristics:            0x010e
// ----- PE Optional Header (32 bit):
// Magic:                          0x010b
// Major linker version:           0x08
// Minor linker version:           0x00
// Size of code:                   0x00001600
// Size of init.data:              0x00000600
// Size of uninit.data:            0x00000000
// Addr. of entry point:           0x000034ae
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
// 0x00003454 [0x00000057] address [size] of Import Directory:          
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
//              0x000014b4 Virtual Size
//              0x00002000 Virtual Address
//              0x00001600 Size of Raw Data
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
//              0x00001800 Pointer to Raw Data
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
//              0x00001c00 Pointer to Raw Data
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
//              Entry 1: Type 0x3 Offset 0x000004b0
//              Entry 2: Type 0x0 Offset 0x00000000

// Import Address Table
//     DLL : mscoree.dll
//              0x00002000 Import Address Table
//              0x0000349e Import Name Table
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
// 0x00002778 [0x00000cdc] address [size] of Metadata Directory:        
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
//              0x00000500 Size
//              '#~' Name
//    Stream 2:
//              0x0000056c Offset
//              0x000005ac Size
//              '#Strings' Name
//    Stream 3:
//              0x00000b18 Offset
//              0x0000000c Size
//              '#US' Name
//    Stream 4:
//              0x00000b24 Offset
//              0x00000010 Size
//              '#GUID' Name
//    Stream 5:
//              0x00000b34 Offset
//              0x000001a8 Size
//              '#Blob' Name

//    Metadata Stream Header:
//              0x00000000 Reserved
//                    0x02 Major
//                    0x00 Minor
//                    0x00 Heaps
//                    0x01 Rid
//      0x0000020920029d57 MaskValid
//      0x000016003301fa00 Sorted

// Code Manager Table:
//  default


// Export Address Table Jumps:
// No data.

// File size            : 7680
// PE header size       : 512 (496 used)    ( 6.67%)
// PE additional info   : 867               (11.29%)
// Num.of PE sections   : 3
// CLR header size     : 72                 ( 0.94%)
// CLR meta-data size  : 3292               (42.86%)
// CLR additional info : 0                  ( 0.00%)
// CLR method headers  : 71                 ( 0.92%)
// Managed code         : 1426              (18.57%)
// Data                 : 1536              (20.00%)
// Unaccounted          : -96               (-1.25%)

// Num.of PE sections   : 3
//   .text    - 5632
//   .rsrc    - 1024
//   .reloc   - 512

// CLR meta-data size  : 3292
//   Module        -    1 (10 bytes)
//   TypeDef       -    5 (70 bytes)      0 interfaces, 0 explicit layout
//   TypeRef       -   35 (210 bytes)
//   MethodDef     -   16 (224 bytes)     0 abstract, 0 native, 16 bodies
//   FieldDef      -   11 (66 bytes)      0 constant
//   MemberRef     -   47 (282 bytes)
//   ParamDef      -   19 (114 bytes)
//   Constant      -    1 (6 bytes)
//   CustomAttribute-    3 (18 bytes)
//   ClassLayout   -    1 (8 bytes)
//   StandAloneSig -    4 (8 bytes)
//   Assembly      -    1 (22 bytes)
//   AssemblyRef   -    6 (120 bytes)
//   NestedClass   -    1 (4 bytes)
//   FieldRVA      -    5 (30 bytes)
//   Strings       -  1450 bytes
//   Blobs         -   424 bytes
//   UserStrings   -    12 bytes
//   Guids         -    16 bytes
//   Uncategorized -   198 bytes

// CLR method headers : 71
//   Num.of method bodies  - 16
//   Num.of fat headers    - 5
//   Num.of tiny headers   - 11

// Managed code : 1426
//   Ave method size - 89
// Classes defined in this module:
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
// Class Program                        (auto) (ansi) 
// Class Demo                           (auto) (ansi) 
// Class <PrivateImplementationDetails>{FE000440-6DBE-45FD-8368-9501A5706E13} (auto) (ansi) 
// Class __StaticArrayInitTypeSize=64   (explicit) (ansi) (sealed) (nested private) 
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
.assembly extern /*23000004*/ System.Windows.Forms as System.Windows.Forms_3
{
  .publickeytoken = (B7 7A 5C 56 19 34 E0 89 )                         // .z\V.4..
  .hash = (F1 22 DE 9B 59 BA 3D 79 BD 7F FE AC F9 5B 86 3A   // ."..Y.=y.....[.:
           A0 54 E2 71 )                                     // .T.q
  .ver 1:0:5000:0
}
.assembly extern /*23000005*/ Microsoft.VisualC
{
  .publickeytoken = (B0 3F 5F 7F 11 D5 0A 3A )                         // .?_....:
  .hash = (51 61 5C E6 38 77 9E CD FE BE 9E 58 6E CC E9 D8   // Qa\.8w.....Xn...
           3F 3B 86 A8 )                                     // ?;..
  .ver 7:0:5000:0
}
.assembly extern /*23000006*/ mscorlib as mscorlib_5
{
  .publickeytoken = (B7 7A 5C 56 19 34 E0 89 )                         // .z\V.4..
  .hash = (AB 74 A6 A8 1D E6 70 59 FD BE DE D7 9F 2F E3 E4   // .t....pY...../..
           7B 27 2C 18 )                                     // {',.
  .ver 1:0:5000:0
}
.assembly /*20000001*/ microsynth1
{
  .hash algorithm 0x00008004
  .ver 0:0:0:0
}
.module microsynth1.exe
// MVID: {FE000440-6DBE-45FD-8368-9501A5706E13}
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
    // Code size       21 (0x15)
    .maxstack  8
    IL_0000:  /* 73   | (06)000010       */ newobj     instance void a.Demo/*02000003*/::.ctor() /* 06000010 */
    IL_0005:  /* 80   | (04)000001       */ stsfld     class a.Demo/*02000003*/ a.Program/*02000002*/::F1 /* 04000001 */
    IL_000a:  /* 7E   | (04)000001       */ ldsfld     class a.Demo/*02000003*/ a.Program/*02000002*/::F1 /* 04000001 */
    IL_000f:  /* 28   | (0A)000003       */ call       void [System.Windows.Forms/*23000002*/]System.Windows.Forms.Application/*01000008*/::Run(class [System.Windows.Forms/*23000002*/]System.Windows.Forms.Form/*01000002*/) /* 0A000003 */
    IL_0014:  /* 2A   |                  */ ret
  } // end of method Program::Main

  .method /*06000002*/ public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  // SIG: 20 00 01
  {
    // Method begins at RVA 0x2066
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  /* 02   |                  */ ldarg.0
    IL_0001:  /* 28   | (0A)000004       */ call       instance void [mscorlib/*23000001*/]System.Object/*01000001*/::.ctor() /* 0A000004 */
    IL_0006:  /* 2A   |                  */ ret
  } // end of method Program::.ctor

} // end of class a.Program

.class /*02000003*/ private auto ansi beforefieldinit a.Demo
       extends [System.Windows.Forms/*23000002*/]System.Windows.Forms.Form/*01000002*/
{
  .field /*04000002*/ public static literal int32 BPM = int32(0x00000073)
  .field /*04000003*/ private class [Microsoft.DirectX.DirectSound/*23000003*/]Microsoft.DirectX.DirectSound.Device/*01000004*/ sounddevice
  .field /*04000004*/ private class [Microsoft.DirectX.DirectSound/*23000003*/]Microsoft.DirectX.DirectSound.SecondaryBuffer/*01000005*/ buffer
  .field /*04000005*/ public float32[] S_F
  .field /*04000006*/ public uint8[] S_B
  .method /*06000003*/ family hidebysig virtual 
          instance void  OnCreateControl() cil managed
  // SIG: 20 00 01
  {
    // Method begins at RVA 0x206e
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  /* 02   |                  */ ldarg.0
    IL_0001:  /* 28   | (0A)000005       */ call       instance void [System.Windows.Forms/*23000002*/]System.Windows.Forms.Form/*01000002*/::OnCreateControl() /* 0A000005 */
    IL_0006:  /* 2A   |                  */ ret
  } // end of method Demo::OnCreateControl

  .method /*06000004*/ family hidebysig virtual 
          instance void  OnShown(class [mscorlib/*23000001*/]System.EventArgs/*01000003*/ e) cil managed
  // SIG: 20 01 01 12 0D
  {
    // Method begins at RVA 0x2076
    // Code size       14 (0xe)
    .maxstack  8
    IL_0000:  /* 02   |                  */ ldarg.0
    IL_0001:  /* 03   |                  */ ldarg.1
    IL_0002:  /* 28   | (0A)000006       */ call       instance void [System.Windows.Forms/*23000002*/]System.Windows.Forms.Form/*01000002*/::OnShown(class [mscorlib/*23000001*/]System.EventArgs/*01000003*/) /* 0A000006 */
    IL_0007:  /* 02   |                  */ ldarg.0
    IL_0008:  /* 28   | (06)000006       */ call       instance void a.Demo/*02000003*/::Run() /* 06000006 */
    IL_000d:  /* 2A   |                  */ ret
  } // end of method Demo::OnShown

  .method /*06000005*/ private hidebysig 
          instance void  InitializeComponent() cil managed
  // SIG: 20 00 01
  {
    // Method begins at RVA 0x2085
    // Code size       1 (0x1)
    .maxstack  8
    IL_0000:  /* 2A   |                  */ ret
  } // end of method Demo::InitializeComponent

  .method /*06000006*/ public hidebysig instance void 
          Run() cil managed
  // SIG: 20 00 01
  {
    // Method begins at RVA 0x2088
    // Code size       336 (0x150)
    .maxstack  4
    .locals /*11000001*/ init (valuetype [Microsoft.DirectX.DirectSound/*23000003*/]Microsoft.DirectX.DirectSound.WaveFormat/*0100000B*/ V_0,
             class [Microsoft.DirectX.DirectSound/*23000003*/]Microsoft.DirectX.DirectSound.BufferDescription/*0100000D*/ V_1,
             valuetype [Microsoft.DirectX.DirectSound/*23000003*/]Microsoft.DirectX.DirectSound.EffectDescription/*0100000E*/[] V_2,
             class [Microsoft.DirectX.DirectSound/*23000003*/]Microsoft.DirectX.DirectSound.EchoEffect/*01000013*/ V_3,
             valuetype [Microsoft.DirectX.DirectSound/*23000003*/]Microsoft.DirectX.DirectSound.EffectsEcho/*01000014*/ V_4)
    IL_0000:  /* 02   |                  */ ldarg.0
    IL_0001:  /* 28   | (06)00000F       */ call       instance void a.Demo/*02000003*/::S_RNDR() /* 0600000F */
    IL_0006:  /* 02   |                  */ ldarg.0
    IL_0007:  /* 73   | (0A)000007       */ newobj     instance void [Microsoft.DirectX.DirectSound/*23000003*/]Microsoft.DirectX.DirectSound.Device/*01000004*/::.ctor() /* 0A000007 */
    IL_000c:  /* 7D   | (04)000003       */ stfld      class [Microsoft.DirectX.DirectSound/*23000003*/]Microsoft.DirectX.DirectSound.Device/*01000004*/ a.Demo/*02000003*/::sounddevice /* 04000003 */
    IL_0011:  /* 02   |                  */ ldarg.0
    IL_0012:  /* 7B   | (04)000003       */ ldfld      class [Microsoft.DirectX.DirectSound/*23000003*/]Microsoft.DirectX.DirectSound.Device/*01000004*/ a.Demo/*02000003*/::sounddevice /* 04000003 */
    IL_0017:  /* 7E   | (04)000001       */ ldsfld     class a.Demo/*02000003*/ a.Program/*02000002*/::F1 /* 04000001 */
    IL_001c:  /* 17   |                  */ ldc.i4.1
    IL_001d:  /* 6F   | (0A)000008       */ callvirt   instance void [Microsoft.DirectX.DirectSound/*23000003*/]Microsoft.DirectX.DirectSound.Device/*01000004*/::SetCooperativeLevel(class [System.Windows.Forms_3/*23000004*/]System.Windows.Forms.Control/*01000009*/,
                                                                                                                                                                                      valuetype [Microsoft.DirectX.DirectSound/*23000003*/]Microsoft.DirectX.DirectSound.CooperativeLevel/*0100000A*/) /* 0A000008 */
    IL_0022:  /* 12   | 00               */ ldloca.s   V_0
    IL_0024:  /* 28   | (0A)000009       */ call       instance void [Microsoft.DirectX.DirectSound/*23000003*/]Microsoft.DirectX.DirectSound.WaveFormat/*0100000B*/::.ctor() /* 0A000009 */
    IL_0029:  /* 12   | 00               */ ldloca.s   V_0
    IL_002b:  /* 17   |                  */ ldc.i4.1
    IL_002c:  /* 28   | (0A)00000A       */ call       instance void [Microsoft.DirectX.DirectSound/*23000003*/]Microsoft.DirectX.DirectSound.WaveFormat/*0100000B*/::set_FormatTag(valuetype [Microsoft.DirectX.DirectSound/*23000003*/]Microsoft.DirectX.DirectSound.WaveFormatTag/*0100000C*/) /* 0A00000A */
    IL_0031:  /* 12   | 00               */ ldloca.s   V_0
    IL_0033:  /* 20   | 44AC0000         */ ldc.i4     0xac44
    IL_0038:  /* 28   | (0A)00000B       */ call       instance void [Microsoft.DirectX.DirectSound/*23000003*/]Microsoft.DirectX.DirectSound.WaveFormat/*0100000B*/::set_SamplesPerSecond(int32) /* 0A00000B */
    IL_003d:  /* 12   | 00               */ ldloca.s   V_0
    IL_003f:  /* 1E   |                  */ ldc.i4.8
    IL_0040:  /* 28   | (0A)00000C       */ call       instance void [Microsoft.DirectX.DirectSound/*23000003*/]Microsoft.DirectX.DirectSound.WaveFormat/*0100000B*/::set_BitsPerSample(int16) /* 0A00000C */
    IL_0045:  /* 12   | 00               */ ldloca.s   V_0
    IL_0047:  /* 17   |                  */ ldc.i4.1
    IL_0048:  /* 28   | (0A)00000D       */ call       instance void [Microsoft.DirectX.DirectSound/*23000003*/]Microsoft.DirectX.DirectSound.WaveFormat/*0100000B*/::set_Channels(int16) /* 0A00000D */
    IL_004d:  /* 12   | 00               */ ldloca.s   V_0
    IL_004f:  /* 17   |                  */ ldc.i4.1
    IL_0050:  /* 28   | (0A)00000E       */ call       instance void [Microsoft.DirectX.DirectSound/*23000003*/]Microsoft.DirectX.DirectSound.WaveFormat/*0100000B*/::set_BlockAlign(int16) /* 0A00000E */
    IL_0055:  /* 12   | 00               */ ldloca.s   V_0
    IL_0057:  /* 20   | 44AC0000         */ ldc.i4     0xac44
    IL_005c:  /* 28   | (0A)00000F       */ call       instance void [Microsoft.DirectX.DirectSound/*23000003*/]Microsoft.DirectX.DirectSound.WaveFormat/*0100000B*/::set_AverageBytesPerSecond(int32) /* 0A00000F */
    IL_0061:  /* 06   |                  */ ldloc.0
    IL_0062:  /* 73   | (0A)000010       */ newobj     instance void [Microsoft.DirectX.DirectSound/*23000003*/]Microsoft.DirectX.DirectSound.BufferDescription/*0100000D*/::.ctor(valuetype [Microsoft.DirectX.DirectSound/*23000003*/]Microsoft.DirectX.DirectSound.WaveFormat/*0100000B*/) /* 0A000010 */
    IL_0067:  /* 0B   |                  */ stloc.1
    IL_0068:  /* 07   |                  */ ldloc.1
    IL_0069:  /* 02   |                  */ ldarg.0
    IL_006a:  /* 7B   | (04)000006       */ ldfld      uint8[] a.Demo/*02000003*/::S_B /* 04000006 */
    IL_006f:  /* 8E   |                  */ ldlen
    IL_0070:  /* 69   |                  */ conv.i4
    IL_0071:  /* 6F   | (0A)000011       */ callvirt   instance void [Microsoft.DirectX.DirectSound/*23000003*/]Microsoft.DirectX.DirectSound.BufferDescription/*0100000D*/::set_BufferBytes(int32) /* 0A000011 */
    IL_0076:  /* 07   |                  */ ldloc.1
    IL_0077:  /* 17   |                  */ ldc.i4.1
    IL_0078:  /* 6F   | (0A)000012       */ callvirt   instance void [Microsoft.DirectX.DirectSound/*23000003*/]Microsoft.DirectX.DirectSound.BufferDescription/*0100000D*/::set_GlobalFocus(bool) /* 0A000012 */
    IL_007d:  /* 07   |                  */ ldloc.1
    IL_007e:  /* 17   |                  */ ldc.i4.1
    IL_007f:  /* 6F   | (0A)000013       */ callvirt   instance void [Microsoft.DirectX.DirectSound/*23000003*/]Microsoft.DirectX.DirectSound.BufferDescription/*0100000D*/::set_ControlEffects(bool) /* 0A000013 */
    IL_0084:  /* 02   |                  */ ldarg.0
    IL_0085:  /* 07   |                  */ ldloc.1
    IL_0086:  /* 02   |                  */ ldarg.0
    IL_0087:  /* 7B   | (04)000003       */ ldfld      class [Microsoft.DirectX.DirectSound/*23000003*/]Microsoft.DirectX.DirectSound.Device/*01000004*/ a.Demo/*02000003*/::sounddevice /* 04000003 */
    IL_008c:  /* 73   | (0A)000014       */ newobj     instance void [Microsoft.DirectX.DirectSound/*23000003*/]Microsoft.DirectX.DirectSound.SecondaryBuffer/*01000005*/::.ctor(class [Microsoft.DirectX.DirectSound/*23000003*/]Microsoft.DirectX.DirectSound.BufferDescription/*0100000D*/,
                                                                                                                                                                                 class [Microsoft.DirectX.DirectSound/*23000003*/]Microsoft.DirectX.DirectSound.Device/*01000004*/) /* 0A000014 */
    IL_0091:  /* 7D   | (04)000004       */ stfld      class [Microsoft.DirectX.DirectSound/*23000003*/]Microsoft.DirectX.DirectSound.SecondaryBuffer/*01000005*/ a.Demo/*02000003*/::buffer /* 04000004 */
    IL_0096:  /* 18   |                  */ ldc.i4.2
    IL_0097:  /* 8D   | (01)00000E       */ newarr     [Microsoft.DirectX.DirectSound/*23000003*/]Microsoft.DirectX.DirectSound.EffectDescription/*0100000E*/
    IL_009c:  /* 0C   |                  */ stloc.2
    IL_009d:  /* 08   |                  */ ldloc.2
    IL_009e:  /* 16   |                  */ ldc.i4.0
    IL_009f:  /* 8F   | (01)00000E       */ ldelema    [Microsoft.DirectX.DirectSound/*23000003*/]Microsoft.DirectX.DirectSound.EffectDescription/*0100000E*/
    IL_00a4:  /* 7E   | (0A)000015       */ ldsfld     valuetype [mscorlib_5/*23000006*/]System.Guid/*01000011*/ modopt([Microsoft.VisualC/*23000005*/]Microsoft.VisualC.IsConstModifier/*01000010*/) [Microsoft.DirectX.DirectSound/*23000003*/]Microsoft.DirectX.DirectSound.DSoundHelper/*0100000F*/::StandardEchoGuid /* 0A000015 */
    IL_00a9:  /* 28   | (0A)000016       */ call       instance void [Microsoft.DirectX.DirectSound/*23000003*/]Microsoft.DirectX.DirectSound.EffectDescription/*0100000E*/::set_GuidEffectClass(valuetype [mscorlib_5/*23000006*/]System.Guid/*01000011*/) /* 0A000016 */
    IL_00ae:  /* 08   |                  */ ldloc.2
    IL_00af:  /* 17   |                  */ ldc.i4.1
    IL_00b0:  /* 8F   | (01)00000E       */ ldelema    [Microsoft.DirectX.DirectSound/*23000003*/]Microsoft.DirectX.DirectSound.EffectDescription/*0100000E*/
    IL_00b5:  /* 7E   | (0A)000017       */ ldsfld     valuetype [mscorlib_5/*23000006*/]System.Guid/*01000011*/ modopt([Microsoft.VisualC/*23000005*/]Microsoft.VisualC.IsConstModifier/*01000010*/) [Microsoft.DirectX.DirectSound/*23000003*/]Microsoft.DirectX.DirectSound.DSoundHelper/*0100000F*/::StandardCompressorGuid /* 0A000017 */
    IL_00ba:  /* 28   | (0A)000016       */ call       instance void [Microsoft.DirectX.DirectSound/*23000003*/]Microsoft.DirectX.DirectSound.EffectDescription/*0100000E*/::set_GuidEffectClass(valuetype [mscorlib_5/*23000006*/]System.Guid/*01000011*/) /* 0A000016 */
    IL_00bf:  /* 02   |                  */ ldarg.0
    IL_00c0:  /* 7B   | (04)000004       */ ldfld      class [Microsoft.DirectX.DirectSound/*23000003*/]Microsoft.DirectX.DirectSound.SecondaryBuffer/*01000005*/ a.Demo/*02000003*/::buffer /* 04000004 */
    IL_00c5:  /* 08   |                  */ ldloc.2
    IL_00c6:  /* 6F   | (0A)000018       */ callvirt   instance valuetype [Microsoft.DirectX.DirectSound/*23000003*/]Microsoft.DirectX.DirectSound.EffectsReturnValue/*01000012*/[] [Microsoft.DirectX.DirectSound/*23000003*/]Microsoft.DirectX.DirectSound.SecondaryBuffer/*01000005*/::SetEffects(valuetype [Microsoft.DirectX.DirectSound/*23000003*/]Microsoft.DirectX.DirectSound.EffectDescription/*0100000E*/[]) /* 0A000018 */
    IL_00cb:  /* 26   |                  */ pop
    IL_00cc:  /* 02   |                  */ ldarg.0
    IL_00cd:  /* 7B   | (04)000004       */ ldfld      class [Microsoft.DirectX.DirectSound/*23000003*/]Microsoft.DirectX.DirectSound.SecondaryBuffer/*01000005*/ a.Demo/*02000003*/::buffer /* 04000004 */
    IL_00d2:  /* 16   |                  */ ldc.i4.0
    IL_00d3:  /* 6F   | (0A)000019       */ callvirt   instance object [Microsoft.DirectX.DirectSound/*23000003*/]Microsoft.DirectX.DirectSound.SecondaryBuffer/*01000005*/::GetEffects(int32) /* 0A000019 */
    IL_00d8:  /* 75   | (01)000013       */ isinst     [Microsoft.DirectX.DirectSound/*23000003*/]Microsoft.DirectX.DirectSound.EchoEffect/*01000013*/
    IL_00dd:  /* 0D   |                  */ stloc.3
    IL_00de:  /* 09   |                  */ ldloc.3
    IL_00df:  /* 14   |                  */ ldnull
    IL_00e0:  /* 28   | (0A)00001A       */ call       bool [Microsoft.DirectX.DirectSound/*23000003*/]Microsoft.DirectX.DirectSound.EchoEffect/*01000013*/::op_Inequality(class [Microsoft.DirectX.DirectSound/*23000003*/]Microsoft.DirectX.DirectSound.EchoEffect/*01000013*/,
                                                                                                                                                                           class [Microsoft.DirectX.DirectSound/*23000003*/]Microsoft.DirectX.DirectSound.EchoEffect/*01000013*/) /* 0A00001A */
    IL_00e5:  /* 2C   | 48               */ brfalse.s  IL_012f

    IL_00e7:  /* 09   |                  */ ldloc.3
    IL_00e8:  /* 6F   | (0A)00001B       */ callvirt   instance valuetype [Microsoft.DirectX.DirectSound/*23000003*/]Microsoft.DirectX.DirectSound.EffectsEcho/*01000014*/ [Microsoft.DirectX.DirectSound/*23000003*/]Microsoft.DirectX.DirectSound.EchoEffect/*01000013*/::get_AllParameters() /* 0A00001B */
    IL_00ed:  /* 13   | 04               */ stloc.s    V_4
    IL_00ef:  /* 12   | 04               */ ldloca.s   V_4
    IL_00f1:  /* 22   | 00009842         */ ldc.r4     76.
    IL_00f6:  /* 28   | (0A)00001C       */ call       instance void [Microsoft.DirectX.DirectSound/*23000003*/]Microsoft.DirectX.DirectSound.EffectsEcho/*01000014*/::set_Feedback(float32) /* 0A00001C */
    IL_00fb:  /* 12   | 04               */ ldloca.s   V_4
    IL_00fd:  /* 22   | 00002041         */ ldc.r4     10.
    IL_0102:  /* 28   | (0A)00001D       */ call       instance void [Microsoft.DirectX.DirectSound/*23000003*/]Microsoft.DirectX.DirectSound.EffectsEcho/*01000014*/::set_WetDryMix(float32) /* 0A00001D */
    IL_0107:  /* 12   | 04               */ ldloca.s   V_4
    IL_0109:  /* 22   | F5A6C343         */ ldc.r4     391.30435
    IL_010e:  /* 28   | (0A)00001E       */ call       instance void [Microsoft.DirectX.DirectSound/*23000003*/]Microsoft.DirectX.DirectSound.EffectsEcho/*01000014*/::set_LeftDelay(float32) /* 0A00001E */
    IL_0113:  /* 12   | 04               */ ldloca.s   V_4
    IL_0115:  /* 22   | F5A6C343         */ ldc.r4     391.30435
    IL_011a:  /* 28   | (0A)00001F       */ call       instance void [Microsoft.DirectX.DirectSound/*23000003*/]Microsoft.DirectX.DirectSound.EffectsEcho/*01000014*/::set_RightDelay(float32) /* 0A00001F */
    IL_011f:  /* 12   | 04               */ ldloca.s   V_4
    IL_0121:  /* 16   |                  */ ldc.i4.0
    IL_0122:  /* 28   | (0A)000020       */ call       instance void [Microsoft.DirectX.DirectSound/*23000003*/]Microsoft.DirectX.DirectSound.EffectsEcho/*01000014*/::set_PanDelay(int32) /* 0A000020 */
    IL_0127:  /* 09   |                  */ ldloc.3
    IL_0128:  /* 11   | 04               */ ldloc.s    V_4
    IL_012a:  /* 6F   | (0A)000021       */ callvirt   instance void [Microsoft.DirectX.DirectSound/*23000003*/]Microsoft.DirectX.DirectSound.EchoEffect/*01000013*/::set_AllParameters(valuetype [Microsoft.DirectX.DirectSound/*23000003*/]Microsoft.DirectX.DirectSound.EffectsEcho/*01000014*/) /* 0A000021 */
    IL_012f:  /* 02   |                  */ ldarg.0
    IL_0130:  /* 7B   | (04)000004       */ ldfld      class [Microsoft.DirectX.DirectSound/*23000003*/]Microsoft.DirectX.DirectSound.SecondaryBuffer/*01000005*/ a.Demo/*02000003*/::buffer /* 04000004 */
    IL_0135:  /* 16   |                  */ ldc.i4.0
    IL_0136:  /* 02   |                  */ ldarg.0
    IL_0137:  /* 7B   | (04)000006       */ ldfld      uint8[] a.Demo/*02000003*/::S_B /* 04000006 */
    IL_013c:  /* 16   |                  */ ldc.i4.0
    IL_013d:  /* 6F   | (0A)000022       */ callvirt   instance void [Microsoft.DirectX.DirectSound/*23000003*/]Microsoft.DirectX.DirectSound.Buffer/*01000015*/::Write(int32,
                                                                                                                                                                        class [mscorlib_5/*23000006*/]System.Array/*01000016*/,
                                                                                                                                                                        valuetype [Microsoft.DirectX.DirectSound/*23000003*/]Microsoft.DirectX.DirectSound.LockFlag/*01000017*/) /* 0A000022 */
    IL_0142:  /* 02   |                  */ ldarg.0
    IL_0143:  /* 7B   | (04)000004       */ ldfld      class [Microsoft.DirectX.DirectSound/*23000003*/]Microsoft.DirectX.DirectSound.SecondaryBuffer/*01000005*/ a.Demo/*02000003*/::buffer /* 04000004 */
    IL_0148:  /* 16   |                  */ ldc.i4.0
    IL_0149:  /* 16   |                  */ ldc.i4.0
    IL_014a:  /* 6F   | (0A)000023       */ callvirt   instance void [Microsoft.DirectX.DirectSound/*23000003*/]Microsoft.DirectX.DirectSound.Buffer/*01000015*/::Play(int32,
                                                                                                                                                                       valuetype [Microsoft.DirectX.DirectSound/*23000003*/]Microsoft.DirectX.DirectSound.BufferPlayFlags/*01000018*/) /* 0A000023 */
    IL_014f:  /* 2A   |                  */ ret
  } // end of method Demo::Run

  .method /*06000007*/ public hidebysig instance void 
          Stop() cil managed
  // SIG: 20 00 01
  {
    // Method begins at RVA 0x21e4
    // Code size       36 (0x24)
    .maxstack  8
    IL_0000:  /* 72   | (70)000001       */ ldstr      "stop" /* 70000001 */
    IL_0005:  /* 28   | (0A)000024       */ call       void [mscorlib/*23000001*/]System.Console/*01000019*/::WriteLine(string) /* 0A000024 */
    IL_000a:  /* 02   |                  */ ldarg.0
    IL_000b:  /* 7B   | (04)000004       */ ldfld      class [Microsoft.DirectX.DirectSound/*23000003*/]Microsoft.DirectX.DirectSound.SecondaryBuffer/*01000005*/ a.Demo/*02000003*/::buffer /* 04000004 */
    IL_0010:  /* 14   |                  */ ldnull
    IL_0011:  /* 28   | (0A)000025       */ call       bool [Microsoft.DirectX.DirectSound/*23000003*/]Microsoft.DirectX.DirectSound.SecondaryBuffer/*01000005*/::op_Inequality(class [Microsoft.DirectX.DirectSound/*23000003*/]Microsoft.DirectX.DirectSound.SecondaryBuffer/*01000005*/,
                                                                                                                                                                                class [Microsoft.DirectX.DirectSound/*23000003*/]Microsoft.DirectX.DirectSound.SecondaryBuffer/*01000005*/) /* 0A000025 */
    IL_0016:  /* 2C   | 0B               */ brfalse.s  IL_0023

    IL_0018:  /* 02   |                  */ ldarg.0
    IL_0019:  /* 7B   | (04)000004       */ ldfld      class [Microsoft.DirectX.DirectSound/*23000003*/]Microsoft.DirectX.DirectSound.SecondaryBuffer/*01000005*/ a.Demo/*02000003*/::buffer /* 04000004 */
    IL_001e:  /* 6F   | (0A)000026       */ callvirt   instance void [Microsoft.DirectX.DirectSound/*23000003*/]Microsoft.DirectX.DirectSound.Buffer/*01000015*/::Stop() /* 0A000026 */
    IL_0023:  /* 2A   |                  */ ret
  } // end of method Demo::Stop

  .method /*06000008*/ public hidebysig instance void 
          FP(int32 startsample,
             int32 numsamples,
             float32 startpitch,
             float32 pitchmult,
             float32 startvol,
             float32 volmult) cil managed
  // SIG: 20 06 01 08 08 0C 0C 0C 0C
  {
    // Method begins at RVA 0x220c
    // Code size       98 (0x62)
    .maxstack  3
    .locals /*11000002*/ init (float32 V_0,
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
    IL_000d:  /* 2B   | 4E               */ br.s       IL_005d

    IL_000f:  /* 08   |                  */ ldloc.2
    IL_0010:  /* 06   |                  */ ldloc.0
    IL_0011:  /* 6C   |                  */ conv.r8
    IL_0012:  /* 23   | 894160E5D0220940 */ ldc.r8     3.1419999999999999
    IL_001b:  /* 5A   |                  */ mul
    IL_001c:  /* 23   | 000000008088E540 */ ldc.r8     44100.
    IL_0025:  /* 5B   |                  */ div
    IL_0026:  /* 28   | (0A)000027       */ call       float64 [mscorlib/*23000001*/]System.Math/*0100001A*/::Sin(float64) /* 0A000027 */
    IL_002b:  /* 6B   |                  */ conv.r4
    IL_002c:  /* 5A   |                  */ mul
    IL_002d:  /* 13   | 04               */ stloc.s    V_4
    IL_002f:  /* 02   |                  */ ldarg.0
    IL_0030:  /* 7B   | (04)000005       */ ldfld      float32[] a.Demo/*02000003*/::S_F /* 04000005 */
    IL_0035:  /* 03   |                  */ ldarg.1
    IL_0036:  /* 09   |                  */ ldloc.3
    IL_0037:  /* 58   |                  */ add
    IL_0038:  /* 8F   | (01)00001B       */ ldelema    [mscorlib/*23000001*/]System.Single/*0100001B*/
    IL_003d:  /* 25   |                  */ dup
    IL_003e:  /* 71   | (01)00001B       */ ldobj      [mscorlib/*23000001*/]System.Single/*0100001B*/
    IL_0043:  /* 11   | 04               */ ldloc.s    V_4
    IL_0045:  /* 58   |                  */ add
    IL_0046:  /* 81   | (01)00001B       */ stobj      [mscorlib/*23000001*/]System.Single/*0100001B*/
    IL_004b:  /* 06   |                  */ ldloc.0
    IL_004c:  /* 07   |                  */ ldloc.1
    IL_004d:  /* 58   |                  */ add
    IL_004e:  /* 0A   |                  */ stloc.0
    IL_004f:  /* 07   |                  */ ldloc.1
    IL_0050:  /* 0E   | 04               */ ldarg.s    pitchmult
    IL_0052:  /* 5A   |                  */ mul
    IL_0053:  /* 0B   |                  */ stloc.1
    IL_0054:  /* 08   |                  */ ldloc.2
    IL_0055:  /* 0E   | 06               */ ldarg.s    volmult
    IL_0057:  /* 5A   |                  */ mul
    IL_0058:  /* 0C   |                  */ stloc.2
    IL_0059:  /* 09   |                  */ ldloc.3
    IL_005a:  /* 17   |                  */ ldc.i4.1
    IL_005b:  /* 58   |                  */ add
    IL_005c:  /* 0D   |                  */ stloc.3
    IL_005d:  /* 09   |                  */ ldloc.3
    IL_005e:  /* 04   |                  */ ldarg.2
    IL_005f:  /* 32   | AE               */ blt.s      IL_000f

    IL_0061:  /* 2A   |                  */ ret
  } // end of method Demo::FP

  .method /*06000009*/ public hidebysig instance void 
          FN(int32 startsample,
             int32 numsamples,
             int32 dirt,
             float32 startvol,
             float32 volmult) cil managed
  // SIG: 20 05 01 08 08 08 0C 0C
  {
    // Method begins at RVA 0x227c
    // Code size       102 (0x66)
    .maxstack  3
    .locals /*11000003*/ init (float32 V_0,
             float32 V_1,
             class [mscorlib/*23000001*/]System.Random/*0100001C*/ V_2,
             int32 V_3,
             int32 V_4,
             float32 V_5)
    IL_0000:  /* 0E   | 04               */ ldarg.s    startvol
    IL_0002:  /* 0A   |                  */ stloc.0
    IL_0003:  /* 22   | 00000000         */ ldc.r4     0.0
    IL_0008:  /* 0B   |                  */ stloc.1
    IL_0009:  /* 73   | (0A)000028       */ newobj     instance void [mscorlib/*23000001*/]System.Random/*0100001C*/::.ctor() /* 0A000028 */
    IL_000e:  /* 0C   |                  */ stloc.2
    IL_000f:  /* 16   |                  */ ldc.i4.0
    IL_0010:  /* 0D   |                  */ stloc.3
    IL_0011:  /* 16   |                  */ ldc.i4.0
    IL_0012:  /* 13   | 04               */ stloc.s    V_4
    IL_0014:  /* 2B   | 4A               */ br.s       IL_0060

    IL_0016:  /* 09   |                  */ ldloc.3
    IL_0017:  /* 2D   | 16               */ brtrue.s   IL_002f

    IL_0019:  /* 08   |                  */ ldloc.2
    IL_001a:  /* 6F   | (0A)000029       */ callvirt   instance float64 [mscorlib/*23000001*/]System.Random/*0100001C*/::NextDouble() /* 0A000029 */
    IL_001f:  /* 6B   |                  */ conv.r4
    IL_0020:  /* 22   | 00000040         */ ldc.r4     2.
    IL_0025:  /* 5A   |                  */ mul
    IL_0026:  /* 22   | 0000803F         */ ldc.r4     1.
    IL_002b:  /* 59   |                  */ sub
    IL_002c:  /* 0B   |                  */ stloc.1
    IL_002d:  /* 05   |                  */ ldarg.3
    IL_002e:  /* 0D   |                  */ stloc.3
    IL_002f:  /* 09   |                  */ ldloc.3
    IL_0030:  /* 17   |                  */ ldc.i4.1
    IL_0031:  /* 59   |                  */ sub
    IL_0032:  /* 0D   |                  */ stloc.3
    IL_0033:  /* 06   |                  */ ldloc.0
    IL_0034:  /* 07   |                  */ ldloc.1
    IL_0035:  /* 5A   |                  */ mul
    IL_0036:  /* 13   | 05               */ stloc.s    V_5
    IL_0038:  /* 02   |                  */ ldarg.0
    IL_0039:  /* 7B   | (04)000005       */ ldfld      float32[] a.Demo/*02000003*/::S_F /* 04000005 */
    IL_003e:  /* 03   |                  */ ldarg.1
    IL_003f:  /* 11   | 04               */ ldloc.s    V_4
    IL_0041:  /* 58   |                  */ add
    IL_0042:  /* 8F   | (01)00001B       */ ldelema    [mscorlib/*23000001*/]System.Single/*0100001B*/
    IL_0047:  /* 25   |                  */ dup
    IL_0048:  /* 71   | (01)00001B       */ ldobj      [mscorlib/*23000001*/]System.Single/*0100001B*/
    IL_004d:  /* 11   | 05               */ ldloc.s    V_5
    IL_004f:  /* 58   |                  */ add
    IL_0050:  /* 81   | (01)00001B       */ stobj      [mscorlib/*23000001*/]System.Single/*0100001B*/
    IL_0055:  /* 06   |                  */ ldloc.0
    IL_0056:  /* 0E   | 05               */ ldarg.s    volmult
    IL_0058:  /* 5A   |                  */ mul
    IL_0059:  /* 0A   |                  */ stloc.0
    IL_005a:  /* 11   | 04               */ ldloc.s    V_4
    IL_005c:  /* 17   |                  */ ldc.i4.1
    IL_005d:  /* 58   |                  */ add
    IL_005e:  /* 13   | 04               */ stloc.s    V_4
    IL_0060:  /* 11   | 04               */ ldloc.s    V_4
    IL_0062:  /* 04   |                  */ ldarg.2
    IL_0063:  /* 32   | B1               */ blt.s      IL_0016

    IL_0065:  /* 2A   |                  */ ret
  } // end of method Demo::FN

  .method /*0600000A*/ public hidebysig instance void 
          S_BD(int32 startsample) cil managed
  // SIG: 20 01 01 08
  {
    // Method begins at RVA 0x22f0
    // Code size       97 (0x61)
    .maxstack  7
    IL_0000:  /* 02   |                  */ ldarg.0
    IL_0001:  /* 03   |                  */ ldarg.1
    IL_0002:  /* 20   | 88130000         */ ldc.i4     0x1388
    IL_0007:  /* 22   | 00007A44         */ ldc.r4     1000.
    IL_000c:  /* 22   | A4707D3F         */ ldc.r4     0.99000001
    IL_0011:  /* 22   | 0000803F         */ ldc.r4     1.
    IL_0016:  /* 22   | 77BE7F3F         */ ldc.r4     0.99900001
    IL_001b:  /* 28   | (06)000008       */ call       instance void a.Demo/*02000003*/::FP(int32,
                                                                                            int32,
                                                                                            float32,
                                                                                            float32,
                                                                                            float32,
                                                                                            float32) /* 06000008 */
    IL_0020:  /* 02   |                  */ ldarg.0
    IL_0021:  /* 03   |                  */ ldarg.1
    IL_0022:  /* 20   | 581B0000         */ ldc.i4     0x1b58
    IL_0027:  /* 22   | 00009643         */ ldc.r4     300.
    IL_002c:  /* 22   | 77BE7F3F         */ ldc.r4     0.99900001
    IL_0031:  /* 22   | 0000803F         */ ldc.r4     1.
    IL_0036:  /* 22   | 77BE7F3F         */ ldc.r4     0.99900001
    IL_003b:  /* 28   | (06)000008       */ call       instance void a.Demo/*02000003*/::FP(int32,
                                                                                            int32,
                                                                                            float32,
                                                                                            float32,
                                                                                            float32,
                                                                                            float32) /* 06000008 */
    IL_0040:  /* 02   |                  */ ldarg.0
    IL_0041:  /* 03   |                  */ ldarg.1
    IL_0042:  /* 20   | 10270000         */ ldc.i4     0x2710
    IL_0047:  /* 22   | 0000C842         */ ldc.r4     100.
    IL_004c:  /* 22   | 0000803F         */ ldc.r4     1.
    IL_0051:  /* 22   | 0000803F         */ ldc.r4     1.
    IL_0056:  /* 22   | E5F27F3F         */ ldc.r4     0.99980003
    IL_005b:  /* 28   | (06)000008       */ call       instance void a.Demo/*02000003*/::FP(int32,
                                                                                            int32,
                                                                                            float32,
                                                                                            float32,
                                                                                            float32,
                                                                                            float32) /* 06000008 */
    IL_0060:  /* 2A   |                  */ ret
  } // end of method Demo::S_BD

  .method /*0600000B*/ public hidebysig instance void 
          S_SD(int32 startsample) cil managed
  // SIG: 20 01 01 08
  {
    // Method begins at RVA 0x235d
    // Code size       47 (0x2f)
    .maxstack  8
    IL_0000:  /* 02   |                  */ ldarg.0
    IL_0001:  /* 03   |                  */ ldarg.1
    IL_0002:  /* 20   | D0070000         */ ldc.i4     0x7d0
    IL_0007:  /* 17   |                  */ ldc.i4.1
    IL_0008:  /* 22   | 0000003F         */ ldc.r4     0.5
    IL_000d:  /* 22   | 77BE7F3F         */ ldc.r4     0.99900001
    IL_0012:  /* 28   | (06)000009       */ call       instance void a.Demo/*02000003*/::FN(int32,
                                                                                            int32,
                                                                                            int32,
                                                                                            float32,
                                                                                            float32) /* 06000009 */
    IL_0017:  /* 02   |                  */ ldarg.0
    IL_0018:  /* 03   |                  */ ldarg.1
    IL_0019:  /* 20   | A00F0000         */ ldc.i4     0xfa0
    IL_001e:  /* 1A   |                  */ ldc.i4.4
    IL_001f:  /* 22   | 0000003F         */ ldc.r4     0.5
    IL_0024:  /* 22   | 77BE7F3F         */ ldc.r4     0.99900001
    IL_0029:  /* 28   | (06)000009       */ call       instance void a.Demo/*02000003*/::FN(int32,
                                                                                            int32,
                                                                                            int32,
                                                                                            float32,
                                                                                            float32) /* 06000009 */
    IL_002e:  /* 2A   |                  */ ret
  } // end of method Demo::S_SD

  .method /*0600000C*/ public hidebysig instance void 
          S_CH(int32 startsample) cil managed
  // SIG: 20 01 01 08
  {
    // Method begins at RVA 0x238d
    // Code size       47 (0x2f)
    .maxstack  8
    IL_0000:  /* 02   |                  */ ldarg.0
    IL_0001:  /* 03   |                  */ ldarg.1
    IL_0002:  /* 20   | 90010000         */ ldc.i4     0x190
    IL_0007:  /* 18   |                  */ ldc.i4.2
    IL_0008:  /* 22   | CDCCCC3D         */ ldc.r4     0.1
    IL_000d:  /* 22   | C9767E3F         */ ldc.r4     0.99400002
    IL_0012:  /* 28   | (06)000009       */ call       instance void a.Demo/*02000003*/::FN(int32,
                                                                                            int32,
                                                                                            int32,
                                                                                            float32,
                                                                                            float32) /* 06000009 */
    IL_0017:  /* 02   |                  */ ldarg.0
    IL_0018:  /* 03   |                  */ ldarg.1
    IL_0019:  /* 20   | 58020000         */ ldc.i4     0x258
    IL_001e:  /* 17   |                  */ ldc.i4.1
    IL_001f:  /* 22   | CDCCCC3D         */ ldc.r4     0.1
    IL_0024:  /* 22   | 77BE7F3F         */ ldc.r4     0.99900001
    IL_0029:  /* 28   | (06)000009       */ call       instance void a.Demo/*02000003*/::FN(int32,
                                                                                            int32,
                                                                                            int32,
                                                                                            float32,
                                                                                            float32) /* 06000009 */
    IL_002e:  /* 2A   |                  */ ret
  } // end of method Demo::S_CH

  .method /*0600000D*/ public hidebysig instance void 
          S_OH(int32 startsample) cil managed
  // SIG: 20 01 01 08
  {
    // Method begins at RVA 0x23bd
    // Code size       47 (0x2f)
    .maxstack  8
    IL_0000:  /* 02   |                  */ ldarg.0
    IL_0001:  /* 03   |                  */ ldarg.1
    IL_0002:  /* 20   | 88130000         */ ldc.i4     0x1388
    IL_0007:  /* 17   |                  */ ldc.i4.1
    IL_0008:  /* 22   | 9A99993E         */ ldc.r4     0.30000001
    IL_000d:  /* 22   | 77BE7F3F         */ ldc.r4     0.99900001
    IL_0012:  /* 28   | (06)000009       */ call       instance void a.Demo/*02000003*/::FN(int32,
                                                                                            int32,
                                                                                            int32,
                                                                                            float32,
                                                                                            float32) /* 06000009 */
    IL_0017:  /* 02   |                  */ ldarg.0
    IL_0018:  /* 03   |                  */ ldarg.1
    IL_0019:  /* 20   | A00F0000         */ ldc.i4     0xfa0
    IL_001e:  /* 18   |                  */ ldc.i4.2
    IL_001f:  /* 22   | CDCCCC3D         */ ldc.r4     0.1
    IL_0024:  /* 22   | 77BE7F3F         */ ldc.r4     0.99900001
    IL_0029:  /* 28   | (06)000009       */ call       instance void a.Demo/*02000003*/::FN(int32,
                                                                                            int32,
                                                                                            int32,
                                                                                            float32,
                                                                                            float32) /* 06000009 */
    IL_002e:  /* 2A   |                  */ ret
  } // end of method Demo::S_OH

  .method /*0600000E*/ public hidebysig instance void 
          S_RS(int32 startsample,
               int32 bp) cil managed
  // SIG: 20 02 01 08 08
  {
    // Method begins at RVA 0x23ed
    // Code size       30 (0x1e)
    .maxstack  8
    IL_0000:  /* 02   |                  */ ldarg.0
    IL_0001:  /* 03   |                  */ ldarg.1
    IL_0002:  /* 20   | 70170000         */ ldc.i4     0x1770
    IL_0007:  /* 04   |                  */ ldarg.2
    IL_0008:  /* 6B   |                  */ conv.r4
    IL_0009:  /* 22   | EFFF7F3F         */ ldc.r4     0.99999899
    IL_000e:  /* 22   | 0000803F         */ ldc.r4     1.
    IL_0013:  /* 22   | 3BDF7F3F         */ ldc.r4     0.99949998
    IL_0018:  /* 28   | (06)000008       */ call       instance void a.Demo/*02000003*/::FP(int32,
                                                                                            int32,
                                                                                            float32,
                                                                                            float32,
                                                                                            float32,
                                                                                            float32) /* 06000008 */
    IL_001d:  /* 2A   |                  */ ret
  } // end of method Demo::S_RS

  .method /*0600000F*/ public hidebysig instance void 
          S_RNDR() cil managed
  // SIG: 20 00 01
  {
    // Method begins at RVA 0x2550
    // Code size       529 (0x211)
    .maxstack  5
    .locals /*11000004*/ init (int32 V_0,
             int32 V_1,
             int32 V_2,
             int32[] V_3,
             int32[] V_4,
             int32[] V_5,
             int32[] V_6,
             int32[] V_7,
             class [mscorlib/*23000001*/]System.Random/*0100001C*/ V_8,
             int32 V_9,
             int32 V_10,
             int32 V_11,
             int32 V_12,
             int32 V_13,
             int32 V_14,
             float32 V_15)
    IL_0000:  /* 20   | F05F2800         */ ldc.i4     0x285ff0
    IL_0005:  /* 0A   |                  */ stloc.0
    IL_0006:  /* 02   |                  */ ldarg.0
    IL_0007:  /* 06   |                  */ ldloc.0
    IL_0008:  /* 8D   | (01)00001B       */ newarr     [mscorlib/*23000001*/]System.Single/*0100001B*/
    IL_000d:  /* 7D   | (04)000005       */ stfld      float32[] a.Demo/*02000003*/::S_F /* 04000005 */
    IL_0012:  /* 02   |                  */ ldarg.0
    IL_0013:  /* 7B   | (04)000005       */ ldfld      float32[] a.Demo/*02000003*/::S_F /* 04000005 */
    IL_0018:  /* 16   |                  */ ldc.i4.0
    IL_0019:  /* 06   |                  */ ldloc.0
    IL_001a:  /* 28   | (0A)00002A       */ call       void [mscorlib/*23000001*/]System.Array/*0100001D*/::Clear(class [mscorlib/*23000001*/]System.Array/*0100001D*/,
                                                                                                                  int32,
                                                                                                                  int32) /* 0A00002A */
    IL_001f:  /* 1E   |                  */ ldc.i4.8
    IL_0020:  /* 0B   |                  */ stloc.1
    IL_0021:  /* 20   | E0590000         */ ldc.i4     0x59e0
    IL_0026:  /* 0C   |                  */ stloc.2
    IL_0027:  /* 1F   | 10               */ ldc.i4.s   16
    IL_0029:  /* 8D   | (01)00001E       */ newarr     [mscorlib/*23000001*/]System.Int32/*0100001E*/
    IL_002e:  /* 25   |                  */ dup
    IL_002f:  /* D0   | (04)000007       */ ldtoken    field valuetype '<PrivateImplementationDetails>{FE000440-6DBE-45FD-8368-9501A5706E13}'/*02000004*//'__StaticArrayInitTypeSize=64'/*02000005*/ '<PrivateImplementationDetails>{FE000440-6DBE-45FD-8368-9501A5706E13}'/*02000004*/::'$$method0x600000f-1' /* 04000007 */
    IL_0034:  /* 28   | (0A)00002C       */ call       void [mscorlib/*23000001*/]System.Runtime.CompilerServices.RuntimeHelpers/*01000021*/::InitializeArray(class [mscorlib/*23000001*/]System.Array/*0100001D*/,
                                                                                                                                                              valuetype [mscorlib/*23000001*/]System.RuntimeFieldHandle/*01000022*/) /* 0A00002C */
    IL_0039:  /* 0D   |                  */ stloc.3
    IL_003a:  /* 1F   | 10               */ ldc.i4.s   16
    IL_003c:  /* 8D   | (01)00001E       */ newarr     [mscorlib/*23000001*/]System.Int32/*0100001E*/
    IL_0041:  /* 25   |                  */ dup
    IL_0042:  /* D0   | (04)000008       */ ldtoken    field valuetype '<PrivateImplementationDetails>{FE000440-6DBE-45FD-8368-9501A5706E13}'/*02000004*//'__StaticArrayInitTypeSize=64'/*02000005*/ '<PrivateImplementationDetails>{FE000440-6DBE-45FD-8368-9501A5706E13}'/*02000004*/::'$$method0x600000f-2' /* 04000008 */
    IL_0047:  /* 28   | (0A)00002C       */ call       void [mscorlib/*23000001*/]System.Runtime.CompilerServices.RuntimeHelpers/*01000021*/::InitializeArray(class [mscorlib/*23000001*/]System.Array/*0100001D*/,
                                                                                                                                                              valuetype [mscorlib/*23000001*/]System.RuntimeFieldHandle/*01000022*/) /* 0A00002C */
    IL_004c:  /* 13   | 04               */ stloc.s    V_4
    IL_004e:  /* 1F   | 10               */ ldc.i4.s   16
    IL_0050:  /* 8D   | (01)00001E       */ newarr     [mscorlib/*23000001*/]System.Int32/*0100001E*/
    IL_0055:  /* 25   |                  */ dup
    IL_0056:  /* D0   | (04)000009       */ ldtoken    field valuetype '<PrivateImplementationDetails>{FE000440-6DBE-45FD-8368-9501A5706E13}'/*02000004*//'__StaticArrayInitTypeSize=64'/*02000005*/ '<PrivateImplementationDetails>{FE000440-6DBE-45FD-8368-9501A5706E13}'/*02000004*/::'$$method0x600000f-3' /* 04000009 */
    IL_005b:  /* 28   | (0A)00002C       */ call       void [mscorlib/*23000001*/]System.Runtime.CompilerServices.RuntimeHelpers/*01000021*/::InitializeArray(class [mscorlib/*23000001*/]System.Array/*0100001D*/,
                                                                                                                                                              valuetype [mscorlib/*23000001*/]System.RuntimeFieldHandle/*01000022*/) /* 0A00002C */
    IL_0060:  /* 13   | 05               */ stloc.s    V_5
    IL_0062:  /* 1F   | 10               */ ldc.i4.s   16
    IL_0064:  /* 8D   | (01)00001E       */ newarr     [mscorlib/*23000001*/]System.Int32/*0100001E*/
    IL_0069:  /* 25   |                  */ dup
    IL_006a:  /* D0   | (04)00000A       */ ldtoken    field valuetype '<PrivateImplementationDetails>{FE000440-6DBE-45FD-8368-9501A5706E13}'/*02000004*//'__StaticArrayInitTypeSize=64'/*02000005*/ '<PrivateImplementationDetails>{FE000440-6DBE-45FD-8368-9501A5706E13}'/*02000004*/::'$$method0x600000f-4' /* 0400000A */
    IL_006f:  /* 28   | (0A)00002C       */ call       void [mscorlib/*23000001*/]System.Runtime.CompilerServices.RuntimeHelpers/*01000021*/::InitializeArray(class [mscorlib/*23000001*/]System.Array/*0100001D*/,
                                                                                                                                                              valuetype [mscorlib/*23000001*/]System.RuntimeFieldHandle/*01000022*/) /* 0A00002C */
    IL_0074:  /* 13   | 06               */ stloc.s    V_6
    IL_0076:  /* 1F   | 10               */ ldc.i4.s   16
    IL_0078:  /* 8D   | (01)00001E       */ newarr     [mscorlib/*23000001*/]System.Int32/*0100001E*/
    IL_007d:  /* 25   |                  */ dup
    IL_007e:  /* D0   | (04)00000B       */ ldtoken    field valuetype '<PrivateImplementationDetails>{FE000440-6DBE-45FD-8368-9501A5706E13}'/*02000004*//'__StaticArrayInitTypeSize=64'/*02000005*/ '<PrivateImplementationDetails>{FE000440-6DBE-45FD-8368-9501A5706E13}'/*02000004*/::'$$method0x600000f-5' /* 0400000B */
    IL_0083:  /* 28   | (0A)00002C       */ call       void [mscorlib/*23000001*/]System.Runtime.CompilerServices.RuntimeHelpers/*01000021*/::InitializeArray(class [mscorlib/*23000001*/]System.Array/*0100001D*/,
                                                                                                                                                              valuetype [mscorlib/*23000001*/]System.RuntimeFieldHandle/*01000022*/) /* 0A00002C */
    IL_0088:  /* 13   | 07               */ stloc.s    V_7
    IL_008a:  /* 20   | 39300000         */ ldc.i4     0x3039
    IL_008f:  /* 73   | (0A)00002D       */ newobj     instance void [mscorlib/*23000001*/]System.Random/*0100001C*/::.ctor(int32) /* 0A00002D */
    IL_0094:  /* 13   | 08               */ stloc.s    V_8
    IL_0096:  /* 16   |                  */ ldc.i4.0
    IL_0097:  /* 13   | 09               */ stloc.s    V_9
    IL_0099:  /* 38   | 0B010000         */ br         IL_01a9

    IL_009e:  /* 16   |                  */ ldc.i4.0
    IL_009f:  /* 13   | 0A               */ stloc.s    V_10
    IL_00a1:  /* 38   | F4000000         */ br         IL_019a

    IL_00a6:  /* 11   | 09               */ ldloc.s    V_9
    IL_00a8:  /* 1F   | 10               */ ldc.i4.s   16
    IL_00aa:  /* 5A   |                  */ mul
    IL_00ab:  /* 11   | 0A               */ ldloc.s    V_10
    IL_00ad:  /* 58   |                  */ add
    IL_00ae:  /* 13   | 0B               */ stloc.s    V_11
    IL_00b0:  /* 11   | 0B               */ ldloc.s    V_11
    IL_00b2:  /* 08   |                  */ ldloc.2
    IL_00b3:  /* 5A   |                  */ mul
    IL_00b4:  /* 1A   |                  */ ldc.i4.4
    IL_00b5:  /* 5B   |                  */ div
    IL_00b6:  /* 13   | 0C               */ stloc.s    V_12
    IL_00b8:  /* 16   |                  */ ldc.i4.0
    IL_00b9:  /* 13   | 0D               */ stloc.s    V_13
    IL_00bb:  /* 11   | 0A               */ ldloc.s    V_10
    IL_00bd:  /* 18   |                  */ ldc.i4.2
    IL_00be:  /* 5D   |                  */ rem
    IL_00bf:  /* 17   |                  */ ldc.i4.1
    IL_00c0:  /* 33   | 09               */ bne.un.s   IL_00cb

    IL_00c2:  /* 11   | 0C               */ ldloc.s    V_12
    IL_00c4:  /* 08   |                  */ ldloc.2
    IL_00c5:  /* 1F   | 1E               */ ldc.i4.s   30
    IL_00c7:  /* 5B   |                  */ div
    IL_00c8:  /* 58   |                  */ add
    IL_00c9:  /* 13   | 0C               */ stloc.s    V_12
    IL_00cb:  /* 11   | 08               */ ldloc.s    V_8
    IL_00cd:  /* 6F   | (0A)00002E       */ callvirt   instance int32 [mscorlib/*23000001*/]System.Random/*0100001C*/::Next() /* 0A00002E */
    IL_00d2:  /* 1F   | 64               */ ldc.i4.s   100
    IL_00d4:  /* 5D   |                  */ rem
    IL_00d5:  /* 13   | 0D               */ stloc.s    V_13
    IL_00d7:  /* 11   | 0D               */ ldloc.s    V_13
    IL_00d9:  /* 09   |                  */ ldloc.3
    IL_00da:  /* 11   | 0A               */ ldloc.s    V_10
    IL_00dc:  /* 94   |                  */ ldelem.i4
    IL_00dd:  /* 30   | 08               */ bgt.s      IL_00e7

    IL_00df:  /* 02   |                  */ ldarg.0
    IL_00e0:  /* 11   | 0C               */ ldloc.s    V_12
    IL_00e2:  /* 28   | (06)00000A       */ call       instance void a.Demo/*02000003*/::S_BD(int32) /* 0600000A */
    IL_00e7:  /* 11   | 08               */ ldloc.s    V_8
    IL_00e9:  /* 6F   | (0A)00002E       */ callvirt   instance int32 [mscorlib/*23000001*/]System.Random/*0100001C*/::Next() /* 0A00002E */
    IL_00ee:  /* 1F   | 64               */ ldc.i4.s   100
    IL_00f0:  /* 5D   |                  */ rem
    IL_00f1:  /* 13   | 0D               */ stloc.s    V_13
    IL_00f3:  /* 11   | 0D               */ ldloc.s    V_13
    IL_00f5:  /* 11   | 04               */ ldloc.s    V_4
    IL_00f7:  /* 11   | 0A               */ ldloc.s    V_10
    IL_00f9:  /* 94   |                  */ ldelem.i4
    IL_00fa:  /* 30   | 08               */ bgt.s      IL_0104

    IL_00fc:  /* 02   |                  */ ldarg.0
    IL_00fd:  /* 11   | 0C               */ ldloc.s    V_12
    IL_00ff:  /* 28   | (06)00000B       */ call       instance void a.Demo/*02000003*/::S_SD(int32) /* 0600000B */
    IL_0104:  /* 11   | 08               */ ldloc.s    V_8
    IL_0106:  /* 6F   | (0A)00002E       */ callvirt   instance int32 [mscorlib/*23000001*/]System.Random/*0100001C*/::Next() /* 0A00002E */
    IL_010b:  /* 1F   | 64               */ ldc.i4.s   100
    IL_010d:  /* 5D   |                  */ rem
    IL_010e:  /* 13   | 0D               */ stloc.s    V_13
    IL_0110:  /* 11   | 0D               */ ldloc.s    V_13
    IL_0112:  /* 11   | 05               */ ldloc.s    V_5
    IL_0114:  /* 11   | 0A               */ ldloc.s    V_10
    IL_0116:  /* 94   |                  */ ldelem.i4
    IL_0117:  /* 30   | 08               */ bgt.s      IL_0121

    IL_0119:  /* 02   |                  */ ldarg.0
    IL_011a:  /* 11   | 0C               */ ldloc.s    V_12
    IL_011c:  /* 28   | (06)00000C       */ call       instance void a.Demo/*02000003*/::S_CH(int32) /* 0600000C */
    IL_0121:  /* 11   | 08               */ ldloc.s    V_8
    IL_0123:  /* 6F   | (0A)00002E       */ callvirt   instance int32 [mscorlib/*23000001*/]System.Random/*0100001C*/::Next() /* 0A00002E */
    IL_0128:  /* 1F   | 64               */ ldc.i4.s   100
    IL_012a:  /* 5D   |                  */ rem
    IL_012b:  /* 13   | 0D               */ stloc.s    V_13
    IL_012d:  /* 11   | 0D               */ ldloc.s    V_13
    IL_012f:  /* 11   | 06               */ ldloc.s    V_6
    IL_0131:  /* 11   | 0A               */ ldloc.s    V_10
    IL_0133:  /* 94   |                  */ ldelem.i4
    IL_0134:  /* 30   | 08               */ bgt.s      IL_013e

    IL_0136:  /* 02   |                  */ ldarg.0
    IL_0137:  /* 11   | 0C               */ ldloc.s    V_12
    IL_0139:  /* 28   | (06)00000D       */ call       instance void a.Demo/*02000003*/::S_OH(int32) /* 0600000D */
    IL_013e:  /* 11   | 08               */ ldloc.s    V_8
    IL_0140:  /* 6F   | (0A)00002E       */ callvirt   instance int32 [mscorlib/*23000001*/]System.Random/*0100001C*/::Next() /* 0A00002E */
    IL_0145:  /* 1F   | 64               */ ldc.i4.s   100
    IL_0147:  /* 5D   |                  */ rem
    IL_0148:  /* 13   | 0D               */ stloc.s    V_13
    IL_014a:  /* 11   | 0D               */ ldloc.s    V_13
    IL_014c:  /* 11   | 07               */ ldloc.s    V_7
    IL_014e:  /* 11   | 0A               */ ldloc.s    V_10
    IL_0150:  /* 94   |                  */ ldelem.i4
    IL_0151:  /* 30   | 1D               */ bgt.s      IL_0170

    IL_0153:  /* 02   |                  */ ldarg.0
    IL_0154:  /* 11   | 0C               */ ldloc.s    V_12
    IL_0156:  /* 20   | B8010000         */ ldc.i4     0x1b8
    IL_015b:  /* 11   | 08               */ ldloc.s    V_8
    IL_015d:  /* 6F   | (0A)00002E       */ callvirt   instance int32 [mscorlib/*23000001*/]System.Random/*0100001C*/::Next() /* 0A00002E */
    IL_0162:  /* 1A   |                  */ ldc.i4.4
    IL_0163:  /* 5D   |                  */ rem
    IL_0164:  /* 20   | DC000000         */ ldc.i4     0xdc
    IL_0169:  /* 5A   |                  */ mul
    IL_016a:  /* 58   |                  */ add
    IL_016b:  /* 28   | (06)00000E       */ call       instance void a.Demo/*02000003*/::S_RS(int32,
                                                                                              int32) /* 0600000E */
    IL_0170:  /* 11   | 08               */ ldloc.s    V_8
    IL_0172:  /* 6F   | (0A)00002E       */ callvirt   instance int32 [mscorlib/*23000001*/]System.Random/*0100001C*/::Next() /* 0A00002E */
    IL_0177:  /* 1F   | 64               */ ldc.i4.s   100
    IL_0179:  /* 5D   |                  */ rem
    IL_017a:  /* 13   | 0D               */ stloc.s    V_13
    IL_017c:  /* 11   | 08               */ ldloc.s    V_8
    IL_017e:  /* 6F   | (0A)00002E       */ callvirt   instance int32 [mscorlib/*23000001*/]System.Random/*0100001C*/::Next() /* 0A00002E */
    IL_0183:  /* 1F   | 64               */ ldc.i4.s   100
    IL_0185:  /* 5D   |                  */ rem
    IL_0186:  /* 13   | 0D               */ stloc.s    V_13
    IL_0188:  /* 11   | 08               */ ldloc.s    V_8
    IL_018a:  /* 6F   | (0A)00002E       */ callvirt   instance int32 [mscorlib/*23000001*/]System.Random/*0100001C*/::Next() /* 0A00002E */
    IL_018f:  /* 1F   | 64               */ ldc.i4.s   100
    IL_0191:  /* 5D   |                  */ rem
    IL_0192:  /* 13   | 0D               */ stloc.s    V_13
    IL_0194:  /* 11   | 0A               */ ldloc.s    V_10
    IL_0196:  /* 17   |                  */ ldc.i4.1
    IL_0197:  /* 58   |                  */ add
    IL_0198:  /* 13   | 0A               */ stloc.s    V_10
    IL_019a:  /* 11   | 0A               */ ldloc.s    V_10
    IL_019c:  /* 1F   | 10               */ ldc.i4.s   16
    IL_019e:  /* 3F   | 03FFFFFF         */ blt        IL_00a6

    IL_01a3:  /* 11   | 09               */ ldloc.s    V_9
    IL_01a5:  /* 17   |                  */ ldc.i4.1
    IL_01a6:  /* 58   |                  */ add
    IL_01a7:  /* 13   | 09               */ stloc.s    V_9
    IL_01a9:  /* 11   | 09               */ ldloc.s    V_9
    IL_01ab:  /* 07   |                  */ ldloc.1
    IL_01ac:  /* 3F   | EDFEFFFF         */ blt        IL_009e

    IL_01b1:  /* 02   |                  */ ldarg.0
    IL_01b2:  /* 06   |                  */ ldloc.0
    IL_01b3:  /* 8D   | (01)000023       */ newarr     [mscorlib/*23000001*/]System.Byte/*01000023*/
    IL_01b8:  /* 7D   | (04)000006       */ stfld      uint8[] a.Demo/*02000003*/::S_B /* 04000006 */
    IL_01bd:  /* 16   |                  */ ldc.i4.0
    IL_01be:  /* 13   | 0E               */ stloc.s    V_14
    IL_01c0:  /* 2B   | 49               */ br.s       IL_020b

    IL_01c2:  /* 02   |                  */ ldarg.0
    IL_01c3:  /* 7B   | (04)000005       */ ldfld      float32[] a.Demo/*02000003*/::S_F /* 04000005 */
    IL_01c8:  /* 11   | 0E               */ ldloc.s    V_14
    IL_01ca:  /* 98   |                  */ ldelem.r4
    IL_01cb:  /* 22   | 00008042         */ ldc.r4     64.
    IL_01d0:  /* 5A   |                  */ mul
    IL_01d1:  /* 22   | 00000043         */ ldc.r4     128.
    IL_01d6:  /* 58   |                  */ add
    IL_01d7:  /* 13   | 0F               */ stloc.s    V_15
    IL_01d9:  /* 11   | 0F               */ ldloc.s    V_15
    IL_01db:  /* 22   | 00000000         */ ldc.r4     0.0
    IL_01e0:  /* 34   | 07               */ bge.un.s   IL_01e9

    IL_01e2:  /* 22   | 00000000         */ ldc.r4     0.0
    IL_01e7:  /* 13   | 0F               */ stloc.s    V_15
    IL_01e9:  /* 11   | 0F               */ ldloc.s    V_15
    IL_01eb:  /* 22   | 00007F43         */ ldc.r4     255.
    IL_01f0:  /* 37   | 07               */ blt.un.s   IL_01f9

    IL_01f2:  /* 22   | 00007F43         */ ldc.r4     255.
    IL_01f7:  /* 13   | 0F               */ stloc.s    V_15
    IL_01f9:  /* 02   |                  */ ldarg.0
    IL_01fa:  /* 7B   | (04)000006       */ ldfld      uint8[] a.Demo/*02000003*/::S_B /* 04000006 */
    IL_01ff:  /* 11   | 0E               */ ldloc.s    V_14
    IL_0201:  /* 11   | 0F               */ ldloc.s    V_15
    IL_0203:  /* D2   |                  */ conv.u1
    IL_0204:  /* 9C   |                  */ stelem.i1
    IL_0205:  /* 11   | 0E               */ ldloc.s    V_14
    IL_0207:  /* 17   |                  */ ldc.i4.1
    IL_0208:  /* 58   |                  */ add
    IL_0209:  /* 13   | 0E               */ stloc.s    V_14
    IL_020b:  /* 11   | 0E               */ ldloc.s    V_14
    IL_020d:  /* 06   |                  */ ldloc.0
    IL_020e:  /* 32   | B2               */ blt.s      IL_01c2

    IL_0210:  /* 2A   |                  */ ret
  } // end of method Demo::S_RNDR

  .method /*06000010*/ public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  // SIG: 20 00 01
  {
    // Method begins at RVA 0x276d
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  /* 02   |                  */ ldarg.0
    IL_0001:  /* 28   | (0A)00002F       */ call       instance void [System.Windows.Forms/*23000002*/]System.Windows.Forms.Form/*01000002*/::.ctor() /* 0A00002F */
    IL_0006:  /* 2A   |                  */ ret
  } // end of method Demo::.ctor

} // end of class a.Demo

.class /*02000004*/ private auto ansi '<PrivateImplementationDetails>{FE000440-6DBE-45FD-8368-9501A5706E13}'
       extends [mscorlib/*23000001*/]System.Object/*01000001*/
{
  .class /*02000005*/ explicit ansi sealed nested private '__StaticArrayInitTypeSize=64'
         extends [mscorlib/*23000001*/]System.ValueType/*01000020*/
  {
    .pack 1
    .size 64
  } // end of class '__StaticArrayInitTypeSize=64'

  .field /*04000007*/ static assembly valuetype '<PrivateImplementationDetails>{FE000440-6DBE-45FD-8368-9501A5706E13}'/*02000004*//'__StaticArrayInitTypeSize=64'/*02000005*/ '$$method0x600000f-1' at I_00002410
  .field /*04000008*/ static assembly valuetype '<PrivateImplementationDetails>{FE000440-6DBE-45FD-8368-9501A5706E13}'/*02000004*//'__StaticArrayInitTypeSize=64'/*02000005*/ '$$method0x600000f-2' at I_00002450
  .field /*04000009*/ static assembly valuetype '<PrivateImplementationDetails>{FE000440-6DBE-45FD-8368-9501A5706E13}'/*02000004*//'__StaticArrayInitTypeSize=64'/*02000005*/ '$$method0x600000f-3' at I_00002490
  .field /*0400000A*/ static assembly valuetype '<PrivateImplementationDetails>{FE000440-6DBE-45FD-8368-9501A5706E13}'/*02000004*//'__StaticArrayInitTypeSize=64'/*02000005*/ '$$method0x600000f-4' at I_000024D0
  .field /*0400000B*/ static assembly valuetype '<PrivateImplementationDetails>{FE000440-6DBE-45FD-8368-9501A5706E13}'/*02000004*//'__StaticArrayInitTypeSize=64'/*02000005*/ '$$method0x600000f-5' at I_00002510
} // end of class '<PrivateImplementationDetails>{FE000440-6DBE-45FD-8368-9501A5706E13}'


// =============================================================

.data cil I_00002410 = bytearray (
                 64 00 00 00 05 00 00 00 05 00 00 00 23 00 00 00  // d...........#...
                 69 00 00 00 05 00 00 00 0A 00 00 00 05 00 00 00  // i...............
                 69 00 00 00 05 00 00 00 19 00 00 00 05 00 00 00  // i...............
                 69 00 00 00 0F 00 00 00 37 00 00 00 05 00 00 00) // i.......7.......
.data cil I_00002450 = bytearray (
                 05 00 00 00 05 00 00 00 05 00 00 00 2D 00 00 00  // ............-...
                 64 00 00 00 05 00 00 00 05 00 00 00 32 00 00 00  // d...........2...
                 05 00 00 00 23 00 00 00 05 00 00 00 05 00 00 00  // ....#...........
                 64 00 00 00 05 00 00 00 05 00 00 00 37 00 00 00) // d...........7...
.data cil I_00002490 = bytearray (
                 00 00 00 00 4B 00 00 00 4B 00 00 00 23 00 00 00  // ....K...K...#...
                 00 00 00 00 55 00 00 00 55 00 00 00 00 00 00 00  // ....U...U.......
                 05 00 00 00 4B 00 00 00 4B 00 00 00 05 00 00 00  // ....K...K.......
                 05 00 00 00 55 00 00 00 5F 00 00 00 37 00 00 00) // ....U..._...7...
.data cil I_000024D0 = bytearray (
                 05 00 00 00 05 00 00 00 50 00 00 00 05 00 00 00  // ........P.......
                 05 00 00 00 05 00 00 00 55 00 00 00 00 00 00 00  // ........U.......
                 05 00 00 00 05 00 00 00 4B 00 00 00 05 00 00 00  // ........K.......
                 05 00 00 00 2D 00 00 00 55 00 00 00 2D 00 00 00) // ....-...U...-...
.data cil I_00002510 = bytearray (
                 05 00 00 00 05 00 00 00 37 00 00 00 05 00 00 00  // ........7.......
                 05 00 00 00 05 00 00 00 37 00 00 00 00 00 00 00  // ........7.......
                 05 00 00 00 05 00 00 00 0F 00 00 00 05 00 00 00
                 41 00 00 00 19 00 00 00 05 00 00 00 19 00 00 00) // A...............
// *********** DISASSEMBLY COMPLETE ***********************
// WARNING: Created Win32 resource file test.res
