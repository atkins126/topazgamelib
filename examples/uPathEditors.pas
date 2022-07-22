unit uPathEditors;

interface

uses
  TopazGameLib;

type

  { TPathEditorEx }
  TPathEditorEx = class(TCustomGame)
  protected
    FPathIndex: Integer;
    FLookaHead: Integer;
    FSpeed: Single;
    FWindowPos: TPointi;
    FWindowSize: TPointi;
  public
    property PathIndex: Integer read FPathIndex;
    property LookAHead: Integer read FLookAHead;
    property WindowPos: TPointi read FWindowPos;
    property WindowSize: TPointi read FWindowSize;
    property Speed: Single read FSpeed;
    procedure OnRun; override;
    procedure OnPathEditorAction(aAction: TPathEditorAction); override;
    procedure OnPathEditorTest(aPathIndex: Integer; aLookAHead: Integer; aSpeed: Single; aWindowPos: TPointi; aWindowSize: TPointi); override;
  end;

  { TPathEditorTest }
  TPathEditorTest = class(TGame)
  protected
    FShip: IEntity;
    FPath: IPathEditorPath;
  public
    procedure OnGetSettings(var aSettings: TGameSettings); override;
    procedure OnStartup; override;
    procedure OnShutdown; override;
    procedure OnUpdate(aDeltaTime: Double); override;
    procedure OnRender; override;
    procedure OnRenderHUD; override;
  end;

implementation

var
  mGame: TPathEditorEx = nil;

{ TPathEditorEx }
procedure TPathEditorEx.OnRun;
begin
  mGame := Self;
  Topaz.PathEditor.Reset;
  Topaz.PathEditor.Show;
  mGame := nil;
end;

procedure TPathEditorEx.OnPathEditorAction(aAction: TPathEditorAction);
var
  LFilename: WideString;
begin
  case aAction of
    paLoad:
      begin
        if not Topaz.Dialogs.FileOpen('Path Files', 'Fath Files|*.path', 0, '.path', '', LFilename) then Exit;
        //Topaz.Dialogs.MessageBox('Info', '', LFilename, mbOkCancel);
        Topaz.PathEditor.Load(nil, LFilename);
      end;
    paSave:
      begin
        if not Topaz.Dialogs.FileSave('Path Files', 'Path Files|*.path', 0, '.path', LFilename) then Exit;
        Topaz.PathEditor.Save(LFilename);
      end;
  end;
end;

procedure TPathEditorEx.OnPathEditorTest(aPathIndex: Integer; aLookAHead: Integer; aSpeed: Single; aWindowPos: TPointi; aWindowSize: TPointi);
begin
  FPathIndex := aPathIndex;
  FLookaHead := aLookAHead;
  FSpeed := aSpeed;
  FWindowPos := aWindowPos;
  FWindowSize := aWindowSize;
  Topaz.RunGame(TPathEditorTest);
end;

{ TPathEditorTest }
procedure TPathEditorTest.OnGetSettings(var aSettings: TGameSettings);
begin
  inherited;

  aSettings.ArchiveFilename := 'Data.arc';

  aSettings.WindowTitle := aSettings.WindowTitle + ' - PathEditor Test';
  aSettings.WindowWidth := mGame.WindowSize.X;
  aSettings.WindowHeight := mGame.WindowSize.Y
end;

procedure TPathEditorTest.OnStartup;
begin
  inherited;

  Topaz.Window.SetPos(mGame.WindowPos.X, mGame.WindowPos.Y);

  // show splash screen
  Topaz.Splashscreen.Show;

  Sprite.LoadPage(Archive, 'arc/images/ship.png', nil);
  Sprite.AddGroup;
  Sprite.AddImageFromGrid(0, 0, 0, 1, 64, 64);
  Sprite.AddImageFromGrid(0, 0, 1, 1, 64, 64);
  Sprite.AddImageFromGrid(0, 0, 2, 1, 64, 64);

  Topaz.Get(IEntity, FShip);
  FShip.Init(Sprite, 0);
  FShip.SetFrameFPS(14);
  FShip.SetPosAbs(Topaz.Window.Width/2, Topaz.Window.Height/2);
  FShip.TracePolyPoint(6, 12, 70);
  //FShip.SetRenderPolyPoint(True);

  Topaz.Get(IPathEditorPath, FPath);
  FPath.Init(mGame.PathIndex, -1);

end;

procedure TPathEditorTest.OnShutdown;
begin
  Topaz.Release(FPath);
  Topaz.Release(FShip);

  inherited;
end;

procedure TPathEditorTest.OnUpdate(aDeltaTime: Double);
var
  LPos: TVector;
  LAngle: Single;
begin
  inherited;

  FPath.Update(mGame.LookAHead, mGame.Speed, LPos.X, LPos.Y, LAngle);
  FShip.SetPosAbs(LPos.X, LPos.Y);
  FShip.RotateAbs(LAngle);

  FShip.NextFrame;
end;

procedure TPathEditorTest.OnRender;
begin
  inherited;

  FShip.Render(0, 0);
end;

procedure TPathEditorTest.OnRenderHUD;
begin
  inherited;
end;

end.
