require 'hiyoko/tmpl'

class ContentsXcworkspace < Tmpl
  @code =<<"EOS"
<?xml version="1.0" encoding="UTF-8"?>
<Workspace
   version = "1.0">
   <FileRef
      location = "self:<%= project_name %>.xcodeproj">
   </FileRef>
</Workspace>

EOS
end
