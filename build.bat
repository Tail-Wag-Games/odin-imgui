@echo off
setlocal

set CIMGUI_SRC=%~dp0cimgui/cimgui.cpp %~dp0cimgui/imgui/imgui.cpp %~dp0cimgui/imgui/imgui_draw.cpp %~dp0cimgui/imgui/imgui_demo.cpp %~dp0cimgui/imgui/imgui_widgets.cpp %~dp0cimgui/imgui/imgui_tables.cpp
set CIMGUI_OBJ=%~dp0cimgui.obj %~dp0imgui.obj %~dp0imgui_draw.obj %~dp0imgui_demo.obj %~dp0imgui_widgets.obj %~dp0imgui_tables.obj

cl /DDEBUG /c /Zi /Fd%~dp0cimgui.pdb %CIMGUI_SRC%
lib /out:%~dp0cimguid.lib %CIMGUI_OBJ%

cl /DNDEBUG /O2 /c /Fo%~dp0 %CIMGUI_SRC%
lib /out:%~dp0cimgui.lib %CIMGUI_OBJ%

del %~dp0*.obj