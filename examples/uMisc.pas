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

unit uMisc;

interface

uses
  TopazGameLib;

type

  { TScreenshakeEx }
  TScreenshakeEx = class(TGame)
  protected
    FStarfield: IStarfield;
  public
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
  end;

  { TScreenshot }
  TScreenshotEx = class(TGame)
  protected
    FTexture: ITexture;
    FScreenshotImage: ITexture;
    FPos: TVector;
    FFilename: string;
  public
    procedure OnGetSettings(var aSettings: TGameSettings); override;
    procedure OnStartup; override;
    procedure OnShutdown; override;
    procedure OnUpdate(aDeltaTime: Double); override;
    procedure OnRender; override;
    procedure OnRenderHUD; override;
    procedure OnPreShowWindow; override;
    procedure OnScreenshot(const aFilename: WideString); override;
  end;

 { TSpeechEx }
  TSpeechEx = class(TGame)
  protected
  const
    cSpeak = 'Topaz Game Library is a professional 2D indie game library that allows you to do game ' +
             'development in Delphi, for desktop PCs running Microsoft Windows, ' +
             'and uses OpenGL for hardware accelerated rendering. ' +
             'Its robust, designed for easy use, and making all types of 2D games ' +
             'and other graphic simulations. You access the features from a ' +
             'simple and intuitive API, to allow you to rapidly and efficiently ' +
             'develop your projects. There is support for textures, shaders, audio samples, ' +
             'streaming music, loading resources directly from a compressed enkripted ' +
             'archive, and much more. Topaz, easy, fast, fun! ';
  protected
    FWord: string;
  public
    procedure OnGetSettings(var aSettings: TGameSettings); override;
    procedure OnStartup; override;
    procedure OnShutdown; override;
    procedure OnUpdate(aDeltaTime: Double); override;
    procedure OnRenderHUD; override;
    procedure OnSpeechWord(const aWord: WideString; const aText: WideString); override;
  end;

  { TStarfieldEx }
  TStarfieldEx = class(TGame)
  protected
    FStarfield: IStarfield;
  public
    procedure OnGetSettings(var aSettings: TGameSettings); override;
    procedure OnStartup; override;
    procedure OnShutdown; override;
    procedure OnUpdate(aDeltaTime: Double); override;
    procedure OnRender; override;
    procedure OnRenderHUD; override;
  end;

implementation

{ TScreenshakeEx }
procedure TScreenshakeEx.OnInit;
begin
  inherited;
end;

procedure TScreenshakeEx.OnDone;
begin
  inherited;
end;

procedure TScreenshakeEx.OnRun;
begin
  inherited;
end;

procedure TScreenshakeEx.OnGetSettings(var aSettings: TGameSettings);
begin
  inherited;

  // Archive
  aSettings.ArchiveFilename := 'Data.arc';

  // Window
  aSettings.WindowTitle := aSettings.WindowTitle + ' - Example Template';
  aSettings.WindowClearColor := BLACK;
end;

procedure TScreenshakeEx.OnStartup;
begin
  inherited;

  // show splash screen
  Topaz.Splashscreen.Show;

  Topaz.Get(IStarfield,  FStarfield);
end;

procedure TScreenshakeEx.OnShutdown;
begin
  Topaz.Release(FStarfield);

  inherited;
end;

procedure TScreenshakeEx.OnReady(aReady: Boolean);
begin
  inherited;
end;

procedure TScreenshakeEx.OnUpdate(aDeltaTime: Double);
begin
  inherited;

  if Topaz.Input.KeyPressed(KEY_S) then
    Topaz.Screenshake.Start(60, 5);

  FStarfield.Update(aDeltaTime);
end;

procedure TScreenshakeEx.OnFixedUpdate;
begin
  inherited;
end;

procedure TScreenshakeEx.OnClearWindow;
begin
  inherited;
end;

procedure TScreenshakeEx.OnShowWindow;
begin
  inherited;
end;

procedure TScreenshakeEx.OnRender;
begin
  inherited;

  FStarfield.Render;
end;

procedure TScreenshakeEx.OnRenderHUD;
begin
  inherited;

  HudText(Font, GREEN, haLeft, HudTextItem('S', 'Screenshake'), []);
end;

procedure TScreenshakeEx.OnPreShowWindow;
begin
  inherited;
end;

procedure TScreenshakeEx.OnPostShowWindow;
begin
  inherited;
end;

procedure TScreenshakeEx.OnCmdConsoleState(aState: TCmdConsoleState);
begin
  inherited;
end;

procedure TScreenshakeEx.OnVideoState(aState: TVideoState; aFilename: WideString);
begin
  inherited;
end;

procedure TScreenshakeEx.OnScreenshot(const aFilename: WideString);
begin
  inherited;
end;

procedure TScreenshakeEx.OnProcessIMGUI;
begin
  inherited;
end;

procedure TScreenshakeEx.OnDisposeActor(aActor: TActor);
begin
  inherited;
end;

procedure TScreenshakeEx.OnSetupStartupDialog;
begin
  inherited;
end;

procedure TScreenshakeEx.OnStartupDialogMore;
begin
  inherited;
end;

function  TScreenshakeEx.OnStartupDialogRun: Boolean;
begin
  Result := inherited;
end;

procedure TScreenshakeEx.OnBuildArchiveProgress(const aFilename: WideString; aProgress: Integer; aNewFile: Boolean);
begin
  inherited;
end;

procedure TScreenshakeEx.OnSpeechWord(const aWord, aText: WideString);
begin
  inherited;
end;

procedure TScreenshakeEx.OnHighscoreAction(aHighscores: IHighscores; aAction: THighscoreAction);
begin
  inherited;
end;

procedure TScreenshakeEx.OnInAppPurchase(aIAP: IInAppPurchase);
begin
  inherited;
end;

procedure TScreenshakeEx.OnSocialPost(const aSuccess: Boolean; const aErrorMsg, aMsg, aMediaFilename: WideString);
begin
  inherited;
end;

procedure TScreenshakeEx.OnSendMail(const aFromEmail, aFromName, aSubject, aToEmail, aBody, aError: WideString);
begin
  inherited;
end;

procedure TScreenshakeEx.OnLuaState(aState: TLuaState);
begin
  inherited;
end;

procedure TScreenshakeEx.OnBeforeRenderScene(aSceneNum: Integer);
begin
  inherited;
end;

procedure TScreenshakeEx.OnAfterRenderScene(aSceneNum: Integer);
begin
  inherited;
end;

{ TScreenshot }
procedure TScreenshotEx.OnGetSettings(var aSettings: TGameSettings);
begin
  inherited;
  aSettings.WindowTitle := aSettings.WindowTitle + ' - Screenshot Example';
end;

procedure TScreenshotEx.OnStartup;
begin
  inherited;

  // show splash screen
  Topaz.Splashscreen.Show;

  Topaz.Get(ITexture, FScreenshotImage);

  Topaz.Get(ITExture, FTexture);
  FTexture.Load(Archive, 'arc/images/bluestone.png', nil);
  FPos.Assign(0, 0, 30, 30);
end;

procedure TScreenshotEx.OnShutdown;
begin
  Topaz.Release(FTexture);
  Topaz.Release(FScreenshotImage);

  inherited;
end;

procedure TScreenshotEx.OnUpdate(aDeltaTime: Double);
begin
  inherited;

  // update postion
  FPos.X := FPos.X + (FPos.Z * aDeltaTime);
  FPos.Y := FPos.Y + (FPos.W * aDeltaTime);

  // take a screenshot
  if Topaz.Input.KeyPressed(KEY_S) then
    Topaz.Screenshot.Take;
end;

procedure TScreenshotEx.OnRender;
begin
  inherited;

  FTexture.DrawTiled(FPos.X, FPos.Y)
end;

procedure TScreenshotEx.OnRenderHUD;
begin
  inherited;
  HudText(Font, GREEN, haLeft, HudTextItem('S', 'Screenshot'), []);
  HudText(Font, YELLOW, haLeft, HudTextItem('File', '%s'), [Topaz.Util.GetFileName(FFilename)]);
end;

procedure TScreenshotEx.OnPreShowWindow;
begin
  inherited;

  // display scaled down version of last screen image
  FScreenshotImage.Draw(Topaz.Window.Width/2, Topaz.Window.Height/2, 0.5, 0, WHITE, haCenter, vaCenter);
end;

procedure TScreenshotEx.OnScreenshot(const aFilename: WideString);
begin
  FFilename := aFilename;

  // load in this image
  FScreenshotImage.Load(nil, FFilename, nil);
end;

{ TSpeechEx }
procedure TSpeechEx.OnGetSettings(var aSettings: TGameSettings);
begin
  inherited;
  aSettings.WindowTitle := aSettings.WindowTitle + ' - Speech Example';
  Topaz.Speech.SubstituteWord('enkripted', 'encrypted');
end;

procedure TSpeechEx.OnStartup;
begin
  inherited;

  // show splash screen
  Topaz.Splashscreen.Show;

end;

procedure TSpeechEx.OnShutdown;
begin
  inherited;
end;

procedure TSpeechEx.OnUpdate(aDeltaTime: Double);
begin
  inherited;
  if Topaz.Input.KeyPressed(KEY_S) then
    Topaz.Speech.Say(cSpeak, True);
end;

procedure TSpeechEx.OnRenderHUD;
begin
  inherited;
  HudText(Font, GREEN,  haLeft, HudTextItem('S', 'Speak'), []);
  HudText(Font, ORANGE, haLeft, HudTextItem('Speak:', '%s', ' '), [FWord]);
end;

procedure TSpeechEx.OnSpeechWord(const aWord: WideString; const aText: WideString);
begin
  inherited;

  FWord := aWord;
end;

{ TStarfieldEx }
procedure TStarfieldEx.OnGetSettings(var aSettings: TGameSettings);
begin
  inherited;

  aSettings.WindowTitle := aSettings.WindowTitle + ' - Starfield Example';
  aSettings.WindowClearColor := BLACK;
end;

procedure TStarfieldEx.OnStartup;
begin
  inherited;

  // show splash screen
  Topaz.Splashscreen.Show;

  Topaz.Get(IStarfield, FStarfield);
end;

procedure TStarfieldEx.OnShutdown;
begin
  Topaz.Release(FStarfield);

  inherited;
end;

procedure TStarfieldEx.OnUpdate(aDeltaTime: Double);
const
  cFactor = 20;
begin
  inherited;

  if Topaz.Input.KeyPressed(KEY_1) then
  begin
    FStarfield.SetXSpeed(25*cFactor);
    FStarfield.SetYSpeed(0);
    FStarfield.SetZSpeed(-(5*cFactor));
    FStarfield.SetVirtualPos(0, 0);
  end;

  if Topaz.Input.KeyPressed(KEY_2) then
  begin
    FStarfield.SetXSpeed(0);
    FStarfield.SetYSpeed(-25*cFactor);
    FStarfield.SetZSpeed(-(5*cFactor));
    FStarfield.SetVirtualPos(0, 0);

  end;

  if Topaz.Input.KeyPressed(KEY_3) then
  begin
    FStarfield.SetXSpeed(-25*cFactor);
    FStarfield.SetYSpeed(0);
    FStarfield.SetZSpeed(-(5*cFactor));
    FStarfield.SetVirtualPos(0, 0);
  end;

  if Topaz.Input.KeyPressed(KEY_4) then
  begin
    FStarfield.SetXSpeed(0);
    FStarfield.SetYSpeed(25*cFactor);
    FStarfield.SetZSpeed(-(5*cFactor));
    FStarfield.SetVirtualPos(0, 0);
  end;

  if Topaz.Input.KeyPressed(KEY_5) then
  begin
    FStarfield.SetXSpeed(0);
    FStarfield.SetYSpeed(0);
    FStarfield.SetZSpeed(5*cFactor);
    FStarfield.SetVirtualPos(0, 0);
  end;

  if Topaz.Input.KeyPressed(KEY_6) then
  begin
    FStarfield.Init(250, -1000, -1000, 10, 1000, 1000, 1000, 160);
    FStarfield.SetZSpeed(0);
    FStarfield.SetYSpeed(15*cFactor);
  end;


  if Topaz.Input.KeyPressed(KEY_7) then
  begin
    FStarfield.Init(250, -1000, -1000, 10, 1000, 1000, 1000, 120);
    FStarfield.SetXSpeed(0);
    FStarfield.SetYSpeed(0);
    FStarfield.SetZSpeed(-60*3);
    FStarfield.SetVirtualPos(0, 0);
  end;

  FStarfield.Update(aDeltaTime);
end;

procedure TStarfieldEx.OnRender;
begin
  inherited;

  FStarfield.Render;
end;

procedure TStarfieldEx.OnRenderHUD;
begin
  inherited;

  HudText(Font, GREEN, haLeft, HudTextItem('1-7', 'Change starfield'), []);
end;

end.
