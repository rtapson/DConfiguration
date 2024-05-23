unit ConfigurationIntf;

interface

uses
  Generics.Collections;

type
  TNameValueCollection = TDictionary<string, string>;

  ConfigurationUserLevel = (None = 0, PerUserRoaming = 10, PerUserRoamingAndLocal = 20);

  IConfigurationElement = interface
    ['{20FA78CF-63A8-4AF8-BE5F-DA4DDD729761}']


  end;

  IConfiguration = interface
    ['{1DB854C4-3686-47E5-8055-72D1B1D7CA4F}']
  end;


  IConfigurationManager = interface
    ['{72B6D4CE-21B8-45C4-ACF8-EE5D089862C7}']
    function GetAppSettings: TNameValueCollection;
    function GetConnectionStrings: TNameValueCollection;

    function GetSection(const SectionName: string): TNameValueCollection;

    function OpenExeConfiguration(const UserLevel: ConfigurationUserLevel): IConfiguration; overload;
    function OpenExeConfiguration(const ExePath: string): IConfiguration; overload;

    property AppSettings: TNameValueCollection read GetAppSettings;
    property ConnectionStrings: TNameValueCollection read GetConnectionStrings;

  end;

implementation

end.
