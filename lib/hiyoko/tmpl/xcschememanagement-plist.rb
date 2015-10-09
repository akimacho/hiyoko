require 'hiyoko/tmpl'

class XcschememanagementPlist < Tmpl
  @code =<<"EOS"
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
<plist version="1.0">
<dict>
	<key>SchemeUserState</key>
	<dict>
		<key><%= project_name %>.xcscheme</key>
		<dict>
			<key>orderHint</key>
			<integer>0</integer>
		</dict>
	</dict>
	<key>SuppressBuildableAutocreation</key>
	<dict>
		<key>D2B401801BC2B32E0063EF1D</key>
		<dict>
			<key>primary</key>
			<true/>
		</dict>
	</dict>
</dict>
</plist>

EOS
end