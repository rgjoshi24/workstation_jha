#
# Cookbook:: workstation
# Recipe:: disable-uac
#
# Copyright:: 2020, The Authors, All Rights Reserved.
system_policies = 'HKLM\Software\Microsoft\Windows\CurrentVersion\Policies\System'

registry_key system_policies do
    values [
        { name: 'EnableLUA', type: :dword, data: 0 },
        { name: 'ConsentPromptBehaviorAdmin', type: :dword, data: 0 },
    ]
end