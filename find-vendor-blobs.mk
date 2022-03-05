define find-vendor-blobs
    $(foreach vendor_file, $(shell find $(1) -type f | sed -n 's|^$(1)/||p'), \
    	$(if $(strip $(findstring $(vendor_file):$(vendor_file),$(PRODUCT_COPY_FILES))), \
    		$(NOOP), \
    		$(1)/$(vendor_file):$(vendor_file)))
endef
