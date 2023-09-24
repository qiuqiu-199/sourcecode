.class Lcom/github/rjeschke/txtmark/HTML;
.super Ljava/lang/Object;
.source "HTML.java"


# static fields
.field private static final BLOCK_ELEMENTS:[Lcom/github/rjeschke/txtmark/HTMLElement;

.field private static final ENTITY_CHARS:[C

.field private static final ENTITY_NAMES:[Ljava/lang/String;

.field private static final HTML_BLOCK_ELEMENTS:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final HTML_ELEMENTS:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final HTML_UNSAFE:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final LINK_PREFIX:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final LINK_PREFIXES:[Ljava/lang/String;

.field private static final UNSAFE_ELEMENTS:[Lcom/github/rjeschke/txtmark/HTMLElement;

.field private static final decodeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation
.end field

.field private static final encodeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Character;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 18

    const/16 v0, 0xfa

    .line 29
    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "&Acirc;"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "&acirc;"

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const-string v2, "&acute;"

    const/4 v5, 0x2

    aput-object v2, v1, v5

    const-string v2, "&AElig;"

    const/4 v6, 0x3

    aput-object v2, v1, v6

    const-string v2, "&aelig;"

    const/4 v7, 0x4

    aput-object v2, v1, v7

    const-string v2, "&Agrave;"

    const/4 v8, 0x5

    aput-object v2, v1, v8

    const-string v2, "&agrave;"

    const/4 v9, 0x6

    aput-object v2, v1, v9

    const-string v2, "&alefsym;"

    const/4 v10, 0x7

    aput-object v2, v1, v10

    const-string v2, "&Alpha;"

    const/16 v11, 0x8

    aput-object v2, v1, v11

    const-string v2, "&alpha;"

    const/16 v12, 0x9

    aput-object v2, v1, v12

    const-string v2, "&amp;"

    const/16 v13, 0xa

    aput-object v2, v1, v13

    const-string v2, "&and;"

    const/16 v14, 0xb

    aput-object v2, v1, v14

    const-string v2, "&ang;"

    const/16 v15, 0xc

    aput-object v2, v1, v15

    const-string v2, "&apos;"

    const/16 v16, 0xd

    aput-object v2, v1, v16

    const-string v2, "&Aring;"

    const/16 v17, 0xe

    aput-object v2, v1, v17

    const-string v2, "&aring;"

    const/16 v17, 0xf

    aput-object v2, v1, v17

    const-string v2, "&asymp;"

    const/16 v17, 0x10

    aput-object v2, v1, v17

    const-string v2, "&Atilde;"

    const/16 v17, 0x11

    aput-object v2, v1, v17

    const-string v2, "&atilde;"

    const/16 v17, 0x12

    aput-object v2, v1, v17

    const-string v2, "&Auml;"

    const/16 v17, 0x13

    aput-object v2, v1, v17

    const-string v2, "&auml;"

    const/16 v17, 0x14

    aput-object v2, v1, v17

    const-string v2, "&bdquo;"

    const/16 v17, 0x15

    aput-object v2, v1, v17

    const-string v2, "&Beta;"

    const/16 v17, 0x16

    aput-object v2, v1, v17

    const-string v2, "&beta;"

    const/16 v17, 0x17

    aput-object v2, v1, v17

    const-string v2, "&brvbar;"

    const/16 v17, 0x18

    aput-object v2, v1, v17

    const-string v2, "&bull;"

    const/16 v17, 0x19

    aput-object v2, v1, v17

    const-string v2, "&cap;"

    const/16 v17, 0x1a

    aput-object v2, v1, v17

    const-string v2, "&Ccedil;"

    const/16 v17, 0x1b

    aput-object v2, v1, v17

    const-string v2, "&ccedil;"

    const/16 v17, 0x1c

    aput-object v2, v1, v17

    const-string v2, "&cedil;"

    const/16 v17, 0x1d

    aput-object v2, v1, v17

    const-string v2, "&cent;"

    const/16 v17, 0x1e

    aput-object v2, v1, v17

    const-string v2, "&Chi;"

    const/16 v17, 0x1f

    aput-object v2, v1, v17

    const-string v2, "&chi;"

    const/16 v17, 0x20

    aput-object v2, v1, v17

    const-string v2, "&circ;"

    const/16 v17, 0x21

    aput-object v2, v1, v17

    const-string v2, "&clubs;"

    const/16 v17, 0x22

    aput-object v2, v1, v17

    const-string v2, "&cong;"

    const/16 v17, 0x23

    aput-object v2, v1, v17

    const-string v2, "&copy;"

    const/16 v17, 0x24

    aput-object v2, v1, v17

    const-string v2, "&crarr;"

    const/16 v17, 0x25

    aput-object v2, v1, v17

    const-string v2, "&cup;"

    const/16 v17, 0x26

    aput-object v2, v1, v17

    const-string v2, "&curren;"

    const/16 v17, 0x27

    aput-object v2, v1, v17

    const-string v2, "&Dagger;"

    const/16 v17, 0x28

    aput-object v2, v1, v17

    const-string v2, "&dagger;"

    const/16 v17, 0x29

    aput-object v2, v1, v17

    const-string v2, "&dArr;"

    const/16 v17, 0x2a

    aput-object v2, v1, v17

    const-string v2, "&darr;"

    const/16 v17, 0x2b

    aput-object v2, v1, v17

    const-string v2, "&deg;"

    const/16 v17, 0x2c

    aput-object v2, v1, v17

    const-string v2, "&Delta;"

    const/16 v17, 0x2d

    aput-object v2, v1, v17

    const-string v2, "&delta;"

    const/16 v17, 0x2e

    aput-object v2, v1, v17

    const-string v2, "&diams;"

    const/16 v17, 0x2f

    aput-object v2, v1, v17

    const-string v2, "&divide;"

    const/16 v17, 0x30

    aput-object v2, v1, v17

    const-string v2, "&Eacute;"

    const/16 v17, 0x31

    aput-object v2, v1, v17

    const-string v2, "&eacute;"

    const/16 v17, 0x32

    aput-object v2, v1, v17

    const-string v2, "&Ecirc;"

    const/16 v17, 0x33

    aput-object v2, v1, v17

    const-string v2, "&ecirc;"

    const/16 v17, 0x34

    aput-object v2, v1, v17

    const-string v2, "&Egrave;"

    const/16 v17, 0x35

    aput-object v2, v1, v17

    const-string v2, "&egrave;"

    const/16 v17, 0x36

    aput-object v2, v1, v17

    const-string v2, "&empty;"

    const/16 v17, 0x37

    aput-object v2, v1, v17

    const-string v2, "&emsp;"

    const/16 v17, 0x38

    aput-object v2, v1, v17

    const-string v2, "&ensp;"

    const/16 v17, 0x39

    aput-object v2, v1, v17

    const-string v2, "&Epsilon;"

    const/16 v17, 0x3a

    aput-object v2, v1, v17

    const-string v2, "&epsilon;"

    const/16 v17, 0x3b

    aput-object v2, v1, v17

    const-string v2, "&equiv;"

    const/16 v17, 0x3c

    aput-object v2, v1, v17

    const-string v2, "&Eta;"

    const/16 v17, 0x3d

    aput-object v2, v1, v17

    const-string v2, "&eta;"

    const/16 v17, 0x3e

    aput-object v2, v1, v17

    const-string v2, "&ETH;"

    const/16 v17, 0x3f

    aput-object v2, v1, v17

    const-string v2, "&eth;"

    const/16 v17, 0x40

    aput-object v2, v1, v17

    const-string v2, "&Euml;"

    const/16 v17, 0x41

    aput-object v2, v1, v17

    const-string v2, "&euml;"

    const/16 v17, 0x42

    aput-object v2, v1, v17

    const-string v2, "&euro;"

    const/16 v17, 0x43

    aput-object v2, v1, v17

    const-string v2, "&exist;"

    const/16 v17, 0x44

    aput-object v2, v1, v17

    const-string v2, "&fnof;"

    const/16 v17, 0x45

    aput-object v2, v1, v17

    const-string v2, "&forall;"

    const/16 v17, 0x46

    aput-object v2, v1, v17

    const-string v2, "&frac12;"

    const/16 v17, 0x47

    aput-object v2, v1, v17

    const-string v2, "&frac14;"

    const/16 v17, 0x48

    aput-object v2, v1, v17

    const-string v2, "&frac34;"

    const/16 v17, 0x49

    aput-object v2, v1, v17

    const-string v2, "&frasl;"

    const/16 v17, 0x4a

    aput-object v2, v1, v17

    const-string v2, "&Gamma;"

    const/16 v17, 0x4b

    aput-object v2, v1, v17

    const-string v2, "&gamma;"

    const/16 v17, 0x4c

    aput-object v2, v1, v17

    const-string v2, "&ge;"

    const/16 v17, 0x4d

    aput-object v2, v1, v17

    const-string v2, "&gt;"

    const/16 v17, 0x4e

    aput-object v2, v1, v17

    const-string v2, "&hArr;"

    const/16 v17, 0x4f

    aput-object v2, v1, v17

    const-string v2, "&harr;"

    const/16 v17, 0x50

    aput-object v2, v1, v17

    const-string v2, "&hearts;"

    const/16 v17, 0x51

    aput-object v2, v1, v17

    const-string v2, "&hellip;"

    const/16 v17, 0x52

    aput-object v2, v1, v17

    const-string v2, "&Iacute;"

    const/16 v17, 0x53

    aput-object v2, v1, v17

    const-string v2, "&iacute;"

    const/16 v17, 0x54

    aput-object v2, v1, v17

    const-string v2, "&Icirc;"

    const/16 v17, 0x55

    aput-object v2, v1, v17

    const-string v2, "&icirc;"

    const/16 v17, 0x56

    aput-object v2, v1, v17

    const-string v2, "&iexcl;"

    const/16 v17, 0x57

    aput-object v2, v1, v17

    const-string v2, "&Igrave;"

    const/16 v17, 0x58

    aput-object v2, v1, v17

    const-string v2, "&igrave;"

    const/16 v17, 0x59

    aput-object v2, v1, v17

    const-string v2, "&image;"

    const/16 v17, 0x5a

    aput-object v2, v1, v17

    const-string v2, "&infin;"

    const/16 v17, 0x5b

    aput-object v2, v1, v17

    const-string v2, "&int;"

    const/16 v17, 0x5c

    aput-object v2, v1, v17

    const-string v2, "&Iota;"

    const/16 v17, 0x5d

    aput-object v2, v1, v17

    const-string v2, "&iota;"

    const/16 v17, 0x5e

    aput-object v2, v1, v17

    const-string v2, "&iquest;"

    const/16 v17, 0x5f

    aput-object v2, v1, v17

    const-string v2, "&isin;"

    const/16 v17, 0x60

    aput-object v2, v1, v17

    const-string v2, "&Iuml;"

    const/16 v17, 0x61

    aput-object v2, v1, v17

    const-string v2, "&iuml;"

    const/16 v17, 0x62

    aput-object v2, v1, v17

    const-string v2, "&Kappa;"

    const/16 v17, 0x63

    aput-object v2, v1, v17

    const-string v2, "&kappa;"

    const/16 v17, 0x64

    aput-object v2, v1, v17

    const-string v2, "&Lambda;"

    const/16 v17, 0x65

    aput-object v2, v1, v17

    const-string v2, "&lambda;"

    const/16 v17, 0x66

    aput-object v2, v1, v17

    const-string v2, "&lang;"

    const/16 v17, 0x67

    aput-object v2, v1, v17

    const-string v2, "&laquo;"

    const/16 v17, 0x68

    aput-object v2, v1, v17

    const-string v2, "&lArr;"

    const/16 v17, 0x69

    aput-object v2, v1, v17

    const-string v2, "&larr;"

    const/16 v17, 0x6a

    aput-object v2, v1, v17

    const-string v2, "&lceil;"

    const/16 v17, 0x6b

    aput-object v2, v1, v17

    const-string v2, "&ldquo;"

    const/16 v17, 0x6c

    aput-object v2, v1, v17

    const-string v2, "&le;"

    const/16 v17, 0x6d

    aput-object v2, v1, v17

    const-string v2, "&lfloor;"

    const/16 v17, 0x6e

    aput-object v2, v1, v17

    const-string v2, "&lowast;"

    const/16 v17, 0x6f

    aput-object v2, v1, v17

    const-string v2, "&loz;"

    const/16 v17, 0x70

    aput-object v2, v1, v17

    const-string v2, "&lrm;"

    const/16 v17, 0x71

    aput-object v2, v1, v17

    const-string v2, "&lsaquo;"

    const/16 v17, 0x72

    aput-object v2, v1, v17

    const-string v2, "&lsquo;"

    const/16 v17, 0x73

    aput-object v2, v1, v17

    const-string v2, "&lt;"

    const/16 v17, 0x74

    aput-object v2, v1, v17

    const-string v2, "&macr;"

    const/16 v17, 0x75

    aput-object v2, v1, v17

    const-string v2, "&mdash;"

    const/16 v17, 0x76

    aput-object v2, v1, v17

    const-string v2, "&micro;"

    const/16 v17, 0x77

    aput-object v2, v1, v17

    const-string v2, "&middot;"

    const/16 v17, 0x78

    aput-object v2, v1, v17

    const-string v2, "&minus;"

    const/16 v17, 0x79

    aput-object v2, v1, v17

    const-string v2, "&Mu;"

    const/16 v17, 0x7a

    aput-object v2, v1, v17

    const-string v2, "&mu;"

    const/16 v17, 0x7b

    aput-object v2, v1, v17

    const-string v2, "&nabla;"

    const/16 v17, 0x7c

    aput-object v2, v1, v17

    const-string v2, "&nbsp;"

    const/16 v17, 0x7d

    aput-object v2, v1, v17

    const-string v2, "&ndash;"

    const/16 v17, 0x7e

    aput-object v2, v1, v17

    const-string v2, "&ne;"

    const/16 v17, 0x7f

    aput-object v2, v1, v17

    const-string v2, "&ni;"

    const/16 v17, 0x80

    aput-object v2, v1, v17

    const-string v2, "&not;"

    const/16 v17, 0x81

    aput-object v2, v1, v17

    const-string v2, "&notin;"

    const/16 v17, 0x82

    aput-object v2, v1, v17

    const-string v2, "&nsub;"

    const/16 v17, 0x83

    aput-object v2, v1, v17

    const-string v2, "&Ntilde;"

    const/16 v17, 0x84

    aput-object v2, v1, v17

    const-string v2, "&ntilde;"

    const/16 v17, 0x85

    aput-object v2, v1, v17

    const-string v2, "&Nu;"

    const/16 v17, 0x86

    aput-object v2, v1, v17

    const-string v2, "&nu;"

    const/16 v17, 0x87

    aput-object v2, v1, v17

    const-string v2, "&Oacute;"

    const/16 v17, 0x88

    aput-object v2, v1, v17

    const-string v2, "&oacute;"

    const/16 v17, 0x89

    aput-object v2, v1, v17

    const-string v2, "&Ocirc;"

    const/16 v17, 0x8a

    aput-object v2, v1, v17

    const-string v2, "&ocirc;"

    const/16 v17, 0x8b

    aput-object v2, v1, v17

    const-string v2, "&OElig;"

    const/16 v17, 0x8c

    aput-object v2, v1, v17

    const-string v2, "&oelig;"

    const/16 v17, 0x8d

    aput-object v2, v1, v17

    const-string v2, "&Ograve;"

    const/16 v17, 0x8e

    aput-object v2, v1, v17

    const-string v2, "&ograve;"

    const/16 v17, 0x8f

    aput-object v2, v1, v17

    const-string v2, "&oline;"

    const/16 v17, 0x90

    aput-object v2, v1, v17

    const-string v2, "&Omega;"

    const/16 v17, 0x91

    aput-object v2, v1, v17

    const-string v2, "&omega;"

    const/16 v17, 0x92

    aput-object v2, v1, v17

    const-string v2, "&Omicron;"

    const/16 v17, 0x93

    aput-object v2, v1, v17

    const-string v2, "&omicron;"

    const/16 v17, 0x94

    aput-object v2, v1, v17

    const-string v2, "&oplus;"

    const/16 v17, 0x95

    aput-object v2, v1, v17

    const-string v2, "&or;"

    const/16 v17, 0x96

    aput-object v2, v1, v17

    const-string v2, "&ordf;"

    const/16 v17, 0x97

    aput-object v2, v1, v17

    const-string v2, "&ordm;"

    const/16 v17, 0x98

    aput-object v2, v1, v17

    const-string v2, "&Oslash;"

    const/16 v17, 0x99

    aput-object v2, v1, v17

    const-string v2, "&oslash;"

    const/16 v17, 0x9a

    aput-object v2, v1, v17

    const-string v2, "&Otilde;"

    const/16 v17, 0x9b

    aput-object v2, v1, v17

    const-string v2, "&otilde;"

    const/16 v17, 0x9c

    aput-object v2, v1, v17

    const-string v2, "&otimes;"

    const/16 v17, 0x9d

    aput-object v2, v1, v17

    const-string v2, "&Ouml;"

    const/16 v17, 0x9e

    aput-object v2, v1, v17

    const-string v2, "&ouml;"

    const/16 v17, 0x9f

    aput-object v2, v1, v17

    const-string v2, "&para;"

    const/16 v17, 0xa0

    aput-object v2, v1, v17

    const-string v2, "&part;"

    const/16 v17, 0xa1

    aput-object v2, v1, v17

    const-string v2, "&permil;"

    const/16 v17, 0xa2

    aput-object v2, v1, v17

    const-string v2, "&perp;"

    const/16 v17, 0xa3

    aput-object v2, v1, v17

    const-string v2, "&Phi;"

    const/16 v17, 0xa4

    aput-object v2, v1, v17

    const-string v2, "&phi;"

    const/16 v17, 0xa5

    aput-object v2, v1, v17

    const-string v2, "&Pi;"

    const/16 v17, 0xa6

    aput-object v2, v1, v17

    const-string v2, "&pi;"

    const/16 v17, 0xa7

    aput-object v2, v1, v17

    const-string v2, "&piv;"

    const/16 v17, 0xa8

    aput-object v2, v1, v17

    const-string v2, "&plusmn;"

    const/16 v17, 0xa9

    aput-object v2, v1, v17

    const-string v2, "&pound;"

    const/16 v17, 0xaa

    aput-object v2, v1, v17

    const-string v2, "&Prime;"

    const/16 v17, 0xab

    aput-object v2, v1, v17

    const-string v2, "&prime;"

    const/16 v17, 0xac

    aput-object v2, v1, v17

    const-string v2, "&prod;"

    const/16 v17, 0xad

    aput-object v2, v1, v17

    const-string v2, "&prop;"

    const/16 v17, 0xae

    aput-object v2, v1, v17

    const-string v2, "&Psi;"

    const/16 v17, 0xaf

    aput-object v2, v1, v17

    const-string v2, "&psi;"

    const/16 v17, 0xb0

    aput-object v2, v1, v17

    const-string v2, "&quot;"

    const/16 v17, 0xb1

    aput-object v2, v1, v17

    const-string v2, "&radic;"

    const/16 v17, 0xb2

    aput-object v2, v1, v17

    const-string v2, "&rang;"

    const/16 v17, 0xb3

    aput-object v2, v1, v17

    const-string v2, "&raquo;"

    const/16 v17, 0xb4

    aput-object v2, v1, v17

    const-string v2, "&rArr;"

    const/16 v17, 0xb5

    aput-object v2, v1, v17

    const-string v2, "&rarr;"

    const/16 v17, 0xb6

    aput-object v2, v1, v17

    const-string v2, "&rceil;"

    const/16 v17, 0xb7

    aput-object v2, v1, v17

    const-string v2, "&rdquo;"

    const/16 v17, 0xb8

    aput-object v2, v1, v17

    const-string v2, "&real;"

    const/16 v17, 0xb9

    aput-object v2, v1, v17

    const-string v2, "&reg;"

    const/16 v17, 0xba

    aput-object v2, v1, v17

    const-string v2, "&rfloor;"

    const/16 v17, 0xbb

    aput-object v2, v1, v17

    const-string v2, "&Rho;"

    const/16 v17, 0xbc

    aput-object v2, v1, v17

    const-string v2, "&rho;"

    const/16 v17, 0xbd

    aput-object v2, v1, v17

    const-string v2, "&rlm;"

    const/16 v17, 0xbe

    aput-object v2, v1, v17

    const-string v2, "&rsaquo;"

    const/16 v17, 0xbf

    aput-object v2, v1, v17

    const-string v2, "&rsquo;"

    const/16 v17, 0xc0

    aput-object v2, v1, v17

    const-string v2, "&sbquo;"

    const/16 v17, 0xc1

    aput-object v2, v1, v17

    const-string v2, "&Scaron;"

    const/16 v17, 0xc2

    aput-object v2, v1, v17

    const-string v2, "&scaron;"

    const/16 v17, 0xc3

    aput-object v2, v1, v17

    const-string v2, "&sdot;"

    const/16 v17, 0xc4

    aput-object v2, v1, v17

    const-string v2, "&sect;"

    const/16 v17, 0xc5

    aput-object v2, v1, v17

    const-string v2, "&shy;"

    const/16 v17, 0xc6

    aput-object v2, v1, v17

    const-string v2, "&Sigma;"

    const/16 v17, 0xc7

    aput-object v2, v1, v17

    const-string v2, "&sigma;"

    const/16 v17, 0xc8

    aput-object v2, v1, v17

    const-string v2, "&sigmaf;"

    const/16 v17, 0xc9

    aput-object v2, v1, v17

    const-string v2, "&sim;"

    const/16 v17, 0xca

    aput-object v2, v1, v17

    const-string v2, "&spades;"

    const/16 v17, 0xcb

    aput-object v2, v1, v17

    const-string v2, "&sub;"

    const/16 v17, 0xcc

    aput-object v2, v1, v17

    const-string v2, "&sube;"

    const/16 v17, 0xcd

    aput-object v2, v1, v17

    const-string v2, "&sum;"

    const/16 v17, 0xce

    aput-object v2, v1, v17

    const-string v2, "&sup;"

    const/16 v17, 0xcf

    aput-object v2, v1, v17

    const-string v2, "&sup1;"

    const/16 v17, 0xd0

    aput-object v2, v1, v17

    const-string v2, "&sup2;"

    const/16 v17, 0xd1

    aput-object v2, v1, v17

    const-string v2, "&sup3;"

    const/16 v17, 0xd2

    aput-object v2, v1, v17

    const-string v2, "&supe;"

    const/16 v17, 0xd3

    aput-object v2, v1, v17

    const-string v2, "&szlig;"

    const/16 v17, 0xd4

    aput-object v2, v1, v17

    const-string v2, "&Tau;"

    const/16 v17, 0xd5

    aput-object v2, v1, v17

    const-string v2, "&tau;"

    const/16 v17, 0xd6

    aput-object v2, v1, v17

    const-string v2, "&there4;"

    const/16 v17, 0xd7

    aput-object v2, v1, v17

    const-string v2, "&Theta;"

    const/16 v17, 0xd8

    aput-object v2, v1, v17

    const-string v2, "&theta;"

    const/16 v17, 0xd9

    aput-object v2, v1, v17

    const-string v2, "&thetasym;"

    const/16 v17, 0xda

    aput-object v2, v1, v17

    const-string v2, "&thinsp;"

    const/16 v17, 0xdb

    aput-object v2, v1, v17

    const-string v2, "&thorn;"

    const/16 v17, 0xdc

    aput-object v2, v1, v17

    const-string v2, "&tilde;"

    const/16 v17, 0xdd

    aput-object v2, v1, v17

    const-string v2, "&times;"

    const/16 v17, 0xde

    aput-object v2, v1, v17

    const-string v2, "&trade;"

    const/16 v17, 0xdf

    aput-object v2, v1, v17

    const-string v2, "&Uacute;"

    const/16 v17, 0xe0

    aput-object v2, v1, v17

    const-string v2, "&uacute;"

    const/16 v17, 0xe1

    aput-object v2, v1, v17

    const-string v2, "&uArr;"

    const/16 v17, 0xe2

    aput-object v2, v1, v17

    const-string v2, "&uarr;"

    const/16 v17, 0xe3

    aput-object v2, v1, v17

    const-string v2, "&Ucirc;"

    const/16 v17, 0xe4

    aput-object v2, v1, v17

    const-string v2, "&ucirc;"

    const/16 v17, 0xe5

    aput-object v2, v1, v17

    const-string v2, "&Ugrave;"

    const/16 v17, 0xe6

    aput-object v2, v1, v17

    const-string v2, "&ugrave;"

    const/16 v17, 0xe7

    aput-object v2, v1, v17

    const-string v2, "&uml;"

    const/16 v17, 0xe8

    aput-object v2, v1, v17

    const-string v2, "&upsih;"

    const/16 v17, 0xe9

    aput-object v2, v1, v17

    const-string v2, "&Upsilon;"

    const/16 v17, 0xea

    aput-object v2, v1, v17

    const-string v2, "&upsilon;"

    const/16 v17, 0xeb

    aput-object v2, v1, v17

    const-string v2, "&Uuml;"

    const/16 v17, 0xec

    aput-object v2, v1, v17

    const-string v2, "&uuml;"

    const/16 v17, 0xed

    aput-object v2, v1, v17

    const-string v2, "&weierp;"

    const/16 v17, 0xee

    aput-object v2, v1, v17

    const-string v2, "&Xi;"

    const/16 v17, 0xef

    aput-object v2, v1, v17

    const-string v2, "&xi;"

    const/16 v17, 0xf0

    aput-object v2, v1, v17

    const-string v2, "&Yacute;"

    const/16 v17, 0xf1

    aput-object v2, v1, v17

    const-string v2, "&yacute;"

    const/16 v17, 0xf2

    aput-object v2, v1, v17

    const-string v2, "&yen;"

    const/16 v17, 0xf3

    aput-object v2, v1, v17

    const-string v2, "&Yuml;"

    const/16 v17, 0xf4

    aput-object v2, v1, v17

    const-string v2, "&yuml;"

    const/16 v17, 0xf5

    aput-object v2, v1, v17

    const-string v2, "&Zeta;"

    const/16 v17, 0xf6

    aput-object v2, v1, v17

    const-string v2, "&zeta;"

    const/16 v17, 0xf7

    aput-object v2, v1, v17

    const-string v2, "&zwj;"

    const/16 v17, 0xf8

    aput-object v2, v1, v17

    const-string v2, "&zwnj;"

    const/16 v17, 0xf9

    aput-object v2, v1, v17

    sput-object v1, Lcom/github/rjeschke/txtmark/HTML;->ENTITY_NAMES:[Ljava/lang/String;

    .line 64
    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/github/rjeschke/txtmark/HTML;->ENTITY_CHARS:[C

    .line 99
    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "http"

    aput-object v1, v0, v3

    const-string v1, "https"

    aput-object v1, v0, v4

    const-string v1, "ftp"

    aput-object v1, v0, v5

    const-string v1, "ftps"

    aput-object v1, v0, v6

    sput-object v0, Lcom/github/rjeschke/txtmark/HTML;->LINK_PREFIXES:[Ljava/lang/String;

    const/16 v0, 0x15

    .line 105
    new-array v0, v0, [Lcom/github/rjeschke/txtmark/HTMLElement;

    sget-object v1, Lcom/github/rjeschke/txtmark/HTMLElement;->address:Lcom/github/rjeschke/txtmark/HTMLElement;

    aput-object v1, v0, v3

    sget-object v1, Lcom/github/rjeschke/txtmark/HTMLElement;->blockquote:Lcom/github/rjeschke/txtmark/HTMLElement;

    aput-object v1, v0, v4

    sget-object v1, Lcom/github/rjeschke/txtmark/HTMLElement;->del:Lcom/github/rjeschke/txtmark/HTMLElement;

    aput-object v1, v0, v5

    sget-object v1, Lcom/github/rjeschke/txtmark/HTMLElement;->div:Lcom/github/rjeschke/txtmark/HTMLElement;

    aput-object v1, v0, v6

    sget-object v1, Lcom/github/rjeschke/txtmark/HTMLElement;->dl:Lcom/github/rjeschke/txtmark/HTMLElement;

    aput-object v1, v0, v7

    sget-object v1, Lcom/github/rjeschke/txtmark/HTMLElement;->fieldset:Lcom/github/rjeschke/txtmark/HTMLElement;

    aput-object v1, v0, v8

    sget-object v1, Lcom/github/rjeschke/txtmark/HTMLElement;->form:Lcom/github/rjeschke/txtmark/HTMLElement;

    aput-object v1, v0, v9

    sget-object v1, Lcom/github/rjeschke/txtmark/HTMLElement;->h1:Lcom/github/rjeschke/txtmark/HTMLElement;

    aput-object v1, v0, v10

    sget-object v1, Lcom/github/rjeschke/txtmark/HTMLElement;->h2:Lcom/github/rjeschke/txtmark/HTMLElement;

    aput-object v1, v0, v11

    sget-object v1, Lcom/github/rjeschke/txtmark/HTMLElement;->h3:Lcom/github/rjeschke/txtmark/HTMLElement;

    aput-object v1, v0, v12

    sget-object v1, Lcom/github/rjeschke/txtmark/HTMLElement;->h4:Lcom/github/rjeschke/txtmark/HTMLElement;

    aput-object v1, v0, v13

    sget-object v1, Lcom/github/rjeschke/txtmark/HTMLElement;->h5:Lcom/github/rjeschke/txtmark/HTMLElement;

    aput-object v1, v0, v14

    sget-object v1, Lcom/github/rjeschke/txtmark/HTMLElement;->h6:Lcom/github/rjeschke/txtmark/HTMLElement;

    aput-object v1, v0, v15

    sget-object v1, Lcom/github/rjeschke/txtmark/HTMLElement;->hr:Lcom/github/rjeschke/txtmark/HTMLElement;

    aput-object v1, v0, v16

    sget-object v1, Lcom/github/rjeschke/txtmark/HTMLElement;->ins:Lcom/github/rjeschke/txtmark/HTMLElement;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lcom/github/rjeschke/txtmark/HTMLElement;->noscript:Lcom/github/rjeschke/txtmark/HTMLElement;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sget-object v1, Lcom/github/rjeschke/txtmark/HTMLElement;->ol:Lcom/github/rjeschke/txtmark/HTMLElement;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    sget-object v1, Lcom/github/rjeschke/txtmark/HTMLElement;->p:Lcom/github/rjeschke/txtmark/HTMLElement;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    sget-object v1, Lcom/github/rjeschke/txtmark/HTMLElement;->pre:Lcom/github/rjeschke/txtmark/HTMLElement;

    const/16 v2, 0x12

    aput-object v1, v0, v2

    sget-object v1, Lcom/github/rjeschke/txtmark/HTMLElement;->table:Lcom/github/rjeschke/txtmark/HTMLElement;

    const/16 v2, 0x13

    aput-object v1, v0, v2

    sget-object v1, Lcom/github/rjeschke/txtmark/HTMLElement;->ul:Lcom/github/rjeschke/txtmark/HTMLElement;

    const/16 v2, 0x14

    aput-object v1, v0, v2

    sput-object v0, Lcom/github/rjeschke/txtmark/HTML;->BLOCK_ELEMENTS:[Lcom/github/rjeschke/txtmark/HTMLElement;

    .line 120
    new-array v0, v12, [Lcom/github/rjeschke/txtmark/HTMLElement;

    sget-object v1, Lcom/github/rjeschke/txtmark/HTMLElement;->applet:Lcom/github/rjeschke/txtmark/HTMLElement;

    aput-object v1, v0, v3

    sget-object v1, Lcom/github/rjeschke/txtmark/HTMLElement;->head:Lcom/github/rjeschke/txtmark/HTMLElement;

    aput-object v1, v0, v4

    sget-object v1, Lcom/github/rjeschke/txtmark/HTMLElement;->html:Lcom/github/rjeschke/txtmark/HTMLElement;

    aput-object v1, v0, v5

    sget-object v1, Lcom/github/rjeschke/txtmark/HTMLElement;->body:Lcom/github/rjeschke/txtmark/HTMLElement;

    aput-object v1, v0, v6

    sget-object v1, Lcom/github/rjeschke/txtmark/HTMLElement;->frame:Lcom/github/rjeschke/txtmark/HTMLElement;

    aput-object v1, v0, v7

    sget-object v1, Lcom/github/rjeschke/txtmark/HTMLElement;->frameset:Lcom/github/rjeschke/txtmark/HTMLElement;

    aput-object v1, v0, v8

    sget-object v1, Lcom/github/rjeschke/txtmark/HTMLElement;->iframe:Lcom/github/rjeschke/txtmark/HTMLElement;

    aput-object v1, v0, v9

    sget-object v1, Lcom/github/rjeschke/txtmark/HTMLElement;->script:Lcom/github/rjeschke/txtmark/HTMLElement;

    aput-object v1, v0, v10

    sget-object v1, Lcom/github/rjeschke/txtmark/HTMLElement;->object:Lcom/github/rjeschke/txtmark/HTMLElement;

    aput-object v1, v0, v11

    sput-object v0, Lcom/github/rjeschke/txtmark/HTML;->UNSAFE_ELEMENTS:[Lcom/github/rjeschke/txtmark/HTMLElement;

    .line 133
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/github/rjeschke/txtmark/HTML;->encodeMap:Ljava/util/HashMap;

    .line 135
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/github/rjeschke/txtmark/HTML;->decodeMap:Ljava/util/HashMap;

    .line 137
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/github/rjeschke/txtmark/HTML;->HTML_ELEMENTS:Ljava/util/HashSet;

    .line 139
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/github/rjeschke/txtmark/HTML;->HTML_UNSAFE:Ljava/util/HashSet;

    .line 141
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/github/rjeschke/txtmark/HTML;->HTML_BLOCK_ELEMENTS:Ljava/util/HashSet;

    .line 143
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/github/rjeschke/txtmark/HTML;->LINK_PREFIX:Ljava/util/HashSet;

    .line 147
    invoke-static {}, Lcom/github/rjeschke/txtmark/HTMLElement;->values()[Lcom/github/rjeschke/txtmark/HTMLElement;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v4, v0, v2

    .line 149
    sget-object v5, Lcom/github/rjeschke/txtmark/HTML;->HTML_ELEMENTS:Ljava/util/HashSet;

    invoke-virtual {v4}, Lcom/github/rjeschke/txtmark/HTMLElement;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 151
    :cond_0
    sget-object v0, Lcom/github/rjeschke/txtmark/HTML;->UNSAFE_ELEMENTS:[Lcom/github/rjeschke/txtmark/HTMLElement;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_1

    aget-object v4, v0, v2

    .line 153
    sget-object v5, Lcom/github/rjeschke/txtmark/HTML;->HTML_UNSAFE:Ljava/util/HashSet;

    invoke-virtual {v4}, Lcom/github/rjeschke/txtmark/HTMLElement;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 155
    :cond_1
    sget-object v0, Lcom/github/rjeschke/txtmark/HTML;->BLOCK_ELEMENTS:[Lcom/github/rjeschke/txtmark/HTMLElement;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v1, :cond_2

    aget-object v4, v0, v2

    .line 157
    sget-object v5, Lcom/github/rjeschke/txtmark/HTML;->HTML_BLOCK_ELEMENTS:Ljava/util/HashSet;

    invoke-virtual {v4}, Lcom/github/rjeschke/txtmark/HTMLElement;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    .line 159
    :goto_3
    sget-object v1, Lcom/github/rjeschke/txtmark/HTML;->ENTITY_NAMES:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_3

    .line 161
    sget-object v1, Lcom/github/rjeschke/txtmark/HTML;->encodeMap:Ljava/util/HashMap;

    sget-object v2, Lcom/github/rjeschke/txtmark/HTML;->ENTITY_CHARS:[C

    aget-char v2, v2, v0

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    sget-object v4, Lcom/github/rjeschke/txtmark/HTML;->ENTITY_NAMES:[Ljava/lang/String;

    aget-object v4, v4, v0

    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    sget-object v1, Lcom/github/rjeschke/txtmark/HTML;->decodeMap:Ljava/util/HashMap;

    sget-object v2, Lcom/github/rjeschke/txtmark/HTML;->ENTITY_NAMES:[Ljava/lang/String;

    aget-object v2, v2, v0

    sget-object v4, Lcom/github/rjeschke/txtmark/HTML;->ENTITY_CHARS:[C

    aget-char v4, v4, v0

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 164
    :cond_3
    :goto_4
    sget-object v0, Lcom/github/rjeschke/txtmark/HTML;->LINK_PREFIXES:[Ljava/lang/String;

    array-length v0, v0

    if-ge v3, v0, :cond_4

    .line 166
    sget-object v0, Lcom/github/rjeschke/txtmark/HTML;->LINK_PREFIX:Ljava/util/HashSet;

    sget-object v1, Lcom/github/rjeschke/txtmark/HTML;->LINK_PREFIXES:[Ljava/lang/String;

    aget-object v1, v1, v3

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_4
    return-void

    :array_0
    .array-data 2
        0xc2s
        0xe2s
        0xb4s
        0xc6s
        0xe6s
        0xc0s
        0xe0s
        0x2135s
        0x391s
        0x3b1s
        0x26s
        0x2227s
        0x2220s
        0x27s
        0xc5s
        0xe5s
        0x2248s
        0xc3s
        0xe3s
        0xc4s
        0xe4s
        0x201es
        0x392s
        0x3b2s
        0xa6s
        0x2022s
        0x2229s
        0xc7s
        0xe7s
        0xb8s
        0xa2s
        0x3a7s
        0x3c7s
        0x2c6s
        0x2663s
        0x2245s
        0xa9s
        0x21b5s
        0x222as
        0xa4s
        0x2021s
        0x2020s
        0x21d3s
        0x2193s
        0xb0s
        0x394s
        0x3b4s
        0x2666s
        0xf7s
        0xc9s
        0xe9s
        0xcas
        0xeas
        0xc8s
        0xe8s
        0x2205s
        0x2003s
        0x2002s
        0x395s
        0x3b5s
        0x2261s
        0x397s
        0x3b7s
        0xd0s
        0xf0s
        0xcbs
        0xebs
        0x20acs
        0x2203s
        0x192s
        0x2200s
        0xbds
        0xbcs
        0xbes
        0x2044s
        0x393s
        0x3b3s
        0x2265s
        0x3es
        0x21d4s
        0x2194s
        0x2665s
        0x2026s
        0xcds
        0xeds
        0xces
        0xees
        0xa1s
        0xccs
        0xecs
        0x2111s
        0x221es
        0x222bs
        0x399s
        0x3b9s
        0xbfs
        0x2208s
        0xcfs
        0xefs
        0x39as
        0x3bas
        0x39bs
        0x3bbs
        0x2329s
        0xabs
        0x21d0s
        0x2190s
        0x2308s
        0x201cs
        0x2264s
        0x230as
        0x2217s
        0x25cas
        0x200es
        0x2039s
        0x2018s
        0x3cs
        0xafs
        0x2014s
        0xb5s
        0xb7s
        0x2212s
        0x39cs
        0x3bcs
        0x2207s
        0xa0s
        0x2013s
        0x2260s
        0x220bs
        0xacs
        0x2209s
        0x2284s
        0xd1s
        0xf1s
        0x39ds
        0x3bds
        0xd3s
        0xf3s
        0xd4s
        0xf4s
        0x152s
        0x153s
        0xd2s
        0xf2s
        0x203es
        0x3a9s
        0x3c9s
        0x39fs
        0x3bfs
        0x2295s
        0x2228s
        0xaas
        0xbas
        0xd8s
        0xf8s
        0xd5s
        0xf5s
        0x2297s
        0xd6s
        0xf6s
        0xb6s
        0x2202s
        0x2030s
        0x22a5s
        0x3a6s
        0x3c6s
        0x3a0s
        0x3c0s
        0x3d6s
        0xb1s
        0xa3s
        0x2033s
        0x2032s
        0x220fs
        0x221ds
        0x3a8s
        0x3c8s
        0x22s
        0x221as
        0x232as
        0xbbs
        0x21d2s
        0x2192s
        0x2309s
        0x201ds
        0x211cs
        0xaes
        0x230bs
        0x3a1s
        0x3c1s
        0x200fs
        0x203as
        0x2019s
        0x201as
        0x160s
        0x161s
        0x22c5s
        0xa7s
        0xads
        0x3a3s
        0x3c3s
        0x3c2s
        0x223cs
        0x2660s
        0x2282s
        0x2286s
        0x2211s
        0x2283s
        0xb9s
        0xb2s
        0xb3s
        0x2287s
        0xdfs
        0x3a4s
        0x3c4s
        0x2234s
        0x398s
        0x3b8s
        0x3d1s
        0xdes
        0xfes
        0x2dcs
        0xd7s
        0x2122s
        0xdas
        0xfas
        0x21d1s
        0x2191s
        0xdbs
        0xfbs
        0xd9s
        0xf9s
        0xa8s
        0x3d2s
        0x3a5s
        0x3c5s
        0xdcs
        0xfcs
        0x2118s
        0x39es
        0x3bes
        0xdds
        0xfds
        0xa5s
        0x178s
        0xffs
        0x396s
        0x3b6s
        0x200ds
        0x200cs
    .end array-data
.end method

.method public static final isEntity(Ljava/lang/String;)Z
    .locals 1

    .line 191
    sget-object v0, Lcom/github/rjeschke/txtmark/HTML;->decodeMap:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static final isHtmlBlockElement(Ljava/lang/String;)Z
    .locals 1

    .line 209
    sget-object v0, Lcom/github/rjeschke/txtmark/HTML;->HTML_BLOCK_ELEMENTS:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static final isLinkPrefix(Ljava/lang/String;)Z
    .locals 1

    .line 182
    sget-object v0, Lcom/github/rjeschke/txtmark/HTML;->LINK_PREFIX:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static final isUnsafeHtmlElement(Ljava/lang/String;)Z
    .locals 1

    .line 218
    sget-object v0, Lcom/github/rjeschke/txtmark/HTML;->HTML_UNSAFE:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
