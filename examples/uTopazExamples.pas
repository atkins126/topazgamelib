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

unit uTopazExamples;

interface

uses
  TopazGameLib;

type

  { TExamples }
  TExamples = class(TGame)
  protected
  public
    procedure OnGetSettings(var aSettings: TGameSettings); override;
    procedure OnStartupDialogMore; override;
    function  OnStartupDialogRun: Boolean; override;
  end;

implementation

uses
  uShaders,
  uActors,
  uVideos,
  uAsync,
  uAudio,
  uFonts,
  uCameras,
  uEntities,
  uGUI,
  uRenderTargets,
  uHighscores,
  uMisc,
  uTextures,
  uPathEditors,
  uAstroBlasterDemo,
  uScrollDemo,
  uElasticDemo,
  uRenderTargetsDemo,
  uChainActionDemo,
  uPhysicsDemo;

procedure TExamples.OnGetSettings(var aSettings: TGameSettings);
begin
  inherited;

  // Archive
  aSettings.ArchiveFilename := 'Data.arc';

  aSettings.WindowTitle := aSettings.WindowTitle + ' - Examples';

  // StartupDialog
  aSettings.ShowStartupDialog := True;
  aSettings.StartupDialogCaption := aSettings.WindowTitle;
  aSettings.StartupDialogLogoFilename := 'arc/startupdialog/banner.png';
  aSettings.StartupDialogLogoClickURL := 'https://topazgamelib.com';
  aSettings.StartupDialogReadmeFilename := 'arc/startupdialog/README.rtf';
  aSettings.StartupDialogLicenseFilename := 'arc/startupdialog/LICENSE.rtf';
  aSettings.StartupDialogReleaseInfo := 'Version ' + Topaz.GetVersionStr;

end;

procedure TExamples.OnStartupDialogMore;
begin
  Topaz.Dialogs.MessageBox('Info', 'StartupDialogMore', 'You can use to set addition options and configurations for your project startup.', mbOkCancel);
end;

function  TExamples.OnStartupDialogRun: Boolean;
type
  LMenuId = (
    // textures
    miTextureEx,
    miAlignedTextureEx,
    miTextureColorKeyEx,
    miParallaxTextureEx,
    miTextureRegionEx,
    miScaleTextureEx,
    miTiledTextureEx,
    miTransparentTextureEx,

    // shaders
    miShaderEx,

    // audio
    miMusicEx,
    miSfx,
    miPositionalAudioEx,

    // entities
    miEntityEx,
    miPolyPointCollisionEx,
    miPolyPointColliionPointEx,

    // actors
    miActorEx,

    // videos
    miVideoEx,

    // asyncs
    miAsyncConsoleEx,

    // fonts
    miUnicodeFontEx,

    // cameras
    miCameraEx,

    // guis
    miGUIEx,

    // rendertargets
    miRotateRenderTargetEx,

    // highscores
    miHighscoresEx,

    // misc
    miScreenshakeEx,
    miScreenshotEx,
    miStarfieldEx,
    miSpeechEx,

    // path editors
    miPathEditorEx,

    // demos
    miAstroBlaster,
    miRenderTargetsDemo,
    miChainActionDemo,
    miElasticDemo,
    miScrollDemo,
    miPhysicsDemo
  );
var
  LMenu: ITreeMenu;
  LId: Integer;
  LExamplesMenu: Pointer;
  LTexturesMenu: Pointer;
  LEntitiesMenu: Pointer;
  LShadersMenu: Pointer;
  LAudioMenu: Pointer;
  LDemosMenu: Pointer;
  LActorsMenu: Pointer;
  LVideosMenu: Pointer;
  LAsyncMenu: Pointer;
  LFontMenu: Pointer;
  LCameraMenu: Pointer;
  LGuiMenu: Pointer;
  LRenderTargetMenu: Pointer;
  LHighscoresMenu: Pointer;
  LMiscMenu: Pointer;
  LPathEditorMenu: Pointer;
begin

  Topaz.Get(ITreeMenu, LMenu);
  try
    LMenu.SetTitle('Topaz Game Library - Examples');
    LMenu.SetStatus('Version ' + Topaz.GetVersionStr);

    // examples
    LExamplesMenu := LMenu.AddItem(nil, 'Examples', TREEMENU_NONE, True);
      // textures
      LTexturesMenu := LMenu.AddItem(LExamplesMenu, 'Textures', TREEMENU_NONE, True);
        LMenu.AddItem(LTexturesMenu, 'Texture', Ord(miTextureEx), True);
        LMenu.AddItem(LTexturesMenu, 'Tiled', Ord(miTiledTextureEx), True);
        LMenu.AddItem(LTexturesMenu, 'Aligned', Ord(miAlignedTextureEx), True);
        LMenu.AddItem(LTexturesMenu, 'ColorKey', Ord(miTextureColorKeyEx), True);
        LMenu.AddItem(LTexturesMenu, 'Parallax', Ord(miParallaxTextureEx), True);
        LMenu.AddItem(LTexturesMenu, 'Region', Ord(miTextureRegionEx), True);
        LMenu.AddItem(LTexturesMenu, 'Scale', Ord(miScaleTextureEx), True);
        LMenu.AddItem(LTexturesMenu, 'Transparent', Ord(miTransparentTextureEx), True);
      LMenu.Sort(LTexturesMenu);

      // shaders
      LShadersMenu := LMenu.AddItem(LExamplesMenu, 'Shaders', TREEMENU_NONE, True);
        LMenu.AddItem(LShadersMenu, 'Shader', Ord(miShaderEx), True);
      LMenu.Sort(LShadersMenu);

      // audio
      LAudioMenu := LMenu.AddItem(LExamplesMenu, 'Audio', TREEMENU_NONE, True);
        LMenu.AddItem(LAudioMenu, 'Positional', Ord(miPositionalAudioEx), True);
        LMenu.AddItem(LAudioMenu, 'Music', Ord(miMusicEx), True);
        LMenu.AddItem(LAudioMenu, 'Sound', Ord(miSfx), True);
      LMenu.Sort(LAudioMenu);

      // entities
      LEntitiesMenu := LMenu.AddItem(LExamplesMenu, 'Entities', TREEMENU_NONE, True);
        LMenu.AddItem(LEntitiesMenu, 'Entity', Ord(miEntityEx), True);
        LMenu.AddItem(LEntitiesMenu, 'PolyPoint Collision', Ord(miPolyPointCollisionEx), True);
        LMenu.AddItem(LEntitiesMenu, 'PolyPoint Collision Point', Ord(miPolyPointColliionPointEx), True);
      LMenu.Sort(LEntitiesMenu);

      // actors
      LActorsMenu := LMenu.AddItem(LExamplesMenu, 'Actors', TREEMENU_NONE, True);
        LMenu.AddItem(LActorsMenu, 'Actor', Ord(miActorEx), True);
      LMenu.Sort(LActorsMenu);

      // actors
      LVideosMenu := LMenu.AddItem(LExamplesMenu, 'Videos', TREEMENU_NONE, True);
        LMenu.AddItem(LVideosMenu, 'Video', Ord(miVideoEx), True);
      LMenu.Sort(LVideosMenu);

      // async
      LAsyncMenu := LMenu.AddItem(LExamplesMenu, 'Async', TREEMENU_NONE, True);
        LMenu.AddItem(LAsyncMenu, 'Console', Ord(miAsyncConsoleEx), True);
      LMenu.Sort(LAsyncMenu);

      // fonts
      LFontMenu := LMenu.AddItem(LExamplesMenu, 'Fonts', TREEMENU_NONE, True);
        LMenu.AddItem(LFontMenu, 'Unicode', Ord(miUnicodeFontEx), True);
      LMenu.Sort(LFontMenu);

      // cameras
      LCameraMenu := LMenu.AddItem(LExamplesMenu, 'Cameras', TREEMENU_NONE, True);
        LMenu.AddItem(LCameraMenu, 'Camera', Ord(miCameraEx), True);
      LMenu.Sort(LCameraMenu);

      // gui
      LGUIMenu := LMenu.AddItem(LExamplesMenu, 'GUI', TREEMENU_NONE, True);
        LMenu.AddItem(LGUIMenu, 'GUI', Ord(miGUIEx), True);
      LMenu.Sort(LGUIMenu);

      // rendertarget
      LRenderTargetMenu := LMenu.AddItem(LExamplesMenu, 'Render Targets', TREEMENU_NONE, True);
        LMenu.AddItem(LRenderTargetMenu, 'Rotate', Ord(miRotateRenderTargetEx), True);
      LMenu.Sort(LRenderTargetMenu);

      // highscores
      LHighscoresMenu := LMenu.AddItem(LExamplesMenu, 'Highscores', TREEMENU_NONE, True);
        LMenu.AddItem(LHighscoresMenu, 'Highscore', Ord(miHighscoresEx), True);
      LMenu.Sort(LHighscoresMenu);

      // path editors
      LPathEditorMenu := LMenu.AddItem(LExamplesMenu, 'Path Editors', TREEMENU_NONE, True);
        LMenu.AddItem(LPathEditorMenu, 'Path Editor', Ord(miPathEditorEx), True);
      LMenu.Sort(LPathEditorMenu);


      // misc
      LMiscMenu := LMenu.AddItem(LExamplesMenu, 'Misc', TREEMENU_NONE, True);
        LMenu.AddItem(LMiscMenu, 'Screenshot', Ord(miScreenshotEx), True);
        LMenu.AddItem(LMiscMenu, 'Screenshake', Ord(miScreenshakeEx), True);
        LMenu.AddItem(LMiscMenu, 'Speech', Ord(miSpeechEx), True);
        LMenu.AddItem(LMiscMenu, 'Starfield', Ord(miStarfieldEx), True);
      LMenu.Sort(LMiscMenu);

    LMenu.Sort(LExamplesMenu);

    // demos
    LDemosMenu := LMenu.AddItem(nil, 'Demos', TREEMENU_NONE, True);
    LMenu.AddItem(LDemosMenu, 'AstroBlaster', Ord(miAstroBlaster), True);
    LMenu.AddItem(LDemosMenu, 'Render Targets', Ord(miRenderTargetsDemo), True);
    LMenu.AddItem(LDemosMenu, 'ChainAction', Ord(miChainActionDemo), True);
    LMenu.AddItem(LDemosMenu, 'Elastic', Ord(miElasticDemo), True);
    LMenu.AddItem(LDemosMenu, 'Scroll', Ord(miScrollDemo), True);
    LMenu.AddItem(LDemosMenu, 'Physics', Ord(miPhysicsDemo), True);
    LMenu.Sort(LDemosMenu);

    LId := ConfigFile.GetValue('TreeMenu', 'Id', -1);
    repeat
      LId := LMenu.Show(LId);
      case LMenuId(LId) of
        // shaders
        miShaderEx: Topaz.RunGame(TShaderEx);

        // actors
        miActorEx: Topaz.RunGame(TActorEx);

        // videos
        miVideoEx: Topaz.RunGame(TVideoEx);

        // async
        miAsyncConsoleEx: Topaz.RunGame(TAsyncConsoleEx);

        // audio
        miPositionalAudioEx: Topaz.RunGame(TPositionalAudioEx);
        miMusicEx: Topaz.RunGame(TMusicEx);
        miSfx: Topaz.RunGame(TSfxEx);

        // fonts
        miUnicodeFontEx: Topaz.RunGame(TUnicodeFontEx);

        // cameras
        miCameraEx: Topaz.RunGame(TCameraEx);

        // entities
        miEntityEx: Topaz.RunGame(TEntityEx);
        miPolyPointCollisionEx: Topaz.RunGame(TPolyPointCollisionEx);
        miPolyPointColliionPointEx: Topaz.RunGame(TPolyPointCollisionPointEx);

        // gui
        miGUIEx: Topaz.RunGame(TGUIEx);

        // rendertargets
        miRotateRenderTargetEx: Topaz.RunGame(TRotateRenderTargetEx);

        // highscores
        miHighscoresEx: Topaz.RunGame(THighscoreEx);

        // misc
        miScreenshakeEx: Topaz.RunGame(TScreenShakeEx);
        miScreenshotEx : Topaz.RunGame(TScreenshotEx);
        miSpeechEx     : Topaz.RunGame(TSpeechEx);
        miStarfieldEx  : Topaz.RunGame(TStarfieldEx);

        // texture
        miTextureEx : Topaz.RunGame(TTextureEx);
        miAlignedTextureEx: Topaz.RunGame(TAlignedTextureEx);
        miTextureColorKeyEx: Topaz.RunGame(TTextureColorKeyEx);
        miParallaxTextureEx: Topaz.RunGame(TParallaxTextureEx);
        miTextureRegionEx: Topaz.RunGame(TTextureRegionEx);
        miScaleTextureEx: Topaz.RunGame(TScaleTextureEx);
        miTiledTextureEx: Topaz.RunGame(TTiledTextureEx);
        miTransparentTextureEx: Topaz.RunGame(TTransparentTextureEx);

        // path editors
        miPathEditorEx: Topaz.RunGame(TPathEditorEx);

        // demos
        miAstroBlaster: Topaz.RunGame(TAstroBlasterDemo);
        miScrollDemo: Topaz.RunGame(TScrollDemo);
        miElasticDemo: Topaz.RunGame(TElasticDemo);
        miRenderTargetsDemo: Topaz.RunGame(TRenderTargetsDemo);
        miChainActionDemo: Topaz.RunGame(TChainActionDemo);
        miPhysicsDemo: Topaz.RunGame(TPhysicsDemo);
      end;
    until LId = TREEMENU_QUIT;
    ConfigFile.SetValue('TreeMenu', 'Id', LMenu.GetLastSelectedId);
  finally
    Topaz.Release(LMenu);
  end;

  Result := False;
end;

end.
