CFLAGS+=$(PTHREAD_CFLAGS)
CXXFLAGS+=$(PTHREAD_CFLAGS)

AM_CPPFLAGS =					\
	-I$(top_srcdir)				\
	-I$(top_srcdir)/goo

lib_LTLIBRARIES = libpoppler.la

if BUILD_CAIRO_OUTPUT
noinst_LTLIBRARIES = libpoppler-cairo.la
endif

if BUILD_SPLASH_OUTPUT

splash_sources =				\
	SplashOutputDev.cc

splash_headers =				\
	SplashOutputDev.h

splash_includes =				\
	$(SPLASH_CFLAGS)

splash_libs =					\
	$(SPLASH_LIBS)				\
	$(top_builddir)/splash/libsplash.la

endif

if BUILD_LIBJPEG

libjpeg_sources =				\
	DCTStream.h				\
	DCTStream.cc

libjpeg_libs =					\
	$(LIBJPEG_LIBS)
libjpeg_includes =				\
	$(LIBJPEG_CFLAGS)

endif

if BUILD_LIBPNG

libpng_libs =					\
	$(LIBPNG_LIBS)
libpng_includes =				\
	$(LIBPNG_CFLAGS)

endif

if BUILD_LIBTIFF

libtiff_libs =					\
	$(LIBTIFF_LIBS)
libtiff_includes =				\
	$(LIBTIFF_CFLAGS)

endif

if BUILD_LIBOPENJPEG

libjpeg2000_sources =				\
	JPEG2000Stream.h			\
	JPEG2000Stream.cc

libjpeg2000_libs =				\
	$(LIBOPENJPEG_LIBS)
libjpeg2000_includes =				\
	$(LIBOPENJPEG_CFLAGS)

else

libjpeg2000_sources =				\
	JPXStream.h			\
	JPXStream.cc

endif

if BUILD_NSS

nss_sources =                   \
	SignatureHandler.cc

nss_libs =                      \
	$(NSS3_LIBS)

nss_includes =                  \
	$(NSS3_CFLAGS)

nss_headers =                   \
	SignatureHandler.h

endif	


if BUILD_ZLIB

zlib_sources =					\
	FlateEncoder.h				\
	FlateEncoder.cc

zlib_libs = 					\
	$(ZLIB_LIBS)

endif

if BUILD_ZLIB_UNCOMPRESS

zlib_uncompress_sources =			\
	FlateStream.h				\
	FlateStream.cc

endif

if BUILD_LIBCURL

libcurl_libs =					\
	$(LIBCURL_LIBS)

libcurl_includes =				\
	$(LIBCURL_CFLAGS)

curl_headers =					\
	CurlCachedFile.h			\
	CurlPDFDocBuilder.h

curl_sources =					\
	CurlCachedFile.cc			\
	CurlPDFDocBuilder.cc

endif

if USE_CMS
cms_includes = $(LCMS_CFLAGS)
cms_libs = $(LCMS_LIBS)
endif

if ENABLE_XPDF_HEADERS

poppler_includedir = $(includedir)/poppler
poppler_include_HEADERS =	\
	$(splash_headers)	\
	$(curl_headers)		\
	$(nss_headers) 		\
	Annot.h			\
	Array.h			\
	BuiltinFont.h		\
	BuiltinFontTables.h	\
	CachedFile.h		\
	Catalog.h		\
	CharCodeToUnicode.h	\
	CMap.h			\
	DateInfo.h		\
	Decrypt.h		\
	Dict.h			\
	Error.h			\
	FileSpec.h		\
	FontEncodingTables.h	\
	FontInfo.h		\
	Form.h 			\
	Function.h		\
	Gfx.h			\
	GfxFont.h		\
	GfxState.h		\
	GfxState_helpers.h	\
	GlobalParams.h		\
	Hints.h			\
	JArithmeticDecoder.h	\
	JBIG2Stream.h		\
	Lexer.h			\
	Linearization.h 	\
	Link.h			\
	LocalPDFDocBuilder.h	\
	Movie.h                 \
	NameToCharCode.h	\
	Object.h		\
	OptionalContent.h	\
	Outline.h		\
	OutputDev.h		\
	Page.h			\
	PageTransition.h	\
	Parser.h		\
	PDFDoc.h		\
	PDFDocBuilder.h		\
	PDFDocEncoding.h	\
	PDFDocFactory.h		\
	PopplerCache.h		\
	ProfileData.h		\
	PreScanOutputDev.h	\
	PSTokenizer.h		\
	Rendition.h		\
	SignatureInfo.h		\
	StdinCachedFile.h	\
	StdinPDFDocBuilder.h	\
	Stream-CCITT.h		\
	Stream.h		\
	StructElement.h		\
	StructTreeRoot.h	\
	UnicodeMap.h		\
	UnicodeMapTables.h	\
	UnicodeTypeTable.h	\
	UnicodeCClassTables.h	\
	UnicodeCompTables.h	\
	UnicodeDecompTables.h	\
	ViewerPreferences.h	\
	XRef.h			\
	CharTypes.h		\
	CompactFontTables.h	\
	ErrorCodes.h		\
	NameToUnicodeTable.h	\
	PSOutputDev.h		\
	TextOutputDev.h		\
	MarkedContentOutputDev.h \
	SecurityHandler.h	\
	UTF.h			\
	UTF8.h			\
	XpdfPluginAPI.h		\
	Sound.h
nodist_poppler_include_HEADERS = poppler-config.h

endif

libpoppler_la_SOURCES =		\
	$(splash_sources)	\
	$(libjpeg_sources)	\
	$(zlib_sources)		\
	$(zlib_uncompress_sources) \
	$(nss_sources)      \
	$(libjpeg2000_sources)	\
	$(curl_sources)		\
	Annot.cc		\
	Array.cc 		\
	BuiltinFont.cc		\
	BuiltinFontTables.cc	\
	CachedFile.cc		\
	Catalog.cc 		\
	CharCodeToUnicode.cc	\
	CMap.cc			\
	DateInfo.cc		\
	Decrypt.cc		\
	Dict.cc 		\
	Error.cc 		\
	FileSpec.cc		\
	FontEncodingTables.cc	\
	Form.cc 		\
	FontInfo.cc		\
	Function.cc		\
	Gfx.cc 			\
	GfxFont.cc 		\
	GfxState.cc		\
	GlobalParams.cc		\
	Hints.cc		\
	JArithmeticDecoder.cc	\
	JBIG2Stream.cc		\
	Lexer.cc 		\
	Linearization.cc 	\
	Link.cc 		\
	LocalPDFDocBuilder.cc	\
	Movie.cc                \
	NameToCharCode.cc	\
	Object.cc 		\
	OptionalContent.cc	\
	Outline.cc		\
	OutputDev.cc 		\
	Page.cc 		\
	PageTransition.cc	\
	Parser.cc 		\
	PDFDoc.cc 		\
	PDFDocEncoding.cc	\
	PDFDocFactory.cc	\
	PopplerCache.cc		\
	ProfileData.cc		\
	PreScanOutputDev.cc \
	PSTokenizer.cc		\
	Rendition.cc		\
	SignatureInfo.cc	\
	StdinCachedFile.cc	\
	StdinPDFDocBuilder.cc	\
	Stream.cc 		\
	StructTreeRoot.cc	\
	StructElement.cc	\
	strtok_r.cpp		\
	UnicodeMap.cc		\
	UnicodeTypeTable.cc	\
	UTF.cc                  \
	ViewerPreferences.cc	\
	XRef.cc			\
	PSOutputDev.cc		\
	TextOutputDev.cc	\
	MarkedContentOutputDev.cc \
	PageLabelInfo.h		\
	PageLabelInfo.cc	\
	SecurityHandler.cc	\
	Sound.cc		\
	XpdfPluginAPI.cc

libpoppler_la_CPPFLAGS =			\
	$(cms_includes)				\
	$(splash_includes)			\
	$(libjpeg_includes)			\
	$(libtiff_includes)			\
	$(libjpeg2000_includes)			\
	$(libpng_includes)			\
	$(libcurl_includes)			\
	$(nss_includes)				\
	$(FREETYPE_CFLAGS)			\
	$(FONTCONFIG_CFLAGS)			\
	$(AM_CPPFLAGS)

libpoppler_la_LIBADD =				\
	$(top_builddir)/goo/libgoo.la		\
	$(top_builddir)/fofi/libfofi.la		\
	$(cms_libs)				\
	$(splash_libs)				\
	$(libtiff_libs)				\
	$(libjpeg_libs)				\
	$(libpng_libs)				\
	$(zlib_libs)				\
	$(libcurl_libs)				\
	$(nss_libs)                 \
	$(libjpeg2000_libs)			\
	$(FREETYPE_LIBS)			\
	$(FONTCONFIG_LIBS)			\
	$(PTHREAD_LIBS)				\
	$(win32_libs)

libpoppler_la_LDFLAGS =				\
	-version-info 64:0:0			\
	@create_shared_lib@			\
	@auto_import_flags@

libpoppler_cairo_la_SOURCES =			\
	CairoFontEngine.cc			\
	CairoFontEngine.h			\
	CairoOutputDev.cc			\
	CairoOutputDev.h			\
	CairoRescaleBox.cc			\
	CairoRescaleBox.h

libpoppler_cairo_la_CPPFLAGS =			\
	$(CAIRO_CFLAGS)				\
	$(AM_CPPFLAGS)

EXTRA_DIST = gen-unicode-tables.py	\
             GlobalParamsWin.cc         \
             PageLabelInfo_p.h
