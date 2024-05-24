unit ConfigurationAttributeTests;

interface

uses
  DUnitX.TestFramework,
  ConfigurationIntf;

type
  [TestFixture]
  TConfigurationAttributeTests = class
  private
  public

    [Test]
    procedure TestConfigurationPropertyAttributeCreate;

    [Test]
    procedure TestConfigurationPropertyAttributeCreateWithOptions;
  end;

implementation

uses
  ConfigurationAttributes;

{ TConfigurationAttributeTests }

procedure TConfigurationAttributeTests.TestConfigurationPropertyAttributeCreate;
var
  ConfigurationPropertyAttr: ConfigurationPropertyAttribute<string>;
begin
  ConfigurationPropertyAttr := ConfigurationPropertyAttribute<string>.Create('Test', 'TestValue');
  Assert.AreEqual('Test', ConfigurationPropertyAttr.Name);
  Assert.AreEqual('TestValue', ConfigurationPropertyAttr.DefaultValue);
  ConfigurationPropertyAttr.Free;
end;

procedure TConfigurationAttributeTests.TestConfigurationPropertyAttributeCreateWithOptions;
var
  ConfigurationPropertyAttr: ConfigurationPropertyAttribute<string>;
begin
  ConfigurationPropertyAttr := ConfigurationPropertyAttribute<string>.Create('Test', 'TestValue', [IsDefaultCollection, IsRequired, IsKey]);
  Assert.AreEqual('Test', ConfigurationPropertyAttr.Name);
  Assert.AreEqual('TestValue', ConfigurationPropertyAttr.DefaultValue);
  Assert.IsTrue(ConfigurationPropertyAttr.IsDefaultCollection);
  Assert.IsTrue(ConfigurationPropertyAttr.IsKey);
  Assert.IsTrue(ConfigurationPropertyAttr.IsRequired);
  ConfigurationPropertyAttr.Free;
end;

initialization
  TDUnitX.RegisterTestFixture(TConfigurationAttributeTests);

end.
