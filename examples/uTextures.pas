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

unit uTextures;

interface

uses
  TopazGameLib;

type

  { TTextureEx }
  TTextureEx = class(TGame)
  protected
    FTexture: ITexture;
  public
    procedure OnGetSettings(var aSettings: TGameSettings); override;
    procedure OnStartup; override;
    procedure OnShutdown; override;
    procedure OnRender; override;
  end;

  { TAlignedTextureEx }
  TAlignedTextureEx = class(TGame)
  protected
    FTexture: ITexture;
  public
    procedure OnGetSettings(var aSettings: TGameSettings); override;
    procedure OnStartup; override;
    procedure OnShutdown; override;
    procedure OnUpdate(aDeltaTime: Double); override;
    procedure OnRender; override;
  end;

  { TTextureColorKeyEx }
  TTextureColorKeyEx = class(TGame)
  protected
    FTexture: array[0..1] of ITexture;
  public
    procedure OnGetSettings(var aSettings: TGameSettings); override;
    procedure OnStartup; override;
    procedure OnShutdown; override;
    procedure OnRender; override;
    procedure OnRenderHUD; override;
  end;

  { TParallaxTextureEx }
  TParallaxTextureEx = class(TGame)
  protected
    FTexture: array[0..3] of ITexture;
    FSpeed: array[0..3] of Single;
    FPos: array[0..3] of TVector;
  public
    procedure OnGetSettings(var aSettings: TGameSettings); override;
    procedure OnStartup; override;
    procedure OnShutdown; override;
    procedure OnUpdate(aDeltaTime: Double); override;
    procedure OnRender; override;
  end;

  { TTextureRegionEx }
  TTextureRegionEx = class(TGame)
  protected
  const
    cSpriteWidth   = 128;
    cSpriteHeight  = 128;
    cFrameFirst    = 0;
    cFrameLast     = 2;
    cFrameSpeed    = 14;
  protected
    FTexture: ITexture;
    FRegion: TRectangle;
    FGridPos: TVector;
    FCenter: TVector;
    FFrameTimer: Single;
    FFrame: Integer;
  public
    procedure OnGetSettings(var aSettings: TGameSettings); override;
    procedure OnStartup; override;
    procedure OnShutdown; override;
    procedure OnUpdate(aDeltaTime: Double); override;
    procedure OnRender; override;
  end;

{ TScaleTextureEx }
  TScaleTextureEx = class(TGame)
  protected
  const
    cScaleMin    = 0.5;
    cScaleMax    = 5.0;
    cScaleAmount = 0.1;
  protected
    FTexture: ITexture;
    FScale: TVector;
  public
    procedure OnGetSettings(var aSettings: TGameSettings); override;
    procedure OnStartup; override;
    procedure OnShutdown; override;
    procedure OnUpdate(aDeltaTime: Double); override;
    procedure OnRender; override;
    procedure OnRenderHUD; override;
  end;

  { TTiledTextureEx }
  TTiledTextureEx = class(TGame)
  protected
    FTexture: ITexture;
    FPos: TVector;
  public
    procedure OnGetSettings(var aSettings: TGameSettings); override;
    procedure OnStartup; override;
    procedure OnShutdown; override;
    procedure OnUpdate(aDeltaTime: Double); override;
    procedure OnRender; override;
  end;

  { TTransparentTextureEx }
  TTransparentTextureEx = class(TGame)
  protected
    FTexture: ITexture;
  public
    procedure OnGetSettings(var aSettings: TGameSettings); override;
    procedure OnStartup; override;
    procedure OnShutdown; override;
    procedure OnRender; override;
  end;

implementation

uses
  System.Math;

{ TTextureEx }
procedure TTextureEx.OnGetSettings(var aSettings: TGameSettings);
begin
  inherited;

  // Archive
  aSettings.ArchiveFilename := 'Data.arc';

  // Window
  aSettings.WindowTitle := aSettings.WindowTitle + ' - Example Template';
  aSettings.WindowWidth := 800;
  aSettings.WindowHeight := 600;
end;

procedure TTextureEx.OnStartup;
begin
  inherited;

  // show splash screen
  Topaz.Splashscreen.Show;

  Topaz.Get(ITexture, FTexture);
  FTexture.Load(FArchive, 'arc/images/cheetah.jpg', nil);
end;

procedure TTextureEx.OnShutdown;
begin
  Topaz.Release(FTexture);

  inherited;
end;

procedure TTextureEx.OnRender;
begin
  inherited;

  FTexture.Draw(0, 0, 1, 0, WHITE, haLeft, vaTop);
end;

{ TAlignedTextureEx }
procedure TAlignedTextureEx.OnGetSettings(var aSettings: TGameSettings);
begin
  inherited;

  // Archive
  aSettings.ArchiveFilename := 'Data.arc';

  aSettings.WindowTitle := aSettings.WindowTitle  + ' - Aligned Texture Example';
end;

procedure TAlignedTextureEx.OnStartup;
begin
  inherited;

  // show splash screen
  Topaz.Splashscreen.Show;

  Topaz.Get(ITexture, FTexture);
  FTexture.Load(Archive, 'arc/images/square00.png', @COLORKEY);
end;

procedure TAlignedTextureEx.OnShutdown;
begin
  Topaz.Release(FTexture);

  inherited;
end;

procedure TAlignedTextureEx.OnUpdate(aDeltaTime: Double);
begin
  inherited;
end;

procedure TAlignedTextureEx.OnRender;
var
  LCenterPos: TVector;
begin
  inherited;

  LCenterPos.Assign(Topaz.Window.Width/2, Topaz.Window.Height/2);

  Topaz.Window.DrawLine(LCenterPos.X, 0, LCenterPos.X, Topaz.Window.Height, 1, YELLOW);
  Topaz.Window.DrawLine(0, LCenterPos.Y, Topaz.Window.Width,  LCenterPos.Y, 1, YELLOW);

  FTexture.Draw(LCenterPos.X, LCenterPos.Y, 1, 0, WHITE, haCenter, vaCenter);
  Font.PrintText(LCenterPos.X, LCenterPos.Y+25, DARKGREEN, haCenter, 'center-center', []);

  Topaz.Window.DrawLine(0, LCenterPos.Y-128, Topaz.Window.Width,  LCenterPos.Y-128, 1, YELLOW);

  FTexture.Draw(LCenterPos.X, LCenterPos.Y-128, 1, 0, WHITE, haLeft, vaTop);
  Font.PrintText(LCenterPos.X+34, LCenterPos.Y-(128-6), DARKGREEN, haLeft, 'left-top', []);

  FTexture.Draw(LCenterPos.X, LCenterPos.Y-128, 1, 0, WHITE, haLeft, vaBottom);
  Font.PrintText(LCenterPos.X+34, LCenterPos.Y-(128+25), DARKGREEN, haLeft, 'left-bottom', []);

  Topaz.Window.DrawLine(0, LCenterPos.Y+128, Topaz.Window.Width,  LCenterPos.Y+128, 1, YELLOW);
  FTexture.Draw(LCenterPos.X, LCenterPos.Y+128, 1, 0, WHITE, haRight, vaTop);
  Font.PrintText(LCenterPos.X+4, LCenterPos.Y+(128+6), DARKGREEN, haLeft, 'right-top', []);

  FTexture.Draw(LCenterPos.X, LCenterPos.Y+128, 1, 0, WHITE, haRight, vaBottom);
  Font.PrintText(LCenterPos.X+4, LCenterPos.Y+(128-27), DARKGREEN, haLeft, 'right-bottom', []);
end;

{ TTextureColorKeyEx }
procedure TTextureColorKeyEx.OnGetSettings(var aSettings: TGameSettings);
begin
  inherited;

  // Archive
  aSettings.ArchiveFilename := 'Data.arc';

  aSettings.WindowTitle := aSettings.WindowTitle + ' - Texture ColorKey Example';
end;

procedure TTextureColorKeyEx.OnStartup;
begin
  inherited;

  // show splash screen
  Topaz.Splashscreen.Show;

  Topaz.Get(ITexture, FTexture[0]);
  FTexture[0].Load(Archive, 'arc/images/circle00.png', nil);

  Topaz.Get(ITexture, FTexture[1]);
  FTexture[1].Load(Archive, 'arc/images/circle00.png', @COLORKEY);
end;

procedure TTextureColorKeyEx.OnShutdown;
begin

  Topaz.Release(FTexture[1]);
  Topaz.Release(FTexture[0]);

  inherited;
end;


procedure TTextureColorKeyEx.OnRender;
var
  LCenterPos: TVector;
  LSize: TVector;
begin
  inherited;

  LCenterPos.Assign(Topaz.Window.Width/2, Topaz.Window.Height/2);

  LSize.Assign(FTexture[0].Width, FTexture[0].Height);

  FTexture[0].Draw(LCenterPos.X, LCenterPos.Y-LSize.Y, 1.0, 0.0, WHITE, haCenter, vaCenter);
  FTexture[1].Draw(LCenterPos.X, LCenterPos.Y+LSize.Y, 1.0, 0.0, WHITE, haCenter, vaCenter);

  Font.PrintText(LCenterPos.X, LCenterPos.Y-(LSize.Y/2), DARKORANGE, haCenter, 'without colorkey', []);
  Font.PrintText(LCenterPos.X, LCenterPos.Y+(LSize.Y*1.5), DARKORANGE, haCenter, 'with colorkey', []);
end;

procedure TTextureColorKeyEx.OnRenderHUD;
begin
  inherited;
end;

{ TParallaxTextureEx }
procedure TParallaxTextureEx.OnGetSettings(var aSettings: TGameSettings);
begin
  inherited;

  // Archive
  aSettings.ArchiveFilename := 'Data.arc';

  aSettings.WindowTitle := aSettings.WindowTitle + ' - Parallexed Texture';
end;

procedure TParallaxTextureEx.OnStartup;
begin
  inherited;

  // show splash screen
  Topaz.Splashscreen.Show;

  Topaz.Get(ITexture, FTexture[0]);
  Topaz.Get(ITexture, FTexture[1]);
  Topaz.Get(ITexture, FTexture[2]);
  Topaz.Get(ITexture, FTexture[3]);

  // Load bitmap images
  FTexture[0].Load(Archive, 'arc/images/space.png', nil);
  FTexture[1].Load(Archive, 'arc/images/nebula.png', @BLACK);
  FTexture[2].Load(Archive, 'arc/images/spacelayer1.png', @BLACK);
  FTexture[3].Load(Archive, 'arc/images/spacelayer2.png', @BLACK);

  // Set bitmap speeds
  FSpeed[0] := 0.3 * 30;
  FSpeed[1] := 0.5 * 30;
  FSpeed[2] := 1.0 * 30;
  FSpeed[3] := 2.0 * 30;

  // Clear pos
  FPos[0].Clear;
  FPos[1].Clear;
  FPos[2].Clear;
  FPos[3].Clear;

end;

procedure TParallaxTextureEx.OnShutdown;
begin
  Topaz.Release(FTexture[3]);
  Topaz.Release(FTexture[2]);
  Topaz.Release(FTexture[1]);
  Topaz.Release(FTexture[0]);

  inherited;
end;

procedure TParallaxTextureEx.OnUpdate(aDeltaTime: Double);
var
  I: Integer;
begin
  inherited;

  for I := 0 to 3 do
    FPos[I].Y := FPos[I].Y + (FSpeed[I] * aDeltaTime);
end;

procedure TParallaxTextureEx.OnRender;
var
  I: Integer;
begin
  inherited;

  for I := 0 to 3 do
  begin
    if I = 1 then
      Topaz.Window.SetBlendMode(bmAdditiveAlpha);
    FTexture[I].DrawTiled(FPos[I].X, FPos[I].Y);
    if I = 1 then
      Topaz.Window.RestoreDefaultBlendMode;
  end;
end;

{ TTextureRegionEx }
procedure TTextureRegionEx.OnGetSettings(var aSettings: TGameSettings);
begin
  inherited;

  // Archive
  aSettings.ArchiveFilename := 'Data.arc';

  aSettings.WindowTitle := aSettings.WindowTitle + ' - Texture Region Example';
end;

procedure TTextureRegionEx.OnStartup;
begin
  inherited;

  // show splash screen
  Topaz.Splashscreen.Show;

  // create and load in texture with animation frames
  Topaz.Get(ITexture, FTexture);
  FTexture.Load(Archive, 'arc/images/boss.png', nil);

  // init variables
  FCenter.Assign(0.5, 0.5);
  FRegion.Assign(0, 0, cSpriteWidth, cSpriteHeight);
  FFrame := 0;
  FFrameTimer := 0;
end;

procedure TTextureRegionEx.OnShutdown;
begin
  // destroy texture object
  Topaz.Release(FTexture);

  inherited;
end;

procedure TTextureRegionEx.OnUpdate(aDeltaTime: Double);
begin
  inherited;

  // up frame cFrameSpeed times per second
  if Topaz.Timer.FrameSpeed(FFrameTimer, cFrameSpeed) then
  begin
    // increment frame number
    Inc(FFrame);

    // clip frame number between first and last
    Topaz.Math.ClipValueInt(FFrame, cFrameFirst, cFrameLast, True);
  end;

  // calc grid x and y based on frame number
  FGridPos.X := (FFrame * cSpriteWidth) mod Round(FTexture.Width) / cSpriteWidth;
  FGridPos.Y := floor((FFrame * cSpriteWidth) / FTexture.Height);

  // set the x and y position in texture for this frame
  FRegion.X := FGridPos.X * cSpriteWidth;
  FRegion.Y := FGridPos.Y * cSpriteHeight;
end;

procedure TTextureRegionEx.OnRender;
begin
  inherited;

  // draw each sprite frame center aligned at the center of the window
  FTexture.Draw(Topaz.Window.Width/2, Topaz.Window.Height/2, @FRegion, @FCenter, nil, 0, WHITE);
end;

{ TScaleTextureEx }
procedure TScaleTextureEx.OnGetSettings(var aSettings: TGameSettings);
begin
  inherited;

  // Archive
  aSettings.ArchiveFilename := 'Data.arc';

  aSettings.WindowTitle := aSettings.WindowTitle + ' - Scaled Texture Example';
end;

procedure TScaleTextureEx.OnStartup;
begin
  inherited;

  // show splash screen
  Topaz.Splashscreen.Show;

  Topaz.Get(ITexture, FTexture);
  FTexture.Load(FArchive, 'arc/images/figure.png', nil);
  FScale.W := 1.0;
end;

procedure TScaleTextureEx.OnShutdown;
begin
  Topaz.Release(FTexture);

  inherited;
end;

procedure TScaleTextureEx.OnUpdate(aDeltaTime: Double);
begin
  inherited;

  if InputMap.Pressed('up') then
    FScale.W := FScale.W + cScaleAmount
  else
  if InputMap.Pressed('down') then
    FScale.W := FScale.W - cScaleAmount;

  Topaz.Math.ClipValueFloat(FScale.W, cScaleMin, cScaleMax, False);
end;

procedure TScaleTextureEx.OnRender;
begin
  inherited;
  FTexture.Draw(Topaz.Window.Width/2, Topaz.Window.Height/2, FScale.W, 0, WHITE, haCenter, vaCenter);
end;

procedure TScaleTextureEx.OnRenderHUD;
begin
  inherited;
  HudText(Font, GREEN, haLeft, HudTextItem('Up', 'Scale up'), []);
  HudText(Font, GREEN, haLeft, HudTextItem('Down', 'Scale down'), []);
  HudText(Font, YELLOW, haLeft, HudTextItem('Scale', '%.2f'), [FScale.W]);
end;

{ TTiledTextureEx }
procedure TTiledTextureEx.OnGetSettings(var aSettings: TGameSettings);
begin
  inherited;

  // Archive
  aSettings.ArchiveFilename := 'Data.arc';

  aSettings.WindowTitle := aSettings.WindowTitle + ' - Tiled Texture';
end;

procedure TTiledTextureEx.OnStartup;
begin
  inherited;

  // show splash screen
  Topaz.Splashscreen.Show;

  Topaz.Get(ITexture, FTexture);
  FTexture.Load(FArchive, 'arc/images/nebula.png', nil);
  FPos.Assign(0, 0, 0, 30);
end;

procedure TTiledTextureEx.OnShutdown;
begin
  Topaz.Release(FTexture);

  inherited;
end;

procedure TTiledTextureEx.OnUpdate(aDeltaTime: Double);
begin
  inherited;
  FPos.Y := FPos.Y + (FPos.W * aDeltaTime);
end;

procedure TTiledTextureEx.OnRender;
begin
  inherited;

  FTexture.DrawTiled(FPos.X, FPos.Y);
end;

{ TTransparentTextureEx }
procedure TTransparentTextureEx.OnGetSettings(var aSettings: TGameSettings);
begin
  inherited;

  // Archive
  aSettings.ArchiveFilename := 'Data.arc';

  aSettings.WindowTitle := aSettings.WindowTitle  + ' - Transparent Texture Example';
end;

procedure TTransparentTextureEx.OnStartup;
begin
  inherited;

  // show splash screen
  Topaz.Splashscreen.Show;

  Topaz.Get(ITexture, FTexture);
  FTexture.Load(Archive, 'arc/images/alphacheese.png', nil);
end;

procedure TTransparentTextureEx.OnShutdown;
begin
  Topaz.Release(FTexture);

  inherited;
end;

procedure TTransparentTextureEx.OnRender;
var
  LSize: TVector;
begin
  inherited;

  LSize.Assign(FTexture.Width, FTexture.Height);
  FTexture.Draw(Topaz.Window.Width/2, Topaz.Window.Height/2, 1, 0, WHITE, haCenter, vaCenter);
  Font.PrintText(Topaz.Window.Width/2, (Topaz.Window.Height/2)+(LSize.Y/3.5), DARKORANGE, haCenter, 'Native transparency', []);
end;

end.
