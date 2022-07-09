////////////////////////////////////////////////////////////////////////////
// TestVersion.h

#ifndef TestVersion_H_INCLUDED
#define TestVersion_H_INCLUDED

#define Test_Version   0
#define Test_Revision  0
#define Test_Build     5

#define Test_FileVersionMajor    0
#define Test_FileVersionMinor    0
#define Test_FileVersionBuild    0
#define Test_FileVersionRevision 5
#define Test_FileVersionStr      "0.0.0.5"
#define Test_FileVersionRcStr    "0,0,0,5"

#define Test_ProductMajor        0
#define Test_ProductMinor        0
#define Test_ProductBuild        0
#define Test_ProductRevision     5
#define Test_ProductVersionStr   "0.0.0.5"
#define Test_ProductVersionRcStr "0,0,0,5"

#define Test_CompanyNameStr      "TE140x Module Vendor"
#define Test_InternalNameStr     "Test"
#define Test_LibraryIdNameStr    "TE140x Module Vendor|Test|0.0.0.5"

#ifndef RC_INVOKED
static const GUID VID_Test      = { 0x8819be70, 0x4013, 0x3020, { 0x23, 0xba, 0x97, 0x8f, 0x7d, 0x9f, 0x0c, 0x90 } };
#endif

#endif // include guard
