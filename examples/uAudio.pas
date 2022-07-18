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

unit uAudio;

interface

uses
  TopazGameLib;

type
  { TPositionalAudioEx }
  TPositionalAudioEx = class(TGame)
  protected
    FSfx: Integer;
    FChan: Integer;
    FCenterPos: TVector;
  public
    procedure OnGetSettings(var aSettings: TGameSettings); override;
    procedure OnStartup; override;
    procedure OnShutdown; override;
    procedure OnUpdate(aDeltaTime: Double); override;
    procedure OnRender; override;
  end;

  { TMusicAudioEx }
  TMusicEx = class(TGame)
  protected
    FFilename: string;
    FNum: Integer;
    FMusic: Integer;
    procedure Play(aNum: Integer; aVol: Single);
  public
    procedure OnGetSettings(var aSettings: TGameSettings); override;
    procedure OnStartup; override;
    procedure OnShutdown; override;
    procedure OnUpdate(aDeltaTime: Double); override;
    procedure OnRender; override;
    procedure OnRenderHUD; override;
  end;

  { TSoundAudioEx }
  TSfxEx = class(TGame)
  protected
    FSamples: array[ 0..8 ] of Integer;
  public
    procedure OnGetSettings(var aSettings: TGameSettings); override;
    procedure OnStartup; override;
    procedure OnShutdown; override;
    procedure OnUpdate(aDeltaTime: Double); override;
    procedure OnRenderHUD; override;
  end;

implementation

{ TPositionalAudioEx }
procedure TPositionalAudioEx.OnGetSettings(var aSettings: TGameSettings);
begin
  inherited;

  aSettings.ArchiveFilename := 'Data.arc';

  aSettings.WindowTitle := aSettings.WindowTitle + ' - Positional Audio Example';
end;

procedure TPositionalAudioEx.OnStartup;
begin
  inherited;

  // show splash screen
  Topaz.Splashscreen.Show;

  FCenterPos.Assign(Topaz.Window.Width/2, Topaz.Window.Height/2);

  Topaz.Audio.SetListenerPosition(Topaz.Window.Width/2, Topaz.Window.Height/2);
  FSfx := Topaz.Audio.LoadSound(Archive, 'arc/sfx/samp5.ogg');

  FChan := Topaz.Audio.PlaySound(0, FSfx, 1.0, True);
  Topaz.Audio.SetChannelMinDistance(FChan, 10);
  Topaz.Audio.SetChannelAttenuation(FChan, 0.5);
end;

procedure TPositionalAudioEx.OnShutdown;
begin
  Topaz.Audio.UnloadSound(FSfx);
  inherited;
end;

procedure TPositionalAudioEx.OnUpdate(aDeltaTime: Double);
begin
  inherited;

  Topaz.Audio.SetChannelPosition(FChan, GetMousePos.X, GetMousePos.Y);
end;

procedure TPositionalAudioEx.OnRender;
var
  LRadius: Single;
begin
  inherited;

  Topaz.Window.DrawLine(FCenterPos.X, FCenterPos.Y, GetMousePos.X, GetMousePos.Y, 1, GREEN);
  Topaz.Window.DrawFilledCircle(FCenterPos.X, FCenterPos.Y, 10, ORANGE);

  LRadius := FCenterPos.Distance(GetMousePos^);

  Topaz.Window.DrawCircle(FCenterPos.X, FCenterPos.Y, LRadius, 1, WHITE);

  Topaz.Window.DrawLine(0, GetMousePos.Y, Topaz.Window.Width-1, GetMousePos.Y, 1, YELLOW);
  Topaz.Window.DrawLine(GetMousePos.X, 0, GetMousePos.X, Topaz.Window.Height-1, 1, YELLOW);
end;

{ TMusicAudioEx }
procedure TMusicEx.Play(aNum: Integer; aVol: Single);
begin
  FFilename := Topaz.Util.Format('arc/music/song%.*d.ogg', [2,aNum]);
  Topaz.Audio.UnloadMusic(FMusic);
  FMusic := Topaz.Audio.LoadMusic(Archive, FFilename);
  Topaz.Audio.PlayMusic(FMusic, aVol, True);
end;

procedure TMusicEx.OnGetSettings(var aSettings: TGameSettings);
begin
  inherited;

  aSettings.ArchiveFilename := 'Data.arc';

  aSettings.WindowTitle := aSettings.WindowTitle + ' - Music Example';
end;

procedure TMusicEx.OnStartup;
begin
  inherited;

  // show splash screen
  Topaz.Splashscreen.Show;

  FNum := 1;
  FFilename := '';
  FMusic := -1;
  Play(1, 1.0);
end;

procedure TMusicEx.OnShutdown;
begin
  Topaz.Audio.UnloadMusic(FMusic);
  inherited;
end;

procedure TMusicEx.OnUpdate(aDeltaTime: Double);
begin
  inherited;

  if Topaz.Input.KeyPressed(KEY_PGUP) then
  begin
    Inc(FNum);
    if FNum > 13 then
      FNum := 1;
    Play(FNum, 1.0);
  end
  else
  if Topaz.Input.KeyPressed(KEY_PGDN) then
  begin
    Dec(FNum);
    if FNum < 1 then
      FNum := 13;
    Play(FNum, 1.0);
  end
end;

procedure TMusicEx.OnRender;
begin
  inherited;
end;

procedure TMusicEx.OnRenderHUD;
begin
  inherited;

  HudText(Font, GREEN,  haLeft, HudTextItem('PgUp/PgDn', 'Play sample'), []);
  HudText(Font, ORANGE, haLeft, HudTextItem('Song:', '%s', ' '), [Topaz.Util.GetFileName(FFilename)]);

end;

{ TSoundAudioEx }
procedure TSfxEx.OnGetSettings(var aSettings: TGameSettings);
begin
  inherited;

  aSettings.ArchiveFilename := 'Data.arc';

  aSettings.WindowTitle := aSettings.WindowTitle + ' - Sound Example';
end;

procedure TSfxEx.OnStartup;
var
  I: Integer;
begin
  inherited;

  // show splash screen
  Topaz.Splashscreen.Show;

  Topaz.Audio.SetChannelReserved(0, True);

  for I := 0 to 5 do
    FSamples[I] := Topaz.Audio.LoadSound(Archive, Topaz.Util.Format('arc/sfx/samp%d.ogg', [I]));

  FSamples[6] := Topaz.Audio.LoadSound(Archive, 'arc/sfx/weapon_player.ogg');
  FSamples[7] := Topaz.Audio.LoadSound(Archive, 'arc/sfx/thunder.ogg');
  FSamples[8] := Topaz.Audio.LoadSound(Archive, 'arc/sfx/digthis.ogg');
end;

procedure TSfxEx.OnShutdown;
var
  I: Integer;
begin
  Topaz.Audio.StopAllChannels;

  for I := 0 to 8 do
    Topaz.Audio.UnloadSound(FSamples[I]);

  inherited;
end;

procedure TSfxEx.OnUpdate(aDeltaTime: Double);
begin
  inherited;

  if Topaz.Input.KeyPressed(KEY_1) then
    Topaz.Audio.PlaySound(AUDIO_DYNAMIC_CHANNEL, FSamples[1], 1, False);

  if Topaz.Input.KeyPressed(KEY_2) then
    Topaz.Audio.PlaySound(AUDIO_DYNAMIC_CHANNEL, FSamples[2], 1, False);

  if Topaz.Input.KeyPressed(KEY_3) then
    Topaz.Audio.PlaySound(AUDIO_DYNAMIC_CHANNEL, FSamples[3], 1, False);

  if Topaz.Input.KeyPressed(KEY_4) then
    Topaz.Audio.PlaySound(0, FSamples[0], 1, True);

  if Topaz.Input.KeyPressed(KEY_5) then
    Topaz.Audio.PlaySound(AUDIO_DYNAMIC_CHANNEL, FSamples[4], 1, False);

  if Topaz.Input.KeyPressed(KEY_6) then
    Topaz.Audio.PlaySound(AUDIO_DYNAMIC_CHANNEL, FSamples[5], 1, False);

  if Topaz.Input.KeyPressed(KEY_7) then
    Topaz.Audio.PlaySound(AUDIO_DYNAMIC_CHANNEL, FSamples[6], 1, False);

  if Topaz.Input.KeyPressed(KEY_8) then
    Topaz.Audio.PlaySound(AUDIO_DYNAMIC_CHANNEL, FSamples[7], 1, False);

  if Topaz.Input.KeyPressed(KEY_9) then
    Topaz.Audio.PlaySound(AUDIO_DYNAMIC_CHANNEL, FSamples[8], 1, False);

  if Topaz.Input.KeyPressed(KEY_0) then
    Topaz.Audio.StopChannel(0);
end;

procedure TSfxEx.OnRenderHUD;
begin
  inherited;

  HudText(Font, GREEN, haLeft, HudTextItem('1-9', 'Play sample'), []);
  HudText(Font, GREEN, haLeft, HudTextItem('0', 'Stop looping sample'), []);
end;

end.
