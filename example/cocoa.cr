require "./src/sapphire"

include Sapphire

NSAutoreleasePool.new
NSApp.activation_policy = LibAppKit::NSApplicationActivationPolicy::Regular
appName = "Sapphire Example"


window = NSWindow.new(NSRect.new(0, 0, 700, 700).to_objc, LibAppKit::NSWindowMask::Titled, LibAppKit::NSBackingStoreType::Buffered, false)
window.cascade_top_left_from_point NSPoint.new(20, 20).to_objc
window.title = appName
window.make_key_and_order_front nil

$text_field_1 = NSTextField.new(NSRect.new(50, 600, 600, 50).to_objc).to_objc
$text_field_2 = NSTextField.new(NSRect.new(50, 540, 600, 50).to_objc).to_objc
$test_button = NSButton.new(NSRect.new(50, 480, 600, 50).to_objc).to_objc

window.content_view << $text_field_1
window.content_view << $text_field_2
window.content_view << $test_button


ns_log "app launched"

NSApp.activate_ignoring_other_apps = true
NSApp.run


