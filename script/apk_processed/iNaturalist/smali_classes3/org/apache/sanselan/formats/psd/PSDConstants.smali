.class public Lorg/apache/sanselan/formats/psd/PSDConstants;
.super Ljava/lang/Object;
.source "PSDConstants.java"


# static fields
.field static synthetic class$org$apache$sanselan$formats$psd$PSDConstants:Ljava/lang/Class;

.field public static final fImageResourceTypes:[Lorg/apache/sanselan/formats/psd/ImageResourceType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/16 v0, 0x37

    .line 41
    :try_start_0
    new-array v0, v0, [Lorg/apache/sanselan/formats/psd/ImageResourceType;

    const/4 v1, 0x0

    new-instance v2, Lorg/apache/sanselan/formats/psd/ImageResourceType;

    const-string v3, " Contains five 2 byte values: number of channels, rows, columns, depth, and mode."

    const/16 v4, 0x3e8

    invoke-direct {v2, v4, v4, v3}, Lorg/apache/sanselan/formats/psd/ImageResourceType;-><init>(IILjava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Lorg/apache/sanselan/formats/psd/ImageResourceType;

    const-string v3, "Optional. Macintosh print manager print info record."

    const/16 v4, 0x3e9

    invoke-direct {v2, v4, v4, v3}, Lorg/apache/sanselan/formats/psd/ImageResourceType;-><init>(IILjava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-instance v2, Lorg/apache/sanselan/formats/psd/ImageResourceType;

    const-string v3, " Contains the indexed color table."

    const/16 v4, 0x3eb

    invoke-direct {v2, v4, v4, v3}, Lorg/apache/sanselan/formats/psd/ImageResourceType;-><init>(IILjava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-instance v2, Lorg/apache/sanselan/formats/psd/ImageResourceType;

    const-string v3, "ResolutionInfo structure. See Appendix A in Photoshop SDK Guide.pdf."

    const/16 v4, 0x3ed

    invoke-direct {v2, v4, v4, v3}, Lorg/apache/sanselan/formats/psd/ImageResourceType;-><init>(IILjava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-instance v2, Lorg/apache/sanselan/formats/psd/ImageResourceType;

    const-string v3, "Names of the alpha channels as a series of Pascal strings."

    const/16 v4, 0x3ee

    invoke-direct {v2, v4, v4, v3}, Lorg/apache/sanselan/formats/psd/ImageResourceType;-><init>(IILjava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-instance v2, Lorg/apache/sanselan/formats/psd/ImageResourceType;

    const-string v3, "DisplayInfo structure. See Appendix A in Photoshop SDK Guide.pdf ."

    const/16 v4, 0x3ef

    invoke-direct {v2, v4, v4, v3}, Lorg/apache/sanselan/formats/psd/ImageResourceType;-><init>(IILjava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-instance v2, Lorg/apache/sanselan/formats/psd/ImageResourceType;

    const-string v3, "Optional. The caption as a Pascal string."

    const/16 v4, 0x3f0

    invoke-direct {v2, v4, v4, v3}, Lorg/apache/sanselan/formats/psd/ImageResourceType;-><init>(IILjava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-instance v2, Lorg/apache/sanselan/formats/psd/ImageResourceType;

    const-string v3, "Border information. Contains a fixed-number for the border width, and 2 bytes for border units (1=inches, 2=cm, 3=points, 4=picas, 5=columns)."

    const/16 v4, 0x3f1

    invoke-direct {v2, v4, v4, v3}, Lorg/apache/sanselan/formats/psd/ImageResourceType;-><init>(IILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-instance v2, Lorg/apache/sanselan/formats/psd/ImageResourceType;

    const-string v3, "Background color. See the Colors additional file information."

    const/16 v4, 0x3f2

    invoke-direct {v2, v4, v4, v3}, Lorg/apache/sanselan/formats/psd/ImageResourceType;-><init>(IILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-instance v2, Lorg/apache/sanselan/formats/psd/ImageResourceType;

    const-string v3, "Print flags. A series of one byte boolean values (see Page Setup dialog): labels, crop marks, color bars, registration marks, negative, flip, interpolate, caption."

    const/16 v4, 0x3f3

    invoke-direct {v2, v4, v4, v3}, Lorg/apache/sanselan/formats/psd/ImageResourceType;-><init>(IILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-instance v2, Lorg/apache/sanselan/formats/psd/ImageResourceType;

    const-string v3, "Grayscale and multichannel halftoning information."

    const/16 v4, 0x3f4

    invoke-direct {v2, v4, v4, v3}, Lorg/apache/sanselan/formats/psd/ImageResourceType;-><init>(IILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-instance v2, Lorg/apache/sanselan/formats/psd/ImageResourceType;

    const-string v3, "Color halftoning information."

    const/16 v4, 0x3f5

    invoke-direct {v2, v4, v4, v3}, Lorg/apache/sanselan/formats/psd/ImageResourceType;-><init>(IILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-instance v2, Lorg/apache/sanselan/formats/psd/ImageResourceType;

    const-string v3, "Duotone halftoning information."

    const/16 v4, 0x3f6

    invoke-direct {v2, v4, v4, v3}, Lorg/apache/sanselan/formats/psd/ImageResourceType;-><init>(IILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-instance v2, Lorg/apache/sanselan/formats/psd/ImageResourceType;

    const-string v3, "Grayscale and multichannel transfer function."

    const/16 v4, 0x3f7

    invoke-direct {v2, v4, v4, v3}, Lorg/apache/sanselan/formats/psd/ImageResourceType;-><init>(IILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-instance v2, Lorg/apache/sanselan/formats/psd/ImageResourceType;

    const-string v3, "Color transfer functions."

    const/16 v4, 0x3f8

    invoke-direct {v2, v4, v4, v3}, Lorg/apache/sanselan/formats/psd/ImageResourceType;-><init>(IILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0xf

    new-instance v2, Lorg/apache/sanselan/formats/psd/ImageResourceType;

    const/16 v3, 0x3f9

    const/16 v4, 0x3f9

    const-string v5, "Duotone transfer functions."

    invoke-direct {v2, v3, v4, v5}, Lorg/apache/sanselan/formats/psd/ImageResourceType;-><init>(IILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x10

    new-instance v2, Lorg/apache/sanselan/formats/psd/ImageResourceType;

    const/16 v3, 0x3fa

    const/16 v4, 0x3fa

    const-string v5, "Duotone image information."

    invoke-direct {v2, v3, v4, v5}, Lorg/apache/sanselan/formats/psd/ImageResourceType;-><init>(IILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x11

    new-instance v2, Lorg/apache/sanselan/formats/psd/ImageResourceType;

    const/16 v3, 0x3fb

    const/16 v4, 0x3fb

    const-string v5, "Two bytes for the effective black and white values for the dot range."

    invoke-direct {v2, v3, v4, v5}, Lorg/apache/sanselan/formats/psd/ImageResourceType;-><init>(IILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x12

    new-instance v2, Lorg/apache/sanselan/formats/psd/ImageResourceType;

    const/16 v3, 0x3fc

    const/16 v4, 0x3fc

    const-string v5, "Obsolete."

    invoke-direct {v2, v3, v4, v5}, Lorg/apache/sanselan/formats/psd/ImageResourceType;-><init>(IILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x13

    new-instance v2, Lorg/apache/sanselan/formats/psd/ImageResourceType;

    const/16 v3, 0x3fd

    const/16 v4, 0x3fd

    const-string v5, "EPS options."

    invoke-direct {v2, v3, v4, v5}, Lorg/apache/sanselan/formats/psd/ImageResourceType;-><init>(IILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x14

    new-instance v2, Lorg/apache/sanselan/formats/psd/ImageResourceType;

    const/16 v3, 0x3fe

    const/16 v4, 0x3fe

    const-string v5, "Quick Mask information. 2 bytes containing Quick Mask channel ID, 1 byte boolean indicating whether the mask was initially empty."

    invoke-direct {v2, v3, v4, v5}, Lorg/apache/sanselan/formats/psd/ImageResourceType;-><init>(IILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x15

    new-instance v2, Lorg/apache/sanselan/formats/psd/ImageResourceType;

    const/16 v3, 0x3ff

    const/16 v4, 0x3ff

    const-string v5, "Obsolete."

    invoke-direct {v2, v3, v4, v5}, Lorg/apache/sanselan/formats/psd/ImageResourceType;-><init>(IILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x16

    new-instance v2, Lorg/apache/sanselan/formats/psd/ImageResourceType;

    const/16 v3, 0x400

    const/16 v4, 0x400

    const-string v5, "Layer state information. 2 bytes containing the index of target layer. 0=bottom layer."

    invoke-direct {v2, v3, v4, v5}, Lorg/apache/sanselan/formats/psd/ImageResourceType;-><init>(IILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x17

    new-instance v2, Lorg/apache/sanselan/formats/psd/ImageResourceType;

    const/16 v3, 0x401

    const/16 v4, 0x401

    const-string v5, "Working path (not saved). See path resource format later in this chapter."

    invoke-direct {v2, v3, v4, v5}, Lorg/apache/sanselan/formats/psd/ImageResourceType;-><init>(IILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x18

    new-instance v2, Lorg/apache/sanselan/formats/psd/ImageResourceType;

    const/16 v3, 0x402

    const/16 v4, 0x402

    const-string v5, "Layers group information. 2 bytes per layer containing a group ID for the dragging groups. Layers in a group have the same group ID."

    invoke-direct {v2, v3, v4, v5}, Lorg/apache/sanselan/formats/psd/ImageResourceType;-><init>(IILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x19

    new-instance v2, Lorg/apache/sanselan/formats/psd/ImageResourceType;

    const/16 v3, 0x403

    const/16 v4, 0x403

    const-string v5, "Obsolete."

    invoke-direct {v2, v3, v4, v5}, Lorg/apache/sanselan/formats/psd/ImageResourceType;-><init>(IILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    new-instance v2, Lorg/apache/sanselan/formats/psd/ImageResourceType;

    const/16 v3, 0x404

    const/16 v4, 0x404

    const-string v5, "IPTC-NAA record. This contains the File Info... information. See the IIMV4.pdf document."

    invoke-direct {v2, v3, v4, v5}, Lorg/apache/sanselan/formats/psd/ImageResourceType;-><init>(IILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    new-instance v2, Lorg/apache/sanselan/formats/psd/ImageResourceType;

    const/16 v3, 0x405

    const/16 v4, 0x405

    const-string v5, "Image mode for raw format files."

    invoke-direct {v2, v3, v4, v5}, Lorg/apache/sanselan/formats/psd/ImageResourceType;-><init>(IILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    new-instance v2, Lorg/apache/sanselan/formats/psd/ImageResourceType;

    const/16 v3, 0x406

    const/16 v4, 0x406

    const-string v5, "JPEG quality. Private."

    invoke-direct {v2, v3, v4, v5}, Lorg/apache/sanselan/formats/psd/ImageResourceType;-><init>(IILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    new-instance v2, Lorg/apache/sanselan/formats/psd/ImageResourceType;

    const/16 v3, 0x408

    const/16 v4, 0x408

    const-string v5, "Grid and guides information. See grid and guides resource format later in this chapter."

    invoke-direct {v2, v3, v4, v5}, Lorg/apache/sanselan/formats/psd/ImageResourceType;-><init>(IILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    new-instance v2, Lorg/apache/sanselan/formats/psd/ImageResourceType;

    const/16 v3, 0x409

    const/16 v4, 0x409

    const-string v5, "Thumbnail resource. See thumbnail resource format later in this chapter."

    invoke-direct {v2, v3, v4, v5}, Lorg/apache/sanselan/formats/psd/ImageResourceType;-><init>(IILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    new-instance v2, Lorg/apache/sanselan/formats/psd/ImageResourceType;

    const/16 v3, 0x40a

    const/16 v4, 0x40a

    const-string v5, "Copyright flag. Boolean indicating whether image is copyrighted. Can be set via Property suite or by user in File Info..."

    invoke-direct {v2, v3, v4, v5}, Lorg/apache/sanselan/formats/psd/ImageResourceType;-><init>(IILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x20

    new-instance v2, Lorg/apache/sanselan/formats/psd/ImageResourceType;

    const/16 v3, 0x40b

    const/16 v4, 0x40b

    const-string v5, "URL. Handle of a text string with uniform resource locator. Can be set via Property suite or by user in File Info..."

    invoke-direct {v2, v3, v4, v5}, Lorg/apache/sanselan/formats/psd/ImageResourceType;-><init>(IILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x21

    new-instance v2, Lorg/apache/sanselan/formats/psd/ImageResourceType;

    const/16 v3, 0x40c

    const/16 v4, 0x40c

    const-string v5, "Thumbnail resource. See thumbnail resource format later in this chapter."

    invoke-direct {v2, v3, v4, v5}, Lorg/apache/sanselan/formats/psd/ImageResourceType;-><init>(IILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x22

    new-instance v2, Lorg/apache/sanselan/formats/psd/ImageResourceType;

    const/16 v3, 0x40d

    const/16 v4, 0x40d

    const-string v5, "Global Angle. 4 bytes that contain an integer between 0..359 which is the global lighting angle for effects layer. If not present assumes 30."

    invoke-direct {v2, v3, v4, v5}, Lorg/apache/sanselan/formats/psd/ImageResourceType;-><init>(IILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x23

    new-instance v2, Lorg/apache/sanselan/formats/psd/ImageResourceType;

    const/16 v3, 0x40e

    const/16 v4, 0x40e

    const-string v5, "Color samplers resource. See color samplers resource format later in this chapter."

    invoke-direct {v2, v3, v4, v5}, Lorg/apache/sanselan/formats/psd/ImageResourceType;-><init>(IILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x24

    new-instance v2, Lorg/apache/sanselan/formats/psd/ImageResourceType;

    const/16 v3, 0x40f

    const/16 v4, 0x40f

    const-string v5, "ICC Profile. The raw bytes of an ICC format profile, see the ICC34.pdf and ICC34.h files from the Internation Color Consortium located in the documentation section."

    invoke-direct {v2, v3, v4, v5}, Lorg/apache/sanselan/formats/psd/ImageResourceType;-><init>(IILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x25

    new-instance v2, Lorg/apache/sanselan/formats/psd/ImageResourceType;

    const/16 v3, 0x410

    const/16 v4, 0x410

    const-string v5, "One byte for Watermark."

    invoke-direct {v2, v3, v4, v5}, Lorg/apache/sanselan/formats/psd/ImageResourceType;-><init>(IILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x26

    new-instance v2, Lorg/apache/sanselan/formats/psd/ImageResourceType;

    const/16 v3, 0x411

    const/16 v4, 0x411

    const-string v5, "ICC Untagged. 1 byte that disables any assumed profile handling when opening the file. 1 = intentionally untagged."

    invoke-direct {v2, v3, v4, v5}, Lorg/apache/sanselan/formats/psd/ImageResourceType;-><init>(IILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x27

    new-instance v2, Lorg/apache/sanselan/formats/psd/ImageResourceType;

    const/16 v3, 0x412

    const/16 v4, 0x412

    const-string v5, "Effects visible. 1 byte global flag to show/hide all the effects layer. Only present when they are hidden."

    invoke-direct {v2, v3, v4, v5}, Lorg/apache/sanselan/formats/psd/ImageResourceType;-><init>(IILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x28

    new-instance v2, Lorg/apache/sanselan/formats/psd/ImageResourceType;

    const/16 v3, 0x413

    const/16 v4, 0x413

    const-string v5, "Spot Halftone. 4 bytes for version, 4 bytes for length, and the variable length data."

    invoke-direct {v2, v3, v4, v5}, Lorg/apache/sanselan/formats/psd/ImageResourceType;-><init>(IILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x29

    new-instance v2, Lorg/apache/sanselan/formats/psd/ImageResourceType;

    const/16 v3, 0x414

    const/16 v4, 0x414

    const-string v5, "Document specific IDs, layer IDs will be generated starting at this base value or a greater value if we find existing IDs to already exceed it. It\u2019s purpose is to avoid the case where we add layers, flatten, save, open, and then add more layers that end up with the same IDs as the first set. 4 bytes."

    invoke-direct {v2, v3, v4, v5}, Lorg/apache/sanselan/formats/psd/ImageResourceType;-><init>(IILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    new-instance v2, Lorg/apache/sanselan/formats/psd/ImageResourceType;

    const/16 v3, 0x415

    const/16 v4, 0x415

    const-string v5, "Unicode Alpha Names. 4 bytes for length and the string as a unicode string."

    invoke-direct {v2, v3, v4, v5}, Lorg/apache/sanselan/formats/psd/ImageResourceType;-><init>(IILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    new-instance v2, Lorg/apache/sanselan/formats/psd/ImageResourceType;

    const/16 v3, 0x416

    const/16 v4, 0x416

    const-string v5, "Indexed Color Table Count. 2 bytes for the number of colors in table that are actually defined"

    invoke-direct {v2, v3, v4, v5}, Lorg/apache/sanselan/formats/psd/ImageResourceType;-><init>(IILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    new-instance v2, Lorg/apache/sanselan/formats/psd/ImageResourceType;

    const/16 v3, 0x417

    const/16 v4, 0x417

    const-string v5, "Tansparent Index. 2 bytes for the index of transparent color, if any."

    invoke-direct {v2, v3, v4, v5}, Lorg/apache/sanselan/formats/psd/ImageResourceType;-><init>(IILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    new-instance v2, Lorg/apache/sanselan/formats/psd/ImageResourceType;

    const/16 v3, 0x419

    const/16 v4, 0x419

    const-string v5, "Global Altitude. 4 byte entry for altitude"

    invoke-direct {v2, v3, v4, v5}, Lorg/apache/sanselan/formats/psd/ImageResourceType;-><init>(IILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    new-instance v2, Lorg/apache/sanselan/formats/psd/ImageResourceType;

    const/16 v3, 0x41a

    const/16 v4, 0x41a

    const-string v5, "Slices. See description later in this chapter"

    invoke-direct {v2, v3, v4, v5}, Lorg/apache/sanselan/formats/psd/ImageResourceType;-><init>(IILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    new-instance v2, Lorg/apache/sanselan/formats/psd/ImageResourceType;

    const/16 v3, 0x41b

    const/16 v4, 0x41b

    const-string v5, "Workflow URL. Unicode string, 4 bytes of length followed by unicode string."

    invoke-direct {v2, v3, v4, v5}, Lorg/apache/sanselan/formats/psd/ImageResourceType;-><init>(IILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x30

    new-instance v2, Lorg/apache/sanselan/formats/psd/ImageResourceType;

    const/16 v3, 0x41c

    const/16 v4, 0x41c

    const-string v5, "Jump To XPEP. 2 bytes major version, 2 bytes minor version, 4 bytes count. Following is repeated for count: 4 bytes block size, 4 bytes key, if key = \'jtDd\' then next is a Boolean for the dirty flag otherwise it\u2019s a 4 byte entry for the mod date."

    invoke-direct {v2, v3, v4, v5}, Lorg/apache/sanselan/formats/psd/ImageResourceType;-><init>(IILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x31

    new-instance v2, Lorg/apache/sanselan/formats/psd/ImageResourceType;

    const/16 v3, 0x41d

    const/16 v4, 0x41d

    const-string v5, "Alpha Identifiers. 4 bytes of length, followed by 4 bytes each for every alpha identifier."

    invoke-direct {v2, v3, v4, v5}, Lorg/apache/sanselan/formats/psd/ImageResourceType;-><init>(IILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x32

    new-instance v2, Lorg/apache/sanselan/formats/psd/ImageResourceType;

    const/16 v3, 0x41e

    const/16 v4, 0x41e

    const-string v5, "URL List. 4 byte count of URLs, followed by 4 byte long, 4 byte ID, and unicode string for each count."

    invoke-direct {v2, v3, v4, v5}, Lorg/apache/sanselan/formats/psd/ImageResourceType;-><init>(IILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x33

    new-instance v2, Lorg/apache/sanselan/formats/psd/ImageResourceType;

    const/16 v3, 0x421

    const/16 v4, 0x421

    const-string v5, "Version Info. 4 byte version, 1 byte HasRealMergedData, unicode string of writer name, unicode string of reader name, 4 bytes of file version."

    invoke-direct {v2, v3, v4, v5}, Lorg/apache/sanselan/formats/psd/ImageResourceType;-><init>(IILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x34

    new-instance v2, Lorg/apache/sanselan/formats/psd/ImageResourceType;

    const/16 v3, -0x3e6

    const/16 v4, -0x3e6

    const-string v5, "Path Information (saved paths). See path resource format later in this chapter."

    invoke-direct {v2, v3, v4, v5}, Lorg/apache/sanselan/formats/psd/ImageResourceType;-><init>(IILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x35

    new-instance v2, Lorg/apache/sanselan/formats/psd/ImageResourceType;

    const/16 v3, 0xbb7

    const/16 v4, 0xbb7

    const-string v5, "Name of clipping path. See path resource format later in this chapter."

    invoke-direct {v2, v3, v4, v5}, Lorg/apache/sanselan/formats/psd/ImageResourceType;-><init>(IILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x36

    new-instance v2, Lorg/apache/sanselan/formats/psd/ImageResourceType;

    const/16 v3, 0x2710

    const/16 v4, 0x2710

    const-string v5, "Print flags information. 2 bytes version (=1), 1 byte center crop marks, 1 byte (=0), 4 bytes bleed width value, 2 bytes bleed width scale."

    invoke-direct {v2, v3, v4, v5}, Lorg/apache/sanselan/formats/psd/ImageResourceType;-><init>(IILjava/lang/String;)V

    aput-object v2, v0, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 200
    sget-object v1, Lorg/apache/sanselan/formats/psd/PSDConstants;->class$org$apache$sanselan$formats$psd$PSDConstants:Ljava/lang/Class;

    if-nez v1, :cond_0

    const-string v1, "org.apache.sanselan.formats.psd.PSDConstants"

    invoke-static {v1}, Lorg/apache/sanselan/formats/psd/PSDConstants;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lorg/apache/sanselan/formats/psd/PSDConstants;->class$org$apache$sanselan$formats$psd$PSDConstants:Ljava/lang/Class;

    goto :goto_0

    :cond_0
    sget-object v1, Lorg/apache/sanselan/formats/psd/PSDConstants;->class$org$apache$sanselan$formats$psd$PSDConstants:Ljava/lang/Class;

    :goto_0
    invoke-static {v1, v0}, Lorg/apache/sanselan/util/Debug;->debug(Ljava/lang/Class;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    .line 202
    :goto_1
    sput-object v0, Lorg/apache/sanselan/formats/psd/PSDConstants;->fImageResourceTypes:[Lorg/apache/sanselan/formats/psd/ImageResourceType;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1

    .line 200
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/NoClassDefFoundError;

    invoke-direct {v0}, Ljava/lang/NoClassDefFoundError;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/NoClassDefFoundError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    throw p0
.end method


# virtual methods
.method public getDescription(I)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    .line 27
    :goto_0
    sget-object v1, Lorg/apache/sanselan/formats/psd/PSDConstants;->fImageResourceTypes:[Lorg/apache/sanselan/formats/psd/ImageResourceType;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 29
    sget-object v1, Lorg/apache/sanselan/formats/psd/PSDConstants;->fImageResourceTypes:[Lorg/apache/sanselan/formats/psd/ImageResourceType;

    aget-object v1, v1, v0

    iget v1, v1, Lorg/apache/sanselan/formats/psd/ImageResourceType;->ID:I

    if-ne v1, p1, :cond_0

    .line 30
    sget-object p1, Lorg/apache/sanselan/formats/psd/PSDConstants;->fImageResourceTypes:[Lorg/apache/sanselan/formats/psd/ImageResourceType;

    aget-object p1, p1, v0

    iget-object p1, p1, Lorg/apache/sanselan/formats/psd/ImageResourceType;->Description:Ljava/lang/String;

    return-object p1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const-string p1, "Unknown"

    return-object p1
.end method
