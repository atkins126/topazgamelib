unit uExampleTemplate01;

interface

uses
  TopazGameLib;

type

  { TExampleTemplate }
  TExampleTemplate = class(TGame)
  protected
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

implementation

{ TExampleTemplate }
procedure TExampleTemplate.OnInit;
begin
  inherited;
end;

procedure TExampleTemplate.OnDone;
begin
  inherited;
end;

procedure TExampleTemplate.OnRun;
begin
  inherited;
end;

procedure TExampleTemplate.OnGetSettings(var aSettings: TGameSettings);
begin
  inherited;

  // Archive
  aSettings.ArchiveFilename := 'Data.arc';

  // Window
  aSettings.WindowTitle := aSettings.WindowTitle + ' - Example Template';
end;

procedure TExampleTemplate.OnStartup;
begin
  inherited;

  // show splash screen
  Topaz.Splashscreen.Show;

end;

procedure TExampleTemplate.OnShutdown;
begin
  inherited;
end;

procedure TExampleTemplate.OnReady(aReady: Boolean);
begin
  inherited;
end;

procedure TExampleTemplate.OnUpdate(aDeltaTime: Double);
begin
  inherited;
end;

procedure TExampleTemplate.OnFixedUpdate;
begin
  inherited;
end;

procedure TExampleTemplate.OnClearWindow;
begin
  inherited;
end;

procedure TExampleTemplate.OnShowWindow;
begin
  inherited;
end;

procedure TExampleTemplate.OnRender;
begin
  inherited;
end;

procedure TExampleTemplate.OnRenderHUD;
begin
  inherited;
end;

procedure TExampleTemplate.OnPreShowWindow;
begin
  inherited;
end;

procedure TExampleTemplate.OnPostShowWindow;
begin
  inherited;
end;

procedure TExampleTemplate.OnCmdConsoleState(aState: TCmdConsoleState);
begin
  inherited;
end;

procedure TExampleTemplate.OnVideoState(aState: TVideoState; aFilename: WideString);
begin
  inherited;
end;

procedure TExampleTemplate.OnScreenshot(const aFilename: WideString);
begin
  inherited;
end;

procedure TExampleTemplate.OnProcessIMGUI;
begin
  inherited;
end;

procedure TExampleTemplate.OnDisposeActor(aActor: TActor);
begin
  inherited;
end;

procedure TExampleTemplate.OnSetupStartupDialog;
begin
  inherited;
end;

procedure TExampleTemplate.OnStartupDialogMore;
begin
  inherited;
end;

function  TExampleTemplate.OnStartupDialogRun: Boolean;
begin
  Result := inherited;
end;

procedure TExampleTemplate.OnBuildArchiveProgress(const aFilename: WideString; aProgress: Integer; aNewFile: Boolean);
begin
  inherited;
end;

procedure TExampleTemplate.OnSpeechWord(const aWord, aText: WideString);
begin
  inherited;
end;

procedure TExampleTemplate.OnHighscoreAction(aHighscores: IHighscores; aAction: THighscoreAction);
begin
  inherited;
end;

procedure TExampleTemplate.OnInAppPurchase(aIAP: IInAppPurchase);
begin
  inherited;
end;

procedure TExampleTemplate.OnSocialPost(const aSuccess: Boolean; const aErrorMsg, aMsg, aMediaFilename: WideString);
begin
  inherited;
end;

procedure TExampleTemplate.OnSendMail(const aFromEmail, aFromName, aSubject, aToEmail, aBody, aError: WideString);
begin
  inherited;
end;

procedure TExampleTemplate.OnLuaState(aState: TLuaState);
begin
  inherited;
end;

procedure TExampleTemplate.OnBeforeRenderScene(aSceneNum: Integer);
begin
  inherited;
end;

procedure TExampleTemplate.OnAfterRenderScene(aSceneNum: Integer);
begin
  inherited;
end;

end.
