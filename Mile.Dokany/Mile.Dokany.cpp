/*
 * PROJECT:    Mile.Dokany
 * FILE:       Mile.Dokany.cpp
 * PURPOSE:    Implementation for Mile.Dokany
 *
 * LICENSE:    The MIT License
 *
 * MAINTAINER: MouriNaruto (Kenji.Mouri@outlook.com)
 */

#include <Windows.h>

extern HINSTANCE hFuseDllInstance;

BOOL WINAPI DllMain(
    _In_ HINSTANCE Instance,
    _In_ DWORD Reason,
    _In_opt_ LPVOID Reserved)
{
    UNREFERENCED_PARAMETER(Instance);
    UNREFERENCED_PARAMETER(Reserved);

    switch (Reason)
    {
    case DLL_PROCESS_ATTACH:
        hFuseDllInstance = Instance;
        ::DisableThreadLibraryCalls(Instance);
        break;
    case DLL_PROCESS_DETACH:
        break;
    default:
        break;
    }

    return TRUE;
}
