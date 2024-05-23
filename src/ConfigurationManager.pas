unit ConfigurationManager;

interface

uses
  ConfigurationIntf;

type
  TConfigurationManager = class(TInterfacedObject, IConfigurationManager)
  private
    FAppSettings: TNameValueCollection;
    FConnectionStrings: TNameValueCollection;

    function GetAppSettings: TNameValueCollection;
    function GetConnectionStrings: TNameValueCollection;
  public
    function GetSection(const SectionName: string): TNameValueCollection;
  end;

implementation

{ TConfigurationManager }

function TConfigurationManager.GetAppSettings: TNameValueCollection;
begin
  Result := FAppSettings;
end;

function TConfigurationManager.GetConnectionStrings: TNameValueCollection;
begin
  Result := FConnectionStrings;
end;

function TConfigurationManager.GetSection(const SectionName: string): TNameValueCollection;
begin
  Result := nil;
end;

end.
