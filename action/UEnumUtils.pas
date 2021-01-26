unit UEnumUtils;

interface

uses
  System.Classes, System.TypInfo;

type
  TEnumUtils<T> = class
  public
    class procedure EnumToList(Value : TStrings);
    class procedure Clear(Value : TStrings);
  end;

implementation

{ TEnumUtils<T> }

class procedure TEnumUtils<T>.Clear(Value: TStrings);
begin
  //Limpando a Lista
  Value.Clear;
end;

class procedure TEnumUtils<T>.EnumToList(Value: TStrings);
var
  nome : string;
  i, pos : Integer;
begin
  //Limpando a Lista
  Value.Clear;
  //Inicializando as variáveis
  i := 0;
  pos := 0;
  //Adicionando os itens a lista
  while pos >= 0 do
   begin
     nome := GetEnumName(TypeInfo(T), i);
     pos := GetEnumValue(TypeInfo(T), nome);
     if pos >= 0 then
       Value.Add(nome);
     inc(i);
   end;
end;

end.
