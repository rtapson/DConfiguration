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
    function OpenExeConfiguration(const UserLevel: ConfigurationUserLevel): IConfiguration; overload;
    function OpenExeConfiguration(const ExePath: string): IConfiguration; overload;

  end;

implementation

uses
  Configuration;

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

function TConfigurationManager.OpenExeConfiguration(const ExePath: string): IConfiguration;
begin

end;

function TConfigurationManager.OpenExeConfiguration(const UserLevel: ConfigurationUserLevel): IConfiguration;
begin
  case UserLevel of
      None: Result := TConfiguration.Create;
      PerUserRoaming: Result := TConfiguration.Create;
      PerUserRoamingAndLocal: Result := TConfiguration.Create;
  end;
end;

end.
