ICONS= \
		cheque \
		bank_transfer \
		hardware \
		merchandise \
		credit_card

all:
	for i in ${ICONS}; do \
		echo "===> Exporting $$i.png"; \
		inkscape --export-png=$$i.png --export-id=$$i icons.svg; \
		echo "===> Optimizing $$i.png"; \
		optipng -q -o99 $$i.png; \
	done
