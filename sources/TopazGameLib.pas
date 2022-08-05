{==============================================================================
 _______
|__   __|
  | | ___  _ __   __ _ ____
  | |/ _ \| '_ \ / _` |_  /
  | | (_) | |_) | (_| |/ /
  |_|\___/| .__/ \__,_/___|
          | | Game Library™
          |_|

Copyright © 2022 tinyBigGAMES™ LLC
All Rights Reserved.

Website: https://topazgamelib.com
Email  : support@topazgamelib.com

BEFORE YOU USE THE SOFTWARE DISTRIBUTED WITH THIS LICENSE AGREEMENT,
CAREFULLY READ THE TERMS AND CONDITIONS OF THIS AGREEMENT. BY USING THE
SOFTWARE, YOU ARE CONSENTING TO BE BOUND BY AND ARE BECOMING A PARTY TO THIS
AGREEMENT. IF YOU DO NOT AGREE TO ALL OF THE TERMS OF THIS AGREEMENT, DO NOT
USE THE SOFTWARE AND DESTROY ALL COPIES OF THE SOFTWARE FROM YOUR COMPUTER.

 1. tinyBigGAMES™ LLC (the "Company") grants you (the "Customer") a
    worldwide, non-exclusive, restricted right and license to use the
    accompanying Topaz Game Library™ (the "Software"), in binary executable
    form to develop products (the "Product"). The Software is formed of the
    Software libraries, compiled utilities, example programs in source code
    format, and documentation.

 2. The Software is licensed, not sold. The Software is protected by
    copyright law and international copyright treaty provisions, as well as
    other intellectual property laws and treaties. Customer must not allow
    copies of the Software or any part of it to be made or distributed to
    anyone else. Customer may make backup copies of the software for archival
    purposes only. The Customer acknowledges that a separate Redistribution
    License from the Company is required in order to redistribute any part of
    this Software.

 3. You can use the Software for free in non-commercial products. It doesn't
    cost anything. If you want to use the Software in a commercial product,
    you need to purchase a commercial Software license.

 4. The Software is "in use" on a computer when it is loaded into the
    temporary memory (i.e. RAM) or installed into the permanent memory (e.g.,
    hard disk, CD-ROM or other storage device) of that computer.

 5. The Software may not be rented, leased, or in any other manner
    commercially exploited without the Company's prior written permission.
    This License is personal to Customer and Customer agrees not to assign
    your rights herein.

 6. The Software may include certain files ("Redistributables") intended for
    distribution by you to the users of the Product you create. Copies of
    Redistributables may only be distributed with and for the sole purpose of
    executing application programs permitted under this statement that you
    have created using the Software. Under no circumstances may any copies of
    Redistributables be distributed separately. You should refer to the
    documentation, including any "readme" or "deploy" files included with the
    Software, for additional information.

 7. LIMITATION OF WARRANTY. THE COMPANY MAKES NO REPRESENTATIONS OR
    WARRANTIES ABOUT THE SUITABILITY OF THIS SOFTWARE OR ABOUT ANY CONTENT OR
    INFORMATION PLAYED BY THE SOFTWARE, FOR ANY PURPOSE. THE SOFTWARE IS
    PROVIDED 'AS IS' WITHOUT EXPRESS OR IMPLIED WARRANTIES, INCLUDING
    WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE OR
    NON-INFRINGEMENT. THE COMPANY MAY NOT SUPPORT THIS SOFTWARE AND MAY NOT
    ISSUE UPDATES TO THIS SOFTWARE.

 8. All video, audio, and other content accessed through the Software is the
    property of the applicable content owner and may be protected by
    applicable copyright law. This License gives Customer no rights to such
    content, and Company disclaims any liability for misuse of content.

 9. The Company reserves the right at any time to alter prices, features,
    specifications, capabilities, functions, licensing terms, release dates,
    general availability or other characteristics of the released product.

10. Title, ownership rights, and intellectual property rights in and to the
    Software shall remain in the Company and/or its suppliers. Customer
    agrees to abide by the copyright law and all other applicable laws of the
    United States including, but not limited to, export control laws.
    Customer acknowledges that the Software remains proprietary and
    confidential information and intellectual property of the Company and/or
    its suppliers and therefore Customer agrees not to modify the Software or
    attempt to decipher, decompile, disassemble or reverse engineer the
    Software, except to the extent applicable laws specifically prohibit such
    restriction. Reproduction and/or redistribution of any portion of the
    Software is specifically prohibited without the Company's prior written
    permission.

11. Any Party may terminate the Term of this Agreement effective upon written
    notice to the other Parties if any other Party materially breaches any of
    such Party's obligations under this Agreement, and that Party has not
    cured the breach within thirty (30) days after notice of the breach from
    the non-breaching Party. However, in case of termination, Sections 5
    through 10 of this Agreement shall indefinitely survive its termination.
    This License shall be governed by and construed in accordance with the
    laws of the State of Florida with exclusive venue in courts located in
    Broward County, Florida, and, as to matters affecting copyrights,
    trademarks and patents, by U.S. federal law. This License sets forth the
    entire agreement between the Company and Customer.

12. DISCLAIMER OF LIABILITY. THE COMPANY OR ITS SUPPLIERS SHALL NOT BE LIABLE
    FOR (a) DIRECT, INCIDENTAL, CONSEQUENTIAL, SPECIAL OR INDIRECT DAMAGES OF
    ANY SORT WHATSOEVER, WHETHER ARISING IN TORT, CONTRACT OR OTHERWISE,
    (INCLUDING WITHOUT LIMITATION DAMAGES FOR LOSS OF BUSINESS PROFITS,
    REVENUES, OR INFORMATION, OR FOR BUSINESS INTERRUPTION) RESULTING FROM
    CUSTOMER'S USE OF THE SOFTWARE OR INABILITY TO USE THE SOFTWARE, EVEN IF
    THE COMPANY HAS BEEN INFORMED OF THE POSSIBILITY OF SUCH DAMAGES, OR (b)
    FOR ANY CLAIM BY ANY OTHER PARTY THAN CUSTOMER. THIS DISCLAIMER OF
    LIABILITY SHALL NOT APPLY TO LIABILITY FOR DEATH OR PERSONAL INJURY WHERE
    THE APPLICABLE LAW PROHIBITS SUCH LIMITATION. FURTHERMORE, SOME STATES DO
    NOT ALLOW THE EXCLUSION OR LIMITATION OF INCIDENTAL OR CONSEQUENTIAL
    DAMAGES, SO THIS LIMITATION AND EXCLUSION MAY NOT APPLY TO CUSTOMER.

13. HIGH RISK ACTIVITIES. The Software is not fault-tolerant and is not
    designed, manufactured or intended for use or resale as on-line control
    equipment in hazardous environments requiring fail-safe performance, such
    as in the operation of nuclear facilities, aircraft navigation or
    communication systems, air traffic control, direct life support machines,
    or weapons systems, in which the failure of the Software could lead
    directly to death, personal injury, or severe physical or environmental
    damage ("High Risk Activities"). The Company and its suppliers
    specifically disclaim any express or implied warranty of fitness for High
    Risk Activities.

14. The Company does not represent or warrant that the Software is free of
    infringement of any third-party patents.
============================================================================= }

unit TopazGameLib;

{$WARN SYMBOL_DEPRECATED OFF}
{$WARN SYMBOL_PLATFORM OFF}

{$WARN UNIT_PLATFORM OFF}
{$WARN UNIT_DEPRECATED OFF}

{$Z4}
{$A8}

{$INLINE AUTO}

{$IFNDEF WIN64}
  {$MESSAGE Error 'Unsupported platform'}
{$ENDIF}

{$if CompilerVersion < 35}
  {$MESSAGE Error 'Unsupported compiler versionm'}
{$ifend}

interface

// === COMMON ===============================================================
const

  // Common Char Codes
  CR   = #13;
  LF   = #10;
  CRLF = #13#10;

  // Common File Extensions
  LOG_EXT  = 'log';
  PNG_EXT  = 'png';
  CFG_EXT  = 'cfg';
  INI_EXT  = 'ini';
  LUA_EXT  = 'lua';
  LUAC_EXT = 'luac';
  SQLITE_EXT = 'db';

  // Mail Ports
  MAIL_PORT_SMTP      = 25;  // default non-ssl
  MAIL_PORT_SMTPS     = 587; // default ssl
  MAIL_PORT_SMTPS_ALT = 465; // alt ssl

  // Misc
  FALSE_TRUE_STR: array[boolean] of string = ('FALSE','TRUE');

type
  { TsysCharSet }
  TSysCharSet = set of AnsiChar;

  { TStringArray }
  TStringArray = array of string;

  { THAlign }
  THAlign = (haLeft, haCenter, haRight);

  { TVAlign }
  TVAlign = (vaTop, vaCenter, vaBottom);

  { TSeek }
  TSeek = (skStart=0, skCurrent=1, skEnd=2);

// === BASE =================================================================
type
  { IBaseInterface }
  IBaseInterface = interface
    ['{7EA2DA5E-0DF4-4920-80F0-8EA9E1C3D64C}']
  end;

  { TBaseInterface }
  TBaseInterface = class(TNoRefCountObject, IBaseInterface)
  public
    constructor Create; virtual;
    destructor Destroy; override;
  end;

  { TBaseInterfaceClass }
  TBaseInterfaceClass = class of TBaseInterface;

  { TBaseObject }
  TBaseObject = class(TObject)
  public
    constructor Create; virtual;
    destructor Destroy; override;
  end;

// === COLOR ================================================================
type
  { TColor }
  PColor = ^TColor;
  TColor = record
    Red, Green, Blue, Alpha: Single;
  end;

  { IColor }
  IColor = interface(IBaseInterface)
    ['{AF84EB5B-152E-4973-9BFE-107BAD696991}']
    function FromByte(aRed, aGreen, aBlue, aAlpha: Byte): TColor;
    function FromFloat(aRed, aGreen, aBlue, aAlpha: Single): TColor;
    function FromName(const aName: WideString): TColor;
    function Fade(aFrom, aTo: TColor; aPos: Single): TColor;
    function Equal(aColor1, aColor2: TColor): Boolean;
  end;

{$REGION 'Common Colors'}
const
  ALICEBLUE           : TColor = (Red:$F0/$FF; Green:$F8/$FF; Blue:$FF/$FF; Alpha:$FF/$FF);
  ANTIQUEWHITE        : TColor = (Red:$FA/$FF; Green:$EB/$FF; Blue:$D7/$FF; Alpha:$FF/$FF);
  AQUA                : TColor = (Red:$00/$FF; Green:$FF/$FF; Blue:$FF/$FF; Alpha:$FF/$FF);
  AQUAMARINE          : TColor = (Red:$7F/$FF; Green:$FF/$FF; Blue:$D4/$FF; Alpha:$FF/$FF);
  AZURE               : TColor = (Red:$F0/$FF; Green:$FF/$FF; Blue:$FF/$FF; Alpha:$FF/$FF);
  BEIGE               : TColor = (Red:$F5/$FF; Green:$F5/$FF; Blue:$DC/$FF; Alpha:$FF/$FF);
  BISQUE              : TColor = (Red:$FF/$FF; Green:$E4/$FF; Blue:$C4/$FF; Alpha:$FF/$FF);
  BLACK               : TColor = (Red:$00/$FF; Green:$00/$FF; Blue:$00/$FF; Alpha:$FF/$FF);
  BLANCHEDALMOND      : TColor = (Red:$FF/$FF; Green:$EB/$FF; Blue:$CD/$FF; Alpha:$FF/$FF);
  BLUE                : TColor = (Red:$00/$FF; Green:$00/$FF; Blue:$FF/$FF; Alpha:$FF/$FF);
  BLUEVIOLET          : TColor = (Red:$8A/$FF; Green:$2B/$FF; Blue:$E2/$FF; Alpha:$FF/$FF);
  BROWN               : TColor = (Red:$A5/$FF; Green:$2A/$FF; Blue:$2A/$FF; Alpha:$FF/$FF);
  BURLYWOOD           : TColor = (Red:$DE/$FF; Green:$B8/$FF; Blue:$87/$FF; Alpha:$FF/$FF);
  CADETBLUE           : TColor = (Red:$5F/$FF; Green:$9E/$FF; Blue:$A0/$FF; Alpha:$FF/$FF);
  CHARTREUSE          : TColor = (Red:$7F/$FF; Green:$FF/$FF; Blue:$00/$FF; Alpha:$FF/$FF);
  CHOCOLATE           : TColor = (Red:$D2/$FF; Green:$69/$FF; Blue:$1E/$FF; Alpha:$FF/$FF);
  CORAL               : TColor = (Red:$FF/$FF; Green:$7F/$FF; Blue:$50/$FF; Alpha:$FF/$FF);
  CORNFLOWERBLUE      : TColor = (Red:$64/$FF; Green:$95/$FF; Blue:$ED/$FF; Alpha:$FF/$FF);
  CORNSILK            : TColor = (Red:$FF/$FF; Green:$F8/$FF; Blue:$DC/$FF; Alpha:$FF/$FF);
  CRIMSON             : TColor = (Red:$DC/$FF; Green:$14/$FF; Blue:$3C/$FF; Alpha:$FF/$FF);
  CYAN                : TColor = (Red:$00/$FF; Green:$FF/$FF; Blue:$FF/$FF; Alpha:$FF/$FF);
  DARKBLUE            : TColor = (Red:$00/$FF; Green:$00/$FF; Blue:$8B/$FF; Alpha:$FF/$FF);
  DARKCYAN            : TColor = (Red:$00/$FF; Green:$8B/$FF; Blue:$8B/$FF; Alpha:$FF/$FF);
  DARKGOLDENROD       : TColor = (Red:$B8/$FF; Green:$86/$FF; Blue:$0B/$FF; Alpha:$FF/$FF);
  DARKGRAY            : TColor = (Red:$A9/$FF; Green:$A9/$FF; Blue:$A9/$FF; Alpha:$FF/$FF);
  DARKGREEN           : TColor = (Red:$00/$FF; Green:$64/$FF; Blue:$00/$FF; Alpha:$FF/$FF);
  DARKGREY            : TColor = (Red:$A9/$FF; Green:$A9/$FF; Blue:$A9/$FF; Alpha:$FF/$FF);
  DARKKHAKI           : TColor = (Red:$BD/$FF; Green:$B7/$FF; Blue:$6B/$FF; Alpha:$FF/$FF);
  DARKMAGENTA         : TColor = (Red:$8B/$FF; Green:$00/$FF; Blue:$8B/$FF; Alpha:$FF/$FF);
  DARKOLIVEGREEN      : TColor = (Red:$55/$FF; Green:$6B/$FF; Blue:$2F/$FF; Alpha:$FF/$FF);
  DARKORANGE          : TColor = (Red:$FF/$FF; Green:$8C/$FF; Blue:$00/$FF; Alpha:$FF/$FF);
  DARKORCHID          : TColor = (Red:$99/$FF; Green:$32/$FF; Blue:$CC/$FF; Alpha:$FF/$FF);
  DARKRED             : TColor = (Red:$8B/$FF; Green:$00/$FF; Blue:$00/$FF; Alpha:$FF/$FF);
  DARKSALMON          : TColor = (Red:$E9/$FF; Green:$96/$FF; Blue:$7A/$FF; Alpha:$FF/$FF);
  DARKSEAGREEN        : TColor = (Red:$8F/$FF; Green:$BC/$FF; Blue:$8F/$FF; Alpha:$FF/$FF);
  DARKSLATEBLUE       : TColor = (Red:$48/$FF; Green:$3D/$FF; Blue:$8B/$FF; Alpha:$FF/$FF);
  DARKSLATEGRAY       : TColor = (Red:$2F/$FF; Green:$4F/$FF; Blue:$4F/$FF; Alpha:$FF/$FF);
  DARKTURQUOISE       : TColor = (Red:$00/$FF; Green:$CE/$FF; Blue:$D1/$FF; Alpha:$FF/$FF);
  DARKVIOLET          : TColor = (Red:$94/$FF; Green:$00/$FF; Blue:$D3/$FF; Alpha:$FF/$FF);
  DEEPPINK            : TColor = (Red:$FF/$FF; Green:$14/$FF; Blue:$93/$FF; Alpha:$FF/$FF);
  DEEPSKYBLUE         : TColor = (Red:$00/$FF; Green:$BF/$FF; Blue:$FF/$FF; Alpha:$FF/$FF);
  DIMGRAY             : TColor = (Red:$69/$FF; Green:$69/$FF; Blue:$69/$FF; Alpha:$FF/$FF);
  DODGERBLUE          : TColor = (Red:$1E/$FF; Green:$90/$FF; Blue:$FF/$FF; Alpha:$FF/$FF);
  FIREBRICK           : TColor = (Red:$B2/$FF; Green:$22/$FF; Blue:$22/$FF; Alpha:$FF/$FF);
  FLORALWHITE         : TColor = (Red:$FF/$FF; Green:$FA/$FF; Blue:$F0/$FF; Alpha:$FF/$FF);
  FORESTGREEN         : TColor = (Red:$22/$FF; Green:$8B/$FF; Blue:$22/$FF; Alpha:$FF/$FF);
  FUCHSIA             : TColor = (Red:$FF/$FF; Green:$00/$FF; Blue:$FF/$FF; Alpha:$FF/$FF);
  GAINSBORO           : TColor = (Red:$DC/$FF; Green:$DC/$FF; Blue:$DC/$FF; Alpha:$FF/$FF);
  GHOSTWHITE          : TColor = (Red:$F8/$FF; Green:$F8/$FF; Blue:$FF/$FF; Alpha:$FF/$FF);
  GOLD                : TColor = (Red:$FF/$FF; Green:$D7/$FF; Blue:$00/$FF; Alpha:$FF/$FF);
  GOLDENROD           : TColor = (Red:$DA/$FF; Green:$A5/$FF; Blue:$20/$FF; Alpha:$FF/$FF);
  GRAY                : TColor = (Red:$80/$FF; Green:$80/$FF; Blue:$80/$FF; Alpha:$FF/$FF);
  GREEN               : TColor = (Red:$00/$FF; Green:$80/$FF; Blue:$00/$FF; Alpha:$FF/$FF);
  GREENYELLOW         : TColor = (Red:$AD/$FF; Green:$FF/$FF; Blue:$2F/$FF; Alpha:$FF/$FF);
  GREY                : TColor = (Red:$80/$FF; Green:$80/$FF; Blue:$80/$FF; Alpha:$FF/$FF);
  HONEYDEW            : TColor = (Red:$F0/$FF; Green:$FF/$FF; Blue:$F0/$FF; Alpha:$FF/$FF);
  HOTPINK             : TColor = (Red:$FF/$FF; Green:$69/$FF; Blue:$B4/$FF; Alpha:$FF/$FF);
  INDIANRED           : TColor = (Red:$CD/$FF; Green:$5C/$FF; Blue:$5C/$FF; Alpha:$FF/$FF);
  INDIGO              : TColor = (Red:$4B/$FF; Green:$00/$FF; Blue:$82/$FF; Alpha:$FF/$FF);
  IVORY               : TColor = (Red:$FF/$FF; Green:$FF/$FF; Blue:$F0/$FF; Alpha:$FF/$FF);
  KHAKI               : TColor = (Red:$F0/$FF; Green:$E6/$FF; Blue:$8C/$FF; Alpha:$FF/$FF);
  LAVENDER            : TColor = (Red:$E6/$FF; Green:$E6/$FF; Blue:$FA/$FF; Alpha:$FF/$FF);
  LAVENDERBLUSH       : TColor = (Red:$FF/$FF; Green:$F0/$FF; Blue:$F5/$FF; Alpha:$FF/$FF);
  LAWNGREEN           : TColor = (Red:$7C/$FF; Green:$FC/$FF; Blue:$00/$FF; Alpha:$FF/$FF);
  LEMONCHIFFON        : TColor = (Red:$FF/$FF; Green:$FA/$FF; Blue:$CD/$FF; Alpha:$FF/$FF);
  LIGHTBLUE           : TColor = (Red:$AD/$FF; Green:$D8/$FF; Blue:$E6/$FF; Alpha:$FF/$FF);
  LIGHTCORAL          : TColor = (Red:$F0/$FF; Green:$80/$FF; Blue:$80/$FF; Alpha:$FF/$FF);
  LIGHTCYAN           : TColor = (Red:$E0/$FF; Green:$FF/$FF; Blue:$FF/$FF; Alpha:$FF/$FF);
  LIGHTGOLDENRODYELLOW: TColor = (Red:$FA/$FF; Green:$FA/$FF; Blue:$D2/$FF; Alpha:$FF/$FF);
  LIGHTGRAY           : TColor = (Red:$D3/$FF; Green:$D3/$FF; Blue:$D3/$FF; Alpha:$FF/$FF);
  LIGHTGREEN          : TColor = (Red:$90/$FF; Green:$EE/$FF; Blue:$90/$FF; Alpha:$FF/$FF);
  LIGHTGREY           : TColor = (Red:$D3/$FF; Green:$D3/$FF; Blue:$D3/$FF; Alpha:$FF/$FF);
  LIGHTPINK           : TColor = (Red:$FF/$FF; Green:$B6/$FF; Blue:$C1/$FF; Alpha:$FF/$FF);
  LIGHTSALMON         : TColor = (Red:$FF/$FF; Green:$A0/$FF; Blue:$7A/$FF; Alpha:$FF/$FF);
  LIGHTSEAGREEN       : TColor = (Red:$20/$FF; Green:$B2/$FF; Blue:$AA/$FF; Alpha:$FF/$FF);
  LIGHTSKYBLUE        : TColor = (Red:$87/$FF; Green:$CE/$FF; Blue:$FA/$FF; Alpha:$FF/$FF);
  LIGHTSLATEGRAY      : TColor = (Red:$77/$FF; Green:$88/$FF; Blue:$99/$FF; Alpha:$FF/$FF);
  LIGHTSLATEGREY      : TColor = (Red:$77/$FF; Green:$88/$FF; Blue:$99/$FF; Alpha:$FF/$FF);
  LIGHTSTEELBLUE      : TColor = (Red:$B0/$FF; Green:$C4/$FF; Blue:$DE/$FF; Alpha:$FF/$FF);
  LIGHTYELLOW         : TColor = (Red:$FF/$FF; Green:$FF/$FF; Blue:$E0/$FF; Alpha:$FF/$FF);
  LIME                : TColor = (Red:$00/$FF; Green:$FF/$FF; Blue:$00/$FF; Alpha:$FF/$FF);
  LIMEGREEN           : TColor = (Red:$32/$FF; Green:$CD/$FF; Blue:$32/$FF; Alpha:$FF/$FF);
  LINEN               : TColor = (Red:$FA/$FF; Green:$F0/$FF; Blue:$E6/$FF; Alpha:$FF/$FF);
  MAGENTA             : TColor = (Red:$FF/$FF; Green:$00/$FF; Blue:$FF/$FF; Alpha:$FF/$FF);
  MAROON              : TColor = (Red:$80/$FF; Green:$00/$FF; Blue:$00/$FF; Alpha:$FF/$FF);
  MEDIUMAQUAMARINE    : TColor = (Red:$66/$FF; Green:$CD/$FF; Blue:$AA/$FF; Alpha:$FF/$FF);
  MEDIUMBLUE          : TColor = (Red:$00/$FF; Green:$00/$FF; Blue:$CD/$FF; Alpha:$FF/$FF);
  MEDIUMORCHID        : TColor = (Red:$BA/$FF; Green:$55/$FF; Blue:$D3/$FF; Alpha:$FF/$FF);
  MEDIUMPURPLE        : TColor = (Red:$93/$FF; Green:$70/$FF; Blue:$DB/$FF; Alpha:$FF/$FF);
  MEDIUMSEAGREEN      : TColor = (Red:$3C/$FF; Green:$B3/$FF; Blue:$71/$FF; Alpha:$FF/$FF);
  MEDIUMSLATEBLUE     : TColor = (Red:$7B/$FF; Green:$68/$FF; Blue:$EE/$FF; Alpha:$FF/$FF);
  MEDIUMSPRINGGREEN   : TColor = (Red:$00/$FF; Green:$FA/$FF; Blue:$9A/$FF; Alpha:$FF/$FF);
  MEDIUMTURQUOISE     : TColor = (Red:$48/$FF; Green:$D1/$FF; Blue:$CC/$FF; Alpha:$FF/$FF);
  MEDIUMVIOLETRED     : TColor = (Red:$C7/$FF; Green:$15/$FF; Blue:$85/$FF; Alpha:$FF/$FF);
  MIDNIGHTBLUE        : TColor = (Red:$19/$FF; Green:$19/$FF; Blue:$70/$FF; Alpha:$FF/$FF);
  MINTCREAM           : TColor = (Red:$F5/$FF; Green:$FF/$FF; Blue:$FA/$FF; Alpha:$FF/$FF);
  MISTYROSE           : TColor = (Red:$FF/$FF; Green:$E4/$FF; Blue:$E1/$FF; Alpha:$FF/$FF);
  MOCCASIN            : TColor = (Red:$FF/$FF; Green:$E4/$FF; Blue:$B5/$FF; Alpha:$FF/$FF);
  NAVAJOWHITE         : TColor = (Red:$FF/$FF; Green:$DE/$FF; Blue:$AD/$FF; Alpha:$FF/$FF);
  NAVY                : TColor = (Red:$00/$FF; Green:$00/$FF; Blue:$80/$FF; Alpha:$FF/$FF);
  OLDLACE             : TColor = (Red:$FD/$FF; Green:$F5/$FF; Blue:$E6/$FF; Alpha:$FF/$FF);
  OLIVE               : TColor = (Red:$80/$FF; Green:$80/$FF; Blue:$00/$FF; Alpha:$FF/$FF);
  OLIVEDRAB           : TColor = (Red:$6B/$FF; Green:$8E/$FF; Blue:$23/$FF; Alpha:$FF/$FF);
  ORANGE              : TColor = (Red:$FF/$FF; Green:$A5/$FF; Blue:$00/$FF; Alpha:$FF/$FF);
  ORANGERED           : TColor = (Red:$FF/$FF; Green:$45/$FF; Blue:$00/$FF; Alpha:$FF/$FF);
  ORCHID              : TColor = (Red:$DA/$FF; Green:$70/$FF; Blue:$D6/$FF; Alpha:$FF/$FF);
  PALEGOLDENROD       : TColor = (Red:$EE/$FF; Green:$E8/$FF; Blue:$AA/$FF; Alpha:$FF/$FF);
  PALEGREEN           : TColor = (Red:$98/$FF; Green:$FB/$FF; Blue:$98/$FF; Alpha:$FF/$FF);
  PALETURQUOISE       : TColor = (Red:$AF/$FF; Green:$EE/$FF; Blue:$EE/$FF; Alpha:$FF/$FF);
  PALEVIOLETRED       : TColor = (Red:$DB/$FF; Green:$70/$FF; Blue:$93/$FF; Alpha:$FF/$FF);
  PAPAYAWHIP          : TColor = (Red:$FF/$FF; Green:$EF/$FF; Blue:$D5/$FF; Alpha:$FF/$FF);
  PEACHPUFF           : TColor = (Red:$FF/$FF; Green:$DA/$FF; Blue:$B9/$FF; Alpha:$FF/$FF);
  PERU                : TColor = (Red:$CD/$FF; Green:$85/$FF; Blue:$3F/$FF; Alpha:$FF/$FF);
  PINK                : TColor = (Red:$FF/$FF; Green:$C0/$FF; Blue:$CB/$FF; Alpha:$FF/$FF);
  PLUM                : TColor = (Red:$DD/$FF; Green:$A0/$FF; Blue:$DD/$FF; Alpha:$FF/$FF);
  POWDERBLUE          : TColor = (Red:$B0/$FF; Green:$E0/$FF; Blue:$E6/$FF; Alpha:$FF/$FF);
  PURPLE              : TColor = (Red:$80/$FF; Green:$00/$FF; Blue:$80/$FF; Alpha:$FF/$FF);
  REBECCAPURPLE       : TColor = (Red:$66/$FF; Green:$33/$FF; Blue:$99/$FF; Alpha:$FF/$FF);
  RED                 : TColor = (Red:$FF/$FF; Green:$00/$FF; Blue:$00/$FF; Alpha:$FF/$FF);
  ROSYBROWN           : TColor = (Red:$BC/$FF; Green:$8F/$FF; Blue:$8F/$FF; Alpha:$FF/$FF);
  ROYALBLUE           : TColor = (Red:$41/$FF; Green:$69/$FF; Blue:$E1/$FF; Alpha:$FF/$FF);
  SADDLEBROWN         : TColor = (Red:$8B/$FF; Green:$45/$FF; Blue:$13/$FF; Alpha:$FF/$FF);
  SALMON              : TColor = (Red:$FA/$FF; Green:$80/$FF; Blue:$72/$FF; Alpha:$FF/$FF);
  SANDYBROWN          : TColor = (Red:$F4/$FF; Green:$A4/$FF; Blue:$60/$FF; Alpha:$FF/$FF);
  SEAGREEN            : TColor = (Red:$2E/$FF; Green:$8B/$FF; Blue:$57/$FF; Alpha:$FF/$FF);
  SEASHELL            : TColor = (Red:$FF/$FF; Green:$F5/$FF; Blue:$EE/$FF; Alpha:$FF/$FF);
  SIENNA              : TColor = (Red:$A0/$FF; Green:$52/$FF; Blue:$2D/$FF; Alpha:$FF/$FF);
  SILVER              : TColor = (Red:$C0/$FF; Green:$C0/$FF; Blue:$C0/$FF; Alpha:$FF/$FF);
  SKYBLUE             : TColor = (Red:$87/$FF; Green:$CE/$FF; Blue:$EB/$FF; Alpha:$FF/$FF);
  SLATEBLUE           : TColor = (Red:$6A/$FF; Green:$5A/$FF; Blue:$CD/$FF; Alpha:$FF/$FF);
  SLATEGRAY           : TColor = (Red:$70/$FF; Green:$80/$FF; Blue:$90/$FF; Alpha:$FF/$FF);
  SLATEGREY           : TColor = (Red:$70/$FF; Green:$80/$FF; Blue:$90/$FF; Alpha:$FF/$FF);
  SNOW                : TColor = (Red:$FF/$FF; Green:$FA/$FF; Blue:$FA/$FF; Alpha:$FF/$FF);
  SPRINGGREEN         : TColor = (Red:$00/$FF; Green:$FF/$FF; Blue:$7F/$FF; Alpha:$FF/$FF);
  STEELBLUE           : TColor = (Red:$46/$FF; Green:$82/$FF; Blue:$B4/$FF; Alpha:$FF/$FF);
  TAN                 : TColor = (Red:$D2/$FF; Green:$B4/$FF; Blue:$8C/$FF; Alpha:$FF/$FF);
  TEAL                : TColor = (Red:$00/$FF; Green:$80/$FF; Blue:$80/$FF; Alpha:$FF/$FF);
  THISTLE             : TColor = (Red:$D8/$FF; Green:$BF/$FF; Blue:$D8/$FF; Alpha:$FF/$FF);
  TOMATO              : TColor = (Red:$FF/$FF; Green:$63/$FF; Blue:$47/$FF; Alpha:$FF/$FF);
  TURQUOISE           : TColor = (Red:$40/$FF; Green:$E0/$FF; Blue:$D0/$FF; Alpha:$FF/$FF);
  VIOLET              : TColor = (Red:$EE/$FF; Green:$82/$FF; Blue:$EE/$FF; Alpha:$FF/$FF);
  WHEAT               : TColor = (Red:$F5/$FF; Green:$DE/$FF; Blue:$B3/$FF; Alpha:$FF/$FF);
  WHITE               : TColor = (Red:$FF/$FF; Green:$FF/$FF; Blue:$FF/$FF; Alpha:$FF/$FF);
  WHITESMOKE          : TColor = (Red:$F5/$FF; Green:$F5/$FF; Blue:$F5/$FF; Alpha:$FF/$FF);
  YELLOW              : TColor = (Red:$FF/$FF; Green:$FF/$FF; Blue:$00/$FF; Alpha:$FF/$FF);
  YELLOWGREEN         : TColor = (Red:$9A/$FF; Green:$CD/$FF; Blue:$32/$FF; Alpha:$FF/$FF);
  BLANK               : TColor = (Red:$00;     Green:$00;     Blue:$00;     Alpha:$00);
  WHITE2              : TColor = (Red:$F5/$FF; Green:$F5/$FF; Blue:$F5/$FF; Alpha:$FF/$FF);
  RED2                : TColor = (Red:$7E/$FF; Green:$32/$FF; Blue:$3F/$FF; Alpha:255/$FF);
  COLORKEY            : TColor = (Red:$FF/$FF; Green:$00;     Blue:$FF/$FF; Alpha:$FF/$FF);
  OVERLAY1            : TColor = (Red:$00/$FF; Green:$20/$FF; Blue:$29/$FF; Alpha:$B4/$FF);
  OVERLAY2            : TColor = (Red:$01/$FF; Green:$1B/$FF; Blue:$01/$FF; Alpha:255/$FF);
  DIMWHITE            : TColor = (Red:$10/$FF; Green:$10/$FF; Blue:$10/$FF; Alpha:$10/$FF);
  DARKSLATEBROWN      : TColor = (Red:30/255; Green:31/255; Blue:30/255; Alpha:1);
{$ENDREGION}

// === MATH =================================================================
const
  RAD2DEG = 180.0 / PI;
  DEG2RAD = PI / 180.0;
  EPSILON  = 0.00001;
  NAN      =  0.0 / 0.0;

type
  { TPointi }
  PPointi = ^TPointi;
  TPointi = record
    X,Y: Integer;
  end;

  { TVector }
  PVector = ^TVector;
  TVector = record
    X,Y,Z, W: Single;
    constructor Create(aX, aY: Single); overload;
    constructor Create(aX, aY, aZ: Single); overload;
    constructor Create(aX, aY, aZ, aW: Single); overload;
    procedure Assign(aX, aY: Single); overload;
    procedure Assign(aX, aY, aZ: Single); overload;
    procedure Assign(aX, aY, aZ, aW: Single); overload;
    procedure Assign(aVector: TVector); overload;
    procedure Clear;
    procedure Add(aVector: TVector);
    procedure Subtract(aVector: TVector);
    procedure Multiply(aVector: TVector);
    procedure Divide(aVector: TVector);
    function  Magnitude: Single;
    function  MagnitudeTruncate(aMaxMagitude: Single): TVector;
    function  Distance(aVector: TVector): Single;
    procedure Normalize;
    function  Angle(aVector: TVector): Single;
    procedure Thrust(aAngle: Single; aSpeed: Single);
    function  MagnitudeSquared: Single;
    function  DotProduct(aVector: TVector): Single;
    procedure Scale(aValue: Single);
    procedure DivideBy(aValue: Single);
    function  Project(aVector: TVector): TVector;
    procedure Negate;
    class function Vec2(aX, aY: Single): TVector; static;
  end;

  { TRectangle }
  PRectangle = ^TRectangle;
  TRectangle = record
    X, Y, Width, Height: Single;
    constructor Create(aX, aY, aWidth, aHeight: Single);
    procedure Assign(aX, aY, aWidth, aHeight: Single); overload;
    procedure Assign(aRectangle: TRectangle); overload;
    procedure Clear;
    function  Intersect(aRect: TRectangle): Boolean;
  end;

  { TRange }
  PRange = ^TRange;
  TRange = record
    MinX, MinY, MaxX, MaxY: Single;
  end;

  { TLineIntersection }
  TLineIntersection = (liNone, liTrue, liParallel);

  { TEaseType }
  TEaseType = (etLinearTween, etInQuad, etOutQuad, etInOutQuad, etInCubic,
    etOutCubic, etInOutCubic, etInQuart, etOutQuart, etInOutQuart, etInQuint,
    etOutQuint, etInOutQuint, etInSine, etOutSine, etInOutSine, etInExpo,
    etOutExpo, etInOutExpo, etInCircle, etOutCircle, etInOutCircle);

  { IMath }
  IMath = interface(IBaseInterface)
    ['{613BBD9D-391D-4770-8D5D-BE82D9AD3ADB}']
    function  RandomRange(aMin, aMax: Integer): Integer; overload;
    function  RandomRange(aMin, aMax: Single): Single; overload;
    function  RandomBool: Boolean;
    function  GetRandomSeed: Integer;
    procedure SetRandomSeed(aValue: Integer);
    function  AngleCos(aAngle: Integer): Single;
    function  AngleSin(aAngle: Integer): Single;
    function  AngleDifference(aSrcAngle: Single; aDestAngle: Single): Single;
    procedure AngleRotatePos(aAngle: Single; var aX: Single; var aY: Single);
    function  ClipValueFloat(var aValue: Single; aMin: Single; aMax: Single; aWrap: Boolean): Single;
    function  ClipValueDouble(var aValue: Double; aMin: Double; aMax: Double; aWrap: Boolean): Single;
    function  ClipValueInt(var aValue: Integer; aMin: Integer; aMax: Integer; aWrap: Boolean): Integer;
    function  SameSignInt(aValue1: Integer; aValue2: Integer): Boolean;
    function  SameSignFloat(aValue1: Single; aValue2: Single): Boolean;
    function  SameValueExt(aA: Double; aB: Double; aEpsilon: Double = 0): Boolean;
    function  SameValueFloat(aA: Single; aB: Single; aEpsilon: Single = 0): Boolean;
    function  Vector(aX: Single; aY: Single): TVector;
    function  Rectangle(aX: Single; aY: Single; aWidth: Single; aHeight: Single): TRectangle;
    procedure SmoothMove(var aValue: Single; aAmount: Single; aMax: Single; aDrag: Single);
    function  Lerp(aFrom: Double; aTo: Double; aTime: Double): Double;
    function  PointInRectangle(aPoint: TVector; aRect: TRectangle): Boolean;
    function  PointInCircle(aPoint, aCenter: TVector; aRadius: Single): Boolean;
    function  PointInTriangle(aPoint, aP1, aP2, aP3: TVector): Boolean;
    function  CirclesOverlap(aCenter1: TVector; aRadius1: Single; aCenter2: TVector; aRadius2: Single): Boolean;
    function  CircleInRectangle(aCenter: TVector; aRadius: Single; aRect: TRectangle): Boolean;
    function  RectanglesOverlap(aRect1: TRectangle; aRect2: TRectangle): Boolean;
    function  RectangleIntersection(aRect1, aRect2: TRectangle): TRectangle;
    function  LineIntersection(aX1, aY1, aX2, aY2, aX3, aY3, aX4, aY4: Integer; var aX: Integer; var aY: Integer): TLineIntersection;
    function  RadiusOverlap(aRadius1, aX1, aY1, aRadius2, aX2, aY2, aShrinkFactor: Single): Boolean;
    function  EaseValue(aCurrentTime: Double; aStartValue: Double; aChangeInValue: Double; aDuration: Double; aEaseType: TEaseType): Double;
    function  EasePosition(aStartPos: Double; aEndPos: Double; aCurrentPos: Double; aEaseType: TEaseType): Double;
  end;

// === CONSOLE ==============================================================
type
  { IConsole }
  IConsole = interface(IBaseInterface)
    ['{C2152279-35FF-4724-80D7-72C344656A75}']
    function  IsPresent: Boolean;
    function  AtStartup: Boolean;
    procedure Print(const aMsg: WideString); overload;
    procedure Print(const aMsg: WideString; const aArgs: array of const); overload;
    procedure PrintLn; overload;
    procedure PrintLn(const aMsg: WideString); overload;
    procedure PrintLn(const aMsg: WideString; const aArgs: array of const); overload;
    procedure WaitForInput;
    procedure Pause;
  end;

// === LOG ==================================================================
type
  { ILog }
  ILog = interface(IBaseInterface)
    ['{32DE080D-5DFD-4292-AF27-86B2DB16277F}']
    function  Open(const aFilename: WideString=''): Boolean;
    procedure Close;
    function  Opened: Boolean;
    procedure Add(const aMsg: WideString; const aArgs: array of const);
    procedure Fatal(const aMsg: WideString; const aArgs: array of const);
  end;

// === CMDLINE ==============================================================
type
  { ICmdLine }
  ICmdLine = interface(IBaseInterface)
    ['{FE30BC68-F1CB-4A6F-B3C9-8AC5A4B9DF5C}']
    function ParamCount: Integer;
    procedure Reset;
    procedure ClearParams;
    procedure AddAParam(const aParam: WideString);
    procedure AddParams(const aParams: WideString);
    function ParamStr(aIndex: Integer): WideString;
    function GetParamValue(const aParamName: WideString; aSwitchChars: TSysCharSet; aSeperator: Char; var aValue: WideString): Boolean; overload;
    function GetParamValue(const aParamName: WideString; var aValue: WideString): Boolean; overload;
    function GetParam(const aParamName: WideString): Boolean;
  end;

// === USERPATH =============================================================
type
  { IUserPath }
  IUserPath = interface(IBaseInterface)
    ['{E081B07B-3C77-4B11-826A-A44E63961C3F}']
    procedure Reset;
    procedure SetOrgName(const aName: WideString);
    function  GetOrgName: WideString;
    procedure SetAppId(const aId: WideString);
    function  GetAppId: WideString;
    function  GetAppIdPath: WideString;
    function  GetPath: WideString; overload;
    function  GetPath(const aPath: WideString): WideString; overload;
    function  CreateDirs: Boolean;
    function  GetConfigFilename: WideString;
    function  GetLogFilename: WideString;
    procedure GotoPath;
  end;

// === UTIL =================================================================
type

  { IUtil }
  IUtil = interface(IBaseInterface)
    ['{0B1EF503-B778-44CA-BDCD-C45CFC5B6F2F}']
    function  FileExist(const aFilename: WideString): Boolean;
    function  DirExist(const aPath: WideString): Boolean;
    function  RemoveQuotes(const aText: WideString): WideString;
    function  GetTime: Double;
    function  Format(const aMsg: WideString; const aArgs: array of const): WideString;
    function  PadRight(const aText: WideString; aTotalWidth: Integer; aPaddingChar: Char): WideString;
    function  FileCount(const aPath: WideString; const aSearchMask: WideString): Int64;
    procedure GotoURL(const aURL: WideString);
    function  GetAppName: WideString;
    function  GetAppPath: WideString;
    function  GetAppBasedPath(const aFilename: WideString): WideString;
    function  GetAppVersion: WideString;
    function  GetCPUCount: Integer;
    procedure GetDiskFreeSpace(const aPath: WideString; var aFreeSpace: Int64; var aTotalSpace: Int64);
    function  GetOSVersion: WideString;
    procedure GetMemoryFree(var aAvailMem: UInt64; var aTotalMem: UInt64);
    function  GetVideoCardName: WideString;
    function  ReadAllText(const aFilename: WideString): WideString;
    function  GetFilename(const aPath: WideString): WideString;
  end;

// === DIALOGS ==============================================================
type
  { TMessageBox }
  TMessageBox = (mbWarn=1, mbError=2, mbOkCancel=4, mbYesNo=8, mbQuestion=16);

  { TMessageBoxResult }
  TMessageBoxResult = (mbrClosed=0, mbrOkYes=1, mbrCancelNo=2);

  IDialogs = interface(IBaseInterface)
    ['{ADC6A47F-C6C6-4C4C-BB42-4BCD5DEF8902}']
    function  MessageBox(const aTitle, aHeading, aText: WideString; aType: TMessageBox): TMessageBoxResult;
    procedure Feedback(const aServer, aUsername, aPassword, aEmail, aSubject: WideString; aPort: Integer=MAIL_PORT_SMTPS);
    procedure ContactUs(const aTitle, aServer, aUsername, aPassword, aEmail: WideString; aPort: Integer=MAIL_PORT_SMTPS);
    function  DirOpen(const aTitle, aInitialDir: WideString; var aDirName: WideString): Boolean;
    function  FileOpen(const aTitle, aFilter: WideString; aFilterIndex: Integer; aDefaultExt: WideString; aInitialDir: WideString; var aFilename: WideString): Boolean;
    function  FileSave(const aTitle, aFilter: WideString; aFilterIndex: Integer; aDefaultExt: WideString; var aFilename: WideString): Boolean;
  end;

// === BUFFER ===============================================================
type
  { IBuffer }
  IBuffer = interface(IBaseInterface)
    ['{76E120CE-D462-4FAC-A6DB-033BA0AEFCEF}']
    function  Allocate(aSize: UInt64): Boolean;
    function  LoadFromFile(const aFilename: WideString): Boolean;
    function  LoadFromResource(aInstance: THandle; const aResName: WideString): Boolean;
    procedure Release;
    function  Size: UInt64;
    function  Memory: Pointer;
    function  GetPosition: UInt64;
    procedure SetPosition(aPosition: UInt64);
    function  Read(const aBuffer: Pointer; aCount: UInt64): UInt64;
    function  Write(aBuffer: Pointer; aCount: UInt64): UInt64;
    function  Eof: Boolean;
    function  SaveToFile(const aFilename: WideString): Boolean;
    function  ReadString: WideString;
  end;

// === CONFIGFILE ===========================================================
type
  { IConfigFile }
  IConfigFile = interface(IBaseInterface)
    ['{5F29E7D5-5EAB-4D7F-B850-FE207A809E7F}']
    function  Open(const aFilename: WideString=''): Boolean;
    procedure Close;
    function  Opened: Boolean;
    procedure Update;
    function  RemoveSection(const aName: WideString): Boolean;
    procedure SetValue(const aSection: WideString; const aKey: WideString; const aValue: WideString);  overload;
    procedure SetValue(const aSection: WideString; const aKey: WideString; aValue: Integer); overload;
    procedure SetValue(const aSection: WideString; const aKey: WideString; aValue: Boolean); overload;
    procedure SetValue(const aSection: WideString; const aKey: WideString; aValue: Pointer; aValueSize: Cardinal); overload;
    function  GetValue(const aSection: WideString; const aKey: WideString; const aDefaultValue: WideString): WideString; overload;
    function  GetValue(const aSection: WideString; const aKey: WideString; aDefaultValue: Integer): Integer; overload;
    function  GetValue(const aSection: WideString; const aKey: WideString; aDefaultValue: Boolean): Boolean; overload;
    procedure GetValue(const aSection: WideString; const aKey: WideString; aValue: Pointer; aValueSize: Cardinal); overload;
    function  RemoveKey(const aSection: WideString; const aKey: WideString): Boolean;
    function  GetSectionValues(const aSection: WideString): Integer;
    function  GetSectionValue(aIndex: Integer; aDefaultValue: WideString): WideString; overload;
    function  GetSectionValue(aIndex: Integer; aDefaultValue: Integer): Integer; overload;
    function  GetSectionValue(aIndex: Integer; aDefaultValue: Boolean): Boolean; overload;
  end;

// === VIRTUALFILE ==========================================================
type
  { IVirtualFile }
  IVirtualFile = interface(IBaseInterface)
    ['{A84A442B-DD01-414D-AC61-93A039B20D4D}']
    function Make(const aFilename: WideString): Boolean;
    function Delete: Boolean;
    function GetFilename: WideString;
    function GetVirtualFilename: WideString;
    function GetSize: Int64;
    function Save(const aFilename: Widestring): Boolean;
  end;

// === ARCHIVE ==============================================================
type
  { IArchive }
  IArchive = interface(IBaseInterface)
    ['{E64686AA-A0E2-44BD-9ABD-30BB4308E46D}']
    function  Open(const aFilename: WideString): Boolean; overload;
    function  Open(aInstance: THandle; const aResName: WideString): Boolean; overload;
    function  Close: Boolean;
    function  Opened: Boolean;
    function  IsValid: Boolean;
    function  FileExist(const aFilename: WideString; var aFullPath: WideString; var aUncompressedSize: Int64): Boolean;
    function  ExtractFile(const aFilename: WideString): IVirtualFile;
    function  ExtractFileToBuffer(const aFilename: WideString): IBuffer;
    procedure ExtractFiles(const aPath: WideString; const aBasePath: WideString);
    function  Build(const aArchiveFilename: WideString; const aDirectoryName: WideString): Boolean;
  end;

// === RENDERTARGET =========================================================
type
  { IRenderTarget }
  IRenderTarget = interface(IBaseInterface)
    ['{7AB83A56-E680-4B4C-9CA0-4152693930CD}']
    procedure Init(aX, aY, aWidth, aHeight: Integer);
    procedure SetActive(aActive: Boolean);
    function  GetActive: Boolean;
    procedure SetPosition(aX: Single; aY: Single);
    procedure GetPosition(var aPosition: TVector);
    procedure GetSize(var aSize: TRectangle);
    procedure SetRegion(aX: Single; aY: Single; aWidth: Single; aHeight: Single);
    procedure GetRegion(var aRegion: TRectangle);
    procedure SetAngle(aAngle: Single);
    function  GetAngle: Single;
    procedure Show;
  end;

// === TEXTURE ==============================================================
type
  { TTextureData }
  PTextureData = ^TTextureData;
  TTextureData = record
    Memory: Pointer;
    Format: Integer;
    Pitch: Integer;
    PixelSize: Integer;
  end;

  { ITexture }
  ITexture = interface(IBaseInterface)
    ['{FC8B4439-51E4-4986-A7E8-F6F5D3321390}']
    function  Allocate(aWidth: Integer; aHeight: Integer): Boolean;
    function  Load(aArchive: IArchive; const aFilename: WideString; aColorKey: PColor): Boolean;
    function  Release: Boolean;
    function  Width: Single;
    function  Height: Single;
    function  Lock(aRegion: PRectangle; aData: PTextureData=nil): Boolean;
    function  Unlock: Boolean;
    function  GetPixel(aX: Integer; aY: Integer): TColor;
    procedure SetPixel(aX: Integer; aY: Integer; aColor: TColor);
    procedure Draw(aX, aY: Single; aRegion: PRectangle; aCenter: PVector;  aScale: PVector; aAngle: Single; aColor: TColor; aHFlip: Boolean=False; aVFlip: Boolean=False); overload;
    procedure Draw(aX, aY, aScale, aAngle: Single; aColor: TColor; aHAlign: THAlign; aVAlign: TVAlign; aHFlip: Boolean=False; aVFlip: Boolean=False); overload;
    procedure DrawTiled(aDeltaX: Single; aDeltaY: Single);
  end;

// === FONT =================================================================
type
  { IFont }
  IFont = interface(IBaseInterface)
    ['{465A1864-6E82-4517-A408-F5E515C6A667}']
    function  LoadBuiltIn: Boolean;
    function  LoadDefault(aSize: Cardinal): Boolean;
    function  Load(aArchive: IArchive; aSize: Cardinal; aFilename: WideString): Boolean;
    function  Unload: Boolean;
    procedure PrintText(aX: Single; aY: Single; aColor: TColor; aAlign: THAlign; const aMsg: WideString; const aArgs: array of const); overload;
    procedure PrintText(aX: Single; var aY: Single; aLineSpace: Single; aColor: TColor; aAlign: THAlign; const aMsg: WideString; const aArgs: array of const); overload;
    procedure PrintText(aX: Single; aY: Single; aColor: TColor; aAngle: Single; const aMsg: WideString; const aArgs: array of const); overload;
    function  GetTextWidth(const aMsg: WideString; const aArgs: array of const): Single;
    function  GetLineHeight: Single;
  end;

// === SHADER ===============================================================
type
  { TShaderType }
  TShaderType = (stVertex=1, stFragment=2);

  { IShader }
  IShader = interface(IBaseInterface)
    ['{A5DD09F5-2056-4153-BD15-C11B2EB58EC2}']
    function Load(aType: TShaderType; const aSource: WideString): Boolean; overload;
    function Load(aArchive: IArchive; aType: TShaderType; const aFilename: WideString): Boolean; overload;
    function Build: Boolean;
    function Log: WideString;
    function Enable(aEnable: Boolean): Boolean;
    function SetIntUniform(const aName: WideString; aValue: Integer): Boolean; overload;
    function SetIntUniform(const aName: WideString; aNumComponents: Integer; aValue: PInteger; aNumElements: Integer): Boolean; overload;
    function SetFloatUniform(const aName: WideString; aValue: Single): Boolean; overload;
    function SetFloatUniform(const aName: WideString; aNumComponents: Integer; aValue: System.PSingle; aNumElements: Integer): Boolean; overload;
    function SetBoolUniform(const aName: WideString; aValue: Boolean): Boolean;
    function SetTextureUniform(const aName: WideString; aTexture: ITexture): Boolean;
    function SetVec2Uniform(const aName: WideString; aValue: TVector): Boolean; overload;
    function SetVec2Uniform(const aName: WideString; aX: Single; aY: Single): Boolean; overload;
  end;

// === TIMER ================================================================
type
  { ITimer }
  ITimer = interface(IBaseInterface)
    ['{A28D9D6C-F906-42C9-B30A-1D07CA21A7F0}']
    procedure Update;
    procedure Reset(aSpeed: Single=0; aFixedSpeed: Single=0);
    procedure SetUpdateSpeed(aSpeed: Single);
    function  GetUpdateSpeed: Single;
    procedure SetFixedUpdateSpeed(aSpeed: Single);
    function  GetFixedUpdateSpeed: Single;
    function  GetDeltaTime: Double;
    function  GetFrameRate: Cardinal;
    function  FrameSpeed(var aTimer: Single; aSpeed: Single): Boolean;
    function  FrameElapsed(var aTimer: Single; aFrames: Single): Boolean;
  end;

// === ASYNC ================================================================
type
  { TAsyncProc }
  TAsyncProc = reference to procedure;

  { IAsync }
  IAsync = interface(IBaseInterface)
    ['{84EAD3AA-A42D-49EA-91C2-5683C58012D5}']
    procedure Process;
    procedure Run(const aName: string; aTask: TAsyncProc; aWait: TAsyncProc);
    function  Busy(const aName: string): Boolean;
    procedure Enter;
    procedure Leave;
  end;

// === WINDOW ===============================================================
const
  BLEND_ZERO = 0;
  BLEND_ONE = 1;
  BLEND_ALPHA = 2;
  BLEND_INVERSE_ALPHA = 3;
  BLEND_SRC_COLOR = 4;
  BLEND_DEST_COLOR = 5;
  BLEND_INVERSE_SRC_COLOR = 6;
  BLEND_INVERSE_DEST_COLOR = 7;
  BLEND_CONST_COLOR = 8;
  BLEND_INVERSE_CONST_COLOR = 9;
  BLEND_ADD = 0;
  BLEND_SRC_MINUS_DEST = 1;
  BLEND_DEST_MINUS_SRC = 2;

type
  { TBlendMode }
  TBlendMode = (bmPreMultipliedAlpha, bmNonPreMultipliedAlpha, bmAdditiveAlpha, bmCopySrcToDest, bmMultiplySrcAndDest);

  { TBlendModeColor }
  TBlendModeColor = (bmcNormal, bmcAvgSrcDest);

  { IWindow }
  IWindow = interface(IBaseInterface)
    ['{063CA793-6CD0-4AB0-9479-81DD6128D8B0}']
    procedure Open(aWidth, aHeight: Integer; const aTitle: WideString);
    procedure Close;
    function  Opened: Boolean;
    function  Scale: Single;
    function  Dpi: Integer;
    function  Width: Integer;
    function  Height: Integer;
    procedure SetTitle(aTitle: WideString);
    function  GetTitle: WideString;
    procedure Clear(aColor: TColor);
    procedure Show;
    procedure ResetTransform;
    procedure Save(const aFilename: WideString);
    procedure GetViewportSize(var aSize: TRectangle);
    procedure SetRenderTarget(aRenderTarget: IRenderTarget);
    procedure SetTransformPos(aX: Single; aY: Single);
    procedure SetPos(aX: Integer; aY: Integer);

    // --- Blending ---------------------------------------------------------
    procedure SetBlender(aOperation: Integer; aSource: Integer; aDestination: Integer);
    procedure GetBlender(aOperation: PInteger; aSource: PInteger; aDestination: PInteger);
    procedure SetBlendColor(aColor: TColor);
    function  GetBlendColor: TColor;
    procedure SetBlendMode(aMode: TBlendMode);
    procedure SetBlendModeColor(aMode: TBlendModeColor; aColor: TColor);
    procedure RestoreDefaultBlendMode;

    // --- Primitives -------------------------------------------------------
    procedure DrawLine(aX1, aY1, aX2, aY2, aThickness: Single; aColor: TColor);
    procedure DrawRectangle(aX, aY, aWidth, aHeight, aThickness: Single; aColor: TColor);
    procedure DrawFilledRectangle(aX, aY, aWidth, aHeight: Single; aColor: TColor);
    procedure DrawCircle(aX, aY, aRadius, aThickness: Single; aColor: TColor);
    procedure DrawFilledCircle(aX, aY, aRadius: Single; aColor: TColor);
    procedure DrawTriangle(aX1, aY1, aX2, aY2, aX3, aY3, aThickness: Single; aColor: TColor);
    procedure DrawFilledTriangle(aX1, aY1, aX2, aY2, aX3, aY3: Single; aColor: TColor);
    procedure DrawPolygon(aVertices: System.PSingle; aVertexCount: Integer; aThickness: Single; aColor: TColor);
    procedure DrawFilledPolygon(aVertices: System.PSingle; aVertexCount: Integer; aColor: TColor);
  end;

// === INPUT ================================================================
const
  MAX_AXES = 3;
  MAX_STICKS = 16;
  MAX_BUTTONS = 32;
  MOUSE_BUTTON_LEFT = 1;
  MOUSE_BUTTON_RIGHT = 2;
  MOUSE_BUTTON_MIDDLE = 3;

  // sticks
  JOY_STICK_LS = 0;
  JOY_STICK_RS = 1;
  JOY_STICK_LT = 2;
  JOY_STICK_RT = 3;

  // axes
  JOY_AXES_X = 0;
  JOY_AXES_Y = 1;
  JOY_AXES_Z = 2;

  // buttons
  JOY_BTN_A = 0;
  JOY_BTN_B = 1;
  JOY_BTN_X = 2;
  JOY_BTN_Y = 3;
  JOY_BTN_RB = 4;
  JOY_BTN_LB = 5;
  JOY_BTN_RT = 6;
  JOY_BTN_LT = 7;
  JOY_BTN_BACK = 8;
  JOY_BTN_START = 9;
  JOY_BTN_RDPAD = 10;
  JOY_BTN_LDPAD = 11;
  JOY_BTN_DDPAD = 12;
  JOY_BTN_UDPAD = 13;

{$REGION 'Keyboard Constants'}
const
  KEY_A = 1;
  KEY_B = 2;
  KEY_C = 3;
  KEY_D = 4;
  KEY_E = 5;
  KEY_F = 6;
  KEY_G = 7;
  KEY_H = 8;
  KEY_I = 9;
  KEY_J = 10;
  KEY_K = 11;
  KEY_L = 12;
  KEY_M = 13;
  KEY_N = 14;
  KEY_O = 15;
  KEY_P = 16;
  KEY_Q = 17;
  KEY_R = 18;
  KEY_S = 19;
  KEY_T = 20;
  KEY_U = 21;
  KEY_V = 22;
  KEY_W = 23;
  KEY_X = 24;
  KEY_Y = 25;
  KEY_Z = 26;
  KEY_0 = 27;
  KEY_1 = 28;
  KEY_2 = 29;
  KEY_3 = 30;
  KEY_4 = 31;
  KEY_5 = 32;
  KEY_6 = 33;
  KEY_7 = 34;
  KEY_8 = 35;
  KEY_9 = 36;
  KEY_PAD_0 = 37;
  KEY_PAD_1 = 38;
  KEY_PAD_2 = 39;
  KEY_PAD_3 = 40;
  KEY_PAD_4 = 41;
  KEY_PAD_5 = 42;
  KEY_PAD_6 = 43;
  KEY_PAD_7 = 44;
  KEY_PAD_8 = 45;
  KEY_PAD_9 = 46;
  KEY_F1 = 47;
  KEY_F2 = 48;
  KEY_F3 = 49;
  KEY_F4 = 50;
  KEY_F5 = 51;
  KEY_F6 = 52;
  KEY_F7 = 53;
  KEY_F8 = 54;
  KEY_F9 = 55;
  KEY_F10 = 56;
  KEY_F11 = 57;
  KEY_F12 = 58;
  KEY_ESCAPE = 59;
  KEY_TILDE = 60;
  KEY_MINUS = 61;
  KEY_EQUALS = 62;
  KEY_BACKSPACE = 63;
  KEY_TAB = 64;
  KEY_OPENBRACE = 65;
  KEY_CLOSEBRACE = 66;
  KEY_ENTER = 67;
  KEY_SEMICOLON = 68;
  KEY_QUOTE = 69;
  KEY_BACKSLASH = 70;
  KEY_BACKSLASH2 = 71;
  KEY_COMMA = 72;
  KEY_FULLSTOP = 73;
  KEY_SLASH = 74;
  KEY_SPACE = 75;
  KEY_INSERT = 76;
  KEY_DELETE = 77;
  KEY_HOME = 78;
  KEY_END = 79;
  KEY_PGUP = 80;
  KEY_PGDN = 81;
  KEY_LEFT = 82;
  KEY_RIGHT = 83;
  KEY_UP = 84;
  KEY_DOWN = 85;
  KEY_PAD_SLASH = 86;
  KEY_PAD_ASTERISK = 87;
  KEY_PAD_MINUS = 88;
  KEY_PAD_PLUS = 89;
  KEY_PAD_DELETE = 90;
  KEY_PAD_ENTER = 91;
  KEY_PRINTSCREEN = 92;
  KEY_PAUSE = 93;
  KEY_ABNT_C1 = 94;
  KEY_YEN = 95;
  KEY_KANA = 96;
  KEY_CONVERT = 97;
  KEY_NOCONVERT = 98;
  KEY_AT = 99;
  KEY_CIRCUMFLEX = 100;
  KEY_COLON2 = 101;
  KEY_KANJI = 102;
  KEY_PAD_EQUALS = 103;
  KEY_BACKQUOTE = 104;
  KEY_SEMICOLON2 = 105;
  KEY_COMMAND = 106;
  KEY_BACK = 107;
  KEY_VOLUME_UP = 108;
  KEY_VOLUME_DOWN = 109;
  KEY_SEARCH = 110;
  KEY_DPAD_CENTER = 111;
  KEY_BUTTON_X = 112;
  KEY_BUTTON_Y = 113;
  KEY_DPAD_UP = 114;
  KEY_DPAD_DOWN = 115;
  KEY_DPAD_LEFT = 116;
  KEY_DPAD_RIGHT = 117;
  KEY_SELECT = 118;
  KEY_START = 119;
  KEY_BUTTON_L1 = 120;
  KEY_BUTTON_R1 = 121;
  KEY_BUTTON_L2 = 122;
  KEY_BUTTON_R2 = 123;
  KEY_BUTTON_A = 124;
  KEY_BUTTON_B = 125;
  KEY_THUMBL = 126;
  KEY_THUMBR = 127;
  KEY_UNKNOWN = 128;
  KEY_MODIFIERS = 215;
  KEY_LSHIFT = 215;
  KEY_RSHIFT = 216;
  KEY_LCTRL = 217;
  KEY_RCTRL = 218;
  KEY_ALT = 219;
  KEY_ALTGR = 220;
  KEY_LWIN = 221;
  KEY_RWIN = 222;
  KEY_MENU = 223;
  KEY_SCROLLLOCK = 224;
  KEY_NUMLOCK = 225;
  KEY_CAPSLOCK = 226;
  KEY_MAX = 227;
  KEYMOD_SHIFT = $0001;
  KEYMOD_CTRL = $0002;
  KEYMOD_ALT = $0004;
  KEYMOD_LWIN = $0008;
  KEYMOD_RWIN = $0010;
  KEYMOD_MENU = $0020;
  KEYMOD_COMMAND = $0040;
  KEYMOD_SCROLOCK = $0100;
  KEYMOD_NUMLOCK = $0200;
  KEYMOD_CAPSLOCK = $0400;
  KEYMOD_INALTSEQ = $0800;
  KEYMOD_ACCENT1 = $1000;
  KEYMOD_ACCENT2 = $2000;
  KEYMOD_ACCENT3 = $4000;
  KEYMOD_ACCENT4 = $8000;
{$ENDREGION}

type
  { IInput }
  IInput = interface(IBaseInterface)
    ['{550D1E57-3A66-4607-AAF3-8B3D1E2D4A2B}']
    procedure Clear;
    procedure Update;
    function  KeyCode: Integer;
    function  KeyCodeRepeat: Boolean;
    function  KeyDown(aKey: Cardinal): Boolean;
    function  KeyPressed(aKey: Cardinal): Boolean;
    function  KeyReleased(aKey: Cardinal): Boolean;
    function  MouseDown(aButton: Cardinal): Boolean;
    function  MousePressed(aButton: Cardinal): Boolean;
    function  MouseReleased(aButton: Cardinal): Boolean;
    procedure MouseSetPos(aX: Integer; aY: Integer);
    procedure GetMouseInfo(aPosition: PVector; aDelta: PVector; aPressure: System.PSingle);
    function  JoystickDown(aButton: Cardinal): Boolean;
    function  JoystickPressed(aButton: Cardinal): Boolean;
    function  JoystickReleased(aButton: Cardinal): Boolean;
    function  JoystickPosition(aStick: Integer; aAxes: Integer): Single;
  end;

// === IINPUTMAP ============================================================
type
  { TInputDevice }
  TInputDevice = (idKeyboard, idMouse, idJoystick);

  { IInputMap }
  IInputMap = interface(IBaseInterface)
    ['{B21225AD-1E71-49B6-9E7E-2A22BEAD7B8C}']
    procedure Clear;
    function Add(const aAction: WideString; aDevice: TInputDevice; aData: Integer): Boolean;
    function Remove(const aAction: WideString): Boolean; overload;
    function Remove(const aAction: WideString; aDevice: TInputDevice; aData: Integer): Boolean; overload;
    function Pressed(const aAction: WideString): Boolean;
    function Released(const aAction: WideString): Boolean;
    function Down(const aAction: WideString): Boolean;
    function Save(const aFilename: WideString): Boolean;
    function Load(aArchive: IArchive; const aFilename: WideString): Boolean;
  end;

const
  AUDIO_BUFFER_COUNT   = 256;
  AUDIO_CHANNEL_COUNT   = 16;
  AUDIO_DYNAMIC_CHANNEL = -1;
  AUDIO_INVALID_INDEX   = -2;

type

  { TAudioStatus }
  TAudioStatus = (asStopped, asPaused, asPlaying);

  { IAudio }
  IAudio = interface(IBaseInterface)
    ['{15859497-E45C-4D88-AB9D-EF007A8BFEC1}']
    procedure Open;
    procedure Close;
    procedure Pause(aPause: Boolean);
    procedure Reset;
    function  LoadMusic(aArchive: IArchive; const aFilename: WideString): Integer;
    procedure UnloadMusic(var aMusic: Integer);
    procedure UnloadAllMusic;
    procedure PlayMusic(aMusic: Integer; aVolume: Single; aLoop: Boolean); overload;
    procedure PlayMusic(aArchive: IArchive; const aFilename: WideString; aVolume: Single; aLoop: Boolean; var aMusic: Integer); overload;
    procedure PlayMusicAsync(aArchive: IArchive; const aFilename: WideString; aVolume: Single; aLoop: Boolean; aMusic: Integer); overload;
    procedure StopMusic(aMusic: Integer);
    procedure PauseMusic(aMusic: Integer);
    procedure PauseAllMusic(aPause: Boolean);
    procedure SetMusicLoop(aMusic: Integer; aLoop: Boolean);
    function  GetMusicLoop(aMusic: Integer): Boolean;
    procedure SetMusicVolume(aMusic: Integer; aVolume: Single);
    function  GetMusicVolume(aMusic: Integer): Single;
    function  GetMusicStatus(aMusic: Integer): TAudioStatus;
    procedure SetMusicOffset(aMusic: Integer; aSeconds: Single);
    function  LoadSound(aArchive: IArchive; const aFilename: WideString): Integer;
    procedure UnloadSound(aSound: Integer);
    function  PlaySound(aChannel: Integer; aSound: Integer; aVolume: Single; aLoop: Boolean): Integer;
    procedure SetChannelReserved(aChannel: Integer; aReserve: Boolean);
    function  GetChannelReserved(aChannel: Integer): Boolean;
    procedure PauseChannel(aChannel: Integer; aPause: Boolean);
    function  GetChannelStatus(aChannel: Integer): TAudioStatus;
    procedure SetChannelVolume(aChannel: Integer; aVolume: Single);
    function  GetChannelVolume(aChannel: Integer): Single;
    procedure SetChannelLoop(aChannel: Integer; aLoop: Boolean);
    function  GetChannelLoop(aChannel: Integer): Boolean;
    procedure SetChannelPitch(aChannel: Integer; aPitch: Single);
    function  GetChannelPitch(aChannel: Integer): Single;
    procedure SetChannelPosition(aChannel: Integer; aX: Single; aY: Single);
    procedure GetChannelPosition(aChannel: Integer; var aX: Single; var aY: Single);
    procedure SetChannelMinDistance(aChannel: Integer; aDistance: Single);
    function  GetChannelMinDistance(aChannel: Integer): Single;
    procedure SetChannelRelativeToListener(aChannel: Integer; aRelative: Boolean);
    function  GetChannelRelativeToListener(aChannel: Integer): Boolean;
    procedure SetChannelAttenuation(aChannel: Integer; aAttenuation: Single);
    function  GetChannelAttenuation(aChannel: Integer): Single;
    procedure StopChannel(aChannel: Integer);
    procedure StopAllChannels;
    procedure SetListenerGlobalVolume(aVolume: Single);
    function  GetListenerGlobalVolume: Single;
    procedure SetListenerPosition(aX: Single; aY: Single);
    procedure GetListenerPosition(var aX: Single; var aY: Single);
  end;

// === POLYGON ==============================================================
type
  { IPolygon }
  IPolygon = interface(IBaseInterface)
    ['{CA7C37D2-C53A-4260-9302-153948F1FA90}']
    function Save(const aFilename: WideString): Boolean;
    function Load(aArchive: IArchive; const aFilename: WideString): Boolean;
    procedure CopyFrom(aPolygon: IPolygon);
    procedure AddLocalPoint(aX: Single; aY: Single; aVisible: Boolean);
    function  Transform(aX: Single; aY: Single; aScale: Single; aAngle: Single; aOrigin: PVector; aHFlip: Boolean; aVFlip: Boolean): Boolean;
    procedure Render(aX: Single; aY: Single; aScale: Single; aAngle: Single; aThickness: Integer; aColor: TColor; aOrigin: PVector; aHFlip: Boolean; aVFlip: Boolean);
    procedure SetSegmentVisible(aIndex: Integer; aVisible: Boolean);
    function  GetSegmentVisible(aIndex: Integer): Boolean;
    function  GetPointCount: Integer;
    function  GetWorldPoint(aIndex: Integer): PVector;
    function  GetLocalPoint(aIndex: Integer): PVector;
  end;

// === SPRITE ===============================================================
type
  { ISprite }
  ISprite = interface(IBaseInterface)
    ['{C18B0D27-EAA7-447A-9034-57FEDF9AC781}']
    procedure Clear;
    function  LoadPage(aArchive: IArchive; const aFilename: WideString; aColorKey: PColor): Integer;
    function  AddGroup: Integer;
    function  GetGroupCount: Integer;
    function  AddImageFromRect(aPage: Integer; aGroup: Integer; aRect: TRectangle): Integer;
    function  AddImageFromGrid(aPage: Integer; aGroup: Integer; aGridX: Integer; aGridY: Integer; aGridWidth: Integer; aGridHeight: Integer): Integer;
    function  GetImageCount(aGroup: Integer): Integer;
    function  GetImageWidth(aNum: Integer; aGroup: Integer): Single;
    function  GetImageHeight(aNum: Integer; aGroup: Integer): Single;
    function  GetImageTexture(aNum: Integer; aGroup: Integer): ITexture;
    function  GetImageRect(aNum: Integer; aGroup: Integer): TRectangle;
    procedure DrawImage(aNum: Integer; aGroup: Integer; aX: Single; aY: Single; aOrigin: PVector; aScale: PVector; aAngle: Single; aColor: TColor; aHFlip: Boolean; aVFlip: Boolean; aDrawPolyPoint: Boolean);
    procedure GroupPolyPointTrace(aGroup: Integer; aMju: Single=6; aMaxStepBack: Integer=12; aAlphaThreshold: Integer=70; aOrigin: PVector=nil);
    function  GroupPolyPointCollide(aNum1: Integer; aGroup1: Integer;
      aX1: Single; aY1: Single; aScale1: Single; aAngle1: Single;
      aOrigin1: PVector; aHFlip1: Boolean; aVFlip1: Boolean; aSprite2: ISprite;
      aNum2: Integer; aGroup2: Integer; aX2: Single; aY2: Single;
      aScale2: Single; aAngle2: Single; aOrigin2: PVector; aHFlip2: Boolean;
      aVFlip2: Boolean; aShrinkFactor: Single; var aHitPos: TVector): Boolean;
    function  GroupPolyPointCollidePoint(aNum: Integer; aGroup: Integer;
      aX: Single; aY: Single; aScale: Single; aAngle: Single; aOrigin: PVector;
      aHFlip: Boolean; aVFlip: Boolean; aShrinkFactor: Single;
      var aPoint: TVector): Boolean;
  end;

// === ENTITY ===============================================================
type
  { IEntity }
  IEntity = interface(IBaseInterface)
    ['{FB4F39F8-2C25-40DF-B3FC-EB83F7C6189D}']
    procedure Init(aSprite: ISprite; aGroup: Integer);
    procedure SetFrameRange(aFirst: Integer; aLast: Integer);
    function  NextFrame: Boolean;
    function  PrevFrame: Boolean;
    function  GetFrame: Integer;
    procedure SetFrame(aFrame: Integer);
    function  GetFrameFPS: Single;
    procedure SetFrameFPS(aFrameFPS: Single);
    function  GetFirstFrame: Integer;
    function  GetLastFrame: Integer;
    procedure SetPosAbs(aX: Single; aY: Single);
    procedure SetPosRel(aX: Single; aY: Single);
    function  GetPos: TVector;
    function  GetDir: TVector;
    procedure SetScaleAbs(aScale: Single);
    procedure SetScaleRel(aScale: Single);
    function  GetAngle: Single;
    function  GetAngleOffset: Single;
    procedure SetAngleOffset(aAngle: Single);
    procedure RotateAbs(aAngle: Single);
    procedure RotateRel(aAngle: Single);
    function  RotateToAngle(aAngle: Single; aSpeed: Single): Boolean;
    function  RotateToPos(aX: Single; aY: Single; aSpeed: Single): Boolean;
    function  RotateToPosAt(aSrcX: Single; aSrcY: Single; aDestX: Single; aDestY: Single; aSpeed: Single): Boolean;
    procedure Thrust(aSpeed: Single);
    procedure ThrustAngle(aAngle: Single; aSpeed: Single);
    function  ThrustToPos(aThrustSpeed: Single; aRotSpeed: Single; aDestX: Single; aDestY: Single; aSlowdownDist: Single; aStopDist: Single; aStopSpeed: Single; aStopSpeedEpsilon: Single; aDeltaTime: Single): Boolean;
    function  IsVisible(aVirtualX: Single; aVirtualY: Single): Boolean;
    function  IsFullyVisible(aVirtualX: Single; aVirtualY: Single): Boolean;
    function  Overlap(aX: Single; aY: Single; aRadius: Single; aShrinkFactor: Single): Boolean; overload;
    function  Overlap(aEntity: IEntity): Boolean; overload;
    procedure Render(aVirtualX: Single; aVirtualY: Single);
    procedure RenderAt(aX: Single; aY: Single);
    function  GetSprite: ISprite;
    function  GetGroup: Integer;
    function  GetScale: Single;
    function  GetColor: TColor;
    procedure SetColor(aColor: TColor);
    procedure GetFlipMode(aHFlip: PBoolean; aVFlip: PBoolean);
    procedure SetFlipMode(aHFlip: PBoolean; aVFlip: PBoolean);
    function  GetLoopFrame: Boolean;
    procedure SetLoopFrame(aLoop: Boolean);
    function  GetWidth: Single;
    function  GetHeight: Single;
    function  GetRadius: Single;
    function  GetShrinkFactor: Single;
    procedure SetShrinkFactor(aShrinkFactor: Single);
    procedure SetRenderPolyPoint(aRenderPolyPoint: Boolean);
    function  GetRenderPolyPoint: Boolean;
    procedure TracePolyPoint(aMju: Single=6; aMaxStepBack: Integer=12; aAlphaThreshold: Integer=70; aOrigin: PVector=nil);
    function  CollidePolyPoint(aEntity: IEntity; var aHitPos: TVector): Boolean;
    function  CollidePolyPointPoint(var aPoint: TVector): Boolean;
  end;

// === SCREENSHAKE ==========================================================
type
  { IScreenshake }
  IScreenshake = interface(IBaseInterface)
    ['{DBEED5F0-4E1E-4F0C-8FE8-D6C4F68A952D}']
    procedure Process(aSpeed: Single; aDeltaTime: Double);
    procedure Start(aDuration: Single; aMagnitude: Single);
    procedure Clear;
    function  Active: Boolean;
  end;

// === SCREENSHOT ===========================================================
type
  { IScreenshot }
  IScreenshot = interface(IBaseInterface)
    ['{8B853389-B82E-4CE5-842F-0EAEE612DC4E}']
    procedure Process;
    procedure Init(const aDir: WideString=''; const aBaseFilename: WideString='');
    procedure Take;
  end;

// === CMDCONSOLE ===========================================================
type
  { TCmdConsoleActionEvent }
  TCmdConsoleActionEvent = procedure of object;

  { TCmdConsoleState }
  TCmdConsoleState = (ccOpen, ccClose);

  { ICmdConsole }
  ICmdConsole = interface(IBaseInterface)
    ['{11AABA75-12E6-4C88-9476-34517C32AF00}']
    procedure Open;
    procedure Close;
    procedure Update(aDeltaTime: Double);
    procedure Render;
    function  GetActive: Boolean;
    procedure LoadFont(aArchive: IArchive; aSize: Cardinal; const aFilename: WideString);
    function  Toggle: Boolean;
    procedure SetToggleKey(aKey: Integer);
    procedure SetSlideSpeed(aSpeed: Single);
    procedure ClearCommands;
    procedure AddCommand(const aName: WideString; const aDiscription: WideString; aAction: TCmdConsoleActionEvent);
    procedure Enable(aEnable: Boolean);
    function  ParamCount: Integer;
    function  ParamStr(aIndex: Integer): WideString;
    procedure AddTextLine(const aMsg: WideString; const aArgs: array of const);
  end;

// === VIDEO ================================================================
type
  { TVideoState }
  TVideoState = (vsLoad, vsUnload, vsPlaying, vsPaused, vsFinished);

  { IVideo }
  IVideo = interface(IBaseInterface)
    ['{A4D10F2E-EE09-48E2-B1C2-353B0E98EFDE}']
    function  Load(aArchive: IArchive; const aFilename: WideString): Boolean;
    function  Unload: Boolean;
    function  GetPause: Boolean;
    procedure SetPause(aPause: Boolean);
    function  GetLooping:  Boolean;
    procedure SetLoping(aLoop: Boolean);
    function  GetPlaying: Boolean;
    procedure SetPlaying(aPlay: Boolean);
    function  GetFilename: WideString;
    procedure Play(aArchive: IArchive; const aFilename: WideString; aLoop: Boolean; aVolume: Single);
    procedure Draw(aX: Single; aY: Single; aScale: Single);
    procedure GetSize(aWidth: System.PSingle; aHeight: System.PSingle);
    procedure Seek(aSeconds: Single);
    procedure Rewind;
  end;

// === STARFIELD ============================================================
type
  { IStarfield }
  IStarfield = interface(IBaseInterface)
    ['{0BAFB970-9738-4F0B-A123-9DF2D311D375}']
    procedure Init(aStarCount: Cardinal; aMinX, aMinY, aMinZ, aMaxX, aMaxY, aMaxZ, aViewScale: Single);
    procedure SetVirtualPos(aX, aY: Single);
    procedure GetVirtualPos(var aX: Single; var aY: Single);
    procedure SetXSpeed(aSpeed: Single);
    procedure SetYSpeed(aSpeed: Single);
    procedure SetZSpeed(aSpeed: Single);
    procedure Update(aDeltaTime: Single);
    procedure Render;
  end;

// === MAIL =================================================================
type
  { IMail }
  IMail = interface(IBaseInterface)
    ['{F70C5168-5549-4A69-B97D-87ED02967C30}']
    function  Busy: Boolean;
    procedure Setup(const aHost, aUsername, aPassword: WideString; aPort: Integer=MAIL_PORT_SMTPS);
    procedure Send(const aFromEmail, aFromName, aSubject, aToEmail, aBody: WideString);
    function  GetLastError: WideString;
  end;

// === CAMERA ===============================================================
type
  { ICamera }
  ICamera = interface(IBaseInterface)
    ['{D8078C3E-E4FF-489F-AB98-14E7CBA95C55}']
    procedure Clear;
    procedure Init(aX: Single; aY: Single; aWidth: Single; aHeight: Single; aScale: Single=1.0; aRotation: Single=0.0);
    procedure Activate(aActivate: Boolean);
    function  GetPos: TVector;
    procedure SetPos(aX, aY: Single);
    function  GetSize: TVector;
    procedure SetSize(aWidth, aHeight: Single);
    function  GetScale: Single;
    procedure SetScale(aScale: Single);
    function  GetRotation: Single;
    procedure SetRotation(aRotation: Single);
    procedure GetWorldToScreenPos(var aPos: TVector);
    procedure GetScreenToWorldPos(var aPos: TVector);
  end;

// === STARTUPDIALOG ========================================================
type
  { TStartupDialogState }
  TStartupDialogState = (sdsMore = 0, sdsRun = 1, sdsQuit = 2);

  { IStartupDialog }
  IStartupDialog = interface(IBaseInterface)
    ['{1ECC6924-397D-4CCA-A881-EFC82CCC919D}']
    procedure SetCaption(const aCaption: WideString);
    procedure SetIcon(aArchive: IArchive; const aFilename: WideString);
    procedure SetLogo(aArchive: IArchive; const aFilename: WideString);
    procedure SetLogoClickUrl(const aURL: WideString);
    procedure SetReadme(aArchive: IArchive; const aFilename: WideString);
    procedure SetReadmeText(const aText: WideString);
    procedure SetLicense(aArchive: IArchive; const aFilename: WideString);
    procedure SetLicenseText(const aText: WideString);
    procedure SetReleaseInfo(const aReleaseInfo: WideString);
    procedure SetWordWrap(aWrap: Boolean);
    function  Show: TStartupDialogState;
    procedure Hide;
  end;

// === TREEMENU =============================================================
const
  // TreeMenu
  TREEMENU_NONE = -1;
  TREEMENU_QUIT = -2;

type
  { ITreeMenu }
  ITreeMenu = interface(IBaseInterface)
    ['{CBC7305E-83F8-40CB-88A4-2B25C9E35EAB}']
    procedure SetTitle(const aTitle: WideString);
    procedure SetStatus(const aTitle: WideString);
    procedure Clear;
    function  First(aParent: Pointer): Integer;
    function  AddItem(aParent: Pointer; const aName: WideString; aId: Integer; aEnabled: Boolean): Pointer;
    function  InsertItem(aSibling: Pointer; const aName: WideString; aId: Integer; aEnabled: Boolean): Pointer;
    procedure Sort(aParent: Pointer);
    procedure SelItem(aId: Integer);
    procedure BoldItemId(aId: Integer; aValue: Boolean);
    procedure BoldItem(const aItem: WideString; aValue: Boolean);
    function  Show(aId: Integer): Integer;
    function  GetCount: Integer;
    function  GetLastSelectedId: Integer;
    function  GetSelectableCount: Integer;
  end;

// === GUI ==================================================================
const
  GUI_COLOR_TEXT = 0;
  GUI_COLOR_WINDOW = 1;
  GUI_COLOR_HEADER = 2;
  GUI_COLOR_BORDER = 3;
  GUI_COLOR_BUTTON = 4;
  GUI_COLOR_BUTTON_HOVER = 5;
  GUI_COLOR_BUTTON_ACTIVE = 6;
  GUI_COLOR_TOGGLE = 7;
  GUI_COLOR_TOGGLE_HOVER = 8;
  GUI_COLOR_TOGGLE_CURSOR = 9;
  GUI_COLOR_SELECT = 10;
  GUI_COLOR_SELECT_ACTIVE = 11;
  GUI_COLOR_SLIDER = 12;
  GUI_COLOR_SLIDER_CURSOR = 13;
  GUI_COLOR_SLIDER_CURSOR_HOVER = 14;
  GUI_COLOR_SLIDER_CURSOR_ACTIVE = 15;
  GUI_COLOR_PROPERTY = 16;
  GUI_COLOR_EDIT = 17;
  GUI_COLOR_EDIT_CURSOR = 18;
  GUI_COLOR_COMBO = 19;
  GUI_COLOR_CHART = 20;
  GUI_COLOR_CHART_COLOR = 21;
  GUI_COLOR_CHART_COLOR_HIGHLIGHT = 22;
  GUI_COLOR_SCROLLBAR = 23;
  GUI_COLOR_SCROLLBAR_CURSOR = 24;
  GUI_COLOR_SCROLLBAR_CURSOR_HOVER = 25;
  GUI_COLOR_SCROLLBAR_CURSOR_ACTIVE = 26;
  GUI_COLOR_TAB_HEADER = 27;
  GUI_COLOR_COUNT = 28;

  GUI_THEME_DEFAULT = 0;
  GUI_THEME_WHITE   = 1;
  GUI_THEME_RED     = 2;
  GUI_THEME_BLUE    = 3;
  GUI_THEME_DARK    = 4;
  GUI_THEME_CUSTOM  = 5;

  GUI_WINDOW_BORDER = 1;
  GUI_WINDOW_MOVABLE = 2;
  GUI_WINDOW_SCALABLE = 4;
  GUI_WINDOW_CLOSABLE = 8;
  GUI_WINDOW_MINIMIZABLE = 16;
  GUI_WINDOW_NO_SCROLLBAR = 32;
  GUI_WINDOW_TITLE = 64;
  GUI_WINDOW_SCROLL_AUTO_HIDE = 128;
  GUI_WINDOW_BACKGROUND = 256;
  GUI_WINDOW_SCALE_LEFT = 512;
  GUI_WINDOW_NO_INPUT = 1024;
  GUI_WINDOW_DEFAULT = GUI_WINDOW_BORDER or GUI_WINDOW_TITLE or
                       GUI_WINDOW_SCROLL_AUTO_HIDE or GUI_WINDOW_SCALABLE or
                       GUI_WINDOW_MOVABLE;

  GUI_EDIT_FILTER_DEFAULT = 0;
  GUI_EDIT_FILTER_ASCII = 1;
  GUI_EDIT_FILTER_FLOAT = 2;
  GUI_EDIT_FILTER_DECIMAL = 3;
  GUI_EDIT_FILTER_HEX = 4;
  GUI_EDIT_FILTER_OCT = 5;
  GUI_EDIT_FILTER_BINARY = 6;

  GUI_DYNAMIC = 0;
  GUI_STATIC  = 1;

  GUI_TEXT_LEFT = 17;
  GUI_TEXT_CENTERED = 18;
  GUI_TEXT_RIGHT  = 20;

type
  { IGUI }
  IGUI = interface(IBaseInterface)
    ['{FFFB6CC7-8AC8-4BD5-8F72-B256949EC919}']
    procedure InputBegin;
    procedure InputEnd;
    procedure Render;
    function  Open: Boolean;
    procedure Close;
    procedure Clear;
    function  WindowBegin(const aName: WideString; const aTitle: WideString; aX: Single; aY: Single; aWidth: Single; aHeight: Single; aFlags: array of cardinal): Boolean;
    procedure WindowEnd;
    procedure LayoutRowStatic(aHeight: Single; aWidth: Integer; aColumns: Integer);
    procedure LayoutRowDynamic(aHeight: Single; aColumns: Integer);
    procedure LayoutRowBegin(aFormat: Integer; aHeight: Single; aColumns: Integer);
    procedure LayoutRowPush(aValue: Single);
    procedure LayoutRowEnd;
    procedure Button(const aTitle: WideString);
    function  Option(const aTitle: WideString; aActive: Boolean): Boolean;
    procedure &Label(const aTitle: WideString; aAlign: Integer);
    function  SelectableLabel(const aTitle: WideString; aAlign: Integer; var aValue: Boolean): Boolean;
    function  Slider(aMin: Single; aMax: Single; aStep: Single; var aValue: Single): Boolean;
    function  Checkbox(const aLabel: WideString; var aActive: Boolean): Boolean;
    function  Combobox(const aItems: array of WideString; aSelected: Integer; aItemHeight: Integer; aWidth: Single; aHeight: Single; var aChanged: Boolean): Integer;
    function  Edit(aType: Cardinal; aFilter: Integer; var aBuffer: WideString): Integer;
    function  Value(const aName: WideString; aValue: Integer; aMin: Integer; aMax: Integer; aStep: Integer; aIncPerPixel: Single): Integer; overload;
    function  Value(const aName: WideString; aValue: Double; aMin: Double; aMax: Double; aStep: Double; aIncPerPixel: Single): Double; overload;
    function  Progress(aCurrent: Cardinal; aMax: Cardinal; aModifyable: Boolean): Cardinal;
    procedure SetStyle; overload;
    procedure SetStyle(aTheme: Integer); overload;
    procedure SetStyleColor(aColorItem: Integer; aColor: TColor);
    function  GetStyleColor(aColorItem: Integer): TColor;
    function  GetContext: Pointer;
  end;

// === DATABASE =============================================================
const
  DATABASE_DEFAULT_MYSQL_PORT = 3306;

type
  { IDatabase }
  IDatabase = interface(IBaseInterface)
    ['{1DFB09E0-FCCD-4C7B-B17D-51900E0B9069}']
    procedure SetupMySQL(const aServer: WideString; aPort: Integer; const aDatabase: WideString; const aUserName: WideString; const aPassword: WideString);
    procedure SetupSQLite(const aDatabase: WideString; aPassword: WideString);
    procedure ClearSQLText;
    procedure AddSQLText(const aText: WideString; const aArgs: array of const);
    function  GetSQLText: WideString;
    procedure SetSQLText(const aText: WideString);
    procedure Open;
    procedure Close;
    function  Connected: Boolean;
    procedure Execute;
    procedure ExecuteSQL(const aText: WideString);
    function  GetLastError: WideString;
    function  GetMacro(const aName: WideString): WideString;
    procedure SetMacro(const aName: WideString; const aValue: WideString);
    function  GetParam(const aName: WideString): WideString;
    procedure SetParam(const aName: WideString; const aValue: WideString);
    function  GetField(const aName: WideString): WideString;
    procedure SetField(const aName: WideString; const aValue: WideString);
    function  Bof: Boolean;
    function  Eof: Boolean;
    procedure First;
    procedure Last;
    procedure Prior;
    procedure Next;
    function  FieldCount: Integer;
    function  RecordCount: Integer;
    function  RecordNo: Integer;
    procedure Delete;
  end;

// === HIGHSCORES ===========================================================
type
  { IHighscores }
  IHighscores = interface;

  { THighscoreAction }
  THighscoreAction = (haClear, haList, haPost, haRemove);

  { THighscore }
  THighscore = record
    Name: WideString;
    Level: Integer;
    Score: Cardinal;
    Skill: Integer;
    Duration: Cardinal;
    Location: WideString;
    class operator Equal(a, b: THighscore): Boolean;
  end;

  { IHighscores }
  IHighscores = interface(IBaseInterface)
    ['{2CF8D3E2-3C69-49F6-8025-4882E5CBA2E5}']
    function  Busy: Boolean;
    procedure Setup(aMaxScores: Integer; const aServer, aDatabase, aUsername,  aPassword, aGameId: WideString; aPort: Integer=DATABASE_DEFAULT_MYSQL_PORT);
    procedure Clear;
    procedure Remove(const aName: WideString);
    procedure List(aLevel: Integer; aSkill: Integer);
    procedure Post(const aName: WideString; aLevel: Integer; aScore: Cardinal; aSkill: Integer; aDuration: Cardinal; const aLocation: WideString); overload;
    procedure Post(aScore: THighscore); overload;
    procedure ClearResults;
    function  GetResultCount: Integer;
    procedure GetResult(aIndex: Integer; var aScore: THighscore);
    function  GetLastError: WideString;
  end;

// === SOCIAL ===============================================================
type
  { ISocial }
  ISocial = interface(IBaseInterface)
    ['{82CD9BFB-06AC-45D9-9A5A-863F635B2B04}']
    function  Busy: Boolean;
    procedure Setup(const aApiKey: WideString);
    procedure SaveAccounts(const aFilename: WideString);
    procedure Post(const aAccountId, aMsg: WideString; const aMediaFilename: WideString='');
  end;

// === SPEECH ===============================================================
type
  { TSpeechVoiceAttribute }
  TSpeechVoiceAttribute = (vaDescription, vaName, vaVendor, vaAge, vaGender, vaLanguage, vaId);

  { ISpeech }
  ISpeech = interface(IBaseInterface)
    ['{EF0A19A3-26F0-457E-8913-0426FD38AEBF}']
    function  GetVoiceCount: Integer;
    function  GetVoiceAttribute(aIndex: Integer; aAttribute: TSpeechVoiceAttribute): WideString;
    procedure ChangeVoice(aIndex: Integer);
    function  GetVoice: Integer;
    procedure SetVolume(aVolume: Single);
    function  GetVolume: Single;
    procedure SetRate(aRate: Single);
    function  GetRate: Single;
    procedure Clear;
    procedure Say(const aText: WideString; aPurge: Boolean);
    function  Active: Boolean;
    procedure Pause;
    procedure Resume;
    procedure Reset;
    procedure SubstituteWord(const aWord: WideString; const aSubstituteWord: WideString);
  end;

// === INAPPPURCHASE ========================================================
type
  { IInAppPurchase }
  IInAppPurchase = interface(IBaseInterface)
    ['{FF081994-24CB-4F86-8C3C-EBDC7FBC0083}']
    function  Busy: Boolean;
    procedure Buy(const aKey, aDescription: WideString; aAmount: Single;
      const aCurrency: WideString; const aCardNum: WideString;
      aExpMonth: Integer; aExpYear: Integer; aCvc: WideString);
    function GetLastError: WideString;
    function GetStatus: WideString;
    function GetDescription: WideString;
    function GetId: WideString;
    function GetAmount: WideString;
    function GetCurrency: WideString;
  end;

// === PHYSICS ==============================================================
type
  { TPhysicsShapeType }
  TPhysicsShapeType = (psCircle, psPolygon, psInvalid);

  { TPhysicsBodyType }
  TPhysicsBodyType = (pbStatic, pbKinematic, pbDynamic, pbInvalid);

  { TPhysicsBody }
  TPhysicsBody = type Pointer;

  { TPhysicsBodyShape }
  TPhysicsBodyShape = (bsCircle, bsRectangle);

  { TPhysicsBodyData }
  PPhysicsBodyData = ^TPhysicsBodyData;
  TPhysicsBodyData = record
    Shape: TPhysicsBodyShape;
    CircleRadius: Single;
    RectangleSize: TVector;
    Data: Pointer;
  end;

  { IPhysics }
  IPhysics = interface(IBaseInterface)
    ['{4BBCC645-34A6-4680-8E0E-705B25152F6D}']
    procedure Update;
    procedure Open;
    procedure Close;
    procedure Reset;
    procedure Clear;
    function  GetEnabled: Boolean;
    procedure SetGravity(aX, aY: Double);
    function  CreateCircleBody(aType: TPhysicsBodyType; aX, aY: Double; aRadius: Double; aDensity: Double = 1.0; aFriction: Double = 0.3): TPhysicsBody;
    function  CreateRectangleBody(aType: TPhysicsBodyType; aX, aY: Double; aWidth: Double; aHeight: Double; aDensity: Double = 1.0; aFriction: Double = 0.3): TPhysicsBody;
    procedure DestroyBody(aBody: TPhysicsBody);
    procedure AddForce(aBody: TPhysicsBody; aX, aY: Double);
    procedure AddTorque(aBody: TPhysicsBody; aAmount: Double);
    function  GetBodyCount: Integer;
    function  GetFirstBody: TPhysicsBody;
    function  GetNextBody(aBody: TPhysicsBody): TPhysicsBody;
    procedure SetBodyRotation(aBody: TPhysicsBody; aAngle: Double);
    function  GetBodyRotation(aBody: TPhysicsBody): Double;
    procedure GetBodyPosition(aBody: TPhysicsBody; var aX, aY: Double);
    procedure DrawBodyShapes(aDrawDebug: Boolean);
    procedure UpdateBodies;
    procedure SetUserData(aBody: TPhysicsBody; aData: Pointer);
    function  GetUserData(aBody: TPhysicsBody): Pointer;
    function  GetBodyType(aBody: TPhysicsBody): TPhysicsBodyType;
    function  GetBodyData(aBody: TPhysicsBody): TPhysicsBodyData;
  end;

// === SPLASHSCREEN =========================================================
type

  { TSplashscreenDisplay }
  TSplashscreenOption = (soNone, soText, soTexture);

  { ISplshscreen }
  ISplashscreen = interface(IBaseInterface)
    ['{FCA006DC-E890-4631-97B5-7AE3C3A2AC1E}']
    procedure SetDefaults;
    procedure Clear;
    function  LoadTexture(aArchive: IArchive; const aFilename: WideString; aColorKey: PColor): Boolean;
    function  LoadFont(aSize: Cardinal): Boolean; overload;
    function  LoadFont(aArchive: IArchive; aSize: Cardinal; const aFilename: WideString): Boolean; overload;
    procedure SetOption(aOptions: TSplashscreenOption);
    function  GetOption: TSplashscreenOption;
    procedure SetClearColor(aColor: TColor);
    function  GetClearColor: TColor;
    procedure DrawTexture(aX, aY, aScale, aAngle: Single; aColor: TColor; aHAligh: THAlign; aVAligh: TVAlign);
    procedure DrawText(aX, aY: Single; aColor: TColor; aAlign: THAlign; const aMsg: WideString; const aArgs: array of const);
    procedure Show;
  end;

// === PATHEDITOR ===========================================================
type
  { TPathEditorAction }
  TPathEditorAction = (paLoad, paSave);

  { IPathEditor }
  IPathEditor = interface(IBaseInterface)
    ['{FDE25E23-CE9D-404A-8DD4-ED57D6133B95}']
    procedure SetInfo(aWidth: Integer; aHeight: Integer; aMargin: Integer);
    procedure GetInfo(aWidth: PInteger; aHeight: PInteger; aMargin: PInteger);
    function  GetPathCount: Integer;
    function  GetPointCount(aPathIndex: Integer): Integer;
    procedure Clear;
    procedure Reset;
    function  AddPath: Integer;
    function  RemovePath(aPathIndex: Integer): Integer;
    procedure ClearPath(aPathIndex: Integer);
    function  AddPoint(aPathIndex: Integer; aPoint: TPointi): Integer;
    function  GetPoint(aPathIndex: Integer; aPointIndex: Integer): TPointi;
    procedure Save(aFilename: WideString);
    function  Load(aArchive: IArchive; aFilename: WideString): Boolean;
    procedure Show;
    procedure SetIcon(aArchive: IArchive; aFilename: WideString);
  end;

// === PATHEDITORPATH =======================================================
type
  { IPathEditorPath }
  IPathEditorPath = interface(IBaseInterface)
    ['{7570593E-A2B7-4A5F-9E4A-5973BD6D7104}']
    procedure Init(aPathIndex: Integer; aLoopNum: Integer);
    function  Update(aLookAhead: Integer; aSpeed: Single; var aX: Single; var aY: Single; var aAngle: Single): Boolean;
    procedure GetPos(aIndex: Integer; var aX: Single; var aY: Single); overload;
    procedure GetPos(aIndex: Integer; var aPos: TVector); overload;
    procedure Reset;
    procedure GetLookAheadPos(aLookAhead: Integer; var aX: Single; var aY: Single);
  end;

// === LUA ==================================================================
type
  { TLuaType }
  TLuaType = (ltNone = -1, ltNil = 0, ltBoolean = 1, ltLightUserData = 2,
    ltNumber = 3, ltString = 4, ltTable = 5, ltFunction = 6, ltUserData = 7,
    ltThread = 8);

  { TLuaTable }
  TLuaTable = (LuaTable);

  { TGVLuaValueType }
  TLuaValueType = (vtInteger, vtDouble, vtString, vtTable, vtPointer,
    vtBoolean);

  { TLuaValue }
  TLuaValue = record
    AsType: TLuaValueType;
    class operator Implicit(const aValue: Integer): TLuaValue;
    class operator Implicit(aValue: Double): TLuaValue;
    class operator Implicit(aValue: PChar): TLuaValue;
    class operator Implicit(aValue: TLuaTable): TLuaValue;
    class operator Implicit(aValue: Pointer): TLuaValue;
    class operator Implicit(aValue: Boolean): TLuaValue;

    class operator Implicit(aValue: TLuaValue): Integer;
    class operator Implicit(aValue: TLuaValue): Double;
    class operator Implicit(aValue: TLuaValue): PChar;
    class operator Implicit(aValue: TLuaValue): Pointer;
    class operator Implicit(aValue: TLuaValue): Boolean;

    case Integer of
      0: (AsInteger: Integer);
      1: (AsNumber: Double);
      2: (AsString: PWideChar);
      3: (AsTable: TLuaTable);
      4: (AsPointer: Pointer);
      5: (AsBoolean: Boolean);
  end;

  { ILuaContext }
  ILuaContext = interface
    ['{6AEC306C-45BC-4C65-A0E1-044739DED1EB}']
    function  ArgCount: Integer;
    function  PushCount: Integer;
    procedure ClearStack;
    procedure PopStack(aCount: Integer);
    function  GetStackType(aIndex: Integer): TLuaType;
    function  GetValue(aType: TLuaValueType; aIndex: Integer): TLuaValue;
    procedure PushValue(aValue: TLuaValue);
    procedure SetTableFieldValue(const aName: WideString; aValue: TLuaValue; aIndex: Integer); overload;
    function  GetTableFieldValue(const aName: WideString; aType: TLuaValueType; aIndex: Integer): TLuaValue; overload;
    procedure SetTableIndexValue(const aName: WideString; aValue: TLuaValue; aIndex: Integer; aKey: Integer);
    function  GetTableIndexValue(const aName: WideString; aType: TLuaValueType; aIndex: Integer; aKey: Integer): TLuaValue;
  end;

  { TLuaFunction }
  TLuaFunction = procedure(aLua: ILuaContext) of object;

  { TLuaState }
  TLuaState = (lsOpen, lsClose, lsReset);

  { ILua }
  ILua = interface(IBaseInterface)
    ['{671FAB20-00F2-4C81-96A6-6F675A37D00B}']
    procedure Reset;
    function  LoadFile(aArchive: IArchive; const aFilename: WideString; aAutoRun: Boolean = True): Boolean;
    procedure LoadString(const aData: WideString; aAutoRun: Boolean = True);
    procedure LoadBuffer(aData: Pointer; aSize: NativeUInt; aAutoRun: Boolean = True);
    procedure Run;
    function  RoutineExist(const aName: WideString): Boolean;
    function  Call(const aName: WideString; const aParams: array of TLuaValue): TLuaValue; overload;
    function  PrepCall(const aName: WideString): Boolean;
    function  Call(aParamCount: Integer): TLuaValue; overload;
    function  VariableExist(const aName: WideString): Boolean;
    procedure SetVariable(const aName: WideString; aValue: TLuaValue);
    function  GetVariable(const aName: WideString; aType: TLuaValueType): TLuaValue;
    procedure RegisterRoutine(const aName: WideString; aData: Pointer; aCode: Pointer); overload;
    procedure RegisterRoutine(const aName: WideString; aRoutine: TLuaFunction); overload;
    procedure RegisterRoutines(aClass: TClass); overload;
    procedure RegisterRoutines(aObject: TObject); overload;
    procedure RegisterRoutines(const aTables: WideString; aClass: TClass; const aTableName: WideString = ''); overload;
    procedure RegisterRoutines(const aTables: WideString; aObject: TObject; const aTableName: WideString = ''); overload;
    procedure SetGCStepSize(aStep: Integer);
    function  GetGCStepSize: Integer;
    function  GetGCMemoryUsed: Integer;
    procedure CollectGarbage;
    procedure CompileToFile(aSourceFilename: WideString; aOutputFilename: WideString; aCleanOutput: Boolean);
  end;

// === ACTOR ================================================================
type
  { IActorList }
  IActorList = interface;

  { TActorAttributeSet }
  TActorAttributeSet = set of Byte;

  { TActorMessage }
  PActorMessage = ^TActorMessage;
  TActorMessage = record
    Id: Integer;
    Data: Pointer;
    DataSize: Cardinal;
  end;

  { TActor }
  TActor = class(TBaseObject)
  protected
    FOwner: IActorList;
    FPrev: TActor;
    FNext: TActor;
    FAttributes: TActorAttributeSet;
    FTerminated: Boolean;
    FActorList: IActorList;
    FCanCollide: Boolean;
    FChildren: IActorList;
    function GetAttribute(aIndex: Byte): Boolean; virtual;
    procedure SetAttribute(aIndex: Byte; aValue: Boolean); virtual;
    function GetAttributes: TActorAttributeSet; virtual;
    procedure SetAttributes(aValue: TActorAttributeSet); virtual;
  public
    property Owner: IActorList read FOwner write FOwner;
    property Prev: TActor read FPrev write FPrev;
    property Next: TActor read FNext write FNext;
    property Attribute[aIndex: Byte]: Boolean read GetAttribute write SetAttribute;
    property Attributes: TActorAttributeSet read GetAttributes  write SetAttributes;
    property Terminated: Boolean read FTerminated write FTerminated;
    property Children: IActorList read FChildren write FChildren;
    property ActorList: IActorList read FActorList write FActorList;
    property CanCollide: Boolean read FCanCollide write FCanCollide;
    constructor Create; override;
    destructor Destroy; override;
    procedure OnVisit(aSender: TActor; aEventId: Integer; var aDone: Boolean); virtual;
    procedure OnUpdate(aDeltaTime: Double); virtual;
    procedure OnRender; virtual;
    function  OnMessage(aMsg: PActorMessage): TActor; virtual;
    procedure OnCollide(aActor: TActor; aHitPos: TVector); virtual;
    function  AttributesAreSet(aAttrs: TActorAttributeSet): Boolean;
    function  Collide(aActor: TActor; var aHitPos: TVector): Boolean; virtual;
    function  Overlap(aX, aY, aRadius, aShrinkFactor: Single): Boolean; overload; virtual;
    function  Overlap(aActor: TActor): Boolean; overload; virtual;
  end;

// === ACTORLIST ============================================================
  { IActorList }
  IActorList = interface(IBaseInterface)
    ['{342FE724-C83D-466E-989B-3CED9ECA87AD}']
    function  GetCount: Integer;
    procedure Clean;
    procedure Add(aActor: TActor);
    procedure Remove(aActor: TActor; aDispose: Boolean);
    procedure Clear(aAttrs: TActorAttributeSet);
    procedure ForEach(aSender: TActor; aAttrs: TActorAttributeSet; aEventId: Integer; var aDone: Boolean);
    procedure Update(aAttrs: TActorAttributeSet; aDeltaTime: Double);
    procedure Render(aAttrs: TActorAttributeSet);
    function  SendMessage(aAttrs: TActorAttributeSet; aMsg: PActorMessage; aBroadcast: Boolean): TActor;
    procedure CheckCollision(aAttrs: TActorAttributeSet; aActor: TActor);
  end;

// === ACTORSCENE ===========================================================
type
  { TActorSceneEvent }
  TActorSceneEvent = procedure(aSceneNum: Integer) of object;

  { IActorScene }
  IActorScene = interface(IBaseInterface)
    ['{B76606B4-7C14-4AA8-8247-E146E62F89E0}']
    procedure Alloc(aNum: Integer);
    procedure Dealloc;
    function  GetList(aIndex: Integer): IActorList;
    function  GetCount: Integer;
    procedure Clean(aIndex: Integer);
    procedure Clear(aIndex: Integer; aAttrs: TActorAttributeSet);
    procedure ClearAll;
    procedure Update(aAttrs: TActorAttributeSet; aDeltaTime: Double);
    procedure Render(aAttrs: TActorAttributeSet; aBefore: TActorSceneEvent; aAfter: TActorSceneEvent);
    function  SendMessage(aAttrs: TActorAttributeSet; aMsg: PActorMessage; aBroadcast: Boolean): TActor;
  end;

// === ENTITYACTOR ==========================================================
type
  { TEntityActor }
  TEntityActor = class(TActor)
  protected
    FEntity: IEntity;
  public
    constructor Create; override;
    destructor Destroy; override;
    function  Collide(aActor: TActor; var aHitPos: TVector): Boolean; override;
    function  Overlap(aX, aY, aRadius, aShrinkFactor: Single): Boolean; override;
    function  Overlap(aActor: TActor): Boolean; override;
    procedure OnRender; override;
    procedure Init(aSprite: ISprite; aGroup: Integer); virtual;
    property  Entity: IEntity read FEntity;
  end;

// === GAME =================================================================
type
  { TGameClass }
  TGameClass = (gcCustom, gcGame);

  { TGameSettings }
  TGameSettings = record
    // Window
    WindowWidth: Integer;
    WindowHeight: Integer;
    WindowTitle: string;
    WindowClearColor: TColor;

    // ConfigFile
    ConfigFilename: string;

    // Archive
    ArchiveFilename: string;

    // Font
    FontSize: Cardinal;
    FontFilename: string;

    // Hud
    HudTextItemPadWidth: Integer;
    HudPosX: Integer;
    HudPosY: Integer;
    HudLineSpace: Integer;

    // Scene
    SceneCount: Integer;
    SceneRenderAttr: TActorAttributeSet;
    SceneUpdateAttr: TActorAttributeSet;

    // StartupDialog
    ShowStartupDialog: Boolean;
    StartupDialogCaption: string;
    StartupDialogIconFilename: string;
    StartupDialogLogoFilename: string;
    StartupDialogLogoClickURL: string;
    StartupDialogReadmeFilename: string;
    StartupDialogLicenseFilename: string;
    StartupDialogReleaseInfo: string;

    // Timing
    FrameRate: Single;
    FixedFrameRate: Single;

    // Organization
    OrgName: string;
    AppId: string;
  end;

  { PGameSettings }
  PGameSettings = ^TGameSettings;

  { TCustomGame }
  TCustomGame = class(TBaseObject)
  public
    constructor Create; override;
    destructor Destroy; override;
    procedure OnInit; virtual;
    procedure OnDone; virtual;
    procedure OnRun; virtual;
    procedure OnGetSettings(var aSettings: TGameSettings); virtual;
    procedure OnStartup; virtual;
    procedure OnShutdown; virtual;
    procedure OnReady(aReady: Boolean); virtual;
    procedure OnUpdate(aDeltaTime: Double); virtual;
    procedure OnFixedUpdate; virtual;
    procedure OnClearWindow; virtual;
    procedure OnShowWindow; virtual;
    procedure OnRender; virtual;
    procedure OnRenderHUD; virtual;
    procedure OnPreShowWindow; virtual;
    procedure OnPostShowWindow; virtual;
    procedure OnCmdConsoleState(aState: TCmdConsoleState); virtual;
    procedure OnVideoState(aState: TVideoState; aFilename: WideString); virtual;
    procedure OnScreenshot(const aFilename: WideString); virtual;
    procedure OnProcessIMGUI; virtual;
    procedure OnDisposeActor(aActor: TActor); virtual;
    procedure OnSetupStartupDialog; virtual;
    procedure OnStartupDialogMore; virtual;
    function  OnStartupDialogRun: Boolean; virtual;
    procedure OnBuildArchiveProgress(const aFilename: WideString; aProgress: Integer; aNewFile: Boolean); virtual;
    procedure OnSpeechWord(const aWord, aText: WideString); virtual;
    procedure OnHighscoreAction(aHighscores: IHighscores; aAction: THighscoreAction); virtual;
    procedure OnInAppPurchase(aIAP: IInAppPurchase); virtual;
    procedure OnSocialPost(const aSuccess: Boolean; const aErrorMsg, aMsg, aMediaFilename: WideString); virtual;
    procedure OnSendMail(const aFromEmail, aFromName, aSubject, aToEmail, aBody, aError: WideString); virtual;
    procedure OnLuaState(aState: TLuaState); virtual;
    procedure OnBeforeRenderScene(aSceneNum: Integer); virtual;
    procedure OnAfterRenderScene(aSceneNum: Integer); virtual;
    procedure OnPhysicsDrawBodyShapes(aBody: TPhysicsBody); virtual;
    procedure OnPhysicsUpdateBody(aBody: TPhysicsBody); virtual;
    procedure OnPathEditorAction(aAction: TPathEditorAction); virtual;
    procedure OnPathEditorTest(aPathIndex: Integer; aLookAHead: Integer; aSpeed: Single; aWindowPos: TPointi; aWindowSize: TPointi); virtual;
    procedure OnPlayMusic(aMusic: Integer; aVolume: Single; aLoop: Boolean; const aFilename: WideString); virtual;
    function  GetGameClass: TGameClass; virtual;
    function  GetSettings: PGameSettings; virtual;
    procedure SetTerminated(aTerminate: Boolean); virtual;
    function  GetTerminated: Boolean; virtual;
  end;

  { TCustomGameClass }
  TCustomGameClass = class of TCustomGame;

  { TGame }
  TGame = class(TCustomGame)
  protected
  type
    { THud }
    THud = record
      TextItemPadWidth: Integer;
      Pos: TVector;
    end;
  protected
    FTerminated: Boolean;
    FSettings: TGameSettings;
    FMousePos: TVector;
    FMouseDelta: TVector;
    FMousePressure: Single;
    FHud: THud;
    FArchive: IArchive;
    FFont: IFont;
    FConfigFile: IConfigFile;
    FStartupDialog: IStartupDialog;
    FScene: IActorScene;
    FSprite: ISprite;
    FInputMap: IInputMap;
  public
    constructor Create; override;
    destructor Destroy; override;
    procedure OnInit; override;
    procedure OnDone; override;
    procedure OnRun; override;
    procedure OnGetSettings(var aSettings: TGameSettings); override;
    procedure OnStartup; override;
    procedure OnShutdown; override;
    procedure OnReady(aReady: Boolean); override;
    procedure OnUpdate(aDeltaTime: Double); override;
    procedure OnFixedUpdate; override;
    procedure OnClearWindow; override;
    procedure OnShowWindow; override;
    procedure OnRender; override;
    procedure OnRenderHUD; override;
    procedure OnPreShowWindow; override;
    procedure OnPostShowWindow; override;
    procedure OnCmdConsoleState(aState: TCmdConsoleState); override;
    procedure OnVideoState(aState: TVideoState; aFilename: WideString); override;
    procedure OnScreenshot(const aFilename: WideString); override;
    procedure OnProcessIMGUI; override;
    procedure OnDisposeActor(aActor: TActor); override;
    procedure OnSetupStartupDialog; override;
    procedure OnStartupDialogMore; override;
    function  OnStartupDialogRun: Boolean; override;
    procedure OnBuildArchiveProgress(const aFilename: WideString; aProgress: Integer; aNewFile: Boolean); override;
    procedure OnSpeechWord(const aWord, aText: WideString); override;
    procedure OnHighscoreAction(aHighscores: IHighscores; aAction: THighscoreAction); override;
    procedure OnInAppPurchase(aIAP: IInAppPurchase); override;
    procedure OnSocialPost(const aSuccess: Boolean; const aErrorMsg, aMsg, aMediaFilename: WideString); override;
    procedure OnSendMail(const aFromEmail, aFromName, aSubject, aToEmail, aBody, aError: WideString); override;
    procedure OnLuaState(aState: TLuaState); override;
    procedure OnBeforeRenderScene(aSceneNum: Integer); override;
    procedure OnAfterRenderScene(aSceneNum: Integer); override;
    procedure OnPhysicsDrawBodyShapes(aBody: TPhysicsBody); override;
    procedure OnPhysicsUpdateBody(aBody: TPhysicsBody); override;
    procedure OnPathEditorAction(aAction: TPathEditorAction); override;
    procedure OnPathEditorTest(aPathIndex: Integer; aLookAHead: Integer; aSpeed: Single; aWindowPos: TPointi; aWindowSize: TPointi); override;
    procedure OnPlayMusic(aMusic: Integer; aVolume: Single; aLoop: Boolean; const aFilename: WideString); override;
    function  GetGameClass: TGameClass; override;
    function  GetSettings: PGameSettings; override;
    procedure SetTerminated(aTerminate: Boolean); override;
    function  GetTerminated: Boolean; override;
    function  GetMousePos: PVector;
    function  GetMouseDelta: PVector;
    function  GetMousePressure: System.PSingle;
    procedure ResetHudPos;
    procedure SetHudPos(aX: Integer; aY: Integer);
    procedure SetHudLineSpace(aLineSpace: Integer);
    procedure SetHudTextItemPadWidth(aWidth: Integer);
    procedure HudText(aFont: IFont; aColor: TColor; aAlign: THAlign; const aMsg: string; const aArgs: array of const);
    function  HudTextItem(const aKey: string; const aValue: string; const aSeperator: string='-'): string;
    function  Archive: IArchive;
    function  Font: IFont;
    function  ConfigFile: IConfigFile;
    function  StartupDialog: IStartupDialog;
    function  Scene: IActorScene;
    function  Sprite: ISprite;
    function  InputMap: IInputMap;
  end;

// === TOPAZ ================================================================
type
  { ITopaz }
  ITopaz = interface(IBaseInterface)
  ['{1602BF12-BCCC-4120-BD8B-FF4DD535E574}']
    function  GetVersionStr: WideString;
    function  Get(const aGUID: TGUID; const [ref] aInterface: IBaseInterface): Boolean;
    function  Release(const [ref] aInterface: IBaseInterface): Boolean;
    procedure RunGame(aGame: TCustomGameClass);
    procedure GameLoop;
    function  Game: TCustomGame;
    function  Console: IConsole;
    function  Log: ILog;
    function  CmdLine: ICmdLine;
    function  UserPath: IUserPath;
    function  Util: IUtil;
    function  Color: IColor;
    function  Math: IMath;
    function  Window: IWindow;
    function  Timer: ITimer;
    function  Async: IAsync;
    function  Input: IInput;
    function  Audio: IAudio;
    function  CmdConsole: ICmdConsole;
    function  Screenshake: IScreenshake;
    function  Screenshot: IScreenshot;
    function  GUI: IGUI;
    function  Video: IVideo;
    function  Dialogs: IDialogs;
    function  Speech: ISpeech;
    function  Splashscreen: ISplashscreen;
    function  Physics: IPhysics;
    function  PathEditor: IPathEditor;
    function  Lua: ILua;
  end;

var
  Topaz: ITopaz = nil;

implementation

// === BASE =================================================================
{ TBaseObject }
constructor TBaseObject.Create;
begin
  inherited;
end;

destructor TBaseObject.Destroy;
begin
  inherited;
end;

{ TBaseInterface }
constructor TBaseInterface.Create;
begin
  inherited;
end;

destructor TBaseInterface.Destroy;
begin
  inherited;
end;

// === MATH =================================================================
{ TVector }
constructor TVector.Create(aX, aY: Single);
begin
  X := aX;
  Y := aY;
  Z := 0;
  W := 0;
end;

constructor TVector.Create(aX, aY, aZ: Single);
begin
  X := aX;
  Y := aY;
  Z := aZ;
  W := 0;
end;

constructor TVector.Create(aX, aY, aZ, aW: Single);
begin
  X := aX;
  Y := aY;
  Z := aZ;
  W := aW;
end;

procedure TVector.Assign(aX, aY: Single);
begin
  X := aX;
  Y := aY;
  Z := 0;
  W := 0;
end;

procedure TVector.Assign(aX, aY, aZ: Single);
begin
  X := aX;
  Y := aY;
  Z := aZ;
  W := 0;
end;

procedure TVector.Assign(aX, aY, aZ, aW: Single);
begin
  X := aX;
  Y := aY;
  Z := aZ;
  W := aW;
end;

procedure TVector.Assign(aVector: TVector);
begin
  Self := aVector;
end;

procedure TVector.Clear;
begin
  X := 0;
  Y := 0;
  Z := 0;
  W := 0;
end;

procedure TVector.Add(aVector: TVector);
begin
  X := X + aVector.X;
  Y := Y + aVector.Y;
end;

procedure TVector.Subtract(aVector: TVector);
begin
  X := X - aVector.X;
  Y := Y - aVector.Y;
end;

procedure TVector.Multiply(aVector: TVector);
begin
  X := X * aVector.X;
  Y := Y * aVector.Y;
end;

procedure TVector.Divide(aVector: TVector);
begin
  X := X / aVector.X;
  Y := Y / aVector.Y;
end;

function  TVector.Magnitude: Single;
begin
  Result := Sqrt((X * X) + (Y * Y));
end;

function  TVector.MagnitudeTruncate(aMaxMagitude: Single): TVector;
var
  LMaxMagSqrd: Single;
  LVecMagSqrd: Single;
  LTruc: Single;
begin
  Result.Assign(X, Y);
  LMaxMagSqrd := aMaxMagitude * aMaxMagitude;
  LVecMagSqrd := Result.Magnitude;
  if LVecMagSqrd > LMaxMagSqrd then
  begin
    LTruc := (aMaxMagitude / Sqrt(LVecMagSqrd));
    Result.X := Result.X * LTruc;
    Result.Y := Result.Y * LTruc;
  end;
end;

function  TVector.Distance(aVector: TVector): Single;
var
  LDirVec: TVector;
begin
  LDirVec.X := X - aVector.X;
  LDirVec.Y := Y - aVector.Y;
  Result := LDirVec.Magnitude;
end;

procedure TVector.Normalize;
var
  LLen, LOOL: Single;
begin
  LLen := self.Magnitude;
  if LLen <> 0 then
  begin
    LOOL := 1.0 / LLen;
    X := X * LOOL;
    Y := Y * LOOL;
  end;
end;

function  TVector.Angle(aVector: TVector): Single;
var
  LXOY: Single;
  LR: TVector;
begin
  LR.Assign(self);
  LR.Subtract(aVector);
  LR.Normalize;

  if LR.Y = 0 then
  begin
    LR.Y := 0.001;
  end;

  LXOY := LR.X / LR.Y;

  Result := ArcTan(LXOY) * RAD2DEG;
  if LR.Y < 0 then
    Result := Result + 180.0;
end;

procedure TVector.Thrust(aAngle: Single; aSpeed: Single);
var
  LA: Single;

begin
  LA := aAngle + 90.0;

  Topaz.Math.ClipValueFloat(LA, 0, 360, True);

  X := X + Topaz.Math.AngleCos(Round(LA)) * -(aSpeed);
  Y := Y + Topaz.Math.AngleSin(Round(LA)) * -(aSpeed);
end;

function  TVector.MagnitudeSquared: Single;
begin
  Result := (X * X) + (Y * Y);
end;

function  TVector.DotProduct(aVector: TVector): Single;
begin
  Result := (X * aVector.X) + (Y * aVector.Y);
end;

procedure TVector.Scale(aValue: Single);
begin
  X := X * aValue;
  Y := Y * aValue;
end;

procedure TVector.DivideBy(aValue: Single);
begin
  X := X / aValue;
  Y := Y / aValue;
end;

function  TVector.Project(aVector: TVector): TVector;
var
  LDP: Single;
begin
  LDP := DotProduct(aVector);
  Result.X := (LDP / (aVector.X * aVector.X + aVector.Y * aVector.Y)) * aVector.X;
  Result.Y := (LDP / (aVector.X * aVector.X + aVector.Y * aVector.Y)) * aVector.Y;
end;

procedure TVector.Negate;
begin
  X := -X;
  Y := -Y;
end;

class function TVector.Vec2(aX, aY: Single): TVector;
begin
  Result.X := aX;
  Result.Y := aY;
end;

{ TRectangle }
constructor TRectangle.Create(aX, aY, aWidth, aHeight: Single);
begin
  X := aX;
  Y := aY;
  Width := aWidth;
  Height := aHeight;
end;

procedure TRectangle.Assign(aX, aY, aWidth, aHeight: Single);
begin
  X := aX;
  Y := aY;
  Width := aWidth;
  Height := aHeight;
end;

procedure TRectangle.Assign(aRectangle: TRectangle);
begin
  X := aRectangle.X;
  Y := aRectangle.Y;
  Width := aRectangle.Width;
  Height := aRectangle.Height;
end;

procedure TRectangle.Clear;
begin
  X := 0;
  Y := 0;
  Width := 0;
  Height := 0;
end;

function TRectangle.Intersect(aRect: TRectangle): Boolean;
var
  LR1R, LR1B: Single;
  LR2R, LR2B: Single;
begin
  LR1R := X - (Width - 1);
  LR1B := Y - (Height - 1);
  LR2R := aRect.X - (aRect.Width - 1);
  LR2B := aRect.Y - (aRect.Height - 1);

  Result := (X < LR2R) and (LR1R > aRect.X) and (Y < LR2B) and (LR1B > aRect.Y);
end;

// === HIGHSCORES ===========================================================
{ THighscore }
class operator THighscore.Equal(a, b: THighscore): Boolean;
begin
  if (a.Name = b.Name) and
     (a.Level = b.Level) and
     (a.Score = b.Score) and
     (a.Skill = b.Skill) and
     (a.Duration = b.Duration) and
     (a.Location = b.Location) then
    Result := True
  else
    Result := False;
end;

// === LUA ==================================================================
{ TLuaValue }
class operator TLuaValue.Implicit(const aValue: Integer): TLuaValue;
begin
  Result.AsType := vtInteger;
  Result.AsInteger := aValue;
end;

class operator TLuaValue.Implicit(aValue: Double): TLuaValue;
begin
  Result.AsType := vtDouble;
  Result.AsNumber := aValue;
end;

class operator TLuaValue.Implicit(aValue: PChar): TLuaValue;
begin
  Result.AsType := vtString;
  Result.AsString := aValue;
end;

class operator TLuaValue.Implicit(aValue: TLuaTable): TLuaValue;
begin
  Result.AsType := vtTable;
  Result.AsTable := aValue;
end;

class operator TLuaValue.Implicit(aValue: Pointer): TLuaValue;
begin
  Result.AsType := vtPointer;
  Result.AsPointer := aValue;
end;

class operator TLuaValue.Implicit(aValue: Boolean): TLuaValue;
begin
  Result.AsType := vtBoolean;
  Result.AsBoolean := aValue;
end;

class operator TLuaValue.Implicit(aValue: TLuaValue): Integer;
begin
  Result := aValue.AsInteger;
end;

class operator TLuaValue.Implicit(aValue: TLuaValue): Double;
begin
  Result := aValue.AsNumber;
end;

class operator TLuaValue.Implicit(aValue: TLuaValue): PChar;
const
{$J+}
  LValue: string = '';
{$J-}
begin
  LValue := aValue.AsString;
  Result := PChar(LValue);
end;

class operator TLuaValue.Implicit(aValue: TLuaValue): Pointer;
begin
  Result := aValue.AsPointer
end;

class operator TLuaValue.Implicit(aValue: TLuaValue): Boolean;
begin
  Result := aValue.AsBoolean;
end;

// === ACTOR ================================================================
{ TActor }
function TActor.GetAttribute(aIndex: Byte): Boolean;
begin
  Result := Boolean(aIndex in FAttributes);
end;

procedure TActor.SetAttribute(aIndex: Byte; aValue: Boolean);
begin
  if aValue then
    Include(FAttributes, aIndex)
  else
    Exclude(FAttributes, aIndex);
end;

function TActor.GetAttributes: TActorAttributeSet;
begin
  Result := FAttributes;
end;

procedure TActor.SetAttributes(aValue: TActorAttributeSet);
begin
  FAttributes := aValue;
end;

procedure TActor.OnVisit(aSender: TActor; aEventId: Integer; var aDone: Boolean);
begin
  aDone := False;
end;

procedure TActor.OnUpdate(aDeltaTime: Double);
begin
  // update all children by default
  FChildren.Update([], aDeltaTime);
end;

procedure TActor.OnRender;
begin
  // render all children by default
  FChildren.Render([]);
end;

function TActor.OnMessage(aMsg: PActorMessage): TActor;
begin
  Result := nil;
end;

procedure TActor.OnCollide(aActor: TActor; aHitPos: TVector);
begin
end;

constructor TActor.Create;
begin
  inherited;

  FOwner := nil;
  FPrev := nil;
  FNext := nil;
  FAttributes := [];
  FTerminated := False;
  FActorList := nil;
  FCanCollide := False;
  Topaz.Get(IActorList, FChildren);
end;

destructor TActor.Destroy;
begin
  Topaz.Release(FChildren);

  inherited;
end;

function TActor.AttributesAreSet(aAttrs: TActorAttributeSet): Boolean;
var
  LA: Byte;
begin
  Result := False;
  for LA in aAttrs do
  begin
    if LA in FAttributes then
    begin
      Result := True;
      Break;
    end;
  end;
end;

function TActor.Collide(aActor: TActor; var aHitPos: TVector): Boolean;
begin
  Result := False;
end;

function TActor.Overlap(aX, aY, aRadius, aShrinkFactor: Single): Boolean;
begin
  Result := False;
end;

function TActor.Overlap(aActor: TActor): Boolean;
begin
  Result := False;
end;

// === ENTITYACTOR ==========================================================
constructor TEntityActor.Create;
begin
  inherited;

  FEntity := nil;
end;

destructor TEntityActor.Destroy;
begin
  if Assigned(FEntity) then Topaz.Release(FEntity);

  inherited;
end;

function  TEntityActor.Collide(aActor: TActor; var aHitPos: TVector): Boolean;
begin
  Result := False;
  if FEntity = nil then Exit;
  if aActor is TEntityActor then
  begin
    Result := FEntity.CollidePolyPoint(TEntityActor(aActor).Entity, aHitPos);
  end
end;

function  TEntityActor.Overlap(aX, aY, aRadius, aShrinkFactor: Single): Boolean;
begin
  Result := FAlse;
  if FEntity = nil then Exit;
  Result := FEntity.Overlap(aX, aY, aRadius, aShrinkFactor);
end;

function  TEntityActor.Overlap(aActor: TActor): Boolean;
begin
  Result := False;
  if not Assigned(FEntity)then Exit;
  if aActor is TEntityActor then
  begin
    Result := FEntity.Overlap(TEntityActor(aActor).Entity);
  end;
end;

procedure TEntityActor.OnRender;
begin
  if not Assigned(FEntity) then Exit;
  FEntity.Render(0, 0);
end;

procedure TEntityActor.Init(aSprite: ISprite; aGroup: Integer);
begin
  if Assigned(FEntity) then Topaz.Release(FEntity);
  Topaz.Get(IEntity, FEntity);
  FEntity.Init(aSprite, aGroup);
end;

// === CUSTOMGAME ===========================================================
{ TCustomGame }
constructor TCustomGame.Create;
begin
  inherited;
end;

destructor TCustomGame.Destroy;
begin
  inherited;
end;

procedure TCustomGame.OnInit;
begin
end;

procedure TCustomGame.OnDone;
begin
end;

procedure TCustomGame.OnRun;
begin
end;

procedure TCustomGame.OnGetSettings(var aSettings: TGameSettings);
begin
end;

procedure TCustomGame.OnStartup;
begin
end;

procedure TCustomGame.OnShutdown;
begin
end;

procedure TCustomGame.OnReady(aReady: Boolean);
begin
end;

procedure TCustomGame.OnUpdate(aDeltaTime: Double);
begin
end;

procedure TCustomGame.OnFixedUpdate;
begin
end;

procedure TCustomGame.OnClearWindow;
begin
end;

procedure TCustomGame.OnShowWindow;
begin
end;

procedure TCustomGame.OnRender;
begin
end;

procedure TCustomGame.OnRenderHUD;
begin
end;

procedure TCustomGame.OnPreShowWindow;
begin
end;

procedure TCustomGame.OnPostShowWindow;
begin
end;

procedure TCustomGame.OnCmdConsoleState(aState: TCmdConsoleState);
begin
end;

procedure TCustomGame.OnVideoState(aState: TVideoState; aFilename: WideString);
begin
end;

procedure TCustomGame.OnScreenshot(const aFilename: WideString);
begin
end;

procedure TCustomGame.OnProcessIMGUI;
begin
end;

procedure TCustomGame.OnDisposeActor(aActor: TActor);
begin
  aActor.Free;
end;

procedure TCustomGame.OnSetupStartupDialog;
begin
end;

procedure TCustomGame.OnStartupDialogMore;
begin
end;

function  TCustomGame.OnStartupDialogRun: Boolean;
begin
  Result := True;
end;

procedure TCustomGame.OnBuildArchiveProgress(const aFilename: WideString; aProgress: Integer; aNewFile: Boolean);
begin
end;

procedure TCustomGame.OnSpeechWord(const aWord, aText: WideString);
begin
end;

procedure TCustomGame.OnHighscoreAction(aHighscores: IHighscores; aAction: THighscoreAction);
begin
end;

procedure TCustomGame.OnInAppPurchase(aIAP: IInAppPurchase);
begin
end;

procedure TCustomGame.OnSocialPost(const aSuccess: Boolean; const aErrorMsg, aMsg, aMediaFilename: WideString);
begin
end;

procedure TCustomGame.OnSendMail(const aFromEmail, aFromName, aSubject, aToEmail, aBody, aError: WideString);
begin
end;

procedure TCustomGame.OnLuaState(aState: TLuaState);
begin
end;

procedure TCustomGame.OnBeforeRenderScene(aSceneNum: Integer);
begin
end;

procedure TCustomGame.OnAfterRenderScene(aSceneNum: Integer);
begin
end;

procedure TCustomGame.OnPhysicsDrawBodyShapes(aBody: TPhysicsBody);
begin
end;

procedure TCustomGame.OnPhysicsUpdateBody(aBody: TPhysicsBody);
begin
end;

procedure TCustomGame.OnPathEditorAction(aAction: TPathEditorAction);
begin
end;

procedure TCustomGame.OnPathEditorTest(aPathIndex: Integer; aLookAHead: Integer; aSpeed: Single; aWindowPos: TPointi; aWindowSize: TPointi);
begin
end;

procedure TCustomGame.OnPlayMusic(aMusic: Integer; aVolume: Single; aLoop: Boolean; const aFilename: WideString);
begin
end;

function  TCustomGame.GetGameClass: TGameClass;
begin
  Result := gcCustom;
end;

function  TCustomGame.GetSettings: PGameSettings;
begin
  Result := nil;
end;

procedure TCustomGame.SetTerminated(aTerminate: Boolean);
begin
end;

function  TCustomGame.GetTerminated: Boolean;
begin
  Result := False;
end;

{ TGame }
constructor TGame.Create;
begin
  inherited;
end;

destructor TGame.Destroy;
begin
  inherited;
end;

procedure TGame.OnInit;
begin
  // Lua
  Topaz.Lua.Reset;

  // ConfigFile
  Topaz.Get(IConfigFile, FConfigFile);
  FConfigFile.Open(FSettings.ConfigFilename);

  // Archive
  Topaz.Get(IArchive, FArchive);
  if not FArchive.Open(FSettings.ArchiveFilename) then
    FArchive.Open(HInstance, 'TOPAZ_RESARCHIVE');

  // StartupDialog
  Topaz.Get(IStartupDialog, FStartupDialog);

  // Physics
  Topaz.Physics.Open;

  // Audio
  Topaz.Audio.Open;
end;

procedure TGame.OnDone;
begin
  // Audio
  Topaz.Audio.Close;

  // Physics
  Topaz.Physics.Close;

  // StartupDialog
  Topaz.Release(FStartupDialog);

  // Archive
  Topaz.Release(FArchive);

  // ConfigFile
  Topaz.Release(FConfigFile);
end;

procedure TGame.OnRun;
begin
  Topaz.GameLoop;
end;

procedure TGame.OnGetSettings(var aSettings: TGameSettings);
begin
  // Window
  aSettings.WindowWidth := 960;
  aSettings.WindowHeight := 540;
  aSettings.WindowTitle := 'Topaz Game Library';
  aSettings.WindowClearColor := DARKSLATEBROWN;

  // ConfigFile
  aSettings.ConfigFilename := '';

  // Archive
  aSettings.ArchiveFilename := '';

  // Font
  aSettings.FontSize := 18;
  aSettings.FontFilename := '';

  // Hud
  aSettings.HudTextItemPadWidth := 10;
  aSettings.HudPosX := 3;
  aSettings.HudPosY := 3;
  aSettings.HudLineSpace := 0;

  // scene
  aSettings.SceneCount := 1;
  aSettings.SceneRenderAttr := [];
  aSettings.SceneUpdateAttr := [];

  // StartupDialog
  aSettings.ShowStartupDialog := False;
  aSettings.StartupDialogCaption := '';
  aSettings.StartupDialogIconFilename := '';
  aSettings.StartupDialogLogoFilename := '';
  aSettings.StartupDialogLogoClickURL := '';
  aSettings.StartupDialogReadmeFilename := '';
  aSettings.StartupDialogLicenseFilename := '';
  aSettings.StartupDialogReleaseInfo := '';

  // Timing
  aSettings.FrameRate := 60.0;
  aSettings.FixedFrameRate := 1.0;
end;

procedure TGame.OnStartup;
begin
  inherited;

  // Timing
  Topaz.Timer.Reset(FSettings.FrameRate, FSettings.FixedFrameRate);

  // Window
  Topaz.Window.Open(FSettings.WindowWidth, FSettings.WindowHeight, FSettings.WindowTitle);

  // Font
  Topaz.Get(IFont, FFont);
  FFont.LoadDefault(FSettings.FontSize);

  // Hud
  SetHudPos(FSettings.HudPosX, FSettings.HudPosY);
  SetHudLineSpace(FSettings.HudLineSpace);
  SetHudTextItemPadWidth(FSettings.HudTextItemPadWidth);

  // Sprite
  Topaz.Get(ISprite, FSprite);

  // Scene
  Topaz.Get(IActorScene, FScene);
  FScene.Alloc(FSettings.SceneCount);

  // InputMap
  Topaz.Get(IInputMap, FInputMap);

  // Splashscreen
  Topaz.Splashscreen.SetDefaults;
end;

procedure TGame.OnShutdown;
begin
  // Splashscreen
  Topaz.Splashscreen.Clear;

  // InputMap
  Topaz.Release(FInputMap);

  // Scene
  FScene.ClearAll;
  Topaz.Release(FScene);

  // Sprite
  Topaz.Release(FSprite);

  // Font
  Topaz.Release(FFont);

  // Window
  Topaz.Window.Close;

  inherited;
end;

procedure TGame.OnReady(aReady: Boolean);
begin
  if aReady then
    Topaz.Console.PrintLn('Ready...')
  else
    Topaz.Console.PrintLn('Not ready...');
end;

procedure TGame.OnUpdate(aDeltaTime: Double);
begin
  if Topaz.Input.KeyPressed(KEY_ESCAPE) then
    SetTerminated(True);

  FScene.Update(FSettings.SceneUpdateAttr, aDeltaTime);
end;

procedure TGame.OnFixedUpdate;
begin
  inherited;
end;

procedure TGame.OnClearWindow;
begin
  Topaz.Window.Clear(FSettings.WindowClearColor);
end;

procedure TGame.OnShowWindow;
begin
  Topaz.Window.Show;
end;

procedure TGame.OnRender;
begin
  inherited;

  FScene.Render(FSettings.SceneRenderAttr, OnBeforeRenderScene, OnAfterRenderScene);
end;

procedure TGame.OnRenderHUD;
begin
  ResetHudPos;
  HudText(FFont, WHITE, haLeft, 'fps %d', [Topaz.Timer.GetFrameRate]);
  HudText(FFont, GREEN, haLeft, HudTextItem('ESC', 'Quit'), []);
end;

procedure TGame.OnPreShowWindow;
begin
  inherited;
end;

procedure TGame.OnPostShowWindow;
begin
  inherited;
end;

procedure TGame.OnCmdConsoleState(aState: TCmdConsoleState);
begin
  inherited;
end;

procedure TGame.OnVideoState(aState: TVideoState; aFilename: WideString);
begin
  inherited;
end;

procedure TGame.OnScreenshot(const aFilename: WideString);
begin
  inherited;
end;

procedure TGame.OnProcessIMGUI;
begin
  inherited;
end;

procedure TGame.OnDisposeActor(aActor: TActor);
begin
  inherited;
end;

procedure TGame.OnSetupStartupDialog;
begin
  if FSettings.StartupDialogCaption <> '' then
    StartupDialog.SetCaption(FSettings.StartupDialogCaption);

  if FSettings.StartupDialogIconFilename <> '' then
    StartupDialog.SetIcon(Archive, FSettings.StartupDialogIconFilename);

  if FSettings.StartupDialogLogoFilename <> '' then
    StartupDialog.SetLogo(Archive, FSettings.StartupDialogLogoFilename);

  if FSettings.StartupDialogLogoClickURL <> '' then
    StartupDialog.SetLogoClickUrl(FSettings.StartupDialogLogoClickURL);

  if FSettings.StartupDialogReadmeFilename <> '' then
    StartupDialog.SetReadme(Archive, FSettings.StartupDialogReadmeFilename);

  if FSettings.StartupDialogLicenseFilename <> '' then
    StartupDialog.SetLicense(Archive, FSettings.StartupDialogLicenseFilename);

  if FSettings.StartupDialogReleaseInfo <> '' then
    StartupDialog.SetReleaseInfo(FSettings.StartupDialogReleaseInfo);
end;

procedure TGame.OnStartupDialogMore;
begin
  inherited;
end;

function  TGame.OnStartupDialogRun: Boolean;
begin
  Result := inherited;
end;

procedure TGame.OnBuildArchiveProgress(const aFilename: WideString; aProgress: Integer; aNewFile: Boolean);
begin
  inherited;
end;

procedure TGame.OnSpeechWord(const aWord, aText: WideString);
begin
  inherited;
end;

procedure TGame.OnHighscoreAction(aHighscores: IHighscores; aAction: THighscoreAction);
begin
  inherited;
end;

procedure TGame.OnInAppPurchase(aIAP: IInAppPurchase);
begin
  inherited;
end;

procedure TGame.OnSocialPost(const aSuccess: Boolean; const aErrorMsg, aMsg, aMediaFilename: WideString);
begin
  inherited;
end;

procedure TGame.OnSendMail(const aFromEmail, aFromName, aSubject, aToEmail, aBody, aError: WideString);
begin
  inherited;
end;

procedure TGame.OnLuaState(aState: TLuaState);
begin
  inherited;
end;

procedure TGame.OnBeforeRenderScene(aSceneNum: Integer);
begin
  inherited;
end;

procedure TGame.OnAfterRenderScene(aSceneNum: Integer);
begin
  inherited;
end;

procedure TGame.OnPhysicsDrawBodyShapes(aBody: TPhysicsBody);
begin
  inherited;
end;

procedure TGame.OnPhysicsUpdateBody(aBody: TPhysicsBody);
begin
  inherited;
end;

procedure TGame.OnPathEditorAction(aAction: TPathEditorAction);
begin
  inherited;
end;

procedure TGame.OnPathEditorTest(aPathIndex: Integer; aLookAHead: Integer; aSpeed: Single; aWindowPos: TPointi; aWindowSize: TPointi);
begin
  inherited;
end;

procedure TGame.OnPlayMusic(aMusic: Integer; aVolume: Single; aLoop: Boolean; const aFilename: WideString);
begin
  inherited;
end;

function  TGame.GetGameClass: TGameClass;
begin
  Result := gcGame;
end;

function  TGame.GetSettings: PGameSettings;
begin
  Result := @FSettings;
end;

procedure TGame.SetTerminated(aTerminate: Boolean);
begin
  FTerminated := aTerminate;
end;

function  TGame.GetTerminated: Boolean;
begin
  Result := FTerminated;
end;

function  TGame.GetMousePos: PVector;
begin
  Result := @FMousePos;
end;

function  TGame.GetMouseDelta: PVector;
begin
  Result := @FMouseDelta;
end;

function  TGame.GetMousePressure: System.PSingle;
begin
  Result := @FMousePressure;
end;

procedure TGame.ResetHudPos;
begin
  SetHudPos(FSettings.HudPosX, FSettings.HudPosY);
end;

procedure TGame.SetHudPos(aX: Integer; aY: Integer);
begin
  FHud.Pos.Assign(aX, aY);
end;

procedure TGame.SetHudLineSpace(aLineSpace: Integer);
begin
  FHud.Pos.Z := aLineSpace;
end;

procedure TGame.SetHudTextItemPadWidth(aWidth: Integer);
begin
  FHud.TextItemPadWidth := aWidth;
end;

procedure TGame.HudText(aFont: IFont; aColor: TColor; aAlign: THAlign; const aMsg: string; const aArgs: array of const);
begin
  aFont.PrintText(FHud.Pos.X, FHud.Pos.Y, FHud.Pos.Z, aColor, aAlign, aMsg, aArgs);
end;

function  TGame.HudTextItem(const aKey: string; const aValue: string; const aSeperator: string='-'): string;
begin
  Result := Topaz.Util.Format('%s %s %s', [Topaz.Util.PadRight(aKey, FHud.TextItemPadWidth, #32), aSeperator, aValue]);
end;

function  TGame.Archive: IArchive;
begin
  Result := FArchive;
end;

function  TGame.Font: IFont;
begin
  Result := FFont;
end;

function  TGame.ConfigFile: IConfigFile;
begin
  Result := FConfigFile;
end;

function  TGame.StartupDialog: IStartupDialog;
begin
  Result := FStartupDialog;
end;

function  TGame.Scene: IActorScene;
begin
  Result := FScene;
end;

function  TGame.Sprite: ISprite;
begin
  Result := FSprite;
end;

function  TGame.InputMap: IInputMap;
begin
  Result := FInputMap;
end;

// ==========================================================================
{$IFNDEF TGLDLL}
function  TopazSingleInstance(const aTrueMsg: WideString; const aFalseMsg: WideString): Boolean; external 'TGL.dll' delayed;
procedure TopazProcess(const [ref] aTopaz: ITopaz); external 'TGL.dll' delayed;

procedure LoadTopaz;
begin
  if not TopazSingleInstance('', 'This app is already running, terminating!') then Halt;

  if not Assigned(Topaz) then
    TopazProcess(Topaz);
end;

procedure UnloadTopaz;
begin
  if Assigned(Topaz) then
    TopazProcess(Topaz);
end;

initialization
  ReportMemoryLeaksOnShutdown := True;
  LoadTopaz;

finalization
  UnloadTopaz;
{$ELSE}

initialization
  ReportMemoryLeaksOnShutdown := True;

{$ENDIF}

end.
