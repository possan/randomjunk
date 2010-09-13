

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
// MVID: {25A34ADC-64B7-4810-B471-C8B0E1730442}
.imagebase 0x00400000
.file alignment 0x00000200
.stackreserve 0x00100000
.subsystem 0x0003       // WINDOWS_CUI
.corflags 0x00000001    //  ILONLY
// Image base: 0x02F50000


// =============== CLASS MEMBERS DECLARATION ===================

.class /*02000002*/ private auto ansi beforefieldinit microsynth1.Program
       extends [mscorlib/*23000001*/]System.Object/*01000001*/
{
  .field /*04000001*/ public static bool running
  .field /*04000002*/ public static class microsynth1.DemoThread/*02000005*/ DT
  .field /*04000003*/ public static class [mscorlib/*23000001*/]System.Threading.Thread/*01000003*/ TR
  .field /*04000004*/ public static class microsynth1.Form1/*02000004*/ F1
  .method /*06000001*/ private hidebysig static 
          void  Main(string[] args) cil managed
  // SIG: 00 01 01 1D 0E
  {
    .entrypoint
    // Method begins at RVA 0x2050
    // Code size       21 (0x15)
    .maxstack  8
    IL_0000:  /* 73   | (06)00000F       */ newobj     instance void microsynth1.Form1/*02000004*/::.ctor() /* 0600000F */
    IL_0005:  /* 80   | (04)000004       */ stsfld     class microsynth1.Form1/*02000004*/ microsynth1.Program/*02000002*/::F1 /* 04000004 */
    IL_000a:  /* 7E   | (04)000004       */ ldsfld     class microsynth1.Form1/*02000004*/ microsynth1.Program/*02000002*/::F1 /* 04000004 */
    IL_000f:  /* 28   | (0A)000003       */ call       void [System.Windows.Forms/*23000002*/]System.Windows.Forms.Application/*01000009*/::Run(class [System.Windows.Forms/*23000002*/]System.Windows.Forms.Form/*01000002*/) /* 0A000003 */
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

} // end of class microsynth1.Program

.class /*02000003*/ private auto ansi beforefieldinit microsynth1.DrummerBoi
       extends [mscorlib/*23000001*/]System.Object/*01000001*/
{
  .field /*04000005*/ public float32[] Samples
  .field /*04000006*/ public uint8[] Bytes
  .field /*04000007*/ public int32 BPM
  .method /*06000003*/ public hidebysig instance void 
          FallingPitchVol(int32 startsample,
                          int32 numsamples,
                          float32 startpitch,
                          float32 pitchmult,
                          float32 startvol,
                          float32 volmult) cil managed
  // SIG: 20 06 01 08 08 0C 0C 0C 0C
  {
    // Method begins at RVA 0x2070
    // Code size       98 (0x62)
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
    IL_000d:  /* 2B   | 4E               */ br.s       IL_005d

    IL_000f:  /* 08   |                  */ ldloc.2
    IL_0010:  /* 06   |                  */ ldloc.0
    IL_0011:  /* 6C   |                  */ conv.r8
    IL_0012:  /* 23   | 894160E5D0220940 */ ldc.r8     3.1419999999999999
    IL_001b:  /* 5A   |                  */ mul
    IL_001c:  /* 23   | 000000008088E540 */ ldc.r8     44100.
    IL_0025:  /* 5B   |                  */ div
    IL_0026:  /* 28   | (0A)000005       */ call       float64 [mscorlib/*23000001*/]System.Math/*0100000A*/::Sin(float64) /* 0A000005 */
    IL_002b:  /* 6B   |                  */ conv.r4
    IL_002c:  /* 5A   |                  */ mul
    IL_002d:  /* 13   | 04               */ stloc.s    V_4
    IL_002f:  /* 02   |                  */ ldarg.0
    IL_0030:  /* 7B   | (04)000005       */ ldfld      float32[] microsynth1.DrummerBoi/*02000003*/::Samples /* 04000005 */
    IL_0035:  /* 03   |                  */ ldarg.1
    IL_0036:  /* 09   |                  */ ldloc.3
    IL_0037:  /* 58   |                  */ add
    IL_0038:  /* 8F   | (01)00000B       */ ldelema    [mscorlib/*23000001*/]System.Single/*0100000B*/
    IL_003d:  /* 25   |                  */ dup
    IL_003e:  /* 71   | (01)00000B       */ ldobj      [mscorlib/*23000001*/]System.Single/*0100000B*/
    IL_0043:  /* 11   | 04               */ ldloc.s    V_4
    IL_0045:  /* 58   |                  */ add
    IL_0046:  /* 81   | (01)00000B       */ stobj      [mscorlib/*23000001*/]System.Single/*0100000B*/
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
  } // end of method DrummerBoi::FallingPitchVol

  .method /*06000004*/ public hidebysig instance void 
          FallingNoiseVol(int32 startsample,
                          int32 numsamples,
                          int32 dirt,
                          float32 startvol,
                          float32 volmult) cil managed
  // SIG: 20 05 01 08 08 08 0C 0C
  {
    // Method begins at RVA 0x20e0
    // Code size       102 (0x66)
    .maxstack  3
    .locals /*11000002*/ init (float32 V_0,
             float32 V_1,
             class [mscorlib/*23000001*/]System.Random/*0100000C*/ V_2,
             int32 V_3,
             int32 V_4,
             float32 V_5)
    IL_0000:  /* 0E   | 04               */ ldarg.s    startvol
    IL_0002:  /* 0A   |                  */ stloc.0
    IL_0003:  /* 22   | 00000000         */ ldc.r4     0.0
    IL_0008:  /* 0B   |                  */ stloc.1
    IL_0009:  /* 73   | (0A)000006       */ newobj     instance void [mscorlib/*23000001*/]System.Random/*0100000C*/::.ctor() /* 0A000006 */
    IL_000e:  /* 0C   |                  */ stloc.2
    IL_000f:  /* 16   |                  */ ldc.i4.0
    IL_0010:  /* 0D   |                  */ stloc.3
    IL_0011:  /* 16   |                  */ ldc.i4.0
    IL_0012:  /* 13   | 04               */ stloc.s    V_4
    IL_0014:  /* 2B   | 4A               */ br.s       IL_0060

    IL_0016:  /* 09   |                  */ ldloc.3
    IL_0017:  /* 2D   | 16               */ brtrue.s   IL_002f

    IL_0019:  /* 08   |                  */ ldloc.2
    IL_001a:  /* 6F   | (0A)000007       */ callvirt   instance float64 [mscorlib/*23000001*/]System.Random/*0100000C*/::NextDouble() /* 0A000007 */
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
    IL_0039:  /* 7B   | (04)000005       */ ldfld      float32[] microsynth1.DrummerBoi/*02000003*/::Samples /* 04000005 */
    IL_003e:  /* 03   |                  */ ldarg.1
    IL_003f:  /* 11   | 04               */ ldloc.s    V_4
    IL_0041:  /* 58   |                  */ add
    IL_0042:  /* 8F   | (01)00000B       */ ldelema    [mscorlib/*23000001*/]System.Single/*0100000B*/
    IL_0047:  /* 25   |                  */ dup
    IL_0048:  /* 71   | (01)00000B       */ ldobj      [mscorlib/*23000001*/]System.Single/*0100000B*/
    IL_004d:  /* 11   | 05               */ ldloc.s    V_5
    IL_004f:  /* 58   |                  */ add
    IL_0050:  /* 81   | (01)00000B       */ stobj      [mscorlib/*23000001*/]System.Single/*0100000B*/
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
  } // end of method DrummerBoi::FallingNoiseVol

  .method /*06000005*/ public hidebysig instance void 
          BassDrum(int32 startsample) cil managed
  // SIG: 20 01 01 08
  {
    // Method begins at RVA 0x2154
    // Code size       97 (0x61)
    .maxstack  7
    IL_0000:  /* 02   |                  */ ldarg.0
    IL_0001:  /* 03   |                  */ ldarg.1
    IL_0002:  /* 20   | 88130000         */ ldc.i4     0x1388
    IL_0007:  /* 22   | 00007A44         */ ldc.r4     1000.
    IL_000c:  /* 22   | A4707D3F         */ ldc.r4     0.99000001
    IL_0011:  /* 22   | 0000803F         */ ldc.r4     1.
    IL_0016:  /* 22   | 77BE7F3F         */ ldc.r4     0.99900001
    IL_001b:  /* 28   | (06)000003       */ call       instance void microsynth1.DrummerBoi/*02000003*/::FallingPitchVol(int32,
                                                                                                                         int32,
                                                                                                                         float32,
                                                                                                                         float32,
                                                                                                                         float32,
                                                                                                                         float32) /* 06000003 */
    IL_0020:  /* 02   |                  */ ldarg.0
    IL_0021:  /* 03   |                  */ ldarg.1
    IL_0022:  /* 20   | 581B0000         */ ldc.i4     0x1b58
    IL_0027:  /* 22   | 00009643         */ ldc.r4     300.
    IL_002c:  /* 22   | 77BE7F3F         */ ldc.r4     0.99900001
    IL_0031:  /* 22   | 0000803F         */ ldc.r4     1.
    IL_0036:  /* 22   | 77BE7F3F         */ ldc.r4     0.99900001
    IL_003b:  /* 28   | (06)000003       */ call       instance void microsynth1.DrummerBoi/*02000003*/::FallingPitchVol(int32,
                                                                                                                         int32,
                                                                                                                         float32,
                                                                                                                         float32,
                                                                                                                         float32,
                                                                                                                         float32) /* 06000003 */
    IL_0040:  /* 02   |                  */ ldarg.0
    IL_0041:  /* 03   |                  */ ldarg.1
    IL_0042:  /* 20   | 10270000         */ ldc.i4     0x2710
    IL_0047:  /* 22   | 0000C842         */ ldc.r4     100.
    IL_004c:  /* 22   | 0000803F         */ ldc.r4     1.
    IL_0051:  /* 22   | 0000803F         */ ldc.r4     1.
    IL_0056:  /* 22   | E5F27F3F         */ ldc.r4     0.99980003
    IL_005b:  /* 28   | (06)000003       */ call       instance void microsynth1.DrummerBoi/*02000003*/::FallingPitchVol(int32,
                                                                                                                         int32,
                                                                                                                         float32,
                                                                                                                         float32,
                                                                                                                         float32,
                                                                                                                         float32) /* 06000003 */
    IL_0060:  /* 2A   |                  */ ret
  } // end of method DrummerBoi::BassDrum

  .method /*06000006*/ public hidebysig instance void 
          SnareDrum(int32 startsample) cil managed
  // SIG: 20 01 01 08
  {
    // Method begins at RVA 0x21c1
    // Code size       47 (0x2f)
    .maxstack  8
    IL_0000:  /* 02   |                  */ ldarg.0
    IL_0001:  /* 03   |                  */ ldarg.1
    IL_0002:  /* 20   | D0070000         */ ldc.i4     0x7d0
    IL_0007:  /* 17   |                  */ ldc.i4.1
    IL_0008:  /* 22   | 0000003F         */ ldc.r4     0.5
    IL_000d:  /* 22   | 77BE7F3F         */ ldc.r4     0.99900001
    IL_0012:  /* 28   | (06)000004       */ call       instance void microsynth1.DrummerBoi/*02000003*/::FallingNoiseVol(int32,
                                                                                                                         int32,
                                                                                                                         int32,
                                                                                                                         float32,
                                                                                                                         float32) /* 06000004 */
    IL_0017:  /* 02   |                  */ ldarg.0
    IL_0018:  /* 03   |                  */ ldarg.1
    IL_0019:  /* 20   | A00F0000         */ ldc.i4     0xfa0
    IL_001e:  /* 1A   |                  */ ldc.i4.4
    IL_001f:  /* 22   | 0000003F         */ ldc.r4     0.5
    IL_0024:  /* 22   | 77BE7F3F         */ ldc.r4     0.99900001
    IL_0029:  /* 28   | (06)000004       */ call       instance void microsynth1.DrummerBoi/*02000003*/::FallingNoiseVol(int32,
                                                                                                                         int32,
                                                                                                                         int32,
                                                                                                                         float32,
                                                                                                                         float32) /* 06000004 */
    IL_002e:  /* 2A   |                  */ ret
  } // end of method DrummerBoi::SnareDrum

  .method /*06000007*/ public hidebysig instance void 
          ClosedHat(int32 startsample) cil managed
  // SIG: 20 01 01 08
  {
    // Method begins at RVA 0x21f1
    // Code size       47 (0x2f)
    .maxstack  8
    IL_0000:  /* 02   |                  */ ldarg.0
    IL_0001:  /* 03   |                  */ ldarg.1
    IL_0002:  /* 20   | 90010000         */ ldc.i4     0x190
    IL_0007:  /* 18   |                  */ ldc.i4.2
    IL_0008:  /* 22   | CDCCCC3D         */ ldc.r4     0.1
    IL_000d:  /* 22   | C9767E3F         */ ldc.r4     0.99400002
    IL_0012:  /* 28   | (06)000004       */ call       instance void microsynth1.DrummerBoi/*02000003*/::FallingNoiseVol(int32,
                                                                                                                         int32,
                                                                                                                         int32,
                                                                                                                         float32,
                                                                                                                         float32) /* 06000004 */
    IL_0017:  /* 02   |                  */ ldarg.0
    IL_0018:  /* 03   |                  */ ldarg.1
    IL_0019:  /* 20   | 58020000         */ ldc.i4     0x258
    IL_001e:  /* 17   |                  */ ldc.i4.1
    IL_001f:  /* 22   | CDCCCC3D         */ ldc.r4     0.1
    IL_0024:  /* 22   | 77BE7F3F         */ ldc.r4     0.99900001
    IL_0029:  /* 28   | (06)000004       */ call       instance void microsynth1.DrummerBoi/*02000003*/::FallingNoiseVol(int32,
                                                                                                                         int32,
                                                                                                                         int32,
                                                                                                                         float32,
                                                                                                                         float32) /* 06000004 */
    IL_002e:  /* 2A   |                  */ ret
  } // end of method DrummerBoi::ClosedHat

  .method /*06000008*/ public hidebysig instance void 
          OpenHat(int32 startsample) cil managed
  // SIG: 20 01 01 08
  {
    // Method begins at RVA 0x2221
    // Code size       47 (0x2f)
    .maxstack  8
    IL_0000:  /* 02   |                  */ ldarg.0
    IL_0001:  /* 03   |                  */ ldarg.1
    IL_0002:  /* 20   | 88130000         */ ldc.i4     0x1388
    IL_0007:  /* 17   |                  */ ldc.i4.1
    IL_0008:  /* 22   | 9A99993E         */ ldc.r4     0.30000001
    IL_000d:  /* 22   | 77BE7F3F         */ ldc.r4     0.99900001
    IL_0012:  /* 28   | (06)000004       */ call       instance void microsynth1.DrummerBoi/*02000003*/::FallingNoiseVol(int32,
                                                                                                                         int32,
                                                                                                                         int32,
                                                                                                                         float32,
                                                                                                                         float32) /* 06000004 */
    IL_0017:  /* 02   |                  */ ldarg.0
    IL_0018:  /* 03   |                  */ ldarg.1
    IL_0019:  /* 20   | A00F0000         */ ldc.i4     0xfa0
    IL_001e:  /* 18   |                  */ ldc.i4.2
    IL_001f:  /* 22   | CDCCCC3D         */ ldc.r4     0.1
    IL_0024:  /* 22   | 77BE7F3F         */ ldc.r4     0.99900001
    IL_0029:  /* 28   | (06)000004       */ call       instance void microsynth1.DrummerBoi/*02000003*/::FallingNoiseVol(int32,
                                                                                                                         int32,
                                                                                                                         int32,
                                                                                                                         float32,
                                                                                                                         float32) /* 06000004 */
    IL_002e:  /* 2A   |                  */ ret
  } // end of method DrummerBoi::OpenHat

  .method /*06000009*/ public hidebysig instance void 
          Rimshot(int32 startsample,
                  int32 bp) cil managed
  // SIG: 20 02 01 08 08
  {
    // Method begins at RVA 0x2251
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
    IL_0018:  /* 28   | (06)000003       */ call       instance void microsynth1.DrummerBoi/*02000003*/::FallingPitchVol(int32,
                                                                                                                         int32,
                                                                                                                         float32,
                                                                                                                         float32,
                                                                                                                         float32,
                                                                                                                         float32) /* 06000003 */
    IL_001d:  /* 2A   |                  */ ret
  } // end of method DrummerBoi::Rimshot

  .method /*0600000A*/ public hidebysig instance void 
          Render() cil managed
  // SIG: 20 00 01
  {
    // Method begins at RVA 0x23b0
    // Code size       547 (0x223)
    .maxstack  5
    .locals /*11000003*/ init (int32 V_0,
             int32 V_1,
             int32 V_2,
             int32[] V_3,
             int32[] V_4,
             int32[] V_5,
             int32[] V_6,
             int32[] V_7,
             class [mscorlib/*23000001*/]System.Random/*0100000C*/ V_8,
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
    IL_0008:  /* 8D   | (01)00000B       */ newarr     [mscorlib/*23000001*/]System.Single/*0100000B*/
    IL_000d:  /* 7D   | (04)000005       */ stfld      float32[] microsynth1.DrummerBoi/*02000003*/::Samples /* 04000005 */
    IL_0012:  /* 02   |                  */ ldarg.0
    IL_0013:  /* 7B   | (04)000005       */ ldfld      float32[] microsynth1.DrummerBoi/*02000003*/::Samples /* 04000005 */
    IL_0018:  /* 16   |                  */ ldc.i4.0
    IL_0019:  /* 06   |                  */ ldloc.0
    IL_001a:  /* 28   | (0A)000008       */ call       void [mscorlib/*23000001*/]System.Array/*0100000D*/::Clear(class [mscorlib/*23000001*/]System.Array/*0100000D*/,
                                                                                                                  int32,
                                                                                                                  int32) /* 0A000008 */
    IL_001f:  /* 02   |                  */ ldarg.0
    IL_0020:  /* 20   | 82000000         */ ldc.i4     0x82
    IL_0025:  /* 7D   | (04)000007       */ stfld      int32 microsynth1.DrummerBoi/*02000003*/::BPM /* 04000007 */
    IL_002a:  /* 1E   |                  */ ldc.i4.8
    IL_002b:  /* 0B   |                  */ stloc.1
    IL_002c:  /* 20   | F05F2800         */ ldc.i4     0x285ff0
    IL_0031:  /* 02   |                  */ ldarg.0
    IL_0032:  /* 7B   | (04)000007       */ ldfld      int32 microsynth1.DrummerBoi/*02000003*/::BPM /* 04000007 */
    IL_0037:  /* 5B   |                  */ div
    IL_0038:  /* 0C   |                  */ stloc.2
    IL_0039:  /* 1F   | 10               */ ldc.i4.s   16
    IL_003b:  /* 8D   | (01)00000E       */ newarr     [mscorlib/*23000001*/]System.Int32/*0100000E*/
    IL_0040:  /* 25   |                  */ dup
    IL_0041:  /* D0   | (04)00000C       */ ldtoken    field valuetype '<PrivateImplementationDetails>{25A34ADC-64B7-4810-B471-C8B0E1730442}'/*02000006*//'__StaticArrayInitTypeSize=64'/*02000007*/ '<PrivateImplementationDetails>{25A34ADC-64B7-4810-B471-C8B0E1730442}'/*02000006*/::'$$method0x600000a-1' /* 0400000C */
    IL_0046:  /* 28   | (0A)00000A       */ call       void [mscorlib/*23000001*/]System.Runtime.CompilerServices.RuntimeHelpers/*01000011*/::InitializeArray(class [mscorlib/*23000001*/]System.Array/*0100000D*/,
                                                                                                                                                              valuetype [mscorlib/*23000001*/]System.RuntimeFieldHandle/*01000012*/) /* 0A00000A */
    IL_004b:  /* 0D   |                  */ stloc.3
    IL_004c:  /* 1F   | 10               */ ldc.i4.s   16
    IL_004e:  /* 8D   | (01)00000E       */ newarr     [mscorlib/*23000001*/]System.Int32/*0100000E*/
    IL_0053:  /* 25   |                  */ dup
    IL_0054:  /* D0   | (04)00000D       */ ldtoken    field valuetype '<PrivateImplementationDetails>{25A34ADC-64B7-4810-B471-C8B0E1730442}'/*02000006*//'__StaticArrayInitTypeSize=64'/*02000007*/ '<PrivateImplementationDetails>{25A34ADC-64B7-4810-B471-C8B0E1730442}'/*02000006*/::'$$method0x600000a-2' /* 0400000D */
    IL_0059:  /* 28   | (0A)00000A       */ call       void [mscorlib/*23000001*/]System.Runtime.CompilerServices.RuntimeHelpers/*01000011*/::InitializeArray(class [mscorlib/*23000001*/]System.Array/*0100000D*/,
                                                                                                                                                              valuetype [mscorlib/*23000001*/]System.RuntimeFieldHandle/*01000012*/) /* 0A00000A */
    IL_005e:  /* 13   | 04               */ stloc.s    V_4
    IL_0060:  /* 1F   | 10               */ ldc.i4.s   16
    IL_0062:  /* 8D   | (01)00000E       */ newarr     [mscorlib/*23000001*/]System.Int32/*0100000E*/
    IL_0067:  /* 25   |                  */ dup
    IL_0068:  /* D0   | (04)00000E       */ ldtoken    field valuetype '<PrivateImplementationDetails>{25A34ADC-64B7-4810-B471-C8B0E1730442}'/*02000006*//'__StaticArrayInitTypeSize=64'/*02000007*/ '<PrivateImplementationDetails>{25A34ADC-64B7-4810-B471-C8B0E1730442}'/*02000006*/::'$$method0x600000a-3' /* 0400000E */
    IL_006d:  /* 28   | (0A)00000A       */ call       void [mscorlib/*23000001*/]System.Runtime.CompilerServices.RuntimeHelpers/*01000011*/::InitializeArray(class [mscorlib/*23000001*/]System.Array/*0100000D*/,
                                                                                                                                                              valuetype [mscorlib/*23000001*/]System.RuntimeFieldHandle/*01000012*/) /* 0A00000A */
    IL_0072:  /* 13   | 05               */ stloc.s    V_5
    IL_0074:  /* 1F   | 10               */ ldc.i4.s   16
    IL_0076:  /* 8D   | (01)00000E       */ newarr     [mscorlib/*23000001*/]System.Int32/*0100000E*/
    IL_007b:  /* 25   |                  */ dup
    IL_007c:  /* D0   | (04)00000F       */ ldtoken    field valuetype '<PrivateImplementationDetails>{25A34ADC-64B7-4810-B471-C8B0E1730442}'/*02000006*//'__StaticArrayInitTypeSize=64'/*02000007*/ '<PrivateImplementationDetails>{25A34ADC-64B7-4810-B471-C8B0E1730442}'/*02000006*/::'$$method0x600000a-4' /* 0400000F */
    IL_0081:  /* 28   | (0A)00000A       */ call       void [mscorlib/*23000001*/]System.Runtime.CompilerServices.RuntimeHelpers/*01000011*/::InitializeArray(class [mscorlib/*23000001*/]System.Array/*0100000D*/,
                                                                                                                                                              valuetype [mscorlib/*23000001*/]System.RuntimeFieldHandle/*01000012*/) /* 0A00000A */
    IL_0086:  /* 13   | 06               */ stloc.s    V_6
    IL_0088:  /* 1F   | 10               */ ldc.i4.s   16
    IL_008a:  /* 8D   | (01)00000E       */ newarr     [mscorlib/*23000001*/]System.Int32/*0100000E*/
    IL_008f:  /* 25   |                  */ dup
    IL_0090:  /* D0   | (04)000010       */ ldtoken    field valuetype '<PrivateImplementationDetails>{25A34ADC-64B7-4810-B471-C8B0E1730442}'/*02000006*//'__StaticArrayInitTypeSize=64'/*02000007*/ '<PrivateImplementationDetails>{25A34ADC-64B7-4810-B471-C8B0E1730442}'/*02000006*/::'$$method0x600000a-5' /* 04000010 */
    IL_0095:  /* 28   | (0A)00000A       */ call       void [mscorlib/*23000001*/]System.Runtime.CompilerServices.RuntimeHelpers/*01000011*/::InitializeArray(class [mscorlib/*23000001*/]System.Array/*0100000D*/,
                                                                                                                                                              valuetype [mscorlib/*23000001*/]System.RuntimeFieldHandle/*01000012*/) /* 0A00000A */
    IL_009a:  /* 13   | 07               */ stloc.s    V_7
    IL_009c:  /* 20   | 39300000         */ ldc.i4     0x3039
    IL_00a1:  /* 73   | (0A)00000B       */ newobj     instance void [mscorlib/*23000001*/]System.Random/*0100000C*/::.ctor(int32) /* 0A00000B */
    IL_00a6:  /* 13   | 08               */ stloc.s    V_8
    IL_00a8:  /* 16   |                  */ ldc.i4.0
    IL_00a9:  /* 13   | 09               */ stloc.s    V_9
    IL_00ab:  /* 38   | 0B010000         */ br         IL_01bb

    IL_00b0:  /* 16   |                  */ ldc.i4.0
    IL_00b1:  /* 13   | 0A               */ stloc.s    V_10
    IL_00b3:  /* 38   | F4000000         */ br         IL_01ac

    IL_00b8:  /* 11   | 09               */ ldloc.s    V_9
    IL_00ba:  /* 1F   | 10               */ ldc.i4.s   16
    IL_00bc:  /* 5A   |                  */ mul
    IL_00bd:  /* 11   | 0A               */ ldloc.s    V_10
    IL_00bf:  /* 58   |                  */ add
    IL_00c0:  /* 13   | 0B               */ stloc.s    V_11
    IL_00c2:  /* 11   | 0B               */ ldloc.s    V_11
    IL_00c4:  /* 08   |                  */ ldloc.2
    IL_00c5:  /* 5A   |                  */ mul
    IL_00c6:  /* 1A   |                  */ ldc.i4.4
    IL_00c7:  /* 5B   |                  */ div
    IL_00c8:  /* 13   | 0C               */ stloc.s    V_12
    IL_00ca:  /* 16   |                  */ ldc.i4.0
    IL_00cb:  /* 13   | 0D               */ stloc.s    V_13
    IL_00cd:  /* 11   | 0A               */ ldloc.s    V_10
    IL_00cf:  /* 18   |                  */ ldc.i4.2
    IL_00d0:  /* 5D   |                  */ rem
    IL_00d1:  /* 17   |                  */ ldc.i4.1
    IL_00d2:  /* 33   | 09               */ bne.un.s   IL_00dd

    IL_00d4:  /* 11   | 0C               */ ldloc.s    V_12
    IL_00d6:  /* 08   |                  */ ldloc.2
    IL_00d7:  /* 1F   | 1E               */ ldc.i4.s   30
    IL_00d9:  /* 5B   |                  */ div
    IL_00da:  /* 58   |                  */ add
    IL_00db:  /* 13   | 0C               */ stloc.s    V_12
    IL_00dd:  /* 11   | 08               */ ldloc.s    V_8
    IL_00df:  /* 6F   | (0A)00000C       */ callvirt   instance int32 [mscorlib/*23000001*/]System.Random/*0100000C*/::Next() /* 0A00000C */
    IL_00e4:  /* 1F   | 64               */ ldc.i4.s   100
    IL_00e6:  /* 5D   |                  */ rem
    IL_00e7:  /* 13   | 0D               */ stloc.s    V_13
    IL_00e9:  /* 11   | 0D               */ ldloc.s    V_13
    IL_00eb:  /* 09   |                  */ ldloc.3
    IL_00ec:  /* 11   | 0A               */ ldloc.s    V_10
    IL_00ee:  /* 94   |                  */ ldelem.i4
    IL_00ef:  /* 30   | 08               */ bgt.s      IL_00f9

    IL_00f1:  /* 02   |                  */ ldarg.0
    IL_00f2:  /* 11   | 0C               */ ldloc.s    V_12
    IL_00f4:  /* 28   | (06)000005       */ call       instance void microsynth1.DrummerBoi/*02000003*/::BassDrum(int32) /* 06000005 */
    IL_00f9:  /* 11   | 08               */ ldloc.s    V_8
    IL_00fb:  /* 6F   | (0A)00000C       */ callvirt   instance int32 [mscorlib/*23000001*/]System.Random/*0100000C*/::Next() /* 0A00000C */
    IL_0100:  /* 1F   | 64               */ ldc.i4.s   100
    IL_0102:  /* 5D   |                  */ rem
    IL_0103:  /* 13   | 0D               */ stloc.s    V_13
    IL_0105:  /* 11   | 0D               */ ldloc.s    V_13
    IL_0107:  /* 11   | 04               */ ldloc.s    V_4
    IL_0109:  /* 11   | 0A               */ ldloc.s    V_10
    IL_010b:  /* 94   |                  */ ldelem.i4
    IL_010c:  /* 30   | 08               */ bgt.s      IL_0116

    IL_010e:  /* 02   |                  */ ldarg.0
    IL_010f:  /* 11   | 0C               */ ldloc.s    V_12
    IL_0111:  /* 28   | (06)000006       */ call       instance void microsynth1.DrummerBoi/*02000003*/::SnareDrum(int32) /* 06000006 */
    IL_0116:  /* 11   | 08               */ ldloc.s    V_8
    IL_0118:  /* 6F   | (0A)00000C       */ callvirt   instance int32 [mscorlib/*23000001*/]System.Random/*0100000C*/::Next() /* 0A00000C */
    IL_011d:  /* 1F   | 64               */ ldc.i4.s   100
    IL_011f:  /* 5D   |                  */ rem
    IL_0120:  /* 13   | 0D               */ stloc.s    V_13
    IL_0122:  /* 11   | 0D               */ ldloc.s    V_13
    IL_0124:  /* 11   | 05               */ ldloc.s    V_5
    IL_0126:  /* 11   | 0A               */ ldloc.s    V_10
    IL_0128:  /* 94   |                  */ ldelem.i4
    IL_0129:  /* 30   | 08               */ bgt.s      IL_0133

    IL_012b:  /* 02   |                  */ ldarg.0
    IL_012c:  /* 11   | 0C               */ ldloc.s    V_12
    IL_012e:  /* 28   | (06)000007       */ call       instance void microsynth1.DrummerBoi/*02000003*/::ClosedHat(int32) /* 06000007 */
    IL_0133:  /* 11   | 08               */ ldloc.s    V_8
    IL_0135:  /* 6F   | (0A)00000C       */ callvirt   instance int32 [mscorlib/*23000001*/]System.Random/*0100000C*/::Next() /* 0A00000C */
    IL_013a:  /* 1F   | 64               */ ldc.i4.s   100
    IL_013c:  /* 5D   |                  */ rem
    IL_013d:  /* 13   | 0D               */ stloc.s    V_13
    IL_013f:  /* 11   | 0D               */ ldloc.s    V_13
    IL_0141:  /* 11   | 06               */ ldloc.s    V_6
    IL_0143:  /* 11   | 0A               */ ldloc.s    V_10
    IL_0145:  /* 94   |                  */ ldelem.i4
    IL_0146:  /* 30   | 08               */ bgt.s      IL_0150

    IL_0148:  /* 02   |                  */ ldarg.0
    IL_0149:  /* 11   | 0C               */ ldloc.s    V_12
    IL_014b:  /* 28   | (06)000008       */ call       instance void microsynth1.DrummerBoi/*02000003*/::OpenHat(int32) /* 06000008 */
    IL_0150:  /* 11   | 08               */ ldloc.s    V_8
    IL_0152:  /* 6F   | (0A)00000C       */ callvirt   instance int32 [mscorlib/*23000001*/]System.Random/*0100000C*/::Next() /* 0A00000C */
    IL_0157:  /* 1F   | 64               */ ldc.i4.s   100
    IL_0159:  /* 5D   |                  */ rem
    IL_015a:  /* 13   | 0D               */ stloc.s    V_13
    IL_015c:  /* 11   | 0D               */ ldloc.s    V_13
    IL_015e:  /* 11   | 07               */ ldloc.s    V_7
    IL_0160:  /* 11   | 0A               */ ldloc.s    V_10
    IL_0162:  /* 94   |                  */ ldelem.i4
    IL_0163:  /* 30   | 1D               */ bgt.s      IL_0182

    IL_0165:  /* 02   |                  */ ldarg.0
    IL_0166:  /* 11   | 0C               */ ldloc.s    V_12
    IL_0168:  /* 20   | B8010000         */ ldc.i4     0x1b8
    IL_016d:  /* 11   | 08               */ ldloc.s    V_8
    IL_016f:  /* 6F   | (0A)00000C       */ callvirt   instance int32 [mscorlib/*23000001*/]System.Random/*0100000C*/::Next() /* 0A00000C */
    IL_0174:  /* 1A   |                  */ ldc.i4.4
    IL_0175:  /* 5D   |                  */ rem
    IL_0176:  /* 20   | DC000000         */ ldc.i4     0xdc
    IL_017b:  /* 5A   |                  */ mul
    IL_017c:  /* 58   |                  */ add
    IL_017d:  /* 28   | (06)000009       */ call       instance void microsynth1.DrummerBoi/*02000003*/::Rimshot(int32,
                                                                                                                 int32) /* 06000009 */
    IL_0182:  /* 11   | 08               */ ldloc.s    V_8
    IL_0184:  /* 6F   | (0A)00000C       */ callvirt   instance int32 [mscorlib/*23000001*/]System.Random/*0100000C*/::Next() /* 0A00000C */
    IL_0189:  /* 1F   | 64               */ ldc.i4.s   100
    IL_018b:  /* 5D   |                  */ rem
    IL_018c:  /* 13   | 0D               */ stloc.s    V_13
    IL_018e:  /* 11   | 08               */ ldloc.s    V_8
    IL_0190:  /* 6F   | (0A)00000C       */ callvirt   instance int32 [mscorlib/*23000001*/]System.Random/*0100000C*/::Next() /* 0A00000C */
    IL_0195:  /* 1F   | 64               */ ldc.i4.s   100
    IL_0197:  /* 5D   |                  */ rem
    IL_0198:  /* 13   | 0D               */ stloc.s    V_13
    IL_019a:  /* 11   | 08               */ ldloc.s    V_8
    IL_019c:  /* 6F   | (0A)00000C       */ callvirt   instance int32 [mscorlib/*23000001*/]System.Random/*0100000C*/::Next() /* 0A00000C */
    IL_01a1:  /* 1F   | 64               */ ldc.i4.s   100
    IL_01a3:  /* 5D   |                  */ rem
    IL_01a4:  /* 13   | 0D               */ stloc.s    V_13
    IL_01a6:  /* 11   | 0A               */ ldloc.s    V_10
    IL_01a8:  /* 17   |                  */ ldc.i4.1
    IL_01a9:  /* 58   |                  */ add
    IL_01aa:  /* 13   | 0A               */ stloc.s    V_10
    IL_01ac:  /* 11   | 0A               */ ldloc.s    V_10
    IL_01ae:  /* 1F   | 10               */ ldc.i4.s   16
    IL_01b0:  /* 3F   | 03FFFFFF         */ blt        IL_00b8

    IL_01b5:  /* 11   | 09               */ ldloc.s    V_9
    IL_01b7:  /* 17   |                  */ ldc.i4.1
    IL_01b8:  /* 58   |                  */ add
    IL_01b9:  /* 13   | 09               */ stloc.s    V_9
    IL_01bb:  /* 11   | 09               */ ldloc.s    V_9
    IL_01bd:  /* 07   |                  */ ldloc.1
    IL_01be:  /* 3F   | EDFEFFFF         */ blt        IL_00b0

    IL_01c3:  /* 02   |                  */ ldarg.0
    IL_01c4:  /* 06   |                  */ ldloc.0
    IL_01c5:  /* 8D   | (01)000013       */ newarr     [mscorlib/*23000001*/]System.Byte/*01000013*/
    IL_01ca:  /* 7D   | (04)000006       */ stfld      uint8[] microsynth1.DrummerBoi/*02000003*/::Bytes /* 04000006 */
    IL_01cf:  /* 16   |                  */ ldc.i4.0
    IL_01d0:  /* 13   | 0E               */ stloc.s    V_14
    IL_01d2:  /* 2B   | 49               */ br.s       IL_021d

    IL_01d4:  /* 02   |                  */ ldarg.0
    IL_01d5:  /* 7B   | (04)000005       */ ldfld      float32[] microsynth1.DrummerBoi/*02000003*/::Samples /* 04000005 */
    IL_01da:  /* 11   | 0E               */ ldloc.s    V_14
    IL_01dc:  /* 98   |                  */ ldelem.r4
    IL_01dd:  /* 22   | 00008042         */ ldc.r4     64.
    IL_01e2:  /* 5A   |                  */ mul
    IL_01e3:  /* 22   | 00000043         */ ldc.r4     128.
    IL_01e8:  /* 58   |                  */ add
    IL_01e9:  /* 13   | 0F               */ stloc.s    V_15
    IL_01eb:  /* 11   | 0F               */ ldloc.s    V_15
    IL_01ed:  /* 22   | 00000000         */ ldc.r4     0.0
    IL_01f2:  /* 34   | 07               */ bge.un.s   IL_01fb

    IL_01f4:  /* 22   | 00000000         */ ldc.r4     0.0
    IL_01f9:  /* 13   | 0F               */ stloc.s    V_15
    IL_01fb:  /* 11   | 0F               */ ldloc.s    V_15
    IL_01fd:  /* 22   | 00007F43         */ ldc.r4     255.
    IL_0202:  /* 37   | 07               */ blt.un.s   IL_020b

    IL_0204:  /* 22   | 00007F43         */ ldc.r4     255.
    IL_0209:  /* 13   | 0F               */ stloc.s    V_15
    IL_020b:  /* 02   |                  */ ldarg.0
    IL_020c:  /* 7B   | (04)000006       */ ldfld      uint8[] microsynth1.DrummerBoi/*02000003*/::Bytes /* 04000006 */
    IL_0211:  /* 11   | 0E               */ ldloc.s    V_14
    IL_0213:  /* 11   | 0F               */ ldloc.s    V_15
    IL_0215:  /* D2   |                  */ conv.u1
    IL_0216:  /* 9C   |                  */ stelem.i1
    IL_0217:  /* 11   | 0E               */ ldloc.s    V_14
    IL_0219:  /* 17   |                  */ ldc.i4.1
    IL_021a:  /* 58   |                  */ add
    IL_021b:  /* 13   | 0E               */ stloc.s    V_14
    IL_021d:  /* 11   | 0E               */ ldloc.s    V_14
    IL_021f:  /* 06   |                  */ ldloc.0
    IL_0220:  /* 32   | B2               */ blt.s      IL_01d4

    IL_0222:  /* 2A   |                  */ ret
  } // end of method DrummerBoi::Render

  .method /*0600000B*/ public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  // SIG: 20 00 01
  {
    // Method begins at RVA 0x25df
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  /* 02   |                  */ ldarg.0
    IL_0001:  /* 28   | (0A)000004       */ call       instance void [mscorlib/*23000001*/]System.Object/*01000001*/::.ctor() /* 0A000004 */
    IL_0006:  /* 2A   |                  */ ret
  } // end of method DrummerBoi::.ctor

} // end of class microsynth1.DrummerBoi

.class /*02000004*/ private auto ansi beforefieldinit microsynth1.Form1
       extends [System.Windows.Forms/*23000002*/]System.Windows.Forms.Form/*01000002*/
{
  .field /*04000008*/ private class microsynth1.DemoThread/*02000005*/ dt
  .method /*0600000C*/ family hidebysig virtual 
          instance void  OnCreateControl() cil managed
  // SIG: 20 00 01
  {
    // Method begins at RVA 0x25e8
    // Code size       119 (0x77)
    .maxstack  4
    .locals /*11000004*/ init (class [System.Windows.Forms/*23000002*/]System.Windows.Forms.Button/*01000015*/ V_0)
    IL_0000:  /* 02   |                  */ ldarg.0
    IL_0001:  /* 28   | (0A)00000D       */ call       instance void [System.Windows.Forms/*23000002*/]System.Windows.Forms.Form/*01000002*/::OnCreateControl() /* 0A00000D */
    IL_0006:  /* 02   |                  */ ldarg.0
    IL_0007:  /* 20   | C8000000         */ ldc.i4     0xc8
    IL_000c:  /* 28   | (0A)00000E       */ call       instance void [System.Windows.Forms/*23000002*/]System.Windows.Forms.Control/*01000014*/::set_Width(int32) /* 0A00000E */
    IL_0011:  /* 02   |                  */ ldarg.0
    IL_0012:  /* 20   | 96000000         */ ldc.i4     0x96
    IL_0017:  /* 28   | (0A)00000F       */ call       instance void [System.Windows.Forms/*23000002*/]System.Windows.Forms.Control/*01000014*/::set_Height(int32) /* 0A00000F */
    IL_001c:  /* 73   | (0A)000010       */ newobj     instance void [System.Windows.Forms/*23000002*/]System.Windows.Forms.Button/*01000015*/::.ctor() /* 0A000010 */
    IL_0021:  /* 0A   |                  */ stloc.0
    IL_0022:  /* 06   |                  */ ldloc.0
    IL_0023:  /* 72   | (70)000001       */ ldstr      bytearray (53 00 74 00 E4 00 6E 00 67 00 21 00 )             // S.t...n.g.!. /* 70000001 */
    IL_0028:  /* 6F   | (0A)000011       */ callvirt   instance void [System.Windows.Forms/*23000002*/]System.Windows.Forms.Control/*01000014*/::set_Text(string) /* 0A000011 */
    IL_002d:  /* 06   |                  */ ldloc.0
    IL_002e:  /* 1F   | 32               */ ldc.i4.s   50
    IL_0030:  /* 6F   | (0A)000012       */ callvirt   instance void [System.Windows.Forms/*23000002*/]System.Windows.Forms.Control/*01000014*/::set_Left(int32) /* 0A000012 */
    IL_0035:  /* 06   |                  */ ldloc.0
    IL_0036:  /* 1F   | 32               */ ldc.i4.s   50
    IL_0038:  /* 6F   | (0A)000013       */ callvirt   instance void [System.Windows.Forms/*23000002*/]System.Windows.Forms.Control/*01000014*/::set_Top(int32) /* 0A000013 */
    IL_003d:  /* 06   |                  */ ldloc.0
    IL_003e:  /* 1F   | 64               */ ldc.i4.s   100
    IL_0040:  /* 6F   | (0A)00000E       */ callvirt   instance void [System.Windows.Forms/*23000002*/]System.Windows.Forms.Control/*01000014*/::set_Width(int32) /* 0A00000E */
    IL_0045:  /* 06   |                  */ ldloc.0
    IL_0046:  /* 1F   | 32               */ ldc.i4.s   50
    IL_0048:  /* 6F   | (0A)00000F       */ callvirt   instance void [System.Windows.Forms/*23000002*/]System.Windows.Forms.Control/*01000014*/::set_Height(int32) /* 0A00000F */
    IL_004d:  /* 06   |                  */ ldloc.0
    IL_004e:  /* 02   |                  */ ldarg.0
    IL_004f:  /* FE06 | (06)00000E       */ ldftn      instance void microsynth1.Form1/*02000004*/::b1_Click(object,
                                                                                                             class [mscorlib/*23000001*/]System.EventArgs/*01000004*/) /* 0600000E */
    IL_0055:  /* 73   | (0A)000014       */ newobj     instance void [mscorlib/*23000001*/]System.EventHandler/*01000016*/::.ctor(object,
                                                                                                                                  native int) /* 0A000014 */
    IL_005a:  /* 6F   | (0A)000015       */ callvirt   instance void [System.Windows.Forms/*23000002*/]System.Windows.Forms.Control/*01000014*/::add_Click(class [mscorlib/*23000001*/]System.EventHandler/*01000016*/) /* 0A000015 */
    IL_005f:  /* 02   |                  */ ldarg.0
    IL_0060:  /* 28   | (0A)000016       */ call       instance class [System.Windows.Forms/*23000002*/]System.Windows.Forms.Control/*01000014*//ControlCollection/*01000017*/ [System.Windows.Forms/*23000002*/]System.Windows.Forms.Control/*01000014*/::get_Controls() /* 0A000016 */
    IL_0065:  /* 06   |                  */ ldloc.0
    IL_0066:  /* 6F   | (0A)000017       */ callvirt   instance void [System.Windows.Forms/*23000002*/]System.Windows.Forms.Control/*01000014*//ControlCollection/*01000017*/::Add(class [System.Windows.Forms/*23000002*/]System.Windows.Forms.Control/*01000014*/) /* 0A000017 */
    IL_006b:  /* 02   |                  */ ldarg.0
    IL_006c:  /* 73   | (06)000012       */ newobj     instance void microsynth1.DemoThread/*02000005*/::.ctor() /* 06000012 */
    IL_0071:  /* 7D   | (04)000008       */ stfld      class microsynth1.DemoThread/*02000005*/ microsynth1.Form1/*02000004*/::dt /* 04000008 */
    IL_0076:  /* 2A   |                  */ ret
  } // end of method Form1::OnCreateControl

  .method /*0600000D*/ family hidebysig virtual 
          instance void  OnShown(class [mscorlib/*23000001*/]System.EventArgs/*01000004*/ e) cil managed
  // SIG: 20 01 01 12 11
  {
    // Method begins at RVA 0x266b
    // Code size       19 (0x13)
    .maxstack  8
    IL_0000:  /* 02   |                  */ ldarg.0
    IL_0001:  /* 03   |                  */ ldarg.1
    IL_0002:  /* 28   | (0A)000018       */ call       instance void [System.Windows.Forms/*23000002*/]System.Windows.Forms.Form/*01000002*/::OnShown(class [mscorlib/*23000001*/]System.EventArgs/*01000004*/) /* 0A000018 */
    IL_0007:  /* 02   |                  */ ldarg.0
    IL_0008:  /* 7B   | (04)000008       */ ldfld      class microsynth1.DemoThread/*02000005*/ microsynth1.Form1/*02000004*/::dt /* 04000008 */
    IL_000d:  /* 6F   | (06)000010       */ callvirt   instance void microsynth1.DemoThread/*02000005*/::Run() /* 06000010 */
    IL_0012:  /* 2A   |                  */ ret
  } // end of method Form1::OnShown

  .method /*0600000E*/ private hidebysig 
          instance void  b1_Click(object sender,
                                  class [mscorlib/*23000001*/]System.EventArgs/*01000004*/ e) cil managed
  // SIG: 20 02 01 1C 12 11
  {
    // Method begins at RVA 0x267f
    // Code size       17 (0x11)
    .maxstack  8
    IL_0000:  /* 02   |                  */ ldarg.0
    IL_0001:  /* 7B   | (04)000008       */ ldfld      class microsynth1.DemoThread/*02000005*/ microsynth1.Form1/*02000004*/::dt /* 04000008 */
    IL_0006:  /* 6F   | (06)000011       */ callvirt   instance void microsynth1.DemoThread/*02000005*/::Stop() /* 06000011 */
    IL_000b:  /* 28   | (0A)000019       */ call       void [System.Windows.Forms/*23000002*/]System.Windows.Forms.Application/*01000009*/::Exit() /* 0A000019 */
    IL_0010:  /* 2A   |                  */ ret
  } // end of method Form1::b1_Click

  .method /*0600000F*/ public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  // SIG: 20 00 01
  {
    // Method begins at RVA 0x2691
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  /* 02   |                  */ ldarg.0
    IL_0001:  /* 28   | (0A)00001A       */ call       instance void [System.Windows.Forms/*23000002*/]System.Windows.Forms.Form/*01000002*/::.ctor() /* 0A00001A */
    IL_0006:  /* 2A   |                  */ ret
  } // end of method Form1::.ctor

} // end of class microsynth1.Form1

.class /*02000005*/ private auto ansi beforefieldinit microsynth1.DemoThread
       extends [mscorlib/*23000001*/]System.Object/*01000001*/
{
  .field /*04000009*/ private class [Microsoft.DirectX.DirectSound/*23000003*/]Microsoft.DirectX.DirectSound.Device/*01000005*/ sounddevice
  .field /*0400000A*/ private class [Microsoft.DirectX.DirectSound/*23000003*/]Microsoft.DirectX.DirectSound.SecondaryBuffer/*01000006*/ buffer
  .field /*0400000B*/ private class microsynth1.DrummerBoi/*02000003*/ DB
  .method /*06000010*/ public hidebysig instance void 
          Run() cil managed
  // SIG: 20 00 01
  {
    // Method begins at RVA 0x269c
    // Code size       491 (0x1eb)
    .maxstack  4
    .locals /*11000005*/ init (valuetype [Microsoft.DirectX.DirectSound/*23000003*/]Microsoft.DirectX.DirectSound.WaveFormat/*0100001C*/ V_0,
             class [Microsoft.DirectX.DirectSound/*23000003*/]Microsoft.DirectX.DirectSound.BufferDescription/*0100001E*/ V_1,
             valuetype [Microsoft.DirectX.DirectSound/*23000003*/]Microsoft.DirectX.DirectSound.EffectDescription/*0100001F*/[] V_2,
             class [Microsoft.DirectX.DirectSound/*23000003*/]Microsoft.DirectX.DirectSound.EchoEffect/*01000024*/ V_3,
             valuetype [Microsoft.DirectX.DirectSound/*23000003*/]Microsoft.DirectX.DirectSound.EffectsEcho/*01000025*/ V_4)
    IL_0000:  /* 02   |                  */ ldarg.0
    IL_0001:  /* 73   | (06)00000B       */ newobj     instance void microsynth1.DrummerBoi/*02000003*/::.ctor() /* 0600000B */
    IL_0006:  /* 7D   | (04)00000B       */ stfld      class microsynth1.DrummerBoi/*02000003*/ microsynth1.DemoThread/*02000005*/::DB /* 0400000B */
    IL_000b:  /* 02   |                  */ ldarg.0
    IL_000c:  /* 7B   | (04)00000B       */ ldfld      class microsynth1.DrummerBoi/*02000003*/ microsynth1.DemoThread/*02000005*/::DB /* 0400000B */
    IL_0011:  /* 6F   | (06)00000A       */ callvirt   instance void microsynth1.DrummerBoi/*02000003*/::Render() /* 0600000A */
    IL_0016:  /* 02   |                  */ ldarg.0
    IL_0017:  /* 73   | (0A)00001B       */ newobj     instance void [Microsoft.DirectX.DirectSound/*23000003*/]Microsoft.DirectX.DirectSound.Device/*01000005*/::.ctor() /* 0A00001B */
    IL_001c:  /* 7D   | (04)000009       */ stfld      class [Microsoft.DirectX.DirectSound/*23000003*/]Microsoft.DirectX.DirectSound.Device/*01000005*/ microsynth1.DemoThread/*02000005*/::sounddevice /* 04000009 */
    IL_0021:  /* 02   |                  */ ldarg.0
    IL_0022:  /* 7B   | (04)000009       */ ldfld      class [Microsoft.DirectX.DirectSound/*23000003*/]Microsoft.DirectX.DirectSound.Device/*01000005*/ microsynth1.DemoThread/*02000005*/::sounddevice /* 04000009 */
    IL_0027:  /* 7E   | (04)000004       */ ldsfld     class microsynth1.Form1/*02000004*/ microsynth1.Program/*02000002*/::F1 /* 04000004 */
    IL_002c:  /* 17   |                  */ ldc.i4.1
    IL_002d:  /* 6F   | (0A)00001C       */ callvirt   instance void [Microsoft.DirectX.DirectSound/*23000003*/]Microsoft.DirectX.DirectSound.Device/*01000005*/::SetCooperativeLevel(class [System.Windows.Forms_3/*23000004*/]System.Windows.Forms.Control/*01000018*/,
                                                                                                                                                                                      valuetype [Microsoft.DirectX.DirectSound/*23000003*/]Microsoft.DirectX.DirectSound.CooperativeLevel/*01000019*/) /* 0A00001C */
    IL_0032:  /* 72   | (70)00000F       */ ldstr      "sounddevice = " /* 7000000F */
    IL_0037:  /* 02   |                  */ ldarg.0
    IL_0038:  /* 7B   | (04)000009       */ ldfld      class [Microsoft.DirectX.DirectSound/*23000003*/]Microsoft.DirectX.DirectSound.Device/*01000005*/ microsynth1.DemoThread/*02000005*/::sounddevice /* 04000009 */
    IL_003d:  /* 28   | (0A)00001D       */ call       string [mscorlib/*23000001*/]System.String/*0100001A*/::Concat(object,
                                                                                                                      object) /* 0A00001D */
    IL_0042:  /* 28   | (0A)00001E       */ call       void [mscorlib/*23000001*/]System.Console/*0100001B*/::WriteLine(string) /* 0A00001E */
    IL_0047:  /* 12   | 00               */ ldloca.s   V_0
    IL_0049:  /* 28   | (0A)00001F       */ call       instance void [Microsoft.DirectX.DirectSound/*23000003*/]Microsoft.DirectX.DirectSound.WaveFormat/*0100001C*/::.ctor() /* 0A00001F */
    IL_004e:  /* 12   | 00               */ ldloca.s   V_0
    IL_0050:  /* 17   |                  */ ldc.i4.1
    IL_0051:  /* 28   | (0A)000020       */ call       instance void [Microsoft.DirectX.DirectSound/*23000003*/]Microsoft.DirectX.DirectSound.WaveFormat/*0100001C*/::set_FormatTag(valuetype [Microsoft.DirectX.DirectSound/*23000003*/]Microsoft.DirectX.DirectSound.WaveFormatTag/*0100001D*/) /* 0A000020 */
    IL_0056:  /* 12   | 00               */ ldloca.s   V_0
    IL_0058:  /* 20   | 44AC0000         */ ldc.i4     0xac44
    IL_005d:  /* 28   | (0A)000021       */ call       instance void [Microsoft.DirectX.DirectSound/*23000003*/]Microsoft.DirectX.DirectSound.WaveFormat/*0100001C*/::set_SamplesPerSecond(int32) /* 0A000021 */
    IL_0062:  /* 12   | 00               */ ldloca.s   V_0
    IL_0064:  /* 1E   |                  */ ldc.i4.8
    IL_0065:  /* 28   | (0A)000022       */ call       instance void [Microsoft.DirectX.DirectSound/*23000003*/]Microsoft.DirectX.DirectSound.WaveFormat/*0100001C*/::set_BitsPerSample(int16) /* 0A000022 */
    IL_006a:  /* 12   | 00               */ ldloca.s   V_0
    IL_006c:  /* 17   |                  */ ldc.i4.1
    IL_006d:  /* 28   | (0A)000023       */ call       instance void [Microsoft.DirectX.DirectSound/*23000003*/]Microsoft.DirectX.DirectSound.WaveFormat/*0100001C*/::set_Channels(int16) /* 0A000023 */
    IL_0072:  /* 12   | 00               */ ldloca.s   V_0
    IL_0074:  /* 12   | 00               */ ldloca.s   V_0
    IL_0076:  /* 28   | (0A)000024       */ call       instance int16 [Microsoft.DirectX.DirectSound/*23000003*/]Microsoft.DirectX.DirectSound.WaveFormat/*0100001C*/::get_Channels() /* 0A000024 */
    IL_007b:  /* 12   | 00               */ ldloca.s   V_0
    IL_007d:  /* 28   | (0A)000025       */ call       instance int16 [Microsoft.DirectX.DirectSound/*23000003*/]Microsoft.DirectX.DirectSound.WaveFormat/*0100001C*/::get_BitsPerSample() /* 0A000025 */
    IL_0082:  /* 5A   |                  */ mul
    IL_0083:  /* 1E   |                  */ ldc.i4.8
    IL_0084:  /* 5B   |                  */ div
    IL_0085:  /* 68   |                  */ conv.i2
    IL_0086:  /* 28   | (0A)000026       */ call       instance void [Microsoft.DirectX.DirectSound/*23000003*/]Microsoft.DirectX.DirectSound.WaveFormat/*0100001C*/::set_BlockAlign(int16) /* 0A000026 */
    IL_008b:  /* 12   | 00               */ ldloca.s   V_0
    IL_008d:  /* 12   | 00               */ ldloca.s   V_0
    IL_008f:  /* 28   | (0A)000027       */ call       instance int32 [Microsoft.DirectX.DirectSound/*23000003*/]Microsoft.DirectX.DirectSound.WaveFormat/*0100001C*/::get_SamplesPerSecond() /* 0A000027 */
    IL_0094:  /* 12   | 00               */ ldloca.s   V_0
    IL_0096:  /* 28   | (0A)000028       */ call       instance int16 [Microsoft.DirectX.DirectSound/*23000003*/]Microsoft.DirectX.DirectSound.WaveFormat/*0100001C*/::get_BlockAlign() /* 0A000028 */
    IL_009b:  /* 5A   |                  */ mul
    IL_009c:  /* 28   | (0A)000029       */ call       instance void [Microsoft.DirectX.DirectSound/*23000003*/]Microsoft.DirectX.DirectSound.WaveFormat/*0100001C*/::set_AverageBytesPerSecond(int32) /* 0A000029 */
    IL_00a1:  /* 06   |                  */ ldloc.0
    IL_00a2:  /* 73   | (0A)00002A       */ newobj     instance void [Microsoft.DirectX.DirectSound/*23000003*/]Microsoft.DirectX.DirectSound.BufferDescription/*0100001E*/::.ctor(valuetype [Microsoft.DirectX.DirectSound/*23000003*/]Microsoft.DirectX.DirectSound.WaveFormat/*0100001C*/) /* 0A00002A */
    IL_00a7:  /* 0B   |                  */ stloc.1
    IL_00a8:  /* 07   |                  */ ldloc.1
    IL_00a9:  /* 02   |                  */ ldarg.0
    IL_00aa:  /* 7B   | (04)00000B       */ ldfld      class microsynth1.DrummerBoi/*02000003*/ microsynth1.DemoThread/*02000005*/::DB /* 0400000B */
    IL_00af:  /* 7B   | (04)000006       */ ldfld      uint8[] microsynth1.DrummerBoi/*02000003*/::Bytes /* 04000006 */
    IL_00b4:  /* 8E   |                  */ ldlen
    IL_00b5:  /* 69   |                  */ conv.i4
    IL_00b6:  /* 6F   | (0A)00002B       */ callvirt   instance void [Microsoft.DirectX.DirectSound/*23000003*/]Microsoft.DirectX.DirectSound.BufferDescription/*0100001E*/::set_BufferBytes(int32) /* 0A00002B */
    IL_00bb:  /* 07   |                  */ ldloc.1
    IL_00bc:  /* 17   |                  */ ldc.i4.1
    IL_00bd:  /* 6F   | (0A)00002C       */ callvirt   instance void [Microsoft.DirectX.DirectSound/*23000003*/]Microsoft.DirectX.DirectSound.BufferDescription/*0100001E*/::set_GlobalFocus(bool) /* 0A00002C */
    IL_00c2:  /* 07   |                  */ ldloc.1
    IL_00c3:  /* 17   |                  */ ldc.i4.1
    IL_00c4:  /* 6F   | (0A)00002D       */ callvirt   instance void [Microsoft.DirectX.DirectSound/*23000003*/]Microsoft.DirectX.DirectSound.BufferDescription/*0100001E*/::set_ControlEffects(bool) /* 0A00002D */
    IL_00c9:  /* 02   |                  */ ldarg.0
    IL_00ca:  /* 07   |                  */ ldloc.1
    IL_00cb:  /* 02   |                  */ ldarg.0
    IL_00cc:  /* 7B   | (04)000009       */ ldfld      class [Microsoft.DirectX.DirectSound/*23000003*/]Microsoft.DirectX.DirectSound.Device/*01000005*/ microsynth1.DemoThread/*02000005*/::sounddevice /* 04000009 */
    IL_00d1:  /* 73   | (0A)00002E       */ newobj     instance void [Microsoft.DirectX.DirectSound/*23000003*/]Microsoft.DirectX.DirectSound.SecondaryBuffer/*01000006*/::.ctor(class [Microsoft.DirectX.DirectSound/*23000003*/]Microsoft.DirectX.DirectSound.BufferDescription/*0100001E*/,
                                                                                                                                                                                 class [Microsoft.DirectX.DirectSound/*23000003*/]Microsoft.DirectX.DirectSound.Device/*01000005*/) /* 0A00002E */
    IL_00d6:  /* 7D   | (04)00000A       */ stfld      class [Microsoft.DirectX.DirectSound/*23000003*/]Microsoft.DirectX.DirectSound.SecondaryBuffer/*01000006*/ microsynth1.DemoThread/*02000005*/::buffer /* 0400000A */
    IL_00db:  /* 18   |                  */ ldc.i4.2
    IL_00dc:  /* 8D   | (01)00001F       */ newarr     [Microsoft.DirectX.DirectSound/*23000003*/]Microsoft.DirectX.DirectSound.EffectDescription/*0100001F*/
    IL_00e1:  /* 0C   |                  */ stloc.2
    IL_00e2:  /* 08   |                  */ ldloc.2
    IL_00e3:  /* 16   |                  */ ldc.i4.0
    IL_00e4:  /* 8F   | (01)00001F       */ ldelema    [Microsoft.DirectX.DirectSound/*23000003*/]Microsoft.DirectX.DirectSound.EffectDescription/*0100001F*/
    IL_00e9:  /* 7E   | (0A)00002F       */ ldsfld     valuetype [mscorlib_5/*23000006*/]System.Guid/*01000022*/ modopt([Microsoft.VisualC/*23000005*/]Microsoft.VisualC.IsConstModifier/*01000021*/) [Microsoft.DirectX.DirectSound/*23000003*/]Microsoft.DirectX.DirectSound.DSoundHelper/*01000020*/::StandardEchoGuid /* 0A00002F */
    IL_00ee:  /* 28   | (0A)000030       */ call       instance void [Microsoft.DirectX.DirectSound/*23000003*/]Microsoft.DirectX.DirectSound.EffectDescription/*0100001F*/::set_GuidEffectClass(valuetype [mscorlib_5/*23000006*/]System.Guid/*01000022*/) /* 0A000030 */
    IL_00f3:  /* 08   |                  */ ldloc.2
    IL_00f4:  /* 17   |                  */ ldc.i4.1
    IL_00f5:  /* 8F   | (01)00001F       */ ldelema    [Microsoft.DirectX.DirectSound/*23000003*/]Microsoft.DirectX.DirectSound.EffectDescription/*0100001F*/
    IL_00fa:  /* 7E   | (0A)000031       */ ldsfld     valuetype [mscorlib_5/*23000006*/]System.Guid/*01000022*/ modopt([Microsoft.VisualC/*23000005*/]Microsoft.VisualC.IsConstModifier/*01000021*/) [Microsoft.DirectX.DirectSound/*23000003*/]Microsoft.DirectX.DirectSound.DSoundHelper/*01000020*/::StandardCompressorGuid /* 0A000031 */
    IL_00ff:  /* 28   | (0A)000030       */ call       instance void [Microsoft.DirectX.DirectSound/*23000003*/]Microsoft.DirectX.DirectSound.EffectDescription/*0100001F*/::set_GuidEffectClass(valuetype [mscorlib_5/*23000006*/]System.Guid/*01000022*/) /* 0A000030 */
    IL_0104:  /* 02   |                  */ ldarg.0
    IL_0105:  /* 7B   | (04)00000A       */ ldfld      class [Microsoft.DirectX.DirectSound/*23000003*/]Microsoft.DirectX.DirectSound.SecondaryBuffer/*01000006*/ microsynth1.DemoThread/*02000005*/::buffer /* 0400000A */
    IL_010a:  /* 08   |                  */ ldloc.2
    IL_010b:  /* 6F   | (0A)000032       */ callvirt   instance valuetype [Microsoft.DirectX.DirectSound/*23000003*/]Microsoft.DirectX.DirectSound.EffectsReturnValue/*01000023*/[] [Microsoft.DirectX.DirectSound/*23000003*/]Microsoft.DirectX.DirectSound.SecondaryBuffer/*01000006*/::SetEffects(valuetype [Microsoft.DirectX.DirectSound/*23000003*/]Microsoft.DirectX.DirectSound.EffectDescription/*0100001F*/[]) /* 0A000032 */
    IL_0110:  /* 26   |                  */ pop
    IL_0111:  /* 02   |                  */ ldarg.0
    IL_0112:  /* 7B   | (04)00000A       */ ldfld      class [Microsoft.DirectX.DirectSound/*23000003*/]Microsoft.DirectX.DirectSound.SecondaryBuffer/*01000006*/ microsynth1.DemoThread/*02000005*/::buffer /* 0400000A */
    IL_0117:  /* 16   |                  */ ldc.i4.0
    IL_0118:  /* 6F   | (0A)000033       */ callvirt   instance object [Microsoft.DirectX.DirectSound/*23000003*/]Microsoft.DirectX.DirectSound.SecondaryBuffer/*01000006*/::GetEffects(int32) /* 0A000033 */
    IL_011d:  /* 75   | (01)000024       */ isinst     [Microsoft.DirectX.DirectSound/*23000003*/]Microsoft.DirectX.DirectSound.EchoEffect/*01000024*/
    IL_0122:  /* 0D   |                  */ stloc.3
    IL_0123:  /* 09   |                  */ ldloc.3
    IL_0124:  /* 14   |                  */ ldnull
    IL_0125:  /* 28   | (0A)000034       */ call       bool [Microsoft.DirectX.DirectSound/*23000003*/]Microsoft.DirectX.DirectSound.EchoEffect/*01000024*/::op_Inequality(class [Microsoft.DirectX.DirectSound/*23000003*/]Microsoft.DirectX.DirectSound.EchoEffect/*01000024*/,
                                                                                                                                                                           class [Microsoft.DirectX.DirectSound/*23000003*/]Microsoft.DirectX.DirectSound.EchoEffect/*01000024*/) /* 0A000034 */
    IL_012a:  /* 2C   | 7A               */ brfalse.s  IL_01a6

    IL_012c:  /* 09   |                  */ ldloc.3
    IL_012d:  /* 6F   | (0A)000035       */ callvirt   instance valuetype [Microsoft.DirectX.DirectSound/*23000003*/]Microsoft.DirectX.DirectSound.EffectsEcho/*01000025*/ [Microsoft.DirectX.DirectSound/*23000003*/]Microsoft.DirectX.DirectSound.EchoEffect/*01000024*/::get_AllParameters() /* 0A000035 */
    IL_0132:  /* 13   | 04               */ stloc.s    V_4
    IL_0134:  /* 12   | 04               */ ldloca.s   V_4
    IL_0136:  /* 22   | 00009842         */ ldc.r4     76.
    IL_013b:  /* 28   | (0A)000036       */ call       instance void [Microsoft.DirectX.DirectSound/*23000003*/]Microsoft.DirectX.DirectSound.EffectsEcho/*01000025*/::set_Feedback(float32) /* 0A000036 */
    IL_0140:  /* 12   | 04               */ ldloca.s   V_4
    IL_0142:  /* 22   | 00002041         */ ldc.r4     10.
    IL_0147:  /* 28   | (0A)000037       */ call       instance void [Microsoft.DirectX.DirectSound/*23000003*/]Microsoft.DirectX.DirectSound.EffectsEcho/*01000025*/::set_WetDryMix(float32) /* 0A000037 */
    IL_014c:  /* 12   | 04               */ ldloca.s   V_4
    IL_014e:  /* 22   | 00606A47         */ ldc.r4     60000.
    IL_0153:  /* 02   |                  */ ldarg.0
    IL_0154:  /* 7B   | (04)00000B       */ ldfld      class microsynth1.DrummerBoi/*02000003*/ microsynth1.DemoThread/*02000005*/::DB /* 0400000B */
    IL_0159:  /* 7B   | (04)000007       */ ldfld      int32 microsynth1.DrummerBoi/*02000003*/::BPM /* 04000007 */
    IL_015e:  /* 6B   |                  */ conv.r4
    IL_015f:  /* 5B   |                  */ div
    IL_0160:  /* 22   | 00008040         */ ldc.r4     4.
    IL_0165:  /* 5B   |                  */ div
    IL_0166:  /* 22   | 00004040         */ ldc.r4     3.
    IL_016b:  /* 5A   |                  */ mul
    IL_016c:  /* 28   | (0A)000038       */ call       instance void [Microsoft.DirectX.DirectSound/*23000003*/]Microsoft.DirectX.DirectSound.EffectsEcho/*01000025*/::set_LeftDelay(float32) /* 0A000038 */
    IL_0171:  /* 12   | 04               */ ldloca.s   V_4
    IL_0173:  /* 22   | 00606A47         */ ldc.r4     60000.
    IL_0178:  /* 02   |                  */ ldarg.0
    IL_0179:  /* 7B   | (04)00000B       */ ldfld      class microsynth1.DrummerBoi/*02000003*/ microsynth1.DemoThread/*02000005*/::DB /* 0400000B */
    IL_017e:  /* 7B   | (04)000007       */ ldfld      int32 microsynth1.DrummerBoi/*02000003*/::BPM /* 04000007 */
    IL_0183:  /* 6B   |                  */ conv.r4
    IL_0184:  /* 5B   |                  */ div
    IL_0185:  /* 22   | 00008040         */ ldc.r4     4.
    IL_018a:  /* 5B   |                  */ div
    IL_018b:  /* 22   | 00004040         */ ldc.r4     3.
    IL_0190:  /* 5A   |                  */ mul
    IL_0191:  /* 28   | (0A)000039       */ call       instance void [Microsoft.DirectX.DirectSound/*23000003*/]Microsoft.DirectX.DirectSound.EffectsEcho/*01000025*/::set_RightDelay(float32) /* 0A000039 */
    IL_0196:  /* 12   | 04               */ ldloca.s   V_4
    IL_0198:  /* 16   |                  */ ldc.i4.0
    IL_0199:  /* 28   | (0A)00003A       */ call       instance void [Microsoft.DirectX.DirectSound/*23000003*/]Microsoft.DirectX.DirectSound.EffectsEcho/*01000025*/::set_PanDelay(int32) /* 0A00003A */
    IL_019e:  /* 09   |                  */ ldloc.3
    IL_019f:  /* 11   | 04               */ ldloc.s    V_4
    IL_01a1:  /* 6F   | (0A)00003B       */ callvirt   instance void [Microsoft.DirectX.DirectSound/*23000003*/]Microsoft.DirectX.DirectSound.EchoEffect/*01000024*/::set_AllParameters(valuetype [Microsoft.DirectX.DirectSound/*23000003*/]Microsoft.DirectX.DirectSound.EffectsEcho/*01000025*/) /* 0A00003B */
    IL_01a6:  /* 02   |                  */ ldarg.0
    IL_01a7:  /* 7B   | (04)00000A       */ ldfld      class [Microsoft.DirectX.DirectSound/*23000003*/]Microsoft.DirectX.DirectSound.SecondaryBuffer/*01000006*/ microsynth1.DemoThread/*02000005*/::buffer /* 0400000A */
    IL_01ac:  /* 16   |                  */ ldc.i4.0
    IL_01ad:  /* 02   |                  */ ldarg.0
    IL_01ae:  /* 7B   | (04)00000B       */ ldfld      class microsynth1.DrummerBoi/*02000003*/ microsynth1.DemoThread/*02000005*/::DB /* 0400000B */
    IL_01b3:  /* 7B   | (04)000006       */ ldfld      uint8[] microsynth1.DrummerBoi/*02000003*/::Bytes /* 04000006 */
    IL_01b8:  /* 16   |                  */ ldc.i4.0
    IL_01b9:  /* 6F   | (0A)00003C       */ callvirt   instance void [Microsoft.DirectX.DirectSound/*23000003*/]Microsoft.DirectX.DirectSound.Buffer/*01000026*/::Write(int32,
                                                                                                                                                                        class [mscorlib_5/*23000006*/]System.Array/*01000027*/,
                                                                                                                                                                        valuetype [Microsoft.DirectX.DirectSound/*23000003*/]Microsoft.DirectX.DirectSound.LockFlag/*01000028*/) /* 0A00003C */
    IL_01be:  /* 02   |                  */ ldarg.0
    IL_01bf:  /* 7B   | (04)00000A       */ ldfld      class [Microsoft.DirectX.DirectSound/*23000003*/]Microsoft.DirectX.DirectSound.SecondaryBuffer/*01000006*/ microsynth1.DemoThread/*02000005*/::buffer /* 0400000A */
    IL_01c4:  /* 16   |                  */ ldc.i4.0
    IL_01c5:  /* 16   |                  */ ldc.i4.0
    IL_01c6:  /* 6F   | (0A)00003D       */ callvirt   instance void [Microsoft.DirectX.DirectSound/*23000003*/]Microsoft.DirectX.DirectSound.Buffer/*01000026*/::Play(int32,
                                                                                                                                                                       valuetype [Microsoft.DirectX.DirectSound/*23000003*/]Microsoft.DirectX.DirectSound.BufferPlayFlags/*01000029*/) /* 0A00003D */
    IL_01cb:  /* 72   | (70)00002D       */ ldstr      "buffer = " /* 7000002D */
    IL_01d0:  /* 02   |                  */ ldarg.0
    IL_01d1:  /* 7B   | (04)00000A       */ ldfld      class [Microsoft.DirectX.DirectSound/*23000003*/]Microsoft.DirectX.DirectSound.SecondaryBuffer/*01000006*/ microsynth1.DemoThread/*02000005*/::buffer /* 0400000A */
    IL_01d6:  /* 28   | (0A)00001D       */ call       string [mscorlib/*23000001*/]System.String/*0100001A*/::Concat(object,
                                                                                                                      object) /* 0A00001D */
    IL_01db:  /* 28   | (0A)00001E       */ call       void [mscorlib/*23000001*/]System.Console/*0100001B*/::WriteLine(string) /* 0A00001E */
    IL_01e0:  /* 72   | (70)000041       */ ldstr      "Running DemoThread..." /* 70000041 */
    IL_01e5:  /* 28   | (0A)00001E       */ call       void [mscorlib/*23000001*/]System.Console/*0100001B*/::WriteLine(string) /* 0A00001E */
    IL_01ea:  /* 2A   |                  */ ret
  } // end of method DemoThread::Run

  .method /*06000011*/ public hidebysig instance void 
          Stop() cil managed
  // SIG: 20 00 01
  {
    // Method begins at RVA 0x2893
    // Code size       36 (0x24)
    .maxstack  8
    IL_0000:  /* 72   | (70)00006D       */ ldstr      "stop" /* 7000006D */
    IL_0005:  /* 28   | (0A)00001E       */ call       void [mscorlib/*23000001*/]System.Console/*0100001B*/::WriteLine(string) /* 0A00001E */
    IL_000a:  /* 02   |                  */ ldarg.0
    IL_000b:  /* 7B   | (04)00000A       */ ldfld      class [Microsoft.DirectX.DirectSound/*23000003*/]Microsoft.DirectX.DirectSound.SecondaryBuffer/*01000006*/ microsynth1.DemoThread/*02000005*/::buffer /* 0400000A */
    IL_0010:  /* 14   |                  */ ldnull
    IL_0011:  /* 28   | (0A)00003E       */ call       bool [Microsoft.DirectX.DirectSound/*23000003*/]Microsoft.DirectX.DirectSound.SecondaryBuffer/*01000006*/::op_Inequality(class [Microsoft.DirectX.DirectSound/*23000003*/]Microsoft.DirectX.DirectSound.SecondaryBuffer/*01000006*/,
                                                                                                                                                                                class [Microsoft.DirectX.DirectSound/*23000003*/]Microsoft.DirectX.DirectSound.SecondaryBuffer/*01000006*/) /* 0A00003E */
    IL_0016:  /* 2C   | 0B               */ brfalse.s  IL_0023

    IL_0018:  /* 02   |                  */ ldarg.0
    IL_0019:  /* 7B   | (04)00000A       */ ldfld      class [Microsoft.DirectX.DirectSound/*23000003*/]Microsoft.DirectX.DirectSound.SecondaryBuffer/*01000006*/ microsynth1.DemoThread/*02000005*/::buffer /* 0400000A */
    IL_001e:  /* 6F   | (0A)00003F       */ callvirt   instance void [Microsoft.DirectX.DirectSound/*23000003*/]Microsoft.DirectX.DirectSound.Buffer/*01000026*/::Stop() /* 0A00003F */
    IL_0023:  /* 2A   |                  */ ret
  } // end of method DemoThread::Stop

  .method /*06000012*/ public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  // SIG: 20 00 01
  {
    // Method begins at RVA 0x28b8
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  /* 02   |                  */ ldarg.0
    IL_0001:  /* 28   | (0A)000004       */ call       instance void [mscorlib/*23000001*/]System.Object/*01000001*/::.ctor() /* 0A000004 */
    IL_0006:  /* 2A   |                  */ ret
  } // end of method DemoThread::.ctor

} // end of class microsynth1.DemoThread

.class /*02000006*/ private auto ansi '<PrivateImplementationDetails>{25A34ADC-64B7-4810-B471-C8B0E1730442}'
       extends [mscorlib/*23000001*/]System.Object/*01000001*/
{
  .custom /*0C000003:0A000009*/ instance void [mscorlib/*23000001*/]System.Runtime.CompilerServices.CompilerGeneratedAttribute/*0100000F*/::.ctor() /* 0A000009 */ = ( 01 00 00 00 ) 
  .class /*02000007*/ explicit ansi sealed nested private '__StaticArrayInitTypeSize=64'
         extends [mscorlib/*23000001*/]System.ValueType/*01000010*/
  {
    .pack 1
    .size 64
  } // end of class '__StaticArrayInitTypeSize=64'

  .field /*0400000C*/ static assembly valuetype '<PrivateImplementationDetails>{25A34ADC-64B7-4810-B471-C8B0E1730442}'/*02000006*//'__StaticArrayInitTypeSize=64'/*02000007*/ '$$method0x600000a-1' at I_00002270
  .field /*0400000D*/ static assembly valuetype '<PrivateImplementationDetails>{25A34ADC-64B7-4810-B471-C8B0E1730442}'/*02000006*//'__StaticArrayInitTypeSize=64'/*02000007*/ '$$method0x600000a-2' at I_000022B0
  .field /*0400000E*/ static assembly valuetype '<PrivateImplementationDetails>{25A34ADC-64B7-4810-B471-C8B0E1730442}'/*02000006*//'__StaticArrayInitTypeSize=64'/*02000007*/ '$$method0x600000a-3' at I_000022F0
  .field /*0400000F*/ static assembly valuetype '<PrivateImplementationDetails>{25A34ADC-64B7-4810-B471-C8B0E1730442}'/*02000006*//'__StaticArrayInitTypeSize=64'/*02000007*/ '$$method0x600000a-4' at I_00002330
  .field /*04000010*/ static assembly valuetype '<PrivateImplementationDetails>{25A34ADC-64B7-4810-B471-C8B0E1730442}'/*02000006*//'__StaticArrayInitTypeSize=64'/*02000007*/ '$$method0x600000a-5' at I_00002370
} // end of class '<PrivateImplementationDetails>{25A34ADC-64B7-4810-B471-C8B0E1730442}'


// =============================================================

.data cil I_00002270 = bytearray (
                 64 00 00 00 05 00 00 00 05 00 00 00 23 00 00 00  // d...........#...
                 69 00 00 00 05 00 00 00 0A 00 00 00 05 00 00 00  // i...............
                 69 00 00 00 05 00 00 00 19 00 00 00 05 00 00 00  // i...............
                 69 00 00 00 0F 00 00 00 37 00 00 00 05 00 00 00) // i.......7.......
.data cil I_000022B0 = bytearray (
                 05 00 00 00 05 00 00 00 05 00 00 00 2D 00 00 00  // ............-...
                 64 00 00 00 05 00 00 00 05 00 00 00 32 00 00 00  // d...........2...
                 05 00 00 00 23 00 00 00 05 00 00 00 05 00 00 00  // ....#...........
                 64 00 00 00 05 00 00 00 05 00 00 00 37 00 00 00) // d...........7...
.data cil I_000022F0 = bytearray (
                 00 00 00 00 4B 00 00 00 4B 00 00 00 23 00 00 00  // ....K...K...#...
                 00 00 00 00 55 00 00 00 55 00 00 00 00 00 00 00  // ....U...U.......
                 05 00 00 00 4B 00 00 00 4B 00 00 00 05 00 00 00  // ....K...K.......
                 05 00 00 00 55 00 00 00 5F 00 00 00 37 00 00 00) // ....U..._...7...
.data cil I_00002330 = bytearray (
                 05 00 00 00 05 00 00 00 50 00 00 00 05 00 00 00  // ........P.......
                 05 00 00 00 05 00 00 00 55 00 00 00 00 00 00 00  // ........U.......
                 05 00 00 00 05 00 00 00 4B 00 00 00 05 00 00 00  // ........K.......
                 05 00 00 00 2D 00 00 00 55 00 00 00 2D 00 00 00) // ....-...U...-...
.data cil I_00002370 = bytearray (
                 05 00 00 00 05 00 00 00 37 00 00 00 05 00 00 00  // ........7.......
                 05 00 00 00 05 00 00 00 37 00 00 00 00 00 00 00  // ........7.......
                 05 00 00 00 05 00 00 00 0F 00 00 00 05 00 00 00
                 41 00 00 00 19 00 00 00 05 00 00 00 19 00 00 00) // A...............
// *********** DISASSEMBLY COMPLETE ***********************
// WARNING: Created Win32 resource file c:\work\4k\pack\test\subject.res
