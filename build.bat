@echo off
setlocal
set MRUBY_DLL_DIR=%cd%
git submodule init
git submodule update
set MRUBY_CONFIG=%cd%\build_config.rb
set MRUBY_RAKEFILE=%cd%\Rakefile2
cd mruby
ruby minirake -f %MRUBY_RAKEFILE% clean
ruby minirake -f %MRUBY_RAKEFILE% dll
endlocal
