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

unit uChainActionDemo;

interface

uses
  TopazGameLib;

const
  // scene
  SCN_COUNT  = 2;
  SCN_CIRCLE = 0;
  SCN_EXPLO  = 1;

  // circle
  SHRINK_FACTOR = 0.65;

  CIRCLE_SCALE = 0.125;
  CIRCLE_SCALE_SPEED   = 0.95;

  CIRCLE_EXP_SCALE_MIN = 0.05;
  CIRCLE_EXP_SCALE_MAX = 0.49;

  CIRCLE_MIN_COLOR = 64;
  CIRCLE_MAX_COLOR = 255;

  CIRCLE_COUNT = 80;

type

  { TCommonEntity }
  TCommonEntity = class(TEntityActor)
  public
    constructor Create; override;
    procedure OnCollide(aActor: TActor; aHitPos: TVector); override;
    function  Collide(aActor: TActor; var aHitPos: TVector): Boolean; override;
  end;

  { TCircle }
  TCircle = class(TCommonEntity)
  protected
    FColor: TColor;
    FSpeed: Single;
  public
    constructor Create; override;
    destructor Destroy; override;
    procedure OnUpdate(aDeltaTime: Double); override;
    procedure OnRender; override;
    procedure OnCollide(aActor: TActor; aHitPos: TVector); override;
    property Speed: Single read FSpeed;
  end;

  { TCircleExplosion }
  TCircleExplosion = class(TCommonEntity)
  protected
    FColor: array[0..1] of TColor;
    FState: Integer;
    FFade: Single;
    FSpeed: Single;
  public
    constructor Create; override;
    destructor Destroy; override;
    procedure Setup(aX, aY: Single; aColor: TColor); overload;
    procedure Setup(aCircle: TCircle); overload;
    procedure OnUpdate(aDeltaTime: Double); override;
    procedure OnRender; override;
    procedure OnCollide(aActor: TActor; aHitPos: TVector); override;
  end;

  { TChainActionDemo }
  TChainActionDemo = class(TGame)
  protected
    FExplosions: Integer;
    FChainActive: Boolean;
    FMusic: Integer;
    FStarfield: IStarfield;
  public
    property Explosions: Integer read FExplosions write FExplosions;
    constructor Create; override;
    destructor Destroy; override;
    procedure OnGetSettings(var aSettings: TGameSettings); override;
    procedure OnStartup; override;
    procedure OnShutdown; override;
    procedure OnUpdate(aDeltaTime: Double); override;
    procedure OnRender; override;
    procedure OnRenderHUD; override;
    procedure OnBeforeRenderScene(aSceneNum: Integer); override;
    procedure OnAfterRenderScene(aSceneNum: Integer); override;
    procedure SpawnCircle(aNum: Integer); overload;
    procedure SpawnCircle; overload;
    procedure SpawnExplosion(aX, aY: Single; aColor: TColor); overload;
    procedure SpawnExplosion(aCircle: TCircle); overload;
    procedure CheckCollision(aEntity: TEntityActor);
    procedure StartChain;
    procedure PlayLevel;
    function  ChainEnded: Boolean;
    function  LevelClear: Boolean;
  end;

implementation

var
  Game: TChainActionDemo = nil;


{ TCommonEntity }
constructor TCommonEntity.Create;
begin
  inherited;

  CanCollide := True;
end;

procedure TCommonEntity.OnCollide(aActor: TActor; aHitPos: TVector);
begin
  inherited;

end;

function  TCommonEntity.Collide(aActor: TActor; var aHitPos: TVector): Boolean;
begin
  Result := False;

  if Overlap(aActor) then
  begin
    aHitPos := Entity.GetPos;
    Result := True;
  end;
end;


{ TCircle }
constructor TCircle.Create;
var
  LOK: Boolean;
  LVP: TRectangle;
  LA: Single;
begin
  inherited;

  Topaz.Window.GetViewportSize(LVP);

  Init(Game.Sprite, 0);
  Entity.SetShrinkFactor(SHRINK_FACTOR);
  Entity.SetScaleAbs(CIRCLE_SCALE);
  Entity.SetPosAbs(Topaz.Math.RandomRange(32, (LVP.Width-1)-32), Topaz.Math.RandomRange(32, (LVP.Width-1)-32));

  LOK := False;
  repeat
    //Sleep(1);
    FColor := Topaz.Color.FromByte(
      Byte(Topaz.Math.RandomRange(CIRCLE_MIN_COLOR, CIRCLE_MAX_COLOR)),
      Byte(Topaz.Math.RandomRange(CIRCLE_MIN_COLOR, CIRCLE_MAX_COLOR)),
      Byte(Topaz.Math.RandomRange(CIRCLE_MIN_COLOR, CIRCLE_MAX_COLOR)),
      Byte(Topaz.Math.RandomRange(CIRCLE_MIN_COLOR, CIRCLE_MAX_COLOR))
    );

    if Topaz.Color.Equal(FColor, BLACK) or
       Topaz.Color.Equal(FColor, WHITE) then
      continue;

    LOK := True;
  until LOK;

  LOK := False;
  repeat
    //Sleep(1);
    LA := Topaz.Math.RandomRange(0, 359);
    if (Abs(LA) >=90-10) and (Abs(LA) <= 90+10) then continue;
    if (Abs(LA) >=270-10) and (Abs(LA) <= 270+10) then continue;

    LOK := True;
  until LOK;

  Entity.RotateAbs(LA);
  Entity.SetColor(FColor);
  FSpeed := Topaz.Math.RandomRange(3*35, 7*35);
end;

destructor TCircle.Destroy;
begin

  inherited;
end;

procedure TCircle.OnUpdate(aDeltaTime: Double);
var
  LV: TVector;
  LVP: TRectangle;
  LR: Single;
begin
  Topaz.Window.GetViewportSize(LVP);

  Entity.Thrust(FSpeed * aDeltaTime);

  LV := Entity.GetPos;

  LR := Entity.GetRadius / 2;

  if LV.x < -LR then
    LV.x := LVP.Width-1
  else if LV.x > (LVP.Width-1)+LR then
    LV.x := -LR;

  if LV.y < -LR then
    LV.y := (LVP.Height-1)
  else if LV.y > (LVP.Height-1)+LR then
    LV.y := -LR;

  Entity.SetPosAbs(LV.X, LV.Y);
end;

procedure TCircle.OnRender;
begin
  inherited;

end;

procedure TCircle.OnCollide(aActor: TActor; aHitPos: TVector);
var
  LPos: TVector;
begin
  Terminated := True;
  LPos := Entity.GetPos;

  Game.SpawnExplosion(LPos.X, LPos.Y, FColor);
  Game.Explosions := Game.Explosions + 1;
end;


{ TCircleExplosion }
constructor TCircleExplosion.Create;
begin
  inherited;

  Init(Game.Sprite, 0);

  Entity.SetShrinkFactor(SHRINK_FACTOR);
  Entity.SetScaleAbs(CIRCLE_SCALE);

  FState := 0;
  FFade := 0;
  FSpeed := 0;
end;

destructor TCircleExplosion.Destroy;
begin

  inherited;
end;

procedure TCircleExplosion.Setup(aX, aY: Single; aColor: TColor);
begin
  FColor[0] := aColor;
  FColor[1] := aColor;
  Entity.SetPosAbs(aX, aY);
end;

procedure TCircleExplosion.Setup(aCircle: TCircle);
var
  LPos: TVector;
begin
  LPos := aCircle.Entity.GetPos;
  Setup(LPos.X, LPos.Y, aCircle.Entity.GetColor);
  Entity.RotateAbs(aCircle.Entity.GetAngle);
  FSpeed := aCircle.Speed;
end;

procedure TCircleExplosion.OnUpdate(aDeltaTime: Double);
begin
  Entity.Thrust(FSpeed*aDeltaTime);

  case FState of
    0: // expand
    begin
      Entity.SetScaleRel(CIRCLE_SCALE_SPEED*aDeltaTime);
      if Entity.GetScale > CIRCLE_EXP_SCALE_MAX then
      begin
        FState := 1;
      end;
      Entity.SetColor(FColor[0]);
    end;

    1: // contract
    begin
      Entity.SetScaleRel(-CIRCLE_SCALE_SPEED*aDeltaTime);
      FFade := CIRCLE_SCALE_SPEED*aDeltaTime / Entity.GetScale;
      if Entity.GetScale < CIRCLE_EXP_SCALE_MIN then
      begin
        FState := 2;
        FFade := 1.0;
        Terminated := True;
      end;
      //C := Engine.Color.Fade(FColor[0], FColor[1], FFade);
      //Entity.SetColor(C);
    end;

    2: // kill
    begin
      Terminated := True;
    end;

  end;

  Game.CheckCollision(Self);
end;

procedure TCircleExplosion.OnRender;
begin
  inherited;

end;

procedure TCircleExplosion.OnCollide(aActor: TActor; aHitPos: TVector);
begin
end;

{ TChainActionDemo }
constructor TChainActionDemo.Create;
begin
  inherited;
  Game := Self;
end;

destructor TChainActionDemo.Destroy;
begin
  Game := nil;
  inherited;
end;

procedure TChainActionDemo.OnGetSettings(var aSettings: TGameSettings);
begin
  inherited;

  aSettings.ArchiveFilename := 'Data.arc';

  aSettings.WindowTitle  := aSettings.WindowTitle + ' - ChainAction Demo';
  aSettings.WindowClearColor := BLACK;

  aSettings.SceneCount := SCN_COUNT;
end;

procedure TChainActionDemo.OnStartup;
var
  LPage: Integer;
  LGroup: Integer;
begin
  inherited;

  // show splash screen
  Topaz.Splashscreen.Show;

  // init circle sprite
  LPage := Sprite.LoadPage(Archive, 'arc/images/light.png', @COLORKEY);
  LGroup := Sprite.AddGroup;
  Sprite.AddImageFromGrid(LPage, LGroup, 0, 0, 256, 256);

  // init music
  FMusic := Topaz.Audio.LoadMusic(Archive, 'arc/music/song06.ogg');
  Topaz.Audio.PlayMusic(FMusic, 1.0, True);

  // init starfield
  Topaz.Get(IStarfield, FStarfield);

  PlayLevel;
end;

procedure TChainActionDemo.OnShutdown;
begin
  Topaz.Release(FStarfield);
  Topaz.Audio.UnloadMusic(FMusic);

  inherited;
end;

procedure TChainActionDemo.OnUpdate(aDeltaTime: Double);
begin
  inherited;

  // start  new level
  if Topaz.Input.KeyPressed(KEY_SPACE) then
  begin
    if LevelClear then
      PlayLevel;
  end;

  // start chain reaction
  if Topaz.Input.MousePressed(MOUSE_BUTTON_LEFT) then
  begin
    if ChainEnded then
      StartChain;
  end;

  FStarfield.Update(aDeltaTime);
end;

procedure TChainActionDemo.OnRender;
begin
  inherited;

  FStarfield.Render;
end;

procedure TChainActionDemo.OnRenderHUD;
var
  LVP: TRectangle;
  LX: Single;
  LC: TColor;
begin
  inherited;

  HudText(Font, YELLOW, haLeft, HudTextItem('Circles:', ' %d', ''), [Scene.GetList(SCN_CIRCLE).GetCount]);

  Topaz.Window.GetViewportSize(LVP);
  LX := LVP.Width / 2;

  if ChainEnded and (not LevelClear) then
    LC := WHITE
  else
    LC := DIMWHITE;

  Font.PrintText(LX, 120{*Display.GetUpScale}, LC, haCenter, 'Click mouse to start chain reaction', []);

  if LevelClear then
  begin
    Font.PrintText(LX, (120+21){*Display.GetUpScale}, ORANGE, haCenter, 'Press SPACE to start new level', []);
  end;
end;

procedure TChainActionDemo.OnBeforeRenderScene(aSceneNum: Integer);
begin
  case aSceneNum of
    SCN_CIRCLE, SCN_EXPLO:
    begin
      Topaz.Window.SetBlendMode(bmAdditiveAlpha);
    end;
  end;
end;

procedure TChainActionDemo.OnAfterRenderScene(aSceneNum: Integer);
begin
  case aSceneNum of
    SCN_CIRCLE, SCN_EXPLO:
    begin
      Topaz.Window.RestoreDefaultBlendMode;
    end;
  end;
end;

procedure TChainActionDemo.SpawnCircle(aNum: Integer);
var
  I: Integer;
begin
  for I := 0 to aNum - 1 do
    Scene.GetList(SCN_CIRCLE).Add(TCircle.Create);
end;

procedure TChainActionDemo.SpawnCircle;
begin
  SpawnCircle(Topaz.Math.RandomRange(10, 40));
end;

procedure TChainActionDemo.SpawnExplosion(aX, aY: Single; aColor: TColor);
var
  obj: TCircleExplosion;
begin
  obj := TCircleExplosion.Create;
  obj.Setup(aX, aY, aColor);
  Scene.GetList(SCN_EXPLO).Add(obj);
end;

procedure TChainActionDemo.SpawnExplosion(aCircle: TCircle);
var
  obj: TCircleExplosion;
begin
  obj := TCircleExplosion.Create;
  obj.Setup(aCircle);
  Scene.GetList(SCN_EXPLO).Add(obj);
end;

procedure TChainActionDemo.CheckCollision(aEntity: TEntityActor);
begin
  Scene.GetList(SCN_CIRCLE).CheckCollision([], aEntity);
end;

procedure TChainActionDemo.StartChain;
begin
  if not FChainActive then
  begin
    SpawnExplosion(GetMousePos.X, GetMousePos.Y, WHITE);
    FChainActive := True;
  end;
end;

procedure TChainActionDemo.PlayLevel;
begin
  Scene.ClearAll;
  SpawnCircle(CIRCLE_COUNT);
  FChainActive := False;
  FExplosions := 0;
end;

function  TChainActionDemo.ChainEnded: Boolean;
begin
  Result := True;

  if FChainActive then
  begin
    Result := Boolean(Scene.GetList(SCN_EXPLO).GetCount = 0);
    if Result  then
      FChainActive := False;
  end;
end;

function  TChainActionDemo.LevelClear: Boolean;
begin
  Result := Boolean(Scene.GetList(SCN_CIRCLE).GetCount = 0);
end;

end.
