.PHONY: package publish clean set-executable

package: set-executable
	./abin/package.sh

publish: set-executable
	./abin/publish.sh

clean:
	rm *.tgz

set-executable:
	chmod 755 ./abin/*.sh