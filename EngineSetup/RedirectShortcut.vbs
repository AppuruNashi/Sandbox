Set sh = CreateObject("WScript.Shell")

Dim path
path = Left(WScript.ScriptFullName, InStrRev(WScript.ScriptFullName, "\EngineSetup") - 1)

Set shortcut = sh.CreateShortcut(path + "\OpenEditor.lnk")
shortcut.TargetPath = path + "\StartEditor.bat"
shortcut.Save

Set shortcut2 = sh.CreateShortcut(path + "\PackageTest.lnk")
shortcut2.TargetPath = path + "\CookPackage.bat"
shortcut2.Save