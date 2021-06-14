
all: bad good
	cat README-index.md BAD/README.md GOOD/README.md | tee README.md
	./pandocw README.md index.html

bad-sections:
	./pandocw BAD/PERFUNCTORY.md BAD/PERFUNCTORY.html
	./pandocw BAD/POORLYRESEARCHED.md BAD/POORLYRESEARCHED.html
	./pandocw BAD/RISKS.md BAD/RISKS.html
	./pandocw BAD/RISKSUNDERSTANDING.md BAD/RISKSUNDERSTANDING.html
	./pandocw BAD/CHECKWORK.md BAD/CHECKWORK.html
	./pandocw BAD/FROMBEHIND.md BAD/FROMBEHIND.html
	./pandocw BAD/IGNORANT.md BAD/IGNORANT.html

bad: bad-sections
	cat BAD/PERFUNCTORY.md \
	BAD/POORLYRESEARCHED.md \
	BAD/RISKS.md \
	BAD/RISKSUNDERSTANDING.md \
	BAD/CHECKWORK.md \
	BAD/FROMBEHIND.md \
	BAD/IGNORANT.md | tee BAD/README.md
	./pandocw BAD/README.md

good-sections:
	./pandocw GOOD/DOUBLECHECK.md GOOD/DOUBLECHECK.html
	./pandocw GOOD/FRONTLOAD.md GOOD/FRONTLOAD.html
	./pandocw GOOD/OBVIOUS.md GOOD/OBVIOUS.html
	./pandocw GOOD/SPECIFY.md GOOD/SPECIFY.html
	./pandocw GOOD/PUBLISH.md GOOD/PUBLISH.html
	./pandocw GOOD/SOFTWARE.md GOOD/SOFTWARE.html
	./pandocw GOOD/SHARE.md

good: good-sections
	cat GOOD/DOUBLECHECK.md \
	GOOD/FRONTLOAD.md \
	GOOD/OBVIOUS.md \
	GOOD/SPECIFY.md \
	GOOD/PUBLISH.md \
	GOOD/SOFTWARE.md \
	GOOD/SHARE.md | tee GOOD/README.md
	./pandocw GOOD/README.md