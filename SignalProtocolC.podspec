Pod::Spec.new do |s|
  s.name         = "SignalProtocolC"
  s.version      = "0.1.1"
  s.summary      = "This is a ratcheting forward secrecy protocol that works in synchronous and asynchronous messaging environments."
  s.homepage     = "https://github.com/WhisperSystems/libsignal-protocol-c"
  s.license      = { :type => 'GPLv3', :file => 'LICENSE' }
  s.author       = { "Open Whisper Systems" => "support@whispersystems.org" }
  s.source       = { :git => "https://github.com/bfranks/libsignal-protocol-c.git", :tag => "0.1.1" }
  s.source_files  = ["src/**/*.{h,c}"]
  s.exclude_files = 'src/curve25519/ed25519/main'
  s.public_header_files = ["src/signal_protocol.h", "src/signal_protocol_types.h", "src/curve.h", "src/hkdf.h", "src/ratchet.h", "src/protocol.h", "src/session_state.h", "src/session_record.h", "src/session_pre_key.h", "src/session_builder.h", "src/session_cipher.h", "src/key_helper.h", "src/sender_key.h", "src/sender_key_state.h", "src/sender_key_record.h", "src/group_session_builder.h", "src/group_cipher.h", "src/fingerprint.h"]

  s.xcconfig = { 'HEADER_SEARCH_PATHS' => '$(PODS_ROOT)/src $(PODS_ROOT)/src/curve25519 $(PODS_ROOT)/src/curve25519/ed25519 $(PODS_ROOT)/src/protobuf-c' }
end
