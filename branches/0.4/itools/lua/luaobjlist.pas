{
--------------------------------------------------------------------
Copyright (c) 2009 KSP Developers Team
All rights reserved.

Redistribution and use in source and binary forms, with or without
modification, are permitted provided that the following conditions
are met:
1. Redistributions of source code must retain the above copyright
   notice, this list of conditions and the following disclaimer.
2. Redistributions in binary form must reproduce the above copyright
   notice, this list of conditions and the following disclaimer in the
   documentation and/or other materials provided with the distribution.
3. The name of the author may not be used to endorse or promote products
   derived from this software without specific prior written permission.

THIS SOFTWARE IS PROVIDED BY THE AUTHOR ``AS IS'' AND ANY EXPRESS OR
IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES
OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED.
IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR ANY DIRECT, INDIRECT,
INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT
NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,
DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY
THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
(INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF
THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
}

unit luaobjlist;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Controls;

type TLuaUIItem = record
    Caption: string;
    Name: string;
    Item: TControl;
  end;

type TLuaUIObject = class
    Entry: TLuaUIItem;
  end;

type TLuaUIList = class(TList)
  public
    procedure Clear;
    constructor Create;
    destructor Destroy;
    procedure Add(Item: TLuaUIItem);
    procedure ReplaceEntry(NewEntry: TLuaUIItem; Index: integer);
    procedure RemoveEntry(Index: integer);
    function GetItem(Index: integer): TLuaUIItem;
    procedure LoadFromFile(FileName: string);
    procedure SaveToFile(FileName: string);
  end;

implementation

procedure TLuaUIList.Clear;
var
  i: integer;
begin
  for i := 0 to Count - 1 do begin
    TLuaUIObject(Items[i]).Entry.Item.Free;
    TLuaUIObject(Items[i]).Free;
  end;
  inherited Clear;
end;

constructor TLuaUIList.Create;
begin
  inherited Create;
end;

destructor TLuaUIList.Destroy;
begin
  inherited Destroy
end;

procedure TLuaUIList.Add(Item: TLuaUIItem);
begin

end;

procedure TLuaUIList.ReplaceEntry(NewEntry: TLuaUIItem; Index: integer);
begin

end;

procedure TLuaUIList.RemoveEntry(Index: integer);
begin

end;

function TLuaUIList.GetItem(Index: integer): TLuaUIItem;
begin

end;

procedure TLuaUIList.LoadFromFile(FileName: string);
begin

end;

procedure TLuaUIList.SaveToFile(FileName: string);
begin

end;

end.
