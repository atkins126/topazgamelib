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

unit TopazGameLib.AI;

interface

uses
  System.Contnrs,
  TopazGameLib;

type

  // Class Forwards
  TAIState = class;
  TAIStateMachine = class;

  { TAIState }
  TAIState = class(TBaseObject)
  protected
    FOwner: TObject;
    FChildren: IActorList;
    FStateMachine: TAIStateMachine;
  public
    property Owner: TObject read FOwner write FOwner;
    property Children: IActorList read FChildren;
    property StateMachine: TAIStateMachine read FStateMachine write FStateMachine;
    constructor Create; override;
    destructor Destroy; override;
    procedure OnEnter; virtual;
    procedure OnExit; virtual;
    procedure OnUpdate(aDeltaTime: Double); virtual;
    procedure OnRender; virtual;
  end;

  { TAIStateMachine }
  TAIStateMachine = class(TBaseObject)
  protected
    FOwner: TActor;
    FCurrentState: TAIState;
    FGlobalState: TAIState;
    FPreviousState: TAIState;
    FStateList: System.Contnrs.TObjectList;
    FStateIndex: Integer;
    procedure ChangeStateObj(aValue: TAIState);
    procedure SetCurrentStateObj(aValue: TAIState);
    procedure RemoveStateObj(aState: TAIState);
    procedure SetGlobalStateObj(aValue: TAIState);
    procedure SetPreviousStateObj(aValue: TAIState);
    function GetStateCount: Integer;
    function GetStateIndex: Integer;
    function GetStates(aIndex: Integer): TAIState;
    function GetCurrentState: Integer;
    procedure SetCurrentState(aIndex: Integer);
    function GetGlobalState: Integer;
    procedure SetGlobalState(aIndex: Integer);
    function GetPreviousState: Integer;
    procedure SetPreviousState(aIndex: Integer);
  public
    property Owner: TActor read FOwner write FOwner;
    property StateCount: Integer read GetStateCount;
    property StateIndex: Integer read GetStateIndex;
    property States[aIndex: Integer]: TAIState read GetStates;
    property CurrentState: Integer read GetCurrentState write SetCurrentState;
    property GlobalState: Integer read GetGlobalState write SetGlobalState;
    property PreviousState: Integer read GetPreviousState write SetPreviousState;
    constructor Create; override;
    destructor Destroy; override;
    procedure Update(aDeltaTime: Double);
    procedure Render;
    procedure RevertToPreviousState;
    procedure ClearStates;
    function AddState(aState: TAIState): Integer;
    procedure RemoveState(aIndex: Integer);
    procedure ChangeState(aIndex: Integer);
    function PrevState(aWrap: Boolean): Integer;
    function NextState(aWrap: Boolean): Integer;
  end;

  { TAIActor }
  TAIActor = class(TActor)
  protected
    FStateMachine: TAIStateMachine;
  public
    property StateMachine: TAIStateMachine read FStateMachine write FStateMachine;
    constructor Create; override;
    destructor Destroy; override;
    procedure OnUpdate(aDeltaTime: Double); override;
    procedure OnRender; override;
  end;

  { TAIEntityActor }
  TAIEntityActor = class(TEntityActor)
  protected
    FStateMachine: TAIStateMachine;
  public
    property StateMachine: TAIStateMachine read FStateMachine;
    constructor Create; override;
    destructor Destroy; override;
    procedure OnUpdate(aDeltaTime: Double); override;
    procedure OnRender; override;
  end;

  { TAIGame }
  TAIGame = class(TGame)
  protected
    FStateMachine: TAIStateMachine;
  public
    property StateMachine: TAIStateMachine read FStateMachine;
    constructor Create; override;
    destructor Destroy; override;
    procedure OnUpdate(aDeltaTime: Double); override;
    procedure OnRender; override;
    procedure OnRenderHUD; override;
  end;

implementation

uses
  System.Types,
  System.SysUtils,
  System.Classes;

{ TAIState }
constructor TAIState.Create;
begin
  inherited;

  FStateMachine := nil;
  FOwner := nil;
  Topaz.Get(IActorList, FChildren);
end;

destructor TAIState.Destroy;
begin
  Topaz.Release(FChildren);

  inherited;
end;

procedure TAIState.OnEnter;
begin
end;

procedure TAIState.OnExit;
begin
end;

procedure TAIState.OnUpdate(aDeltaTime: Double);
begin
  // update all children by default
  FChildren.Update([], aDeltaTime);
end;

procedure TAIState.OnRender;
begin
  // render all children by default
  FChildren.Render([]);
end;


{ TGVAIStateMachine }
procedure TAIStateMachine.ChangeStateObj(aValue: TAIState);
begin
  if not Assigned(aValue) then  Exit;

  FPreviousState := FCurrentState;

  if Assigned(FCurrentState) then
    FCurrentState.OnExit;

  FCurrentState := aValue;
  FCurrentState.Owner := FOwner;

  FCurrentState.OnEnter;
end;

procedure TAIStateMachine.SetCurrentStateObj(aValue: TAIState);
begin
  FCurrentState := aValue;
  FCurrentState.Owner := FOwner;
  if Assigned(FCurrentState) then
  begin
    FCurrentState.OnEnter;
  end;
end;

procedure TAIStateMachine.RemoveStateObj(aState: TAIState);
begin
  FStateList.Remove(aState);
  if FStateList.Count < 1 then
    FStateIndex := -1
  else
    FStateIndex := 0;
end;

procedure TAIStateMachine.SetGlobalStateObj(aValue: TAIState);
begin
  FGlobalState := aValue;
  FGlobalState.Owner := FOwner;
  if Assigned(FGlobalState) then
  begin
    FGlobalState.OnEnter;
  end;
end;

procedure TAIStateMachine.SetPreviousStateObj(aValue: TAIState);
begin
  FPreviousState := aValue;
  FPreviousState.Owner := FOwner;
end;

function TAIStateMachine.GetStateCount: Integer;
begin
  Result := FStateList.Count;
end;

function TAIStateMachine.GetStateIndex: Integer;
begin
  Result := FStateIndex;
end;

function TAIStateMachine.GetStates(aIndex: Integer): TAIState;
begin
  Result := nil;
  if (aIndex < 0) or (aIndex > FStateList.Count - 1) then Exit;
  Result := TAIState(FStateList.Items[aIndex]);
end;

function TAIStateMachine.GetCurrentState: Integer;
begin
  Result := FStateList.IndexOf(FCurrentState);
end;

procedure TAIStateMachine.SetCurrentState(aIndex: Integer);
var
  LObj: TAIState;
begin
  LObj := GetStates(aIndex);
  if Assigned(LObj) then
  begin
    SetCurrentStateObj(LObj);
    FStateIndex := aIndex;
  end;
end;

function TAIStateMachine.GetGlobalState: Integer;
begin
  Result := FStateList.IndexOf(FGlobalState);
end;

procedure TAIStateMachine.SetGlobalState(aIndex: Integer);
var
  LObj: TAIState;
begin
  LObj := GetStates(aIndex);
  if Assigned(LObj) then
  begin
    SetGlobalStateObj(LObj);
  end;
end;

function TAIStateMachine.GetPreviousState: Integer;
begin
  Result := FStateList.IndexOf(FPreviousState);
end;

procedure TAIStateMachine.SetPreviousState(aIndex: Integer);
var
  LObj: TAIState;
begin
  LObj := GetStates(aIndex);
  if Assigned(LObj) then
  begin
    SetPreviousStateObj(LObj);
  end;
end;

constructor TAIStateMachine.Create;
begin
  inherited;

  FOwner := nil;
  FCurrentState := nil;
  FGlobalState := nil;
  FPreviousState := nil;
  FStateList := System.Contnrs.TObjectList.Create(True);
  FStateIndex := -1;
end;

destructor TAIStateMachine.Destroy;
begin
  FreeAndNil(FStateList);

  inherited;
end;

procedure TAIStateMachine.Update(aDeltaTime: Double);
begin
  if Assigned(FGlobalState) then
    FGlobalState.OnUpdate(aDeltaTime);
  if Assigned(FCurrentState) then
    FCurrentState.OnUpdate(aDeltaTime);
end;

procedure TAIStateMachine.Render;
begin
  if Assigned(FGlobalState) then
    FGlobalState.OnRender;
  if Assigned(FCurrentState) then
    FCurrentState.OnRender;
end;

procedure TAIStateMachine.RevertToPreviousState;
begin
  ChangeStateObj(FPreviousState);
end;

procedure TAIStateMachine.ClearStates;
begin
  FStateList.Clear;
  FStateIndex := -1;
end;

function TAIStateMachine.AddState(aState: TAIState): Integer;
begin
  Result := -1;
  if FStateList.IndexOf(aState) = -1 then
  begin
    Result := FStateList.Add(aState);
    if GetStateCount <= 1 then
    begin
      SetCurrentState(Result);
    end;
    aState.StateMachine := self;
  end;
end;

procedure TAIStateMachine.RemoveState(aIndex: Integer);
var
  obj: TAIState;
begin
  if (aIndex < 0) or (aIndex > FStateList.Count - 1) then
    Exit;
  obj := TAIState(FStateList.Items[aIndex]);
  RemoveStateObj(obj);
end;

procedure TAIStateMachine.ChangeState(aIndex: Integer);
var
  obj: TAIState;
begin
  obj := GetStates(aIndex);
  if Assigned(obj) then
  begin
    ChangeStateObj(obj);
    FStateIndex := aIndex;
  end;
end;

function TAIStateMachine.PrevState(aWrap: Boolean): Integer;
var
  I: Integer;
begin
  Result := -1;
  if FStateList.Count < 2 then
    Exit;

  I := FStateIndex;
  Dec(I);
  if I < 0 then
  begin
    if not aWrap then
      Exit;
    I := FStateList.Count - 1;
  end;
  ChangeState(I);
end;

function TAIStateMachine.NextState(aWrap: Boolean): Integer;
var
  LI: Integer;
begin
  Result := -1;
  if FStateList.Count < 2 then
    Exit;

  LI := FStateIndex;
  Inc(LI);
  if LI > FStateList.Count - 1 then
  begin
    if not aWrap then
      Exit;
    LI := 0;
  end;
  ChangeState(LI);
end;


{ TAIActor }
constructor TAIActor.Create;
begin
  inherited;

  FStateMachine := TAIStateMachine.Create;
  FStateMachine.Owner := self;
end;

destructor TAIActor.Destroy;
begin
  FreeAndNil(FStateMachine);

  inherited;
end;

procedure TAIActor.OnUpdate(aDeltaTime: Double);
begin
  // process states
  FStateMachine.Update(aDeltaTime);
end;

procedure TAIActor.OnRender;
begin
  // render state
  FStateMachine.Render;
end;

{ TAIEntityActor }
constructor TAIEntityActor.Create;
begin
  inherited;

  FStateMachine := TAIStateMachine.Create;
end;

destructor TAIEntityActor.Destroy;
begin
  FreeAndNil(FStateMachine);

  inherited;
end;

procedure TAIEntityActor.OnUpdate(aDeltaTime: Double);
begin
  // process states
  FStateMachine.Update(aDeltaTime);
end;

procedure TAIEntityActor.OnRender;
begin
  // render state
  FStateMachine.Render;
end;

{ TAIGame }
constructor TAIGame.Create;
begin
  inherited;

  FStateMachine := TAIStateMachine.Create;
end;

destructor TAIGame.Destroy;
begin
  FreeAndNil(FStateMachine);

  inherited;
end;

procedure TAIGame.OnUpdate(aDeltaTime: Double);
begin
  // process states
  FStateMachine.Update(aDeltaTime);
end;

procedure TAIGame.OnRender;
begin
  // render state
  FStateMachine.Render;
end;

procedure TAIGame.OnRenderHUD;
begin
end;


end.
