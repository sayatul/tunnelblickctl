PROJECT  = tunnelblickctl

$(PROJECT):
	cargo build --release
	install -m 755 -T target/release/$(PROJECT) $(PROJECT)

clean:
	cargo clean
	$(RM) $(PROJECT)

fmt:
	find src -name '*.rs' -exec rustfmt {} \;

.PHONY: clean fmt $(PROJECT)
