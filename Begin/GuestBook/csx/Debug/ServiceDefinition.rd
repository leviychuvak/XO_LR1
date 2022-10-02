﻿<?xml version="1.0" encoding="utf-8"?>
<serviceModel xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsd="http://www.w3.org/2001/XMLSchema" name="GuestBook" generation="1" functional="0" release="0" Id="2f7d839e-dd3e-4bc1-b5a7-6edf6cc0dcc1" dslVersion="1.2.0.0" xmlns="http://schemas.microsoft.com/dsltools/RDSM">
  <groups>
    <group name="GuestBookGroup" generation="1" functional="0" release="0">
      <componentports>
        <inPort name="GuestBook_WebRole:Endpoint1" protocol="http">
          <inToChannel>
            <lBChannelMoniker name="/GuestBook/GuestBookGroup/LB:GuestBook_WebRole:Endpoint1" />
          </inToChannel>
        </inPort>
      </componentports>
      <settings>
        <aCS name="GuestBook_WebRole:DataConnectionString" defaultValue="">
          <maps>
            <mapMoniker name="/GuestBook/GuestBookGroup/MapGuestBook_WebRole:DataConnectionString" />
          </maps>
        </aCS>
        <aCS name="GuestBook_WebRole:Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" defaultValue="">
          <maps>
            <mapMoniker name="/GuestBook/GuestBookGroup/MapGuestBook_WebRole:Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" />
          </maps>
        </aCS>
        <aCS name="GuestBook_WebRoleInstances" defaultValue="[1,1,1]">
          <maps>
            <mapMoniker name="/GuestBook/GuestBookGroup/MapGuestBook_WebRoleInstances" />
          </maps>
        </aCS>
      </settings>
      <channels>
        <lBChannel name="LB:GuestBook_WebRole:Endpoint1">
          <toPorts>
            <inPortMoniker name="/GuestBook/GuestBookGroup/GuestBook_WebRole/Endpoint1" />
          </toPorts>
        </lBChannel>
      </channels>
      <maps>
        <map name="MapGuestBook_WebRole:DataConnectionString" kind="Identity">
          <setting>
            <aCSMoniker name="/GuestBook/GuestBookGroup/GuestBook_WebRole/DataConnectionString" />
          </setting>
        </map>
        <map name="MapGuestBook_WebRole:Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" kind="Identity">
          <setting>
            <aCSMoniker name="/GuestBook/GuestBookGroup/GuestBook_WebRole/Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" />
          </setting>
        </map>
        <map name="MapGuestBook_WebRoleInstances" kind="Identity">
          <setting>
            <sCSPolicyIDMoniker name="/GuestBook/GuestBookGroup/GuestBook_WebRoleInstances" />
          </setting>
        </map>
      </maps>
      <components>
        <groupHascomponents>
          <role name="GuestBook_WebRole" generation="1" functional="0" release="0" software="D:\Fourth\sem 1\XO\GuestBook_AzureCloudService-main\Begin\GuestBook\csx\Debug\roles\GuestBook_WebRole" entryPoint="base\x64\WaHostBootstrapper.exe" parameters="base\x64\WaIISHost.exe " memIndex="-1" hostingEnvironment="frontendadmin" hostingEnvironmentVersion="2">
            <componentports>
              <inPort name="Endpoint1" protocol="http" portRanges="80" />
            </componentports>
            <settings>
              <aCS name="DataConnectionString" defaultValue="" />
              <aCS name="Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" defaultValue="" />
              <aCS name="__ModelData" defaultValue="&lt;m role=&quot;GuestBook_WebRole&quot; xmlns=&quot;urn:azure:m:v1&quot;&gt;&lt;r name=&quot;GuestBook_WebRole&quot;&gt;&lt;e name=&quot;Endpoint1&quot; /&gt;&lt;/r&gt;&lt;/m&gt;" />
            </settings>
            <resourcereferences>
              <resourceReference name="DiagnosticStore" defaultAmount="[4096,4096,4096]" defaultSticky="true" kind="Directory" />
              <resourceReference name="EventStore" defaultAmount="[1000,1000,1000]" defaultSticky="false" kind="LogStore" />
            </resourcereferences>
          </role>
          <sCSPolicy>
            <sCSPolicyIDMoniker name="/GuestBook/GuestBookGroup/GuestBook_WebRoleInstances" />
            <sCSPolicyUpdateDomainMoniker name="/GuestBook/GuestBookGroup/GuestBook_WebRoleUpgradeDomains" />
            <sCSPolicyFaultDomainMoniker name="/GuestBook/GuestBookGroup/GuestBook_WebRoleFaultDomains" />
          </sCSPolicy>
        </groupHascomponents>
      </components>
      <sCSPolicy>
        <sCSPolicyUpdateDomain name="GuestBook_WebRoleUpgradeDomains" defaultPolicy="[5,5,5]" />
        <sCSPolicyFaultDomain name="GuestBook_WebRoleFaultDomains" defaultPolicy="[2,2,2]" />
        <sCSPolicyID name="GuestBook_WebRoleInstances" defaultPolicy="[1,1,1]" />
      </sCSPolicy>
    </group>
  </groups>
  <implements>
    <implementation Id="863f6b79-0221-4d49-9e81-255d0608ace2" ref="Microsoft.RedDog.Contract\ServiceContract\GuestBookContract@ServiceDefinition">
      <interfacereferences>
        <interfaceReference Id="3bac39b8-8937-4d77-b2a1-03252210f8b7" ref="Microsoft.RedDog.Contract\Interface\GuestBook_WebRole:Endpoint1@ServiceDefinition">
          <inPort>
            <inPortMoniker name="/GuestBook/GuestBookGroup/GuestBook_WebRole:Endpoint1" />
          </inPort>
        </interfaceReference>
      </interfacereferences>
    </implementation>
  </implements>
</serviceModel>