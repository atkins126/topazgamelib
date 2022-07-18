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

unit uCameras;

interface

uses
  TopazGameLib;

type

  { TCameraEx }
  TCameraEx = class(TGame)
const
     MAX_BUILDINGS = 100;
     SPEED = 60*3;
  protected
    FPlayer: TRectangle;
    FBuildings: array[0..MAX_BUILDINGS-1] of TRectangle;
    FBuildingColors: array[0..MAX_BUILDINGS-1] of TColor;
    FSpacing: Integer;
    FCamera: ICamera;
    LMouseWheel: Single;
    LLastMouseWheel: Single;
    FValue: TVector;
   public
    procedure OnGetSettings(var aSettings: TGameSettings); override;
    procedure OnStartup; override;
    procedure OnShutdown; override;
    procedure OnUpdate(aDeltaTime: Double); override;
    procedure OnRender; override;
    procedure OnRenderHUD; override;
  end;

implementation

{ TCameraEx }
procedure TCameraEx.OnGetSettings(var aSettings: TGameSettings);
begin
  inherited;

  // Archive
  aSettings.ArchiveFilename := 'Data.arc';

  // Window
  aSettings.WindowTitle := aSettings.WindowTitle + ' - Camera Example';
  aSettings.WindowWidth := 800;
  aSettings.WindowHeight := 450;
  aSettings.WindowClearColor := WHITE2;
end;

procedure TCameraEx.OnStartup;
var
  I: Integer;
begin
  inherited;

  // show splash screen
  Topaz.Splashscreen.Show;

  FPlayer.Assign(400, 280, 40, 40);

  Topaz.Get(ICamera, FCamera);
  FCamera.Init(FPlayer.x, FPlayer.y, Topaz.Window.Width, Topaz.Window.Height);

  FSpacing := 0;

  for I := 0 to MAX_BUILDINGS-1 do
  begin
    FBuildings[i].width := Topaz.Math.RandomRange(50, 200);
    FBuildings[i].height := Topaz.Math.RandomRange(100, 800);
    FBuildings[i].y := Topaz.Window.Height - 150.0 - FBuildings[i].height;
    FBuildings[i].x := -6000.0 + FSpacing;
    FSpacing := FSpacing + Round(FBuildings[i].width);
    FBuildingColors[i] := Topaz.Color.FromByte(Topaz.Math.RandomRange(200, 240), Topaz.Math.RandomRange(200, 240), Topaz.Math.RandomRange(200, 250), 255 );
  end;
end;

procedure TCameraEx.OnShutdown;
begin
  Topaz.Release(FCamera);

  inherited;
end;

procedure TCameraEx.OnUpdate(aDeltaTime: Double);
begin
  inherited;

  if GetMousePos.Z <> LLastMouseWheel then
    begin
      if GetMousePos.Z > LLastMouseWheel then
        LMouseWheel := 1
      else
      if GetMousePos.Z < LLastMouseWheel then
        LMouseWheel := -1;
      LLastMouseWheel := GetMousePos.Z;
    end
  else
    LMouseWheel := 0;

  if Topaz.Input.KeyDown(KEY_RIGHT) then
    FPlayer.X := FPlayer.X + (SPEED * aDeltaTime)
  else
  if Topaz.Input.KeyDown(KEY_LEFT) then
    FPlayer.X := FPlayer.X - (SPEED * aDeltaTime);

  FCamera.SetPos(FPlayer.X, FPlayer.Y);

  // rotate
  if Topaz.Input.KeyDown(KEY_A) then
    FCamera.SetRotation(FCamera.GetRotation + (30 * aDeltaTime))
  else
  if Topaz.Input.KeyDown(KEY_D) then
    FCamera.SetRotation(FCamera.GetRotation - (30 * aDeltaTime));

  if FCamera.GetRotation > 40 then
    FCamera.SetRotation(40)
  else
  if FCamera.GetRotation < -40 then
    FCamera.SetRotation(-40);


  // scale
  if Topaz.Input.KeyDown(KEY_W) then
    begin
    FCamera.SetScale(FCamera.GetScale + (1 * aDeltaTime));
    end
  else
  if Topaz.Input.KeyDown(KEY_S) then
  begin
    FCamera.SetScale(FCamera.GetScale - (1 * aDeltaTime));
  end;

  if (FCamera.GetScale > 4.0) then
    FCamera.SetScale(4.0)
  else
  if (FCamera.GetScale < 1) then
    FCamera.SetScale(1);
end;

procedure TCameraEx.OnRender;
var
  I: Integer;
begin
  inherited;

  FCamera.Activate(True);

  Topaz.Window.DrawFilledRectangle(-6000, 300, 13000, 8000, DARKGRAY);

  for I := 0 to MAX_BUILDINGS-1 do
    Topaz.Window.DrawFilledRectangle(FBuildings[I].X, FBuildings[I].Y, FBuildings[I].Width, FBuildings[I].Height, FBuildingColors[I]);

  Topaz.Window.DrawFilledRectangle(FPlayer.X-(FPlayer.Width/2), FPlayer.Y-(FPlayer.Height/2), FPlayer.Width, FPlayer.Height, RED);
  Topaz.Window.DrawLine(FPlayer.X, FPlayer.y-(Topaz.Window.Height*10), FPlayer.X, FPlayer.y+(Topaz.Window.Height*10), 2, GREEN);
  Topaz.Window.DrawLine(FPlayer.X-(Topaz.Window.Height*10), FPlayer.y, FPlayer.X+(Topaz.Window.Height*10), FPlayer.y, 2, GREEN);

  FCamera.Activate(False);

  Topaz.Window.DrawRectangle(0, 0, Topaz.Window.Width+1, Topaz.Window.Height+1, 4, RED);
end;

procedure TCameraEx.OnRenderHUD;
begin
  inherited;

  ResetHudPos;
  HudText(FFont, BLACK, haLeft, 'fps %d', [Topaz.Timer.GetFrameRate]);
  HudText(FFont, BLACK, haLeft, HudTextItem('ESC', 'Quit'), []);


  HudText(Font, BLACK, haLeft, HudTextItem('Left/Right', 'Move'), [FPlayer.X]);
  HudText(Font, BLACK, haLeft, HudTextItem('A/D', 'Rotate'), [FPlayer.X]);
  HudText(Font, BLACK, haLeft, HudTextItem('W/S', 'Scale'), [FPlayer.X]);

  HudText(Font, BLACK, haLeft, HudTextItem('Pos', '%.2f'), [FPlayer.X]);
  HudText(Font, BLACK, haLeft, HudTextItem('Scale', '%.2f'), [FCamera.GetScale]);
  HudText(Font, BLACK, haLeft, HudTextItem('Rotation', '%.2f'), [FCamera.GetRotation]);

  HudText(Font, BLACK, haLeft, HudTextItem('Value', '%.2f:%.2f'), [FValue.X, FValue.Y]);
end;

end.
