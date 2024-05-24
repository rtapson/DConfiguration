unit ConfigurationAttributes;

interface

type
  ConfigurationPropertyOption = (
    None = 0,
    IsDefaultCollection = 1,
    IsRequired = 2,
    IsKey = 4,
    IsTypeStringTransformationRequired = 8,
    IsAssemblyStringTransformationRequired = 16,
    IsVersionCheckRequired = 32);

  TConfigurationPropertyOptions = set of ConfigurationPropertyOption;

  ConfigurationPropertyAttribute<T> = class(TCustomAttribute)
  private
    FName: string;
    FDefaultValue: T;
    //FIsRequired: Boolean;
    //FIsKey: Boolean;
    //FIsDefaultCollection: Boolean;
    FOptions: TConfigurationPropertyOptions;
    function GetIsDefaultCollection: Boolean;
    function GetIsKey: Boolean;
    function GetIsRequired: Boolean;
    procedure SetIsDefaultCollection(const Value: Boolean);
    procedure SetIsKey(const Value: Boolean);
    procedure SetIsRequired(const Value: Boolean);
  public
    constructor Create(const Name: string; const DefaultValue: T; Options: TConfigurationPropertyOptions = []);
    property Name: string read FName write FName;
    property DefaultValue: T read FDefaultValue write FDefaultValue;
    property IsDefaultCollection: Boolean read GetIsDefaultCollection write SetIsDefaultCollection;
    property IsKey: Boolean read GetIsKey write SetIsKey;
    property IsRequired: Boolean read GetIsRequired write SetIsRequired;
    property Options: TConfigurationPropertyOptions read FOptions write FOptions;
  end;

implementation

{ ConfigurationPropertyAttribute<T> }

constructor ConfigurationPropertyAttribute<T>.Create(const Name: string; const DefaultValue: T; Options: TConfigurationPropertyOptions = []);
begin
  FName := Name;
  FDefaultValue := DefaultValue;
  FOptions := Options;
end;

function ConfigurationPropertyAttribute<T>.GetIsDefaultCollection: Boolean;
begin
  Result := (ConfigurationPropertyOption.IsDefaultCollection in FOptions);
end;

function ConfigurationPropertyAttribute<T>.GetIsKey: Boolean;
begin
  Result := (ConfigurationPropertyOption.IsKey in FOptions);
end;

function ConfigurationPropertyAttribute<T>.GetIsRequired: Boolean;
begin
  Result := (ConfigurationPropertyOption.IsRequired in FOptions);
end;

procedure ConfigurationPropertyAttribute<T>.SetIsDefaultCollection(const Value: Boolean);
begin
  if Value then
    FOptions := FOptions + [ConfigurationPropertyOption.IsDefaultCollection]
  else
    FOptions := FOptions - [ConfigurationPropertyOption.IsDefaultCollection];
end;

procedure ConfigurationPropertyAttribute<T>.SetIsKey(const Value: Boolean);
begin
  if Value then
    FOptions := FOptions + [ConfigurationPropertyOption.IsKey]
  else
    FOptions := FOptions - [ConfigurationPropertyOption.IsKey];
end;

procedure ConfigurationPropertyAttribute<T>.SetIsRequired(const Value: Boolean);
begin
  if Value then
    FOptions := FOptions + [ConfigurationPropertyOption.IsRequired]
  else
    FOptions := FOptions - [ConfigurationPropertyOption.IsRequired];
end;

end.
