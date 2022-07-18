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

unit uRenderTargetsDemo;

interface

uses
  TopazGameLib;

const
  GRAVITY        = 0.4;
  XDECAY         = 0.97;
  YDECAY         = 0.97;
  ELASTICITY     = 0.77;
  WALLDECAY      = 1.0;
  BALL_SIZE      = 30;
  BALL_SIZE_HALF = BALL_SIZE div 2;

type

  { TRenderTargettWindow }
  TRenderTargettWindow = record
    w,h: Integer;
    x,y,sx,sy: Single;
    minx,maxx: Single;
    miny,maxy: Single;
    color: TColor;
  end;

  { TARenderTarget }
  TARenderTarget = class(TActor)
  protected
    FHandle: IRenderTarget;
    FSize : TVector;
    FPos  : TVector;
    FSpeed: TVector;
    FRange: TRange;
    FColor: TColor;
    FCaption: string;
  public
    property Caption: string read FCaption write FCaption;
    constructor Create; override;
    destructor Destroy; override;
    procedure OnUpdate(aDeltaTime: Double); override;
    procedure OnRender; override;
    procedure PrintCaption(aColor: TColor);
  end;

  { TARenderTarget1 }
  TARenderTarget1 = class(TARenderTarget)
  protected
    FPolygon: IPolygon;
    FOrigin : TVector;
    FAngle  : Single;
  public
    constructor Create; override;
    destructor Destroy; override;
    procedure OnUpdate(aDeltaTime: Double); override;
    procedure OnRender; override;
  end;

  { TARenderTarget2 }
  TARenderTarget2 = class(TARenderTarget)
  protected
    FBallPos: TVector;
    FBallSpeed: TVector;
    FTimer: Single;
  public
    constructor Create;  override;
    destructor Destroy; override;
    procedure OnUpdate(aDeltaTime: Double); override;
    procedure OnRender; override;
  end;

  { TARenderTarget3 }
  TARenderTarget3 = class(TARenderTarget)
  protected
    FTileTexture: ITexture;
    FTilePos: TVector;
  public
    constructor Create; override;
    destructor Destroy; override;
    procedure OnUpdate(aDeltaTime: Double); override;
    procedure OnRender; override;
  end;

  { TARenderTarget4 }
  TARenderTarget4 = class(TARenderTarget)
  protected
    FStarfield: IStarfield;
  public
    constructor Create;  override;
    destructor Destroy; override;
    procedure OnUpdate(aDeltaTime: Double); override;
    procedure OnRender; override;
  end;

  { TRenderTargetsDemo }
  TRenderTargetsDemo = class(TGame)
  protected
    FMusic: Integer;
  public
    constructor Create; override;
    destructor Destroy; override;
    procedure OnGetSettings(var aSettings: TGameSettings); override;
    procedure OnStartup; override;
    procedure OnShutdown; override;
  end;

implementation

var
  Game: TRenderTargetsDemo = nil;

{  TARenderTarget }
constructor TARenderTarget.Create;
begin
  inherited;

  FPos.X := 10;
  FPos.Y := 10;
  FSize.X := 50;
  FSize.Y := 50;
  FRange.miny := 0;
  FRange.minx := 0;
  FRange.maxx := FRange.minx + 20;
  FRange.maxy := FRange.miny + 20;
  FSpeed.x := Topaz.Math.RandomRange(0.1*60,0.3*60);
  FSpeed.y := Topaz.Math.RandomRange(0.1*60,0.3*60);

  FColor := WHITE;
  FCaption := 'A RenderTarget';

  FHandle := nil;
end;

destructor TARenderTarget.Destroy;
begin
  Topaz.Release(FHandle);
  inherited;
end;

procedure TARenderTarget.OnUpdate(aDeltaTime: Double);
begin
  // update horizontal movement
  FPos.x := FPos.x + (FSpeed.x * aDeltaTime);
  if (FPos.x < FRange.MinX) then
    begin
      FPos.x  := FRange.Minx;
      FSpeed.x := -FSpeed.x;
    end
  else if (FPos.x > FRange.Maxx) then
    begin
      FPos.x  := FRange.Maxx;
      FSpeed.x := -FSpeed.x;
    end;

  // update horizontal movement
  FPos.y := FPos.y + (FSpeed.y * aDeltaTime);
  if (FPos.y < FRange.Miny) then
    begin
      FPos.y  := FRange.Miny;
      FSpeed.y := -FSpeed.y;
    end
  else if (FPos.y > FRange.Maxy) then
    begin
      FPos.y  := FRange.Maxy;
      FSpeed.y := -FSpeed.y;
    end;

  FHandle.SetPosition(Round(FPos.X), Round(FPos.y));
end;

procedure TARenderTarget.OnRender;
begin
  FHandle.SetActive(True);
  Topaz.Window.Clear(FColor);
end;

procedure TARenderTarget.PrintCaption(aColor: TColor);
begin
  Game.Font.PrintText(3, 3, aColor, haLeft, FCaption, []);
end;


{ TARenderTarget1 }
constructor TARenderTarget1.Create;
begin
  inherited;

  Caption := 'RenderTarget #1';

  FSize.x := 380;
  FSize.y := 280;

  FPos.x := 10;
  FPos.y := 10;

  FRange.miny := 0;
  FRange.minx := 0;
  FRange.maxx := FRange.minx + 20;
  FRange.maxy := FRange.miny + 20;

  FColor := DIMGRAY;

  Topaz.Get(IRenderTarget, FHandle);
  FHandle.Init(Round(FPos.X), Round(FPos.Y), Round(FSize.X), Round(FSize.Y));

  // init polygon
  Topaz.Get(IPolygon, FPolygon);
  FPolygon.AddLocalPoint(0, 0, True);
  FPolygon.AddLocalPoint(128, 0, True);
  FPolygon.AddLocalPoint(128, 128, True);
  FPolygon.AddLocalPoint(0, 128, True);
  FPolygon.AddLocalPoint(0, 0, True);

  // you can either use local coords such as -64, -64, 64, 64 etc and when
  // transformed it will be center or easier just use specify an origin. In this
  // case this polygon span is 128 so set the origin xy to 64 to center it on
  // screen.
  FOrigin.X := 64;
  FOrigin.Y := 64;
end;

destructor TARenderTarget1.Destroy;
begin
  Topaz.Release(FPolygon);
  inherited;
end;

procedure TARenderTarget1.OnUpdate(aDeltaTime: Double);
begin
  inherited;

  // update angle by DeltaTime to keep it constant. In this case the default
  // fps is 30 so we are in effect adding on degree every second.
  FAngle := FAngle + (30.0 * aDeltaTime);

  // just clip between 0 and 360 with wrapping. if greater than max value, it
  // will set min to value-max.
  Topaz.Math.ClipValueFloat(FAngle, 0, 360, True);
end;

procedure TARenderTarget1.OnRender;
begin
  inherited;

  // render polygon in center of screen
  //Polygon_Render(FPolygon, Round(FSize.X / 2), Round(FSize.Y / 2), 1, FAngle, 1, YELLOW, FLIP_NONE, @FOrigin);
  FPolygon.Render(FSize.X / 2, FSize.Y / 2, 1, FAngle, 1, YELLOW, @FOrigin, False, False);
  PrintCaption(BLACK);

  FHandle.SetActive(False);
  FHandle.Show;
end;

{ TARenderTarget2 }
constructor TARenderTarget2.Create;
begin
  inherited;

  Caption := 'RenderTarget #2';

  FSize.x := 380;
  FSize.y := 280;

  FPos.x := 410;
  FPos.y := 10;

  FRange.miny := 0;
  FRange.minx := 400-10;
  FRange.maxx := FRange.minx + 20;
  FRange.maxy := FRange.miny + 20;

  FColor := Topaz.Color.FromByte(77, 157, 251, 255);

  Topaz.Get(IRenderTarget, FHandle);
  FHandle.Init(Round(FPos.X), Round(FPos.Y), Round(FSize.X), Round(FSize.Y));

  FBallPos.x := Topaz.Math.RandomRange(BALL_SIZE_HALF, FSize.x-BALL_SIZE_HALF);
  FBallPos.y := BALL_SIZE_HALF;

  FBallSpeed.x := Topaz.Math.RandomRange(-50,50);
  FBallSpeed.y := Topaz.Math.RandomRange(3,7);
  FTimer := 0;
end;

destructor TARenderTarget2.Destroy;
begin
  inherited;
end;

procedure TARenderTarget2.OnUpdate(aDeltaTime: Double);
begin
  inherited;

  if not Topaz.Timer.FrameSpeed(FTimer, 60) then
    Exit;

  if Topaz.Math.SameValueFloat(FBallSpeed.x, 0, 0.001) then
  begin
    FBallPos.x := Topaz.Math.RandomRange(BALL_SIZE_HALF, FSize.x-BALL_SIZE_HALF);
    FBallPos.y := BALL_SIZE_HALF;
    FBallSpeed.x := Topaz.Math.RandomRange(-50,50);
    FBallSpeed.y := Topaz.Math.RandomRange(3,7);
  end;

  // decay
  FBallSpeed.x := FBallSpeed.x * XDECAY;
  FBallSpeed.y := FBallSpeed.y * XDECAY;

  // gravity
  FBallSpeed.y := FBallSpeed.y + GRAVITY;

  // move
  FBallPos.x := FBallPos.x + FBallSpeed.x;
  FBallPos.y := FBallPos.y + FBallSpeed.y;

  if (FBallPos.x < BALL_SIZE) then
    begin
      FBallPos.x  := BALL_SIZE;
      FBallSpeed.x := -FBallSpeed.x * WALLDECAY;
    end;
  //else
  if (FBallPos.x > FSize.x-BALL_SIZE) then
    begin
      FBallPos.x  := FSize.x-BALL_SIZE;
      FBallSpeed.x := -FBallSpeed.x * WALLDECAY;
    end;

  // update horizontal movement

  if (FBallPos.y < BALL_SIZE) then
    begin
      FBallPos.y  := BALL_SIZE;
      FBallSpeed.y := -FBallSpeed.y * WALLDECAY;
    end;
  //else
  if (FBallPos.y > FSize.y-BALL_SIZE) then
    begin
      FBallPos.y  := FSize.y-BALL_SIZE;
      FBallSpeed.y := -FBallSpeed.y * WALLDECAY;
    end;
end;

procedure TARenderTarget2.OnRender;
begin
  inherited;

  Topaz.Window.DrawFilledCircle(FBallPos.X, FBallPos.Y, BALL_SIZE, RED);

  PrintCaption(YELLOW);

  Game.Font.PrintText(1, 15, WHITE, haLeft, 'x,y: %f,%f',[Abs(FBallSpeed.x),Abs(FBallSpeed.y)]);

  FHandle.SetActive(False);
  FHandle.Show;
end;

{ TARenderTarget3 }
constructor TARenderTarget3.Create;
begin
  inherited;

  Caption := 'RenderTarget #3';

  FSize.x := 380;
  FSize.y := 280;

  FPos.x := 10;
  FPos.y := 310;

  FRange.miny := 300-10;
  FRange.minx := 0;
  FRange.maxx := FRange.minx + 20;
  FRange.maxy := FRange.miny + 20;

  FColor := BLACK;

  Topaz.Get(IRenderTarget, FHandle);
  FHandle.Init(Round(FPos.X), Round(FPos.Y), Round(FSize.X), Round(FSize.Y));

  FTilePos.x := 0;
  FTilePos.y := 0;

  Topaz.Get(ITexture, FTileTexture);
  FTileTexture.Load(Game.Archive, 'arc/images/bluestone.png', nil);
end;

destructor TARenderTarget3.Destroy;
begin
  Topaz.Release(FTileTexture);
  inherited;
end;

procedure TARenderTarget3.OnUpdate(aDeltaTime: Double);
begin
  inherited;
  FTilePos.y := FTilePos.y + ((7.0*60) * aDeltaTime);
end;

procedure TARenderTarget3.OnRender;
begin
  inherited;

  // tile texture across viewport
  FTileTexture.DrawTiled(FTilePos.x,FTilePos.y);

  // display the viewport caption
  PrintCaption(WHITE);

  FHandle.SetActive(False);
  FHandle.Show;
end;

{ TARenderTarget4 }
constructor TARenderTarget4.Create;
begin
  inherited;

  Caption := 'RenderTarget #4';

  FSize.x := 380;
  FSize.y := 280;

  FPos.x := 410;
  FPos.y := 310;


  FRange.miny := 300-10;
  FRange.minx := 400-10;
  FRange.maxx := FRange.minx + 20;
  FRange.maxy := FRange.miny + 20;

  FColor := BLACK;

  Topaz.Get(IRenderTarget, FHandle);
  FHandle.Init(Round(FPos.X), Round(FPos.Y), Round(FSize.X), Round(FSize.Y));

  Topaz.Get(IStarfield, FStarfield);
  FStarfield.SetZSpeed(-(60*3));
end;

destructor TARenderTarget4.Destroy;
begin
  Topaz.Release(FStarField);

  inherited;
end;

procedure TARenderTarget4.OnUpdate(aDeltaTime: Double);
begin
  inherited;

  FStarfield.Update(aDeltaTime);
end;

procedure TARenderTarget4.OnRender;
begin
  inherited;

  FStarfield.Render;
  PrintCaption(WHITE);

  FHandle.SetActive(False);
  FHandle.Show;
end;

{ TRenderTargetsDemo }
constructor TRenderTargetsDemo.Create;
begin
  inherited;
  Game := Self;
end;

destructor TRenderTargetsDemo.Destroy;
begin
  Game := nil;
  inherited;
end;
procedure TRenderTargetsDemo.OnGetSettings(var aSettings: TGameSettings);
begin
  inherited;

  aSettings.ArchiveFilename := 'Data.arc';

  aSettings.WindowTitle := aSettings.WindowTitle + ' - RenderTargets Demo';
  aSettings.WindowWidth := 800;
  aSettings.WindowHeight := 600;
  aSettings.WindowClearColor := DIMWHITE;
end;

procedure TRenderTargetsDemo.OnStartup;
begin
  inherited;

  // show splash screen
  Topaz.Splashscreen.Show;

  Scene.GetList(0).Add(TARenderTarget1.Create);
  Scene.GetList(0).Add(TARenderTarget2.Create);
  Scene.GetList(0).Add(TARenderTarget3.Create);
  Scene.GetList(0).Add(TARenderTarget4.Create);

  FMusic := Topaz.Audio.LoadMusic(Archive, 'arc/music/song01.ogg');
  Topaz.Audio.PlayMusic(FMusic, 1.0, True);
end;

procedure TRenderTargetsDemo.OnShutdown;
begin
  Topaz.Audio.UnloadMusic(FMusic);
  inherited;
end;

end.
