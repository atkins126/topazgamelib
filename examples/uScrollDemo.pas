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

unit uScrollDemo;

interface

uses
  System.SysUtils,
  TopazGameLib;

const
  // player
  PLAYER_TURNRATE            = 162;
  PLAYER_FRICTION            = 1;
  PLAYER_ACCEL               = 7;
  PLAYER_MAGNITUDE           = 14;
  PLAYER_SIZE_HALF           = 32.0;
  PLAYER_FRAME_FPS           = 12;
  PLAYER_FRAME_NEUTRAL       = 0;
  PLAYER_FRAME_FIRST         = 1;
  PLAYER_FRAME_LAST          = 3;
  PLAYER_TURN_ACCEL          = 300;
  PLAYER_TURN_MAX            = 150;
  PLAYER_TURN_DRAG           = 150;

type

  { TView }
  TView = record
    Move     : Single;
    Bounce   : Single;
    Dir      : TVector;
    FixOffset: TVector;
    RunAhead : TVector;
    Pos      : TVector;
  end;

  { TPlayer }
  TPlayer = record
    Timer    : Single;
    Frame    : Integer;
    Thrusting: Boolean;
    Angle    : Single;
    Dir      : TVector;
    WorldPos : TVector;
    ScreenPos: TVector;
    TurnSpeed: Single;
  end;

  { TScrollDemo }
  TScrollDemo = class(TGame)
  protected
    FTimer      : Single;
    FColor      : TColor;
    FBackground : array[0..3] of ITexture;
    FPlanet     : ITexture;
    FView       : TView;
    FPlayer     : TPlayer;
    FMusic      : Integer;
  public
    procedure OnGetSettings(var aSettings: TGameSettings); override;
    procedure OnStartup; override;
    procedure OnShutdown; override;
    procedure OnUpdate(aDeltaTime: Double); override;
    procedure OnRender; override;
    procedure OnRenderHUD; override;
  end;

implementation

{ TScrollDemo }
procedure TScrollDemo.OnGetSettings(var aSettings: TGameSettings);
begin
  inherited;

  aSettings.ArchiveFilename := 'Data.arc';
  aSettings.WindowTitle := aSettings.WindowTitle + ' - Scroll Demo';
  aSettings.WindowClearColor := BLACK;
end;

procedure TScrollDemo.OnStartup;
begin
  inherited;

  // show splash screen
  Topaz.Splashscreen.Show;

  // init colors
  FColor := WHITE;
  FColor.Alpha := 128;

  // init textures
  Topaz.Get(ITexture, FBackground[0]);
  Topaz.Get(ITexture, FBackground[1]);
  Topaz.Get(ITexture, FBackground[2]);
  Topaz.Get(ITexture, FBackground[3]);

  FBackground[0].Load(Archive, 'arc/images/space.png',  @BLACK);
  FBackground[1].Load(Archive, 'arc/images/nebula.png', @BLACK);
  FBackground[2].Load(Archive, 'arc/images/spacelayer1.png', @BLACK);
  FBackground[3].Load(Archive, 'arc/images/spacelayer2.png', @BLACK);

  Topaz.Get(ITexture, FPlanet);
  FPlanet.Load(Archive, 'arc/images/planet.png', nil);

  // init spirtes
  Sprite.LoadPage(Archive, 'arc/images/ship.png', nil);
  Sprite.AddGroup;
  Sprite.AddImageFromGrid(0, 0, 0, 0, 64, 64);
  Sprite.AddImageFromGrid(0, 0, 1, 0, 64, 64);
  Sprite.AddImageFromGrid(0, 0, 2, 0, 64, 64);
  Sprite.AddImageFromGrid(0, 0, 3, 0, 64, 64);

  FillChar(FView, SizeOf(FView), 0);
  FillChar(FPlayer, SizeOf(FPlayer), 0);

  FView.Move := 0.004;
  FView.Bounce := 1.10;
  FView.RunAhead.X := 45;
  FView.RunAhead.Y := 35;
  FView.Pos.X := 1000;
  FView.Pos.Y := 1000;
  FPlayer.Angle      := 0;
  FPlayer.WorldPos.X := Topaz.Window.Width  / 2;
  FPlayer.WorldPos.Y := Topaz.Window.Height / 2;

  FMusic := Topaz.Audio.LoadMusic(Archive, 'arc/music/song05.ogg');
  Topaz.Audio.PlayMusic(FMusic, 0.5, True);
end;

procedure TScrollDemo.OnShutdown;
begin
  Topaz.Audio.UnloadMusic(FMusic);
  Topaz.Release(FPlanet);
  Topaz.Release(FBackground[3]);
  Topaz.Release(FBackground[2]);
  Topaz.Release(FBackground[1]);
  Topaz.Release(FBackground[0]);

  inherited;
end;

procedure TScrollDemo.OnUpdate(aDeltaTime: Double);
begin
  inherited;

  // update keys
  if Topaz.Input.KeyDown(KEY_RIGHT) then
  begin
    Topaz.Math.SmoothMove(FPlayer.TurnSpeed, PLAYER_TURN_ACCEL*aDeltaTime, PLAYER_TURN_MAX, PLAYER_TURN_DRAG*aDeltaTime);
  end
  else if Topaz.Input.KeyDown(KEY_LEFT) then
    begin
      Topaz.Math.SmoothMove(FPlayer.TurnSpeed, -PLAYER_TURN_ACCEL*aDeltaTime, PLAYER_TURN_MAX, PLAYER_TURN_DRAG*aDeltaTime);
    end
  else
    begin
      Topaz.Math.SmoothMove(FPlayer.TurnSpeed, 0, PLAYER_TURN_MAX, PLAYER_TURN_DRAG*aDeltaTime);
    end;

  FPlayer.Angle := FPlayer.Angle + (FPlayer.TurnSpeed*aDeltaTime);
  if FPlayer.Angle > 360 then
    FPlayer.Angle := FPlayer.Angle - 360
  else if FPlayer.Angle < 0 then
    FPlayer.Angle := FPlayer.Angle + 360;

  FPlayer.Thrusting := False;
  if (Topaz.Input.KeyDown(KEY_UP)) then
  begin
    FPlayer.Thrusting := True;

    //if (Vector_Magnitude(FPlayer.Dir) < PLAYER_MAGNITUDE) then
    if (FPlayer.Dir.Magnitude < PLAYER_MAGNITUDE) then
    begin
      //Vector_Thrust(FPlayer.Dir, FPlayer.Angle, PLAYER_ACCEL*aDeltaTime);
      FPlayer.Dir.Thrust(FPlayer.Angle, PLAYER_ACCEL*aDeltaTime);
    end;
  end;

  Topaz.Math.SmoothMove(FPlayer.Dir.X, 0, PLAYER_MAGNITUDE, PLAYER_FRICTION*aDeltaTime);
  Topaz.Math.SmoothMove(FPlayer.Dir.Y, 0, PLAYER_MAGNITUDE, PLAYER_FRICTION*aDeltaTime);

  FPlayer.WorldPos.X := FPlayer.WorldPos.X + FPlayer.Dir.X;
  FPlayer.WorldPos.Y := FPlayer.WorldPos.Y + FPlayer.Dir.Y;

  if (FPlayer.Thrusting) then
    begin
      if (Topaz.Timer.FrameSpeed(FPlayer.Timer, PLAYER_FRAME_FPS)) then
      begin
        FPlayer.Frame := FPlayer.Frame + 1;
        if (FPlayer.Frame > PLAYER_FRAME_LAST) then
        begin
          FPlayer.Frame := PLAYER_FRAME_FIRST;
        end
      end
    end
  else
    begin
      FPlayer.Timer := 0;
      FPlayer.Frame := PLAYER_FRAME_NEUTRAL;
    end;

  // update world
  FView.Dir.X := (FView.Dir.X+(FPlayer.WorldPos.X - FView.Fixoffset.X - FView.Pos.X + FView.RunAhead.X * FPlayer.Dir.X) * FView.Move) / FView.Bounce;
  FView.Dir.Y := (FView.Dir.Y+(FPlayer.WorldPos.Y - FView.Fixoffset.y - FView.Pos.Y + FView.RunAhead.Y * FPlayer.Dir.Y) * FView.Move) / FView.Bounce;
  FView.Pos.X := FView.Pos.X + FView.Dir.X;
  FView.Pos.Y := FView.Pos.Y + FView.Dir.Y;

  // update FPlayer
  FPlayer.ScreenPos.X := FPlayer.WorldPos.X - FView.Pos.X + Topaz.Window.Width  /2;
  FPlayer.ScreenPos.Y := FPlayer.WorldPos.Y - FView.Pos.Y + Topaz.Window.Height /2;
end;

procedure TScrollDemo.OnRender;
var
  LOrigin: TVector;
begin
  inherited;

  // render FBackground
  FBackground[0].DrawTiled(-(FView.Pos.X/1.9), -(FView.Pos.Y/1.9));
  Topaz.Window.SetBlendMode(bmAdditiveAlpha);
  FBackground[1].DrawTiled(-(FView.Pos.X/1.9), -(FView.Pos.Y/1.9));
  Topaz.Window.RestoreDefaultBlendMode;
  FBackground[2].DrawTiled(-(FView.Pos.X/1.6), -(FView.Pos.Y/1.6));
  FBackground[3].DrawTiled(-(FView.Pos.X/1.3), -(FView.Pos.Y/1.3));

  FPlanet.Draw(
    -Round(FView.Pos.X/1.0)+(Topaz.Window.Width),
    -Round(FView.Pos.Y/1.0)+(Topaz.Window.Height),
    1.0, 0.0, WHITE, haCenter, vaCenter);

  // render FPlayer
  LOrigin.X := 0.50;
  LOrigin.Y := 0.50;
  Sprite.DrawImage(FPlayer.Frame, 0, FPlayer.ScreenPos.X, FPlayer.ScreenPos.Y, @LOrigin, nil, FPlayer.Angle, WHITE, False, False, False);
end;

procedure TScrollDemo.OnRenderHUD;
begin
  inherited;

  HudText(Font, GREEN,  haLeft, HudTextItem('F11', 'Fullscreen toggle'), []);
  HudText(Font, GREEN,  haLeft, HudTextItem('F12', 'Screenshot'), []);
  HudText(Font, GREEN,  haLeft, HudTextItem('Left', 'Rotate left'), []);
  HudText(Font, GREEN,  haLeft, HudTextItem('Right', 'Rotate right'), []);
  HudText(Font, GREEN,  haLeft, HudTextItem('Up', 'Thrust'), []);
  HudText(Font, YELLOW, haLeft, HudTextItem('Pos:', ' [X:%7.0f Y:%7.0f]', ''), [FPlayer.WorldPos.X, FPlayer.WorldPos.Y]);
end;

end.
