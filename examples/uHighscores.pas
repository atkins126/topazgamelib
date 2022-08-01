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

unit uHighscores;

interface

uses
  TopazGameLib;

type

  { THighscoreEx }
  THighscoreEx = class(TGame)
  protected
    FStarfield: IStarfield;
    FHighscores: IHighscores;
    FScores: array of THighscore;
    FNewScore: THighscore;
  public
    procedure OnInit; override;
    procedure OnDone; override;
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
    procedure OnBuildArchiveProgress(const aFilename: WideString; aProgress: Integer; aNewFile: Boolean); override;
    procedure OnSpeechWord(const aWord, aText: WideString); override;
    procedure OnHighscoreAction(aHighscores: IHighscores; aAction: THighscoreAction); override;
    procedure OnInAppPurchase(aIAP: IInAppPurchase); override;
    procedure OnSocialPost(const aSuccess: Boolean; const aErrorMsg, aMsg, aMediaFilename: WideString); override;
    procedure OnSendMail(const aFromEmail, aFromName, aSubject, aToEmail, aBody, aError: WideString); override;
    procedure OnLuaState(aState: TLuaState); override;
    procedure PostScores;
    procedure ListScores;
    procedure ClearScores;
  end;

implementation

uses
  System.SysUtils;

const
  // freesqldatabase.com
  cDbServer   = 'sql5.freesqldatabase.com';
  cDbPort     = DATABASE_DEFAULT_MYSQL_PORT;
  cDbName     = 'sql5510036';
  cDbUser     = 'sql5510036';
  cDbPassword = 'C6qbtkWf1b';



{ THighscoreTest }
procedure THighscoreEx.OnInit;
begin
  inherited;
end;

procedure THighscoreEx.OnDone;
begin
  inherited;
end;

procedure THighscoreEx.OnGetSettings(var aSettings: TGameSettings);
begin
  inherited;

  aSettings.ArchiveFilename := 'Data.arc';

  aSettings.WindowTitle := 'Topaz - Testbed';
  aSettings.WindowClearColor := BLACK;
end;

procedure THighscoreEx.OnStartup;
begin
  inherited;

  // show splash screen
  Topaz.Splashscreen.Show;

  Topaz.Get(IStarfield, FStarfield);

  Topaz.Get(IHighscores, FHighscores);
  FHighscores.Setup(10, cDbServer, cDbName, cDbUser, cDbPassword, 'game1');
end;

procedure THighscoreEx.OnShutdown;
begin
  Topaz.Release(FHighscores);
  Topaz.Release(FStarfield);

  inherited;
end;

procedure THighscoreEx.OnReady(aReady: Boolean);
begin
  inherited;
end;

procedure THighscoreEx.OnUpdate(aDeltaTime: Double);
begin
  inherited;

  if Topaz.Input.KeyPressed(KEY_1) then  PostScores;
  if Topaz.Input.KeyPressed(KEY_2) then  ListScores;
  if Topaz.Input.KeyPressed(KEY_3) then  ClearScores;

  FStarfield.Update(aDeltaTime);
end;

procedure THighscoreEx.OnFixedUpdate;
begin
  inherited;
end;

procedure THighscoreEx.OnClearWindow;
begin
  inherited;
end;

procedure THighscoreEx.OnShowWindow;
begin
  inherited;
end;

procedure THighscoreEx.OnRender;
begin
  inherited;

  FStarfield.Render;
end;

procedure THighscoreEx.OnRenderHUD;
var
  LScore: THighscore;
  LPos: TVector;
  LLine: string;
  LColor: TColor;
  LOffset: Integer;
begin
  inherited;

  HudText(FFont, GREEN, haLeft, HudTextItem('1', 'Post scores'), []);
  HudText(FFont, GREEN, haLeft, HudTextItem('2', 'List scores'), []);
  HudText(FFont, GREEN, haLeft, HudTextItem('3', 'Clear scores'), []);


  if FScores = nil then Exit;

  LOffset := 60;
  LLine := 'NAME'.PadRight(20) + 'LEVEL'.PadRight(7) + 'SKILL'.PadRight(7) + 'SCORE'.PadRight(10) + 'LOCATION';
  Font.PrintText(100, (84-16) + LOffset, WHITE, haLeft, LLine, []);


  LLine := '';
  Font.PrintText(100, 84 + LOffset, GREEN, haLeft, LLine.PadRight(80, '-'), []);

  LPos.Assign(100, 100 + LOffset);
  for LScore in FScores do
  begin
    LLine := string(LScore.Name).PadRight(20) + LScore.Level.ToString.PadRight(7) + LScore.Skill.ToString.PadRight(7) + LScore.Score.ToString.PadRight(10) + LScore.Location;
    //LLine := Topaz.Util.PadRight(LScore.Name, 20) + LScore.Level.ToString.PadRight(7) + LScore.Skill.ToString.PadRight(7) + LScore.Score.ToString.PadRight(10) + LScore.Location;
    if LScore = FNewScore then
      LColor := WHITE
    else
      LColor := GREEN;

    Font.PrintText(LPos.X, LPos.Y, 0, LColor, haLeft, LLine, []);
  end;


  LLine := '';
  Font.PrintText(100, 262+10 + LOffset, GREEN, haLeft, LLine.PadRight(80, '-'), []);

  LLine := 'Posted ' + string(FNewScore.Name).PadRight(20) + FNewScore.Level.ToString.PadRight(7) + FNewScore.Skill.ToString.PadRight(7) + FNewScore.Score.ToString.PadRight(10) + FNewScore.Location;
  Font.PrintText(45, 278+10 + LOffset, ORANGE, haLeft, LLine, []);
end;

procedure THighscoreEx.OnPreShowWindow;
begin
  inherited;
end;

procedure THighscoreEx.OnPostShowWindow;
begin
  inherited;
end;

procedure THighscoreEx.OnCmdConsoleState(aState: TCmdConsoleState);
begin
  inherited;
end;

procedure THighscoreEx.OnVideoState(aState: TVideoState; aFilename: WideString);
begin
  inherited;
end;

procedure THighscoreEx.OnScreenshot(const aFilename: WideString);
begin
  inherited;
end;

procedure THighscoreEx.OnProcessIMGUI;
begin
  inherited;
end;

procedure THighscoreEx.OnDisposeActor(aActor: TActor);
begin
  inherited;
end;

procedure THighscoreEx.OnSetupStartupDialog;
begin
  inherited;
end;

procedure THighscoreEx.OnStartupDialogMore;
begin
  inherited;
end;

procedure THighscoreEx.OnBuildArchiveProgress(const aFilename: WideString; aProgress: Integer; aNewFile: Boolean);
begin
  inherited;
end;

procedure THighscoreEx.OnSpeechWord(const aWord, aText: WideString);
begin
  inherited;
end;

procedure THighscoreEx.OnHighscoreAction(aHighscores: IHighscores; aAction: THighscoreAction);
var
  LIndex: Integer;
begin
  //if aHighscores.GetResultCount = 0 then Exit;
  //WriteLn('Error: ', aHighscores.LastError);

  FScores := nil;
  SetLength(FScores, aHighscores.GetResultCount);
  for LIndex := 0 to aHighscores.GetResultCount-1 do
  begin
    aHighscores.GetResult(LIndex, FScores[LIndex]);
    //WriteLn(Format('%s(%d)', [LScore.Name, LScore.Score]));
  end;
end;

procedure THighscoreEx.OnInAppPurchase(aIAP: IInAppPurchase);
begin
  inherited;
end;

procedure THighscoreEx.OnSocialPost(const aSuccess: Boolean; const aErrorMsg, aMsg, aMediaFilename: WideString);
begin
  inherited;
end;

procedure THighscoreEx.OnSendMail(const aFromEmail, aFromName, aSubject, aToEmail, aBody, aError: WideString);
begin
  inherited;
end;

procedure THighscoreEx.OnLuaState(aState: TLuaState);
begin
  inherited;
end;

const
  cName: array[0..19] of string = ('Jarrod', 'Sam', 'Jimmy', 'Frank', 'Susan', 'Annie', 'Beth', 'Tony', 'Tommy', 'Perl', 'Charlie', 'Nicole', 'Jackie', 'Bob', 'Chris', 'Eddie', 'Bob', 'Drex', 'Toni', 'Sammy');
  cLoc : array[0..19] of string = ('Old Town', 'Cross City', 'Chiefland', 'Bronsan', 'Gainsville', 'Tamarac', 'Boston', 'Thomasville', 'Jacksonville', 'Delaware', 'Miami', 'Fort Launderdale', 'Del Ray', 'San Diego', 'Fort Worth', 'Charlotte', 'Portland', 'Las Vegas', 'Memphis', 'Tucson');

procedure THighscoreEx.PostScores;
var
  LIndex: Integer;
  LScore: Cardinal;
  LSkill: Integer;
begin
  //FHighscores.Post('Jarrod', 1, 105, 1, 0, 'USA');
  //FHighscores.Post('John', 1, 205, 1, 0, 'USA');
  //FHighscores.CreateTable('game1');
  LScore := Topaz.Math.RandomRange(1, 10000);
  LIndex := Topaz.Math.RandomRange(0, 19);
  //LSkill := GV.Math.RandomRange(1, 3);
  LSkill := 1;
  FNewScore.Name := cName[LIndex];
  FNewScore.Level := 1;
  FNewScore.Score := LScore;
  FNewScore.Skill := LSkill;
  FNewScore.Duration := 0;
  FNewScore.Location := cLoc[LIndex];
  //FHighscores.Post(cName[LIndex], 1, LScore, LSkill, 0, cLoc[LIndex]);
  FHighscores.Post(FNewScore);
end;

procedure THighscoreEx.ListScores;
begin
  FHighscores.List(1, 1);
end;

procedure THighscoreEx.ClearScores;
begin
  FHighscores.Clear;
end;

end.
