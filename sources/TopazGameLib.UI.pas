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

unit TopazGameLib.UI;

interface

uses
  TopazGameLib;

// === TEXTMENU =============================================================

type
  // TextMenu Event Handlers
  TTextMenuDrawBackgroundEvent      = procedure(aSubMenuIndex: Integer; aX, aY: Single; aWidth, aHeight: Integer; const aTitle: string) of object;
  TTextMenuAfterDrawMenuItemEvent   = procedure(aMenuId: Integer; aX, aY: Single; aFont: IFont; const aText: string; var aColor: TColor; aSelected: Boolean) of object;
  TTextMenuAfterUpdateMenuItemEvent = procedure(aMenuId: Integer; aDeltaTime: Single; var aWasUpdated: Boolean) of object;
  TTextMenuDrawCursorEvent          = procedure(aX, aY: Single) of object;
  TTextMenuAfterSelItemEvent        = procedure(aItemId, aAction: Integer) of object;
  TTextMenuAfterChooseItemEvent     = procedure(aItemId, aAction: Integer) of object;
  TTextMenuAfterCloseSubMenuEvent   = procedure(aSubMenuIndex: Cardinal; aAction: Integer) of object;
  TTextMenuAfterActivateMenuEvent   = procedure(aSubMenuIndex, aSubMenuItemIndex: Cardinal; aActivate: Boolean) of object;
  TTextMenuDeactivateMenuEvent      = procedure(aSubMenuIndex, aSubMenuItemIndex: Cardinal; var aCanDeactivate: Boolean) of object;

  { TTextMenu }
  TTextMenu = class(TBaseObject)
  protected
  type
    { TSubMenuItem }
    PSubMenuItem = ^TSubMenuItem;

    { TSubMenuItem }
    TSubMenuItem = record
      Id: Cardinal;
      Text: string;
      StrWidth: Integer;
      StrHeight: Integer;
      StrDX, StrDY: Integer;
      StrX, StrY: Integer;
      Font: IFont;
      RenderState: Integer;
      Color: TColor;
      Child: Integer;
      Selectable: Boolean;
      Active: Boolean;
    end;

    { TSubMenu }
    PSubMenu = ^TSubMenu;
    TSubMenu = record
      Title: string;
      Parent: Integer;
      X, Y: Integer;
      Item: array of TSubMenuItem;
      ItemCount: Integer;
      CurItemNum: Integer;
      LineWidth: Integer;
      LineHeight: Integer;
      SelColor: TColor;
    end;
  protected
    FSubMenu: array of TSubMenu;
    FSubMenuCount: Cardinal;
    FCurSubMenuNum: Integer;
    FActive: Boolean;
    FMousePos: TVector;
    FOnDrawBackgroundEvent: TTextMenuDrawBackgroundEvent;
    FOnAfterDrawMenuItemEvent: TTextMenuAfterDrawMenuItemEvent;
    FOnAfterUpdateMenuItemEvent: TTextMenuAfterUpdateMenuItemEvent;
    FOnDrawCursorEvent: TTextMenuDrawCursorEvent;
    FOnAfterSelItemEventEvent: TTextMenuAfterSelItemEvent;
    FOnAfterChooseItemEvent: TTextMenuAfterChooseItemEvent;
    FOnAfterCloseSubMenuEvent: TTextMenuAfterCloseSubMenuEvent;
    FOnAfterActivateMenuEvent: TTextMenuAfterActivateMenuEvent;
    FOnDeactivateMenuEvent: TTextMenuDeactivateMenuEvent;
    procedure DoDrawBackground(aSubMenuIndex: Integer; aX, aY: Single; aWidth, aHeight: Integer; const aTitle: string);
    procedure DoAfterDrawMenuItem(aMenuId: Integer; aX, aY: Single; aFont: IFont; const aText: string; var aColor: TColor; aSelected: Boolean);
    procedure DoAfterUpdateMenuItem(aMenuId: Integer; aDeltaTime: Single; var aWasUpdated: Boolean);
    procedure DoDrawCursor(aX, aY: Single);
    procedure DoAfterSelItem(aItemId, aAction: Integer);
    procedure DoAfterChooseItem(aItemId, aAction: Integer);
    procedure DoAfterCloseSubMenu(aSubMenuIndex: Cardinal; aAction: Integer);
    procedure DoAfterActivateMenu(aSubMenuIndex, aSubMenuItemIndex: Cardinal; aActivate: Boolean);
    procedure DoDeactivateMenu(aSubMenuIndex, aSubMenuItemIndex: Cardinal; var aCanDeactivate: Boolean);
    procedure BuildSubMenu(Index: Integer);
    procedure SetMousePos(aX, aY: Integer);
    procedure SelNextItem;
    procedure SelPrevItem;
    procedure ChooseItem;
    function MouseSelItem: Boolean;
  public
    property OnDrawBackground: TTextMenuDrawBackgroundEvent read FOnDrawBackgroundEvent write FOnDrawBackgroundEvent;
    property OnAfterDrawMenuItem: TTextMenuAfterDrawMenuItemEvent read FOnAfterDrawMenuItemEvent write FOnAfterDrawMenuItemEvent;
    property OnAfterUpdateMenuItem: TTextMenuAfterUpdateMenuItemEvent read FOnAfterUpdateMenuItemEvent write FOnAfterUpdateMenuItemEvent;
    property OnDrawCursor: TTextMenuDrawCursorEvent read FOnDrawCursorEvent write FOnDrawCursorEvent;
    property OnAfterSelItem: TTextMenuAfterSelItemEvent read FOnAfterSelItemEventEvent write FOnAfterSelItemEventEvent;
    property OnAfterChooseItem: TTextMenuAfterChooseItemEvent read FOnAfterChooseItemEvent write FOnAfterChooseItemEvent;
    property OnAfterCloseSubMenu: TTextMenuAfterCloseSubMenuEvent read FOnAfterCloseSubMenuEvent write FOnAfterCloseSubMenuEvent;
    property OnAfterActivateMenu: TTextMenuAfterActivateMenuEvent read FOnAfterActivateMenuEvent write FOnAfterActivateMenuEvent;
    property OnDeactivateMenu: TTextMenuDeactivateMenuEvent read FOnDeactivateMenuEvent write FOnDeactivateMenuEvent;
    property Active: Boolean read FActive;

    constructor Create; override;
    destructor Destroy; override;
    procedure Clear;
    procedure Update(aDeltaTime: Double);
    procedure Render;
    function  CreateSubMenu(aParent, aX, aY, aLineWidth: Integer; aSelColor: TColor; aTitle: string): Integer;
    procedure AddSubMenuItem(aIndex: Integer; aId: Cardinal; aDX, aDY: Integer; aFont: IFont; aColor: TColor; aSelectable, aActive: Boolean; aChild: Integer; const aText: string);
    procedure CenterSubMenu(aSubMenuIndex: Integer; aHorizontal: Boolean; aVertical: Boolean);
    procedure DrawSubMenuTitleCentered(aSubMenuIndex: Integer; aFont: IFont; aFontColor: TColor; aY: Integer);
    procedure Activate(aSubMenuNum, aSubMenuItem: Integer);
    procedure Deactivate;
    procedure ResetTo(aSubMenuNum: Integer; aSubMenuItem: Integer; aActivate: Boolean);
    procedure CloseSubMenu;
    procedure SetSubMenu(aSubMenuNum, aSubMenuItem: Integer);
  end;

implementation

// === TEXTMENU =============================================================

{ TTextMenu }
procedure TTextMenu.DoDrawBackground(aSubMenuIndex: Integer; aX, aY: Single; aWidth, aHeight: Integer; const aTitle: string);
begin
  if Assigned(FOnDrawBackgroundEvent) then
    FOnDrawBackgroundEvent(aSubMenuIndex, aX, aY, aWidth, aHeight, aTitle);
end;
procedure TTextMenu.DoAfterDrawMenuItem(aMenuId: Integer; aX, aY: Single; aFont: IFont; const aText: string; var aColor: TColor; aSelected: Boolean);
begin
  if Assigned(FOnAfterDrawMenuItemEvent) then
    FOnAfterDrawMenuItemEvent(aMenuId, aX, aY, aFont, aText, aColor, aSelected);
end;

procedure TTextMenu.DoAfterUpdateMenuItem(aMenuId: Integer; aDeltaTime: Single; var aWasUpdated: Boolean);
begin
  if Assigned(FOnAfterUpdateMenuItemEvent) then
    FOnAfterUpdateMenuItemEvent(aMenuId, aDeltaTime, aWasUpdated);
end;

procedure TTextMenu.DoDrawCursor(aX, aY: Single);
begin
  if Assigned(FOnDrawCursorEvent) then
    FOnDrawCursorEvent(aX, aY);
end;

procedure TTextMenu.DoAfterSelItem(aItemId, aAction: Integer);
begin
  if Assigned(FOnAfterSelItemEventEvent) then
    FOnAfterSelItemEventEvent(aItemId, aAction);
end;

procedure TTextMenu.DoAfterChooseItem(aItemId, aAction: Integer);
begin
  if Assigned(FOnAfterChooseItemEvent) then
    FOnAfterChooseItemEvent(aItemId, aAction);
end;

procedure TTextMenu.DoAfterCloseSubMenu(aSubMenuIndex: Cardinal; aAction: Integer);
begin
  if Assigned(FOnAfterCloseSubMenuEvent) then
    FOnAfterCloseSubMenuEvent(aSubMenuIndex, aAction);
end;

procedure TTextMenu.DoAfterActivateMenu(aSubMenuIndex, aSubMenuItemIndex: Cardinal; aActivate: Boolean);
begin
  if Assigned(FOnAfterActivateMenuEvent) then
    FOnAfterActivateMenuEvent(aSubMenuIndex, aSubMenuItemIndex, aActivate);
end;

procedure TTextMenu.DoDeactivateMenu(aSubMenuIndex, aSubMenuItemIndex: Cardinal; var aCanDeactivate: Boolean);
begin
  if Assigned(FOnDeactivateMenuEvent) then
    FOnDeactivateMenuEvent(aSubMenuIndex, aSubMenuItemIndex, aCanDeactivate);
end;

procedure TTextMenu.BuildSubMenu(Index: Integer);
var
  I, TY, TX: Integer;
  LVP: TRectangle;
begin
  with FSubMenu[Index] do
  begin
    // calc submenu height
    LineHeight := 0;
    for I := 0 to ItemCount - 1 do
    begin
      with Item[I] do
      begin
        LineHeight := LineHeight + StrHeight + StrDY;
      end;
    end;

    // calc submenu  pos
    Topaz.Window.GetViewportSize(LVP);
    if (X < 0) or (X > LVP.Width) then
      X := Round(LVP.Width - LineWidth) div 2;

    if (Y < 0) or (Y > LVP.Height) then
      Y := Round(LVP.Height - LineHeight) div 2;

    TX := X;
    TY := Y;

    // calc submenu item pos
    for I := 0 to ItemCount - 1 do
    begin
      with Item[I] do
      begin
        StrX := TX;
        StrY := TY;
        Inc(TY, StrHeight + StrDY);
      end;
    end;
  end;
end;

procedure TTextMenu.SetMousePos(aX, aY: Integer);
begin
  Topaz.Input.MouseSetPos(aX+1, aY);
end;

procedure TTextMenu.SelNextItem;
var
  LDone: Boolean;
begin
  with FSubMenu[FCurSubMenuNum] do
  begin

    LDone := false;
    repeat
      Inc(CurItemNum);
      if CurItemNum > ItemCount - 1 then
        CurItemNum := 0;
      if not Item[CurItemNum].Selectable then
        Continue;
      LDone := True;
    until LDone;

    with Item[CurItemNum] do
    begin
      SetMousePos(StrX, StrY + 1);
    end;

    DoAfterSelItem(Item[CurItemNum].Id, KEY_DOWN);
  end;
end;

procedure TTextMenu.SelPrevItem;
var
  LDone: Boolean;
begin
  with FSubMenu[FCurSubMenuNum] do
  begin
    LDone := false;
    repeat
      Dec(CurItemNum);
      if CurItemNum < 0 then
        CurItemNum := ItemCount - 1;
      if not Item[CurItemNum].Selectable then
        Continue;
      LDone := True;
    until LDone;

    with Item[CurItemNum] do
    begin
      SetMousePos(StrX, StrY + 1);
    end;

    DoAfterSelItem(Item[CurItemNum].Id, KEY_UP);
  end;
end;

procedure TTextMenu.ChooseItem;
begin
  with FSubMenu[FCurSubMenuNum] do
  begin
    // check if there is a child menu attached
    if Item[CurItemNum].Child > -1 then
      begin
        Activate(Item[CurItemNum].Child, 0);
      end
    else
      begin
        // call choiseItem event
        DoAfterChooseItem(Item[CurItemNum].Id, KEY_ENTER);
      end;
  end;
end;

function TTextMenu.MouseSelItem: Boolean;
var
  I: Integer;
  LPos: TVector;
begin
  Result := False;

  Topaz.Input.GetMouseInfo(@LPos, nil, nil);

  with FSubMenu[FCurSubMenuNum] do
  begin
    for I := 0 to ItemCount - 1 do
    begin
      with Item[I] do
      begin
        if Selectable and ((LPos.X >= StrX) and (LPos.X <= StrX + LineWidth)) and
          ((LPos.Y >= StrY) and (LPos.Y <= StrY + StrHeight)) then
        begin
          if I <> CurItemNum then
          begin
            CurItemNum := I;
            DoAfterSelItem(Item[CurItemNum].Id, KEY_DOWN);
            Result := True;
          end;
          Exit;
        end;
      end;
    end;
  end;

  Result := false;
end;

constructor TTextMenu.Create;
begin
  inherited;

  FSubMenu := nil;
  FSubMenuCount := 0;
  FCurSubMenuNum := 0;
  FActive := false;
end;

destructor TTextMenu.Destroy;
begin
  Clear;

  inherited;
end;

procedure TTextMenu.Clear;
var
  I: Integer;
begin
  for I := 0 to FSubMenuCount - 1 do
  begin
    FSubMenu[I].Item := nil;
  end;

  FSubMenu := nil;
  FSubMenuCount := 0;
  FCurSubMenuNum := 0;
  FActive := false;
end;

procedure TTextMenu.Update(aDeltaTime: Double);
var
  LRet, LEsc, LMousel: Boolean;
  WasUpdated: Boolean;
begin
  if FActive = false then
  begin
    if Topaz.Input.MousePressed(MOUSE_BUTTON_RIGHT) or Topaz.Input.KeyPressed(KEY_ESCAPE) then
      Activate(-1, -1)
    else
      Exit;
  end;

  LMousel := MouseSelItem;

  LEsc := False;
  LRet := False;

  if Topaz.Input.MousePressed(MOUSE_BUTTON_RIGHT) or Topaz.Input.KeyPressed(KEY_ESCAPE) then
    LEsc := True
  else
  if Topaz.Input.KeyPressed(KEY_DOWN) then
    SelNextItem
  else if Topaz.Input.KeyPressed(KEY_UP) then
    SelPrevItem
  else
  if Topaz.Input.MousePressed(MOUSE_BUTTON_LEFT) and LMousel then
    LRet := True
  else
  if Topaz.Input.KeyPressed(KEY_ENTER) then
    LRet := True;

  if LRet then
    begin
      ChooseItem;
      Exit;
    end
  else if LEsc then
    begin
      CloseSubMenu;
      Exit;
    end;

  with FSubMenu[FCurSubMenuNum] do
  begin
    WasUpdated := false;
    DoAfterUpdateMenuItem(Item[CurItemNum].Id, aDeltaTime, WasUpdated);
    if WasUpdated then
    begin
      DoAfterChooseItem(Item[CurItemNum].Id, -1);
    end;
  end;

end;

procedure TTextMenu.Render;
var
  I: Integer;
  LCol: TColor;
  LPos: TVector;
  LSel: Boolean;
begin
  if FActive = false then
  begin
    Exit;
  end;

  with FSubMenu[FCurSubMenuNum] do
  begin
    // render background
    DoDrawBackground(FCurSubMenuNum, X, Y, LineWidth, LineHeight, Title);

    // render items
    for I := 0 to ItemCount - 1 do
    begin
      with Item[I] do
      begin
        LCol := Color;
        LSel := false;
        if I = CurItemNum then
        begin
          Topaz.Window.DrawFilledRectangle(StrX, StrY+StrDY, LineWidth, StrHeight, SelColor);
          //LCol := BLACK;
          LCol := Color;
          LSel := True;
        end;
        Font.PrintText(StrX+StrDY, StrY+StrDY, LCol, haLeft, Text, []);
        DoAfterDrawMenuItem(Id, StrX + StrDX, StrY + StrDY, Font, Text, LCol, LSel);
      end;
    end;
  end;
  Topaz.Input.GetMouseInfo(@LPos, nil, nil);
  DoDrawCursor(LPos.X, LPos.Y);
end;

function  TTextMenu.CreateSubMenu(aParent, aX, aY, aLineWidth: Integer; aSelColor: TColor; aTitle: string): Integer;
begin
  Inc(FSubMenuCount);
  SetLength(FSubMenu, FSubMenuCount);
  FSubMenu[FSubMenuCount - 1].Title := aTitle;
  FSubMenu[FSubMenuCount - 1].Parent := aParent;
  FSubMenu[FSubMenuCount - 1].X := aX;
  FSubMenu[FSubMenuCount - 1].Y := aY;
  FSubMenu[FSubMenuCount - 1].CurItemNum := 0;
  FSubMenu[FSubMenuCount - 1].LineWidth := aLineWidth;
  FSubMenu[FSubMenuCount - 1].SelColor := aSelColor;
  Result := FSubMenuCount - 1;
end;

procedure TTextMenu.AddSubMenuItem(aIndex: Integer; aId: Cardinal; aDX, aDY: Integer; aFont: IFont; aColor: TColor; aSelectable, aActive: Boolean; aChild: Integer; const aText: string);
begin
  with FSubMenu[aIndex] do
  begin
    Inc(ItemCount);
    SetLength(Item, ItemCount);

    Item[ItemCount - 1].Id := aId;
    Item[ItemCount - 1].StrDX := aDX;
    Item[ItemCount - 1].StrDY := aDY;
    Item[ItemCount - 1].Font := aFont;
    Item[ItemCount - 1].Color := aColor;
    Item[ItemCount - 1].RenderState := -1;
    Item[ItemCount - 1].Selectable := aSelectable;
    Item[ItemCount - 1].Active := aActive;
    Item[ItemCount - 1].Child := aChild;
    Item[ItemCount - 1].Text := aText;

    Item[ItemCount - 1].StrWidth := Round(aFont.GetTextWidth(aText, []));
    Item[ItemCount - 1].StrHeight := Round(aFont.GetLineHeight);

    if Item[ItemCount - 1].StrWidth > LineWidth then
      LineWidth := Item[ItemCount - 1].StrWidth;
  end;

  BuildSubMenu(aIndex);
end;

procedure TTextMenu.CenterSubMenu(aSubMenuIndex: Integer; aHorizontal: Boolean; aVertical: Boolean);
var
  I, LTH, LCX, LCY: Integer;
  vp: TRectangle;
begin
  if (aHorizontal = false) and (aVertical = false) then
    Exit;

  with FSubMenu[aSubMenuIndex] do
  begin
    LTH := 0;
    for I := 0 to ItemCount - 1 do
    begin
      with Item[I] do
      begin
        Inc(LTH, StrY + StrDY);
      end;
    end;
  end;

  Topaz.Window.GetViewportSize(vp);
  LCX := Round(vp.Width - FSubMenu[aSubMenuIndex].LineWidth) div 2;
  LCY := Round(vp.Height - LTH) div 2;
  if aHorizontal then
    FSubMenu[aSubMenuIndex].X := LCX;
  if aVertical then
    FSubMenu[aSubMenuIndex].Y := LCY;
  BuildSubMenu(aSubMenuIndex);
end;

procedure TTextMenu.DrawSubMenuTitleCentered(aSubMenuIndex: Integer; aFont: IFont; aFontColor: TColor; aY: Integer);
var
  LVP: TRectangle;
  S: string;
begin
  S := FSubMenu[aSubMenuIndex].Title;
  Topaz.Window.GetViewportSize(LVP);
  aFont.PrintText(LVP.Width/2, aY, WHITE, haCenter, S, []);
end;

procedure TTextMenu.Activate(aSubMenuNum, aSubMenuItem: Integer);
var
  I: Integer;
begin
  if aSubMenuNum > -1 then
    FCurSubMenuNum := aSubMenuNum;

  with FSubMenu[FCurSubMenuNum] do
  begin

    if aSubMenuItem > -1 then
      CurItemNum := aSubMenuItem;

    // find first active item
    for I := CurItemNum to ItemCount - 1 do
    begin
      if Item[I].Selectable = false then
        Continue
      else
      begin
        CurItemNum := I;
        Break;
      end;
    end;

    with Item[CurItemNum] do
    begin
      SetMousePos(StrX, StrY + 1);
    end;

    DoAfterActivateMenu(FCurSubMenuNum, CurItemNum, True);
  end;

  FActive := True;
end;

procedure TTextMenu.Deactivate;
var
  LCanDeactivate: Boolean;
begin
  FActive := false;

  with FSubMenu[FCurSubMenuNum] do
  begin
    LCanDeactivate := false;
    DoDeactivateMenu(FCurSubMenuNum, CurItemNum, LCanDeactivate);

    if LCanDeactivate = false then
      FActive := True;
  end;
end;

procedure TTextMenu.ResetTo(aSubMenuNum: Integer; aSubMenuItem: Integer; aActivate: Boolean);
var
  I: Integer;
begin
  if aSubMenuNum > -1 then
    FCurSubMenuNum := aSubMenuNum;

  with FSubMenu[FCurSubMenuNum] do
  begin

    if aSubMenuItem > -1 then
      CurItemNum := aSubMenuItem;

    // find first active item
    for I := CurItemNum to ItemCount - 1 do
    begin
      if Item[I].Selectable = false then
        Continue
      else
      begin
        CurItemNum := I;
        Break;
      end;
    end;

    if aActivate then
    begin
      with Item[CurItemNum] do
      begin
        SetMousePos(StrX, StrY + 1);
      end;
      DoAfterActivateMenu(FCurSubMenuNum, CurItemNum, True);
    end;
  end;

  if not aActivate then
    Deactivate
  else
    FActive := aActivate;
end;

procedure TTextMenu.CloseSubMenu;
begin
  if FSubMenu[FCurSubMenuNum].Parent > -1 then
  begin
    Activate(FSubMenu[FCurSubMenuNum].Parent, -1);
    Exit;
  end;

  // deactivate if no child menus
  Deactivate;
end;

procedure TTextMenu.SetSubMenu(aSubMenuNum, aSubMenuItem: Integer);
begin
  Activate(aSubMenuNum, aSubMenuItem);
  FActive := false;
end;

end.
