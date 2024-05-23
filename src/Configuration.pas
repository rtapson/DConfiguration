unit Configuration;

interface

uses
    ConfigurationIntf;

type
  TConfiguration = class(TInterfacedObject, IConfiguration)
  public
    function GetSection(const SectionName: string): IConfigurationSection;
    function GetSectionGroup(const SectionGroupName: string): IConfigurationSectionGroup;
    procedure Save; overload;
    procedure Save(const SaveMode: ConfigurationSaveMode); overload;
    procedure Save(const SaveMode: ConfigurationSaveMode; const ForceSaveAll: Boolean); overload;
  end;

implementation

{ TConfiguration }

function TConfiguration.GetSection(const SectionName: string): IConfigurationSection;
begin

end;

function TConfiguration.GetSectionGroup(const SectionGroupName: string): IConfigurationSectionGroup;
begin

end;

procedure TConfiguration.Save;
begin

end;

procedure TConfiguration.Save(const SaveMode: ConfigurationSaveMode);
begin

end;

procedure TConfiguration.Save(const SaveMode: ConfigurationSaveMode;
  const ForceSaveAll: Boolean);
begin

end;

end.
