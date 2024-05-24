unit TestData;

interface

const
  SectionInformationData = '''
  <?xml version="1.0" encoding="utf-8"?>
  <configuration>
    <configSections>
      <section name="MyUrls" type="Samples.AspNet.UrlsSection,
        ConfigurationElement, Version=1.0.0.0, Culture=neutral,
        PublicKeyToken=null" allowDefinition="Everywhere"
        allowExeDefinition="MachineToApplication"
        restartOnExternalChanges="true" />
    </configSections>
    <MyUrls name="MyFavorites">
      <simple name="Contoso" url="http://www.contoso.com" port="8080" />
      <urls>
        <clear />
        <add name="Microsoft" url="http://www.microsoft.com" port="0" />
      </urls>
    </MyUrls>
  </configuration>
  ''';

implementation

end.
