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

unit uAstroBlasterDemo;

interface

uses
  System.SysUtils,
  TopazGameLib;

const
  cMultiplier = 60;
  cPlayerMultiplier = 600;

  // player
  cPlayerTurnRate      = 2.7 * cPlayerMultiplier;
  cPlayerFriction      = 0.005* cPlayerMultiplier;
  cPlayerAccel         = 0.1* cPlayerMultiplier;
  cPlayerMagnitude     = 10 * 14;
  cPlayerHalfSize      = 32.0;
  cPlayerFrameFPS      = 12;
  cPlayerNeutralFrame  = 0;
  cPlayerFirstFrame    = 1;
  cPlayerLastFrame     = 3;
  cPlayerTurnAccel     = 300;
  cPlayerMaxTurn       = 150;
  cPlayerTurnDrag      = 150;

  // scene
  cSceneBkgrnd         = 0;
  cSceneRocks          = 1;
  cSceneRockExp        = 2;
  cSceneEnemyWeapon    = 3;
  cSceneEnemy          = 4;
  cSceneEnemyExp       = 5;
  cScenePlayerWeapon   = 6;
  cScenePlayer         = 7;
  cScenePlayerExp      = 8;
  cSceneCount          = 9;

  // sound effects
  cSfxRockExp          = 0;
  cSfxPlayerExp        = 1;
  cSfxEnemyExp         = 2;
  cSfxPlayerEngine     = 3;
  cSfxPlayerWeapon     = 4;

  // volume
  cVolPlayerEngine     = 0.40;
  cVolPlayerWeapon     = 0.30;
  cVolRockExp          = 0.25;
  cVolSong             = 0.55;

  // rocks
  cRocksMin            = 7;
  cRocksMax            = 21;

  DEBUG_RENDERPOLYPOINT = False;

type

  { TSpriteID }
  PSpriteID = ^TSpriteID;
  TSpriteID = record
    Page : Integer;
    Group: Integer;
  end;

  { TRockSize }
  TRockSize = (rsLarge, rsMedium, rsSmall);

  { TEntity }
  TBaseEntity = class(TEntityActor)
  protected
    FTest: string;
  public
    constructor Create; override;
    destructor Destroy; override;
    procedure WrapPosAtEdge(var aPos: TVector);
  end;

  { TWeapon }
  TWeapon = class(TBaseEntity)
  protected
    FSpeed: Single;
  public
    constructor Create; override;
    destructor Destroy; override;
    procedure OnRender; override;
    procedure OnUpdate(aDeltaTime: Double); override;
    procedure OnCollide(aActor: TActor; aHitPos: TVector); override;
    procedure Spawn(aId: Integer; aPos: TVector; aAngle, aSpeed: Single);
  end;

  { TExplosion }
  TExplosion = class(TBaseEntity)
  protected
    FSpeed: Single;
    FCurDir: TVector;
  public
    constructor Create; override;
    destructor Destroy; override;
    procedure OnRender; override;
    procedure OnUpdate(aElapsedTime: Double); override;
    procedure Spawn(aPos: TVector; aDir: TVector; aSpeed, aScale: Single);
  end;

  { TParticle }
  TParticle = class(TBaseEntity)
  protected
    FSpeed: Single;
    FFadeSpeed: Single;
    FAlpha: Single;
  public
    constructor Create; override;
    destructor Destroy; override;
    procedure OnRender; override;
    procedure OnUpdate(aDeltaTime: Double); override;
    procedure Spawn(aId: Integer; aPos: TVector; aAngle, aSpeed, aScale, aFadeSpeed: Single; aScene: Integer);
  end;

  { TRock }
  TRock = class(TBaseEntity)
  protected
    FCurDir: TVector;
    FSpeed: Single;
    FRotSpeed: Single;
    FSize: TRockSize;
    function CalcScale(aSize: TRockSize): Single;
  public
    constructor Create; override;
    destructor Destroy; override;
    procedure OnRender; override;
    procedure OnUpdate(aDeltaTime: Double); override;
    procedure OnCollide(aActor: TActor; aHitPos: TVector); override;
    procedure Spawn(aId: Integer; aSize: TRockSize; aPos: TVector; aAngle: Single);
    procedure Split(aHitPos: TVector);
  end;

  { TPlayer }
  TPlayer = class(TBaseEntity)
  protected
    FTimer    : Single;
    FCurFrame : Integer;
    FThrusting: Boolean;
    FCurAngle : Single;
    FTurnSpeed: Single;
  public
    DirVec    : TVector;
    constructor Create; override;
    destructor Destroy; override;
    procedure OnRender; override;
    procedure OnUpdate(aDelta: Double); override;
    procedure Spawn(aX, aY: Single);
    procedure FireWeapon(aSpeed: Single);
  end;

  { TAstroBlasterDemo }
  TAstroBlasterDemo = class(TGame)
  protected
    FBkPos: TVector;
    FBkColor: TColor;
    FMusic: Integer;
  public
    Sfx: array[0..7] of Integer;
    Background : array[0..3] of ITexture;
    PlayerSprID: TSpriteID;
    EnemySprID: TSpriteID;
    RocksSprID: TSpriteID;
    ShieldsSprID: TSpriteID;
    WeaponSprID: TSpriteID;
    ExplosionSprID: TSpriteID;
    ParticlesSprID: TSpriteID;
  public
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
    procedure SpawnRocks;
    procedure SpawnPlayer;
    procedure SpawnLevel;
    function  LevelCleared: Boolean;
  end;

implementation

const
  cChanPlayerEngine = 0;
  cChanPlayerWeapon = 1;

var
  Player: TPlayer;
  Game: TAstroBlasterDemo = nil;

function RandomRangedslNP(aMin, aMax: Single): Single;
begin
  Result := Topaz.Math.RandomRange(aMin, aMax);
  if Topaz.Math.RandomBool then Result := -Result;
end;

function RangeRangeIntNP(aMin, aMax: Integer): Integer;
begin
  Result := Topaz.Math.RandomRange(aMin, aMax);
  if Topaz.Math.RandomBool then Result := -Result;
end;

{ TBaseEntity }
constructor TBaseEntity.Create;
begin
  inherited;

  CanCollide := True;
end;

destructor TBaseEntity.Destroy;
begin

  inherited;
end;

procedure  TBaseEntity.WrapPosAtEdge(var aPos: TVector);
var
  LHH,LHW: Single;
begin
  LHW := Entity.GetWidth  / 2;
  LHH := Entity.GetHeight /2 ;

  if (aPos.X > (Game.GetSettings.WindowWidth-1)+LHW) then
    aPos.X := -LHW
  else if (aPos.X < -LHW) then
    aPos.X := (Game.GetSettings.WindowWidth-1)+LHW;

  if (aPos.Y > (Game.GetSettings.WindowHeight-1)+LHH) then
    aPos.Y := -LHH
  else if (aPos.Y < -LHW) then
    aPos.Y := (Game.GetSettings.WindowHeight-1)+LHH;
end;


{ TWeapon }
constructor TWeapon.Create;
begin
  inherited;

  Init(Game.Sprite, Game.WeaponSprId.Group);
  Entity.TracePolyPoint(6, 12, 70);
  Entity.SetRenderPolyPoint(DEBUG_RENDERPOLYPOINT);
end;

destructor TWeapon.Destroy;
begin

  inherited;
end;

procedure TWeapon.OnRender;
begin
  inherited;
end;

procedure TWeapon.OnUpdate(aDeltaTime: Double);
begin
  inherited;

  if Entity.IsVisible(0,0) then
    begin
      Entity.Thrust(FSpeed*aDeltaTime);
      Game.Scene.GetList(cSceneRocks).CheckCollision([], Self);
    end
  else
    Terminated := True;
end;

procedure TWeapon.OnCollide(aActor: TActor; aHitPos: TVector);
begin
  CanCollide := False;
  Terminated := True;
end;

procedure  TWeapon.Spawn(aId: Integer; aPos: TVector; aAngle, aSpeed: Single);
begin
  FSpeed := aSpeed;
  Entity.SetFrame(aId);
  Entity.SetPosAbs(aPos.X, aPos.Y);
  Entity.RotateAbs(aAngle);
end;


{ TExplosion }
constructor TExplosion.Create;
begin
  inherited;

  FSpeed := 0;
  FCurDir.X := 0;
  FCurDir.Y := 0;
end;

destructor TExplosion.Destroy;
begin

  inherited;
end;

procedure TExplosion.OnRender;
begin
  inherited;

end;

procedure TExplosion.OnUpdate(aElapsedTime: Double);
var
  LP, LV: TVector;
begin
  if Entity.NextFrame then
  begin
    Terminated := True;
  end;

  LV.X := (FCurDir.X + FSpeed) * aElapsedTime;
  LV.Y := (FCurDir.Y + FSpeed) * aElapsedTime;

  LP := Entity.GetPos;

  LP.X := LP.X + LV.X;
  LP.Y := LP.Y + LV.Y;

  Entity.SetPosAbs(LP.X, LP.Y);

  inherited;
end;

procedure TExplosion.Spawn(aPos: TVector; aDir: TVector; aSpeed, aScale: Single);
begin
  FSpeed := aSpeed;
  FCurDir := aDir;

  Init(Game.Sprite, Game.ExplosionSprID.Group);

  Entity.SetFrameFPS(14);
  Entity.SetScaleAbs(aScale);
  Entity.SetPosAbs(aPos.X, aPos.Y);

  Game.Scene.GetList(cSceneRockExp).Add(Self);
end;


{ TParticle }
constructor TParticle.Create;
begin
  inherited;

end;

destructor TParticle.Destroy;
begin

  inherited;
end;

procedure TParticle.OnRender;
begin
  inherited;

end;

procedure TParticle.OnUpdate(aDeltaTime: Double);
var
  LC,LC2: TColor;
  LA: Single;
begin
  Entity.Thrust(FSpeed*aDeltaTime);

  if Entity.IsVisible(0, 0) then
    begin
      FAlpha := FAlpha - (FFadeSpeed * aDeltaTime);
      if FAlpha <= 0 then
      begin
        FAlpha := 0;
        Terminated := True;
      end;
      LA := FAlpha / 255.0;
      LC2.Red := 1*LA; LC2.Green := 1*LA; LC2.Blue := 1*LA; LC2.Alpha := LA;
      //LC.Make(LC2.Red, LC2.Green, LC2.Blue, LC2.Alpha);
      //LC := Topaz.Color.Make(LC2.Red, LC2.Green, LC2.Blue, LC2.Alpha);
      LC := Topaz.Color.FromFloat(LC2.Red, LC2.Green, LC2.Blue, LC2.Alpha);
      Entity.SetColor(LC);
    end
  else
    Terminated := True;

  inherited;
end;

procedure TParticle.Spawn(aId: Integer; aPos: TVector; aAngle, aSpeed, aScale, aFadeSpeed: Single; aScene: Integer);
begin
  FSpeed := aSpeed;
  FFadeSpeed := aFadeSpeed;
  FAlpha := 255;

  Init(Game.Sprite, Game.ParticlesSprID.Group);

  Entity.SetFrame(aId);
  Entity.SetScaleAbs(aScale);
  Entity.SetPosAbs(aPos.X, aPos.Y);
  Entity.RotateAbs(aAngle);

  Game.Scene.GetList(aScene).Add(Self);
end;


{ TRock }
function TRock.CalcScale(aSize: TRockSize): Single;
begin
  case aSize of
    rsLarge: Result := 1.0;
    rsMedium: Result := 0.65;
    rsSmall: Result := 0.45;
  else
    Result := 1.0;
  end;
end;

constructor TRock.Create;
begin
  inherited;
  FSpeed := 0;
  FRotSpeed := 0;
  FSize := rsLarge;

  Init(Game.Sprite, Game.RocksSprId.Group);

  Entity.TracePolyPoint(6, 12, 70);
  Entity.SetRenderPolyPoint(DEBUG_RENDERPOLYPOINT);
end;

destructor TRock.Destroy;
begin

  inherited;
end;

procedure TRock.OnRender;
begin
  inherited;

end;

procedure TRock.OnUpdate(aDeltaTime: Double);
var
  LP: TVector;
  LV: TVector;
begin
  inherited;

  Entity.RotateRel(FRotSpeed*aDeltaTime);
  LV.X := (FCurDir.X + FSpeed);
  LV.Y := (FCurDir.Y + FSpeed);
  LP := Entity.GetPos;
  LP.X := LP.X + LV.X*aDeltaTime;
  LP.Y := LP.Y + LV.Y*aDeltaTime;
  WrapPosAtEdge(LP);
  Entity.SetPosAbs(LP.X, LP.Y);
end;

procedure TRock.OnCollide(aActor: TActor; aHitPos: TVector);
begin
  CanCollide := False;
  Split(aHitPos);
end;

procedure TRock.Spawn(aId: Integer; aSize: TRockSize; aPos: TVector; aAngle: Single);
begin
  FSpeed := RandomRangedslNP(0.2*cMultiplier, 2*cMultiplier);
  FRotSpeed := RandomRangedslNP(0.2*cMultiplier, 2*cMultiplier);

  FSize := aSize;
  Entity.SetFrame(aId);
  Entity.SetPosAbs(aPos.X, aPos.Y);
  Entity.RotateAbs(Topaz.Math.RandomRange(0, 259));
  Entity.Thrust(1);

  FCurDir := Entity.GetDir;
  FCurDir.Normalize;
  Entity.SetScaleAbs(CalcScale(FSize));
end;

procedure TRock.Split(aHitPos: TVector);

  procedure DoSplit(aId: Integer; aSize: TRockSize; aPos: TVector);
  var
    LR: TRock;
  begin
    LR := TRock.Create;
    LR.Spawn(aId, aSize, aPos, 0);
    Game.Scene.GetList(cSceneRocks).Add(LR);
  end;

  procedure DoExplosion(aScale: Single);
  var
    LP: TVector;
    LE: TExplosion;
  begin
    LP := Entity.GetPos;
    LE := TExplosion.Create;
    LE.Spawn(LP, FCurDir, FSpeed, aScale);
  end;

  procedure DoParticles;
  var
    LC, LI: Integer;
    LP: TParticle;
    LAngle, LSpeed, LFade: Single;
  begin
    LC := 0;
    case FSize of
      rsLarge :
        begin
          LC := 50;
          Topaz.Screenshake.Start(30, 3);
        end;
      rsMedium:
        begin
          LC := 25;
          Topaz.Screenshake.Start(30, 2);
        end;
      rsSmall :
        begin
          LC := 15;
          Topaz.Screenshake.Start(30, 1);
        end;
    end;

    for LI := 1 to LC do
    begin
      LP := TParticle.Create;
      LAngle := Topaz.Math.RandomRange(0, 255);
      LSpeed := Topaz.Math.RandomRange(1*cMultiplier, 7*cMultiplier);
      LFade := Topaz.Math.RandomRange(3*cMultiplier, 7*cMultiplier);

      LP.Spawn(0, aHitPos, LAngle, LSpeed, 0.10, LFade, cSceneRockExp);
    end;
  end;

begin
  case FSize of
    rsLarge:
      begin
        DoSplit(Entity.GetFrame, rsMedium, Entity.GetPos);
        DoSplit(Entity.GetFrame, rsMedium, Entity.GetPos );
        DoExplosion(3.0);
        DoParticles;
        Topaz.Audio.PlaySound(AUDIO_DYNAMIC_CHANNEL, Game.Sfx[cSfxRockExp], cVolRockExp, False);
      end;

    rsMedium:
      begin
        DoSplit(Entity.GetFrame, rsSmall, Entity.GetPos);
        DoSplit(Entity.GetFrame, rsSmall, Entity.GetPos);
        DoExplosion(2.5);
        DoParticles;
        Topaz.Audio.PlaySound(AUDIO_DYNAMIC_CHANNEL, Game.Sfx[cSfxRockExp], cVolRockExp, False);

      end;

    rsSmall:
      begin
        DoExplosion(1.5);
        DoParticles;
        Topaz.Audio.PlaySound(AUDIO_DYNAMIC_CHANNEL, Game.Sfx[cSfxRockExp], cVolRockExp, False);
      end;
  end;

  Terminated := True;
end;


{ TPlayer }
constructor TPlayer.Create;
begin
  Player := Self;

  inherited;

  FTimer    := 0;
  FCurFrame := 0;
  FThrusting:= False;
  FCurAngle := 0;
  DirVec.Clear;
  FTurnSpeed := 0;

  Init(Game.Sprite, Game.PlayerSprID.Group);
  Entity.TracePolyPoint(6, 12, 70);
  Entity.SetPosAbs(Game.GetSettings.WindowWidth /2, Game.GetSettings.WindowHeight /2);
  Entity.SetRenderPolyPoint(DEBUG_RENDERPOLYPOINT);
end;

destructor TPlayer.Destroy;
begin
  inherited;

  Player := nil;
end;

procedure TPlayer.OnRender;
begin
  inherited;
end;

procedure TPlayer.OnUpdate(aDelta: Double);
var
  LP: TVector;
  LFire: Boolean;
  LTurn: Integer;
  LAccel: Boolean;
begin
  if Topaz.Input.KeyPressed(KEY_LCTRL) or
     Topaz.Input.KeyPressed(KEY_RCTRL) or
     Topaz.Input.JoystickPressed(JOY_BTN_RB) then
    LFire := True
  else
    LFire := False;

  if Topaz.Input.KeyDown(KEY_RIGHT) or
     Topaz.Input.JoystickDown(JOY_BTN_RDPAD) then
    LTurn := 1
  else
  if Topaz.Input.KeyDown(KEY_LEFT) or
     Topaz.Input.JoystickDown(JOY_BTN_LDPAD) then
    LTurn := -1
  else
    LTurn := 0;

  if (Topaz.Input.KeyDown(KEY_UP)) or
     Topaz.Input.JoystickDown(JOY_BTN_UDPAD) then
    LAccel := true
  else
    LAccel := False;

  // update keys
  if LFire then
  begin
    FireWeapon(10*cMultiplier);
  end;

  if LTurn = 1 then
  begin
    Topaz.Math.SmoothMove(FTurnSpeed, cPlayerTurnAccel*aDelta, cPlayerMaxTurn, cPlayerTurnDrag*aDelta);
  end
  else if LTurn = -1 then
    begin
      Topaz.Math.SmoothMove(FTurnSpeed, -cPlayerTurnAccel*aDelta, cPlayerMaxTurn, cPlayerTurnDrag*aDelta);
    end
  else
    begin
      Topaz.Math.SmoothMove(FTurnSpeed, 0, cPlayerMaxTurn, cPlayerTurnDrag*aDelta);
    end;

  FCurAngle := FCurAngle + FTurnSpeed*aDelta;
  if FCurAngle > 360 then
    FCurAngle := FCurAngle - 360
  else if FCurAngle < 0 then
    FCurAngle := FCurAngle + 360;

  FThrusting := False;
  if (LAccel) then
  begin
    FThrusting := True;

    if (DirVec.Magnitude < cPlayerMagnitude) then
    begin
      DirVec.Thrust(FCurAngle, cPlayerAccel*aDelta);
    end;

    if Topaz.Audio.GetChannelStatus(cChanPlayerEngine) = asStopped then
    begin
      Topaz.Audio.PlaySound(cChanPlayerEngine, Game.Sfx[cSfxPlayerEngine], cVolPlayerEngine, True);
    end;

  end;

  Topaz.Math.SmoothMove(DirVec.X, 0, cPlayerMagnitude, cPlayerFriction*aDelta);
  Topaz.Math.SmoothMove(DirVec.Y, 0, cPlayerMagnitude, cPlayerFriction*aDelta);

  LP := Entity.GetPos;
  LP.X := LP.X + DirVec.X*aDelta;
  LP.Y := LP.Y + DirVec.Y*aDelta;

  WrapPosAtEdge(LP);

  if (FThrusting) then
    begin
      if (Topaz.Timer.FrameSpeed(FTimer, cPlayerFrameFPS)) then
      begin
        FCurFrame := FCurFrame + 1;
        if (FCurFrame > cPlayerLastFrame) then
        begin
          FCurFrame := cPlayerFirstFrame;
        end
      end;

    end
  else
    begin
      FCurFrame := cPlayerNeutralFrame;

      if Topaz.Audio.GetChannelStatus(cChanPlayerEngine) = asPlaying then
      begin
        Topaz.Audio.StopChannel(cChanPlayerEngine);
      end;
    end;

  Entity.RotateAbs(FCurAngle);
  Entity.SetFrame(FCurFrame);
  Entity.SetPosAbs(LP.X, LP.Y);
end;

procedure TPlayer.Spawn(aX, aY: Single);
begin
end;

procedure TPlayer.FireWeapon(aSpeed: Single);
var
  LP: TVector;
  LW: TWeapon;
begin
  LP := Entity.GetPos;
  LP.Thrust(Entity.GetAngle, 16);
  LW := TWeapon.Create;
  LW.Spawn(0, LP, Entity.GetAngle, aSpeed);
  Game.Scene.GetList(cScenePlayerWeapon).Add(LW);
  Topaz.Audio.PlaySound(cChanPlayerWeapon, Game.Sfx[cSfxPlayerWeapon], cVolPlayerWeapon, False);
end;

{ TAstroBlasterDemo }
constructor TAstroBlasterDemo.Create;
begin
  inherited;
  Game := Self;
end;

destructor TAstroBlasterDemo.Destroy;
begin
  Game := nil;
  inherited;
end;

procedure TAstroBlasterDemo.OnGetSettings(var aSettings: TGameSettings);
begin
  inherited;

  aSettings.ArchiveFilename := 'Data.arc';

  aSettings.WindowTitle := aSettings.WindowTitle + ' - AstroBlaster Demo';
  aSettings.WindowClearColor := BLACK;

  aSettings.SceneCount := cSceneCount;
end;

procedure TAstroBlasterDemo.OnStartup;
begin
  inherited;

  // show splash screen
  Topaz.Splashscreen.Show;

  // init background
  FBkColor := Topaz.Color.FromByte(255,255,255,128);

  Topaz.Get(ITexture, Background[0]);
  Topaz.Get(ITexture, Background[1]);
  Topaz.Get(ITexture, Background[2]);
  Topaz.Get(ITexture, Background[3]);

  Background[0].Load(Archive, 'arc/images/space.png',  @BLACK);
  Background[1].Load(Archive, 'arc/images/nebula.png', @BLACK);
  Background[2].Load(Archive, 'arc/images/spacelayer1.png', @BLACK);
  Background[3].Load(Archive, 'arc/images/spacelayer2.png', @BLACK);

    // init player sprites
  PlayerSprID.Page := Sprite.LoadPage(Archive, 'arc/images/ship.png', nil);
  PlayerSprID.Group := Sprite.AddGroup;
  Sprite.AddImageFromGrid(PlayerSprID.Page, PlayerSprID.Group, 0, 0, 64, 64);
  Sprite.AddImageFromGrid(PlayerSprID.Page, PlayerSprID.Group, 1, 0, 64, 64);
  Sprite.AddImageFromGrid(PlayerSprID.Page, PlayerSprID.Group, 2, 0, 64, 64);
  Sprite.AddImageFromGrid(PlayerSprID.Page, PlayerSprID.Group, 3, 0, 64, 64);


  // init enemy sprites
  EnemySprID.Page := PlayerSprID.Page;
  EnemySprID.Group := Sprite.AddGroup;
  Sprite.AddImageFromGrid(EnemySprID.Page, EnemySprID.Group, 0, 1, 64, 64);
  Sprite.AddImageFromGrid(EnemySprID.Page, EnemySprID.Group, 1, 1, 64, 64);
  Sprite.AddImageFromGrid(EnemySprID.Page, EnemySprID.Group, 2, 1, 64, 64);

  // init shield sprites
  ShieldsSprID.Page := PlayerSprID.Page;
  ShieldsSprID.Group := Sprite.AddGroup;
  Sprite.AddImageFromGrid(ShieldsSprID.Page, ShieldsSprID.Group, 0, 4, 32, 32);
  Sprite.AddImageFromGrid(ShieldsSprID.Page, ShieldsSprID.Group, 1, 4, 32, 32);
  Sprite.AddImageFromGrid(ShieldsSprID.Page, ShieldsSprID.Group, 2, 4, 32, 32);

  // init wepason sprites
  WeaponSprID.Page := PlayerSprID.Page;
  WeaponSprID.Group := Sprite.AddGroup;
  Sprite.AddImageFromGrid(WeaponSprID.Page, WeaponSprID.Group, 3, 4, 32, 32);
  Sprite.AddImageFromGrid(WeaponSprID.Page, WeaponSprID.Group, 4, 4, 32, 32);
  Sprite.AddImageFromGrid(WeaponSprID.Page, WeaponSprID.Group, 5, 4, 32, 32);

  // init rock sprites
  RocksSprID.Page := Sprite.LoadPage(Archive, 'arc/images/rocks.png', nil);
  RocksSprID.Group := Sprite.AddGroup;
  Sprite.AddImageFromGrid(RocksSprID.Page, RocksSprID.Group, 0, 0, 128, 128);
  Sprite.AddImageFromGrid(RocksSprID.Page, RocksSprID.Group, 1, 0, 128, 128);
  Sprite.AddImageFromGrid(RocksSprID.Page, RocksSprID.Group, 0, 1, 128, 128);


  // init explosion sprites
  ExplosionSprID.Page := Sprite.LoadPage(Archive, 'arc/images/explosion.png', nil);
  ExplosionSprID.Group := Sprite.AddGroup;
  Sprite.AddImageFromGrid(ExplosionSprID.Page, ExplosionSprID.Group, 0, 0, 64, 64);
  Sprite.AddImageFromGrid(ExplosionSprID.Page, ExplosionSprID.Group, 1, 0, 64, 64);
  Sprite.AddImageFromGrid(ExplosionSprID.Page, ExplosionSprID.Group, 2, 0, 64, 64);
  Sprite.AddImageFromGrid(ExplosionSprID.Page, ExplosionSprID.Group, 3, 0, 64, 64);

  Sprite.AddImageFromGrid(ExplosionSprID.Page, ExplosionSprID.Group, 0, 1, 64, 64);
  Sprite.AddImageFromGrid(ExplosionSprID.Page, ExplosionSprID.Group, 1, 1, 64, 64);
  Sprite.AddImageFromGrid(ExplosionSprID.Page, ExplosionSprID.Group, 2, 1, 64, 64);
  Sprite.AddImageFromGrid(ExplosionSprID.Page, ExplosionSprID.Group, 3, 1, 64, 64);

  Sprite.AddImageFromGrid(ExplosionSprID.Page, ExplosionSprID.Group, 0, 2, 64, 64);
  Sprite.AddImageFromGrid(ExplosionSprID.Page, ExplosionSprID.Group, 1, 2, 64, 64);
  Sprite.AddImageFromGrid(ExplosionSprID.Page, ExplosionSprID.Group, 2, 2, 64, 64);
  Sprite.AddImageFromGrid(ExplosionSprID.Page, ExplosionSprID.Group, 3, 2, 64, 64);

  Sprite.AddImageFromGrid(ExplosionSprID.Page, ExplosionSprID.Group, 0, 3, 64, 64);
  Sprite.AddImageFromGrid(ExplosionSprID.Page, ExplosionSprID.Group, 1, 3, 64, 64);
  Sprite.AddImageFromGrid(ExplosionSprID.Page, ExplosionSprID.Group, 2, 3, 64, 64);
  Sprite.AddImageFromGrid(ExplosionSprID.Page, ExplosionSprID.Group, 3, 3, 64, 64);

  // init particles
  ParticlesSprID.Page := Sprite.LoadPage(Archive, 'arc/images/particles.png', nil);
  ParticlesSprID.Group := Sprite.AddGroup;
  Sprite.AddImageFromGrid(ParticlesSprID.Page, ParticlesSprID.Group, 0, 0, 64, 64);

  Topaz.Audio.SetChannelReserved(0, True);
  Topaz.Audio.SetChannelReserved(1, True);

  // init sfx
  Sfx[cSfxRockExp] := Topaz.Audio.LoadSound(Archive, 'arc/sfx/explo_rock.ogg');
  Sfx[cSfxPlayerExp] := Topaz.Audio.LoadSound(Archive, 'arc/sfx/explo_player.ogg');
  Sfx[cSfxEnemyExp] := Topaz.Audio.LoadSound(Archive, 'arc/sfx/explo_enemy.ogg');
  Sfx[cSfxPlayerEngine] := Topaz.Audio.LoadSound(Archive, 'arc/sfx/engine_player.ogg');
  Sfx[cSfxPlayerWeapon] := Topaz.Audio.LoadSound(Archive, 'arc/sfx/weapon_player.ogg');

  FMusic := Topaz.Audio.LoadMusic(Archive, 'arc/music/song13.ogg');
  Topaz.Audio.PlayMusic(FMusic, 1.0, True);
end;

procedure TAstroBlasterDemo.OnShutdown;
begin
  Scene.ClearAll;

  Topaz.Audio.UnloadMusic(FMusic);

  Topaz.Audio.UnloadSound(Sfx[cSfxRockExp]);
  Topaz.Audio.UnloadSound(Sfx[cSfxPlayerExp]);
  Topaz.Audio.UnloadSound(Sfx[cSfxEnemyExp]);
  Topaz.Audio.UnloadSound(Sfx[cSfxPlayerEngine]);
  Topaz.Audio.UnloadSound(Sfx[cSfxPlayerWeapon]);

  Topaz.Release(Background[3]);
  Topaz.Release(Background[2]);
  Topaz.Release(Background[1]);
  Topaz.Release(Background[0]);

  inherited;
end;

procedure TAstroBlasterDemo.OnUpdate(aDeltaTime: Double);
var
  LP: TVector;
begin
  inherited;

  if Assigned(Player) then
  begin
    LP := Player.DirVec;
    FBkPos.X := FBkPos.X + (LP.X * aDeltaTime);
    FBkPos.Y := FBkPos.Y + (LP.Y * aDeltaTime);
  end;

  if LevelCleared then
  begin
    SpawnLevel;
  end;
end;

const
  mBM = 3;

procedure TAstroBlasterDemo.OnRender;
begin

  //TBitmap.EnableDrawDeferred(True);

  // render background
  Background[0].DrawTiled(-(FBkPos.X/1.9*mBM), -(FBkPos.Y/1.9*mBM));

  Topaz.Window.SetBlendMode(bmAdditiveAlpha);
  Background[1].DrawTiled(-(FBkPos.X/1.9*mBM), -(FBkPos.Y/1.9*mBM));
  Topaz.Window.RestoreDefaultBlendMode;
  Background[2].DrawTiled(-(FBkPos.X/1.6*mBM), -(FBkPos.Y/1.6*mBM));
  Background[3].DrawTiled(-(FBkPos.X/1.3*mBM), -(FBkPos.Y/1.3*mBM));

  //TBitmap.EnableDrawDeferred(False);

  inherited;
end;

procedure TAstroBlasterDemo.OnRenderHUD;
begin
  inherited;

  HudText(Font, GREEN,  haLeft, HudTextItem('Left', 'Rotate left'), []);
  HudText(Font, GREEN,  haLeft, HudTextItem('Right', 'Rotate right'), []);
  HudText(Font, GREEN,  haLeft, HudTextItem('Up', 'Thrust'), []);
  HudText(Font, GREEN,  haLeft, HudTextItem('Ctrl', 'Fire'), []);
  HudText(Font, YELLOW, haLeft, HudTextItem('Count:', ' %d', ''), [Scene.GetList(cSceneRocks).GetCount]);
end;

procedure TAstroBlasterDemo.OnBeforeRenderScene(aSceneNum: Integer);
begin
  case aSceneNum of
    cSceneRockExp:
    begin
      Topaz.Window.SetBlendMode(bmAdditiveAlpha);
    end
  else
    //TBitmap.EnableDrawDeferred(True);
  end;
end;

procedure TAstroBlasterDemo.OnAfterRenderScene(aSceneNum: Integer);
begin
  case aSceneNum of
    cSceneRockExp:
    begin
      Topaz.Window.RestoreDefaultBlendMode;
    end
  else
    //TBitmap.EnableDrawDeferred(False);
  end;
end;

procedure TAstroBlasterDemo.SpawnRocks;
var
  LI, LC: Integer;
  LId: Integer;
  LSize: TRockSize;
  LAngle: Single;
  LRock: TRock;
  LRadius : Single;
  LPos: TVector;
begin

  LC := Topaz.Math.RandomRange(cRocksMin, cRocksMax);

  for LI := 1 to LC do
  begin
    LId := Topaz.Math.RandomRange(0, 2);
    LSize := TRockSize(Topaz.Math.RandomRange(0, 2));

    LPos.x := Game.GetSettings.WindowWidth / 2;
    LPos.y := Game.GetSettings.WindowHeight /2;

    LRadius := (LPos.x + LPos.y) / 2;
    LAngle := Topaz.Math.RandomRange(0, 359);
    LPos.Thrust(LAngle, LRadius);

    LRock := TRock.Create;
    LRock.Spawn(LId, LSize, LPos, LAngle);
    Game.Scene.GetList(cSceneRocks).Add(LRock);
  end;
end;

procedure TAstroBlasterDemo.SpawnPlayer;
begin
  Scene.GetList(cScenePlayer).Add(TPlayer.Create);
end;

procedure TAstroBlasterDemo.SpawnLevel;
begin
  Scene.ClearAll;
  SpawnRocks;
  SpawnPlayer;
end;

function TAstroBlasterDemo.LevelCleared: Boolean;
begin
  if (Scene.GetList(cSceneRocks).GetCount        > 0) or
     (Scene.GetList(cSceneRockExp).GetCount      > 0) or
     (Scene.GetList(cScenePlayerWeapon).GetCount > 0) then
    Result := False
  else
    Result := True;
end;

end.
