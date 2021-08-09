#executable
run: lib/include_GL.h src/prog.swift lib/SS2DE.swift again

	@#create temporary all-in-one swift source file
	@cat lib/SS2DE.swift >  run.swift
	@cat src/prog.swift  >> run.swift

	@#compilation
	@echo "Compiling :"
	@echo "    lib/SS2DE.swift"
	@echo "    src/prog.swift"
	swiftc run.swift -import-objc-header lib/include_GL.h -I/usr/include/GL -lGL -lm -lglut -lX11

	@#remove temporary files
	@rm -f run.swift again



#empty file created to relaunch compilation (even if no source files are modified)
again:
	@touch again
