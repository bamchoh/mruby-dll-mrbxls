MRuby::Build.new do |conf|
  toolchain :visualcpp

  conf.gembox 'default'

  conf.gem "mruby-bin-mrbxls"
  conf.gem "mruby-onig-regexp"
  conf.gem "mruby-xmlrpc"
  conf.gem :github => "mattn/mruby-json"

  onig_path = "../onig"

  conf.cc do |cc|
    cc.flags << "/D_WIN32"
    cc.include_paths << onig_path
  end

  conf.linker do |linker|
    linker.libraries = %w(kernel32 user32 gdi32 winspool comdlg32 advapi32 shell32 ole32 oleaut32 uuid odbc32 odbccp32 ws2_32)
    linker.library_paths << onig_path
  end
end
