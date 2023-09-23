.class public abstract Lorg/apache/sanselan/formats/tiff/write/TiffImageWriterBase;
.super Ljava/lang/Object;
.source "TiffImageWriterBase.java"

# interfaces
.implements Lorg/apache/sanselan/formats/tiff/constants/TiffConstants;
.implements Lorg/apache/sanselan/common/BinaryConstants;


# instance fields
.field protected final byteOrder:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x49

    .line 46
    iput v0, p0, Lorg/apache/sanselan/formats/tiff/write/TiffImageWriterBase;->byteOrder:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput p1, p0, Lorg/apache/sanselan/formats/tiff/write/TiffImageWriterBase;->byteOrder:I

    return-void
.end method

.method private getStrips(Ljava/awt/image/BufferedImage;III)[[B
    .locals 17

    move/from16 v0, p4

    .line 486
    invoke-virtual/range {p1 .. p1}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v1

    .line 487
    invoke-virtual/range {p1 .. p1}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v2

    add-int v3, v2, v0

    add-int/lit8 v3, v3, -0x1

    .line 489
    div-int/2addr v3, v0

    const/4 v4, 0x0

    .line 491
    check-cast v4, [[B

    .line 493
    new-array v4, v3, [[B

    move v7, v2

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v3, :cond_2

    .line 499
    invoke-static {v0, v7}, Ljava/lang/Math;->min(II)I

    move-result v8

    sub-int/2addr v7, v8

    mul-int v8, v8, p3

    mul-int v8, v8, v1

    mul-int v8, v8, p2

    add-int/lit8 v8, v8, 0x7

    .line 504
    div-int/lit8 v8, v8, 0x8

    .line 506
    new-array v8, v8, [B

    mul-int v9, v6, v0

    add-int v10, v9, v0

    const/4 v11, 0x0

    :goto_1
    if-ge v9, v2, :cond_1

    if-ge v9, v10, :cond_1

    move v12, v11

    const/4 v11, 0x0

    :goto_2
    if-ge v11, v1, :cond_0

    move-object/from16 v13, p1

    .line 516
    invoke-virtual {v13, v11, v9}, Ljava/awt/image/BufferedImage;->getRGB(II)I

    move-result v14

    shr-int/lit8 v5, v14, 0x10

    and-int/lit16 v5, v5, 0xff

    shr-int/lit8 v0, v14, 0x8

    and-int/lit16 v0, v0, 0xff

    move/from16 v16, v1

    const/4 v15, 0x0

    shr-int/lit8 v1, v14, 0x0

    and-int/lit16 v1, v1, 0xff

    add-int/lit8 v14, v12, 0x1

    int-to-byte v5, v5

    .line 521
    aput-byte v5, v8, v12

    add-int/lit8 v5, v14, 0x1

    int-to-byte v0, v0

    .line 522
    aput-byte v0, v8, v14

    add-int/lit8 v12, v5, 0x1

    int-to-byte v0, v1

    .line 523
    aput-byte v0, v8, v5

    add-int/lit8 v11, v11, 0x1

    move/from16 v1, v16

    move/from16 v0, p4

    goto :goto_2

    :cond_0
    move-object/from16 v13, p1

    move/from16 v16, v1

    const/4 v15, 0x0

    add-int/lit8 v9, v9, 0x1

    move v11, v12

    move/from16 v0, p4

    goto :goto_1

    :cond_1
    move-object/from16 v13, p1

    move/from16 v16, v1

    const/4 v15, 0x0

    .line 527
    aput-object v8, v4, v6

    add-int/lit8 v6, v6, 0x1

    move/from16 v1, v16

    move/from16 v0, p4

    goto :goto_0

    :cond_2
    return-object v4
.end method

.method protected static final imageDataPaddingLength(I)I
    .locals 0

    .line 56
    rem-int/lit8 p0, p0, 0x4

    rsub-int/lit8 p0, p0, 0x4

    rem-int/lit8 p0, p0, 0x4

    return p0
.end method


# virtual methods
.method protected validateDirectories(Lorg/apache/sanselan/formats/tiff/write/TiffOutputSet;)Lorg/apache/sanselan/formats/tiff/write/TiffOutputSummary;
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageWriteException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 65
    invoke-virtual/range {p1 .. p1}, Lorg/apache/sanselan/formats/tiff/write/TiffOutputSet;->getDirectories()Ljava/util/List;

    move-result-object v1

    .line 67
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-gt v3, v2, :cond_1f

    .line 77
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 78
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    .line 79
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v14

    if-ge v7, v14, :cond_d

    .line 81
    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/apache/sanselan/formats/tiff/write/TiffOutputDirectory;

    .line 83
    iget v15, v14, Lorg/apache/sanselan/formats/tiff/write/TiffOutputDirectory;->type:I

    .line 84
    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, v15}, Ljava/lang/Integer;-><init>(I)V

    .line 85
    invoke-interface {v4, v6, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-gez v15, :cond_3

    packed-switch v15, :pswitch_data_0

    .line 114
    new-instance v1, Lorg/apache/sanselan/ImageWriteException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Unknown directory: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/sanselan/ImageWriteException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_0
    if-nez v10, :cond_0

    move-object v10, v14

    goto :goto_1

    .line 95
    :cond_0
    new-instance v1, Lorg/apache/sanselan/ImageWriteException;

    const-string v2, "More than one EXIF directory."

    invoke-direct {v1, v2}, Lorg/apache/sanselan/ImageWriteException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_1
    if-nez v9, :cond_1

    move-object v9, v14

    goto :goto_1

    .line 102
    :cond_1
    new-instance v1, Lorg/apache/sanselan/ImageWriteException;

    const-string v2, "More than one GPS directory."

    invoke-direct {v1, v2}, Lorg/apache/sanselan/ImageWriteException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_2
    if-nez v8, :cond_2

    move-object v8, v14

    goto :goto_1

    .line 109
    :cond_2
    new-instance v1, Lorg/apache/sanselan/ImageWriteException;

    const-string v2, "More than one Interoperability directory."

    invoke-direct {v1, v2}, Lorg/apache/sanselan/ImageWriteException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 119
    :cond_3
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_c

    .line 123
    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, v15}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 127
    :goto_1
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 128
    invoke-virtual {v14}, Lorg/apache/sanselan/formats/tiff/write/TiffOutputDirectory;->getFields()Ljava/util/ArrayList;

    move-result-object v14

    move-object v15, v13

    move-object v13, v12

    move-object v12, v11

    const/4 v11, 0x0

    .line 129
    :goto_2
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v11, v5, :cond_b

    .line 131
    invoke-virtual {v14, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/sanselan/formats/tiff/write/TiffOutputField;

    .line 133
    new-instance v3, Ljava/lang/Integer;

    move-object/from16 v16, v1

    iget v1, v5, Lorg/apache/sanselan/formats/tiff/write/TiffOutputField;->tag:I

    invoke-direct {v3, v1}, Ljava/lang/Integer;-><init>(I)V

    .line 134
    invoke-virtual {v6, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 138
    invoke-virtual {v6, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 140
    iget v1, v5, Lorg/apache/sanselan/formats/tiff/write/TiffOutputField;->tag:I

    sget-object v3, Lorg/apache/sanselan/formats/tiff/write/TiffImageWriterBase;->EXIF_TAG_EXIF_OFFSET:Lorg/apache/sanselan/formats/tiff/constants/TagInfo;

    iget v3, v3, Lorg/apache/sanselan/formats/tiff/constants/TagInfo;->tag:I

    if-ne v1, v3, :cond_5

    if-nez v13, :cond_4

    move-object v13, v5

    goto :goto_3

    .line 143
    :cond_4
    new-instance v1, Lorg/apache/sanselan/ImageWriteException;

    const-string v2, "More than one Exif directory offset field."

    invoke-direct {v1, v2}, Lorg/apache/sanselan/ImageWriteException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 146
    :cond_5
    iget v1, v5, Lorg/apache/sanselan/formats/tiff/write/TiffOutputField;->tag:I

    sget-object v3, Lorg/apache/sanselan/formats/tiff/write/TiffImageWriterBase;->EXIF_TAG_INTEROP_OFFSET:Lorg/apache/sanselan/formats/tiff/constants/TagInfo;

    iget v3, v3, Lorg/apache/sanselan/formats/tiff/constants/TagInfo;->tag:I

    if-ne v1, v3, :cond_7

    if-nez v12, :cond_6

    move-object v12, v5

    goto :goto_3

    .line 149
    :cond_6
    new-instance v1, Lorg/apache/sanselan/ImageWriteException;

    const-string v2, "More than one Interoperability directory offset field."

    invoke-direct {v1, v2}, Lorg/apache/sanselan/ImageWriteException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 152
    :cond_7
    iget v1, v5, Lorg/apache/sanselan/formats/tiff/write/TiffOutputField;->tag:I

    sget-object v3, Lorg/apache/sanselan/formats/tiff/write/TiffImageWriterBase;->EXIF_TAG_GPSINFO:Lorg/apache/sanselan/formats/tiff/constants/TagInfo;

    iget v3, v3, Lorg/apache/sanselan/formats/tiff/constants/TagInfo;->tag:I

    if-ne v1, v3, :cond_9

    if-nez v15, :cond_8

    move-object v15, v5

    goto :goto_3

    .line 155
    :cond_8
    new-instance v1, Lorg/apache/sanselan/ImageWriteException;

    const-string v2, "More than one GPS directory offset field."

    invoke-direct {v1, v2}, Lorg/apache/sanselan/ImageWriteException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_9
    :goto_3
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v1, v16

    const/4 v3, 0x1

    goto :goto_2

    .line 135
    :cond_a
    new-instance v1, Lorg/apache/sanselan/ImageWriteException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Tag ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v3, v5, Lorg/apache/sanselan/formats/tiff/write/TiffOutputField;->tagInfo:Lorg/apache/sanselan/formats/tiff/constants/TagInfo;

    invoke-virtual {v3}, Lorg/apache/sanselan/formats/tiff/constants/TagInfo;->getDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, ") appears twice in directory."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/sanselan/ImageWriteException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_b
    move-object/from16 v16, v1

    add-int/lit8 v7, v7, 0x1

    move-object v11, v12

    move-object v12, v13

    move-object v13, v15

    const/4 v3, 0x1

    goto/16 :goto_0

    .line 120
    :cond_c
    new-instance v1, Lorg/apache/sanselan/ImageWriteException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "More than one directory with index: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/sanselan/ImageWriteException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 163
    :cond_d
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v3, 0x1

    if-lt v1, v3, :cond_1e

    .line 168
    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 171
    :goto_4
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v1, v5, :cond_10

    .line 173
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    .line 174
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ne v6, v1, :cond_f

    .line 178
    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/sanselan/formats/tiff/write/TiffOutputDirectory;

    if-eqz v3, :cond_e

    .line 181
    invoke-virtual {v3, v5}, Lorg/apache/sanselan/formats/tiff/write/TiffOutputDirectory;->setNextDirectory(Lorg/apache/sanselan/formats/tiff/write/TiffOutputDirectory;)V

    :cond_e
    add-int/lit8 v1, v1, 0x1

    move-object v3, v5

    goto :goto_4

    .line 175
    :cond_f
    new-instance v2, Lorg/apache/sanselan/ImageWriteException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Missing directory: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, "."

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lorg/apache/sanselan/ImageWriteException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 185
    :cond_10
    new-instance v1, Ljava/lang/Integer;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/sanselan/formats/tiff/write/TiffOutputDirectory;

    .line 189
    new-instance v2, Lorg/apache/sanselan/formats/tiff/write/TiffOutputSummary;

    iget v3, v0, Lorg/apache/sanselan/formats/tiff/write/TiffImageWriterBase;->byteOrder:I

    invoke-direct {v2, v3, v1, v4}, Lorg/apache/sanselan/formats/tiff/write/TiffOutputSummary;-><init>(ILorg/apache/sanselan/formats/tiff/write/TiffOutputDirectory;Ljava/util/Map;)V

    if-nez v8, :cond_12

    if-nez v11, :cond_11

    goto :goto_5

    .line 196
    :cond_11
    new-instance v1, Lorg/apache/sanselan/ImageWriteException;

    const-string v2, "Output set has Interoperability Directory Offset field, but no Interoperability Directory"

    invoke-direct {v1, v2}, Lorg/apache/sanselan/ImageWriteException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_12
    :goto_5
    if-eqz v8, :cond_15

    if-nez v10, :cond_13

    .line 202
    invoke-virtual/range {p1 .. p1}, Lorg/apache/sanselan/formats/tiff/write/TiffOutputSet;->addExifDirectory()Lorg/apache/sanselan/formats/tiff/write/TiffOutputDirectory;

    move-result-object v10

    :cond_13
    if-nez v11, :cond_14

    .line 207
    sget-object v3, Lorg/apache/sanselan/formats/tiff/write/TiffImageWriterBase;->EXIF_TAG_INTEROP_OFFSET:Lorg/apache/sanselan/formats/tiff/constants/TagInfo;

    iget v4, v0, Lorg/apache/sanselan/formats/tiff/write/TiffImageWriterBase;->byteOrder:I

    invoke-static {v3, v4}, Lorg/apache/sanselan/formats/tiff/write/TiffOutputField;->createOffsetField(Lorg/apache/sanselan/formats/tiff/constants/TagInfo;I)Lorg/apache/sanselan/formats/tiff/write/TiffOutputField;

    move-result-object v11

    .line 209
    invoke-virtual {v10, v11}, Lorg/apache/sanselan/formats/tiff/write/TiffOutputDirectory;->add(Lorg/apache/sanselan/formats/tiff/write/TiffOutputField;)V

    .line 212
    :cond_14
    invoke-virtual {v2, v8, v11}, Lorg/apache/sanselan/formats/tiff/write/TiffOutputSummary;->add(Lorg/apache/sanselan/formats/tiff/write/TiffOutputItem;Lorg/apache/sanselan/formats/tiff/write/TiffOutputField;)V

    :cond_15
    if-nez v10, :cond_17

    if-nez v12, :cond_16

    goto :goto_6

    .line 220
    :cond_16
    new-instance v1, Lorg/apache/sanselan/ImageWriteException;

    const-string v2, "Output set has Exif Directory Offset field, but no Exif Directory"

    invoke-direct {v1, v2}, Lorg/apache/sanselan/ImageWriteException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_17
    :goto_6
    if-eqz v10, :cond_19

    if-nez v12, :cond_18

    .line 226
    sget-object v3, Lorg/apache/sanselan/formats/tiff/write/TiffImageWriterBase;->EXIF_TAG_EXIF_OFFSET:Lorg/apache/sanselan/formats/tiff/constants/TagInfo;

    iget v4, v0, Lorg/apache/sanselan/formats/tiff/write/TiffImageWriterBase;->byteOrder:I

    invoke-static {v3, v4}, Lorg/apache/sanselan/formats/tiff/write/TiffOutputField;->createOffsetField(Lorg/apache/sanselan/formats/tiff/constants/TagInfo;I)Lorg/apache/sanselan/formats/tiff/write/TiffOutputField;

    move-result-object v12

    .line 228
    invoke-virtual {v1, v12}, Lorg/apache/sanselan/formats/tiff/write/TiffOutputDirectory;->add(Lorg/apache/sanselan/formats/tiff/write/TiffOutputField;)V

    .line 231
    :cond_18
    invoke-virtual {v2, v10, v12}, Lorg/apache/sanselan/formats/tiff/write/TiffOutputSummary;->add(Lorg/apache/sanselan/formats/tiff/write/TiffOutputItem;Lorg/apache/sanselan/formats/tiff/write/TiffOutputField;)V

    :cond_19
    if-nez v9, :cond_1b

    if-nez v13, :cond_1a

    goto :goto_7

    .line 237
    :cond_1a
    new-instance v1, Lorg/apache/sanselan/ImageWriteException;

    const-string v2, "Output set has GPS Directory Offset field, but no GPS Directory"

    invoke-direct {v1, v2}, Lorg/apache/sanselan/ImageWriteException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1b
    :goto_7
    if-eqz v9, :cond_1d

    if-nez v13, :cond_1c

    .line 243
    sget-object v3, Lorg/apache/sanselan/formats/tiff/write/TiffImageWriterBase;->EXIF_TAG_GPSINFO:Lorg/apache/sanselan/formats/tiff/constants/TagInfo;

    iget v4, v0, Lorg/apache/sanselan/formats/tiff/write/TiffImageWriterBase;->byteOrder:I

    invoke-static {v3, v4}, Lorg/apache/sanselan/formats/tiff/write/TiffOutputField;->createOffsetField(Lorg/apache/sanselan/formats/tiff/constants/TagInfo;I)Lorg/apache/sanselan/formats/tiff/write/TiffOutputField;

    move-result-object v13

    .line 245
    invoke-virtual {v1, v13}, Lorg/apache/sanselan/formats/tiff/write/TiffOutputDirectory;->add(Lorg/apache/sanselan/formats/tiff/write/TiffOutputField;)V

    .line 248
    :cond_1c
    invoke-virtual {v2, v9, v13}, Lorg/apache/sanselan/formats/tiff/write/TiffOutputSummary;->add(Lorg/apache/sanselan/formats/tiff/write/TiffOutputItem;Lorg/apache/sanselan/formats/tiff/write/TiffOutputField;)V

    :cond_1d
    return-object v2

    .line 164
    :cond_1e
    new-instance v1, Lorg/apache/sanselan/ImageWriteException;

    const-string v2, "Missing root directory."

    invoke-direct {v1, v2}, Lorg/apache/sanselan/ImageWriteException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 68
    :cond_1f
    new-instance v1, Lorg/apache/sanselan/ImageWriteException;

    const-string v2, "No directories."

    invoke-direct {v1, v2}, Lorg/apache/sanselan/ImageWriteException;-><init>(Ljava/lang/String;)V

    throw v1

    nop

    :pswitch_data_0
    .packed-switch -0x4
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public abstract write(Ljava/io/OutputStream;Lorg/apache/sanselan/formats/tiff/write/TiffOutputSet;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/sanselan/ImageWriteException;
        }
    .end annotation
.end method

.method public writeImage(Ljava/awt/image/BufferedImage;Ljava/io/OutputStream;Ljava/util/Map;)V
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageWriteException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 268
    new-instance v1, Ljava/util/HashMap;

    move-object/from16 v2, p3

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    const-string v2, "FORMAT"

    .line 271
    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "FORMAT"

    .line 272
    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const/4 v2, 0x0

    const-string v3, "XMP_XML"

    .line 275
    invoke-interface {v1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v2, "XMP_XML"

    .line 277
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "XMP_XML"

    .line 278
    invoke-interface {v1, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    :cond_1
    invoke-virtual/range {p1 .. p1}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v3

    .line 282
    invoke-virtual/range {p1 .. p1}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v4

    const-string v5, "COMPRESSION"

    .line 294
    invoke-interface {v1, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    const/4 v6, 0x5

    if-eqz v5, :cond_4

    const-string v5, "COMPRESSION"

    .line 296
    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 299
    instance-of v7, v5, Ljava/lang/Number;

    if-eqz v7, :cond_2

    .line 302
    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5

    goto :goto_0

    .line 300
    :cond_2
    new-instance v1, Lorg/apache/sanselan/ImageWriteException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Invalid compression parameter: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/sanselan/ImageWriteException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    const/4 v5, 0x5

    :goto_0
    const-string v7, "COMPRESSION"

    .line 304
    invoke-interface {v1, v7}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_4
    const/4 v5, 0x5

    :goto_1
    const/16 v7, 0x1f40

    mul-int/lit8 v8, v3, 0x3

    .line 311
    div-int/2addr v7, v8

    const/4 v8, 0x1

    .line 312
    invoke-static {v8, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    const/16 v9, 0x8

    const/4 v10, 0x3

    move-object/from16 v11, p1

    .line 314
    invoke-direct {v0, v11, v10, v9, v7}, Lorg/apache/sanselan/formats/tiff/write/TiffImageWriterBase;->getStrips(Ljava/awt/image/BufferedImage;III)[[B

    move-result-object v11

    .line 320
    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v12

    if-gtz v12, :cond_b

    const v1, 0x8005

    const/4 v12, 0x0

    if-ne v5, v1, :cond_5

    const/4 v1, 0x0

    .line 334
    :goto_2
    array-length v6, v11

    if-ge v1, v6, :cond_7

    .line 335
    new-instance v6, Lorg/apache/sanselan/common/PackBits;

    invoke-direct {v6}, Lorg/apache/sanselan/common/PackBits;-><init>()V

    aget-object v9, v11, v1

    invoke-virtual {v6, v9}, Lorg/apache/sanselan/common/PackBits;->compress([B)[B

    move-result-object v6

    aput-object v6, v11, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_5
    if-ne v5, v6, :cond_6

    const/4 v1, 0x0

    .line 338
    :goto_3
    array-length v6, v11

    if-ge v1, v6, :cond_7

    .line 340
    aget-object v6, v11, v1

    .line 344
    new-instance v13, Lorg/apache/sanselan/common/mylzw/MyLZWCompressor;

    const/16 v14, 0x4d

    invoke-direct {v13, v9, v14, v8}, Lorg/apache/sanselan/common/mylzw/MyLZWCompressor;-><init>(IIZ)V

    .line 346
    invoke-virtual {v13, v6}, Lorg/apache/sanselan/common/mylzw/MyLZWCompressor;->compress([B)[B

    move-result-object v6

    .line 348
    aput-object v6, v11, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_6
    if-ne v5, v8, :cond_a

    .line 357
    :cond_7
    array-length v1, v11

    new-array v1, v1, [Lorg/apache/sanselan/formats/tiff/TiffElement$DataElement;

    const/4 v6, 0x0

    .line 358
    :goto_4
    array-length v9, v11

    if-ge v6, v9, :cond_8

    .line 359
    new-instance v9, Lorg/apache/sanselan/formats/tiff/TiffImageData$Data;

    aget-object v13, v11, v6

    array-length v13, v13

    aget-object v14, v11, v6

    invoke-direct {v9, v12, v13, v14}, Lorg/apache/sanselan/formats/tiff/TiffImageData$Data;-><init>(II[B)V

    aput-object v9, v1, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 368
    :cond_8
    new-instance v6, Lorg/apache/sanselan/formats/tiff/write/TiffOutputSet;

    iget v9, v0, Lorg/apache/sanselan/formats/tiff/write/TiffImageWriterBase;->byteOrder:I

    invoke-direct {v6, v9}, Lorg/apache/sanselan/formats/tiff/write/TiffOutputSet;-><init>(I)V

    .line 369
    invoke-virtual {v6}, Lorg/apache/sanselan/formats/tiff/write/TiffOutputSet;->addRootDirectory()Lorg/apache/sanselan/formats/tiff/write/TiffOutputDirectory;

    move-result-object v9

    .line 375
    new-instance v11, Lorg/apache/sanselan/formats/tiff/write/TiffOutputField;

    sget-object v13, Lorg/apache/sanselan/formats/tiff/write/TiffImageWriterBase;->TIFF_TAG_IMAGE_WIDTH:Lorg/apache/sanselan/formats/tiff/constants/TagInfo;

    sget-object v14, Lorg/apache/sanselan/formats/tiff/write/TiffImageWriterBase;->FIELD_TYPE_LONG:Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldTypeLong;

    sget-object v15, Lorg/apache/sanselan/formats/tiff/write/TiffImageWriterBase;->FIELD_TYPE_LONG:Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldTypeLong;

    new-array v10, v8, [I

    aput v3, v10, v12

    iget v3, v0, Lorg/apache/sanselan/formats/tiff/write/TiffImageWriterBase;->byteOrder:I

    invoke-virtual {v15, v10, v3}, Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldTypeLong;->writeData(Ljava/lang/Object;I)[B

    move-result-object v3

    invoke-direct {v11, v13, v14, v8, v3}, Lorg/apache/sanselan/formats/tiff/write/TiffOutputField;-><init>(Lorg/apache/sanselan/formats/tiff/constants/TagInfo;Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldType;I[B)V

    .line 379
    invoke-virtual {v9, v11}, Lorg/apache/sanselan/formats/tiff/write/TiffOutputDirectory;->add(Lorg/apache/sanselan/formats/tiff/write/TiffOutputField;)V

    .line 382
    new-instance v3, Lorg/apache/sanselan/formats/tiff/write/TiffOutputField;

    sget-object v10, Lorg/apache/sanselan/formats/tiff/write/TiffImageWriterBase;->TIFF_TAG_IMAGE_LENGTH:Lorg/apache/sanselan/formats/tiff/constants/TagInfo;

    sget-object v11, Lorg/apache/sanselan/formats/tiff/write/TiffImageWriterBase;->FIELD_TYPE_LONG:Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldTypeLong;

    sget-object v13, Lorg/apache/sanselan/formats/tiff/write/TiffImageWriterBase;->FIELD_TYPE_LONG:Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldTypeLong;

    new-array v14, v8, [I

    aput v4, v14, v12

    iget v4, v0, Lorg/apache/sanselan/formats/tiff/write/TiffImageWriterBase;->byteOrder:I

    invoke-virtual {v13, v14, v4}, Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldTypeLong;->writeData(Ljava/lang/Object;I)[B

    move-result-object v4

    invoke-direct {v3, v10, v11, v8, v4}, Lorg/apache/sanselan/formats/tiff/write/TiffOutputField;-><init>(Lorg/apache/sanselan/formats/tiff/constants/TagInfo;Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldType;I[B)V

    .line 386
    invoke-virtual {v9, v3}, Lorg/apache/sanselan/formats/tiff/write/TiffOutputDirectory;->add(Lorg/apache/sanselan/formats/tiff/write/TiffOutputField;)V

    .line 389
    new-instance v3, Lorg/apache/sanselan/formats/tiff/write/TiffOutputField;

    sget-object v4, Lorg/apache/sanselan/formats/tiff/write/TiffImageWriterBase;->TIFF_TAG_PHOTOMETRIC_INTERPRETATION:Lorg/apache/sanselan/formats/tiff/constants/TagInfo;

    sget-object v10, Lorg/apache/sanselan/formats/tiff/write/TiffImageWriterBase;->FIELD_TYPE_SHORT:Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldTypeShort;

    sget-object v11, Lorg/apache/sanselan/formats/tiff/write/TiffImageWriterBase;->FIELD_TYPE_SHORT:Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldTypeShort;

    new-array v13, v8, [I

    const/4 v14, 0x2

    aput v14, v13, v12

    iget v15, v0, Lorg/apache/sanselan/formats/tiff/write/TiffImageWriterBase;->byteOrder:I

    invoke-virtual {v11, v13, v15}, Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldTypeShort;->writeData(Ljava/lang/Object;I)[B

    move-result-object v11

    invoke-direct {v3, v4, v10, v8, v11}, Lorg/apache/sanselan/formats/tiff/write/TiffOutputField;-><init>(Lorg/apache/sanselan/formats/tiff/constants/TagInfo;Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldType;I[B)V

    .line 394
    invoke-virtual {v9, v3}, Lorg/apache/sanselan/formats/tiff/write/TiffOutputDirectory;->add(Lorg/apache/sanselan/formats/tiff/write/TiffOutputField;)V

    .line 397
    new-instance v3, Lorg/apache/sanselan/formats/tiff/write/TiffOutputField;

    sget-object v4, Lorg/apache/sanselan/formats/tiff/write/TiffImageWriterBase;->TIFF_TAG_COMPRESSION:Lorg/apache/sanselan/formats/tiff/constants/TagInfo;

    sget-object v10, Lorg/apache/sanselan/formats/tiff/write/TiffImageWriterBase;->FIELD_TYPE_SHORT:Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldTypeShort;

    sget-object v11, Lorg/apache/sanselan/formats/tiff/write/TiffImageWriterBase;->FIELD_TYPE_SHORT:Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldTypeShort;

    new-array v13, v8, [I

    aput v5, v13, v12

    iget v5, v0, Lorg/apache/sanselan/formats/tiff/write/TiffImageWriterBase;->byteOrder:I

    invoke-virtual {v11, v13, v5}, Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldTypeShort;->writeData(Ljava/lang/Object;I)[B

    move-result-object v5

    invoke-direct {v3, v4, v10, v8, v5}, Lorg/apache/sanselan/formats/tiff/write/TiffOutputField;-><init>(Lorg/apache/sanselan/formats/tiff/constants/TagInfo;Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldType;I[B)V

    .line 401
    invoke-virtual {v9, v3}, Lorg/apache/sanselan/formats/tiff/write/TiffOutputDirectory;->add(Lorg/apache/sanselan/formats/tiff/write/TiffOutputField;)V

    .line 404
    new-instance v3, Lorg/apache/sanselan/formats/tiff/write/TiffOutputField;

    sget-object v4, Lorg/apache/sanselan/formats/tiff/write/TiffImageWriterBase;->TIFF_TAG_SAMPLES_PER_PIXEL:Lorg/apache/sanselan/formats/tiff/constants/TagInfo;

    sget-object v5, Lorg/apache/sanselan/formats/tiff/write/TiffImageWriterBase;->FIELD_TYPE_SHORT:Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldTypeShort;

    sget-object v10, Lorg/apache/sanselan/formats/tiff/write/TiffImageWriterBase;->FIELD_TYPE_SHORT:Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldTypeShort;

    new-array v11, v8, [I

    const/4 v13, 0x3

    aput v13, v11, v12

    iget v15, v0, Lorg/apache/sanselan/formats/tiff/write/TiffImageWriterBase;->byteOrder:I

    invoke-virtual {v10, v11, v15}, Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldTypeShort;->writeData(Ljava/lang/Object;I)[B

    move-result-object v10

    invoke-direct {v3, v4, v5, v8, v10}, Lorg/apache/sanselan/formats/tiff/write/TiffOutputField;-><init>(Lorg/apache/sanselan/formats/tiff/constants/TagInfo;Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldType;I[B)V

    .line 408
    invoke-virtual {v9, v3}, Lorg/apache/sanselan/formats/tiff/write/TiffOutputDirectory;->add(Lorg/apache/sanselan/formats/tiff/write/TiffOutputField;)V

    .line 411
    new-instance v3, Lorg/apache/sanselan/formats/tiff/write/TiffOutputField;

    sget-object v4, Lorg/apache/sanselan/formats/tiff/write/TiffImageWriterBase;->TIFF_TAG_BITS_PER_SAMPLE:Lorg/apache/sanselan/formats/tiff/constants/TagInfo;

    sget-object v5, Lorg/apache/sanselan/formats/tiff/write/TiffImageWriterBase;->FIELD_TYPE_SHORT:Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldTypeShort;

    sget-object v10, Lorg/apache/sanselan/formats/tiff/write/TiffImageWriterBase;->FIELD_TYPE_SHORT:Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldTypeShort;

    new-array v11, v13, [I

    fill-array-data v11, :array_0

    iget v15, v0, Lorg/apache/sanselan/formats/tiff/write/TiffImageWriterBase;->byteOrder:I

    invoke-virtual {v10, v11, v15}, Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldTypeShort;->writeData(Ljava/lang/Object;I)[B

    move-result-object v10

    invoke-direct {v3, v4, v5, v13, v10}, Lorg/apache/sanselan/formats/tiff/write/TiffOutputField;-><init>(Lorg/apache/sanselan/formats/tiff/constants/TagInfo;Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldType;I[B)V

    .line 415
    invoke-virtual {v9, v3}, Lorg/apache/sanselan/formats/tiff/write/TiffOutputDirectory;->add(Lorg/apache/sanselan/formats/tiff/write/TiffOutputField;)V

    .line 431
    new-instance v3, Lorg/apache/sanselan/formats/tiff/write/TiffOutputField;

    sget-object v4, Lorg/apache/sanselan/formats/tiff/write/TiffImageWriterBase;->TIFF_TAG_ROWS_PER_STRIP:Lorg/apache/sanselan/formats/tiff/constants/TagInfo;

    sget-object v5, Lorg/apache/sanselan/formats/tiff/write/TiffImageWriterBase;->FIELD_TYPE_LONG:Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldTypeLong;

    sget-object v10, Lorg/apache/sanselan/formats/tiff/write/TiffImageWriterBase;->FIELD_TYPE_LONG:Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldTypeLong;

    new-array v11, v8, [I

    aput v7, v11, v12

    iget v13, v0, Lorg/apache/sanselan/formats/tiff/write/TiffImageWriterBase;->byteOrder:I

    invoke-virtual {v10, v11, v13}, Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldTypeLong;->writeData(Ljava/lang/Object;I)[B

    move-result-object v10

    invoke-direct {v3, v4, v5, v8, v10}, Lorg/apache/sanselan/formats/tiff/write/TiffOutputField;-><init>(Lorg/apache/sanselan/formats/tiff/constants/TagInfo;Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldType;I[B)V

    .line 435
    invoke-virtual {v9, v3}, Lorg/apache/sanselan/formats/tiff/write/TiffOutputDirectory;->add(Lorg/apache/sanselan/formats/tiff/write/TiffOutputField;)V

    .line 440
    new-instance v3, Lorg/apache/sanselan/formats/tiff/write/TiffOutputField;

    sget-object v4, Lorg/apache/sanselan/formats/tiff/write/TiffImageWriterBase;->TIFF_TAG_RESOLUTION_UNIT:Lorg/apache/sanselan/formats/tiff/constants/TagInfo;

    sget-object v5, Lorg/apache/sanselan/formats/tiff/write/TiffImageWriterBase;->FIELD_TYPE_SHORT:Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldTypeShort;

    sget-object v10, Lorg/apache/sanselan/formats/tiff/write/TiffImageWriterBase;->FIELD_TYPE_SHORT:Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldTypeShort;

    new-array v11, v8, [I

    aput v14, v11, v12

    iget v12, v0, Lorg/apache/sanselan/formats/tiff/write/TiffImageWriterBase;->byteOrder:I

    invoke-virtual {v10, v11, v12}, Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldTypeShort;->writeData(Ljava/lang/Object;I)[B

    move-result-object v10

    invoke-direct {v3, v4, v5, v8, v10}, Lorg/apache/sanselan/formats/tiff/write/TiffOutputField;-><init>(Lorg/apache/sanselan/formats/tiff/constants/TagInfo;Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldType;I[B)V

    .line 444
    invoke-virtual {v9, v3}, Lorg/apache/sanselan/formats/tiff/write/TiffOutputDirectory;->add(Lorg/apache/sanselan/formats/tiff/write/TiffOutputField;)V

    .line 449
    new-instance v3, Lorg/apache/sanselan/formats/tiff/write/TiffOutputField;

    sget-object v4, Lorg/apache/sanselan/formats/tiff/write/TiffImageWriterBase;->TIFF_TAG_XRESOLUTION:Lorg/apache/sanselan/formats/tiff/constants/TagInfo;

    sget-object v5, Lorg/apache/sanselan/formats/tiff/write/TiffImageWriterBase;->FIELD_TYPE_RATIONAL:Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldTypeRational;

    sget-object v10, Lorg/apache/sanselan/formats/tiff/write/TiffImageWriterBase;->FIELD_TYPE_RATIONAL:Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldTypeRational;

    iget v11, v0, Lorg/apache/sanselan/formats/tiff/write/TiffImageWriterBase;->byteOrder:I

    const/16 v12, 0x48

    invoke-virtual {v10, v12, v8, v11}, Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldTypeRational;->writeData(III)[B

    move-result-object v10

    invoke-direct {v3, v4, v5, v8, v10}, Lorg/apache/sanselan/formats/tiff/write/TiffOutputField;-><init>(Lorg/apache/sanselan/formats/tiff/constants/TagInfo;Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldType;I[B)V

    .line 453
    invoke-virtual {v9, v3}, Lorg/apache/sanselan/formats/tiff/write/TiffOutputDirectory;->add(Lorg/apache/sanselan/formats/tiff/write/TiffOutputField;)V

    .line 458
    new-instance v3, Lorg/apache/sanselan/formats/tiff/write/TiffOutputField;

    sget-object v4, Lorg/apache/sanselan/formats/tiff/write/TiffImageWriterBase;->TIFF_TAG_YRESOLUTION:Lorg/apache/sanselan/formats/tiff/constants/TagInfo;

    sget-object v5, Lorg/apache/sanselan/formats/tiff/write/TiffImageWriterBase;->FIELD_TYPE_RATIONAL:Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldTypeRational;

    sget-object v10, Lorg/apache/sanselan/formats/tiff/write/TiffImageWriterBase;->FIELD_TYPE_RATIONAL:Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldTypeRational;

    iget v11, v0, Lorg/apache/sanselan/formats/tiff/write/TiffImageWriterBase;->byteOrder:I

    invoke-virtual {v10, v12, v8, v11}, Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldTypeRational;->writeData(III)[B

    move-result-object v10

    invoke-direct {v3, v4, v5, v8, v10}, Lorg/apache/sanselan/formats/tiff/write/TiffOutputField;-><init>(Lorg/apache/sanselan/formats/tiff/constants/TagInfo;Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldType;I[B)V

    .line 462
    invoke-virtual {v9, v3}, Lorg/apache/sanselan/formats/tiff/write/TiffOutputDirectory;->add(Lorg/apache/sanselan/formats/tiff/write/TiffOutputField;)V

    if-eqz v2, :cond_9

    const-string v3, "utf-8"

    .line 467
    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    .line 469
    new-instance v3, Lorg/apache/sanselan/formats/tiff/write/TiffOutputField;

    sget-object v4, Lorg/apache/sanselan/formats/tiff/write/TiffImageWriterBase;->TIFF_TAG_XMP:Lorg/apache/sanselan/formats/tiff/constants/TagInfo;

    sget-object v5, Lorg/apache/sanselan/formats/tiff/write/TiffImageWriterBase;->FIELD_TYPE_BYTE:Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldTypeByte;

    array-length v8, v2

    invoke-direct {v3, v4, v5, v8, v2}, Lorg/apache/sanselan/formats/tiff/write/TiffOutputField;-><init>(Lorg/apache/sanselan/formats/tiff/constants/TagInfo;Lorg/apache/sanselan/formats/tiff/fieldtypes/FieldType;I[B)V

    .line 471
    invoke-virtual {v9, v3}, Lorg/apache/sanselan/formats/tiff/write/TiffOutputDirectory;->add(Lorg/apache/sanselan/formats/tiff/write/TiffOutputField;)V

    .line 476
    :cond_9
    new-instance v2, Lorg/apache/sanselan/formats/tiff/TiffImageData$Strips;

    invoke-direct {v2, v1, v7}, Lorg/apache/sanselan/formats/tiff/TiffImageData$Strips;-><init>([Lorg/apache/sanselan/formats/tiff/TiffElement$DataElement;I)V

    .line 478
    invoke-virtual {v9, v2}, Lorg/apache/sanselan/formats/tiff/write/TiffOutputDirectory;->setTiffImageData(Lorg/apache/sanselan/formats/tiff/TiffImageData;)V

    move-object/from16 v1, p2

    .line 480
    invoke-virtual {v0, v1, v6}, Lorg/apache/sanselan/formats/tiff/write/TiffImageWriterBase;->write(Ljava/io/OutputStream;Lorg/apache/sanselan/formats/tiff/write/TiffOutputSet;)V

    return-void

    .line 354
    :cond_a
    new-instance v1, Lorg/apache/sanselan/ImageWriteException;

    const-string v2, "Invalid compression parameter (Only LZW, Packbits and uncompressed supported)."

    invoke-direct {v1, v2}, Lorg/apache/sanselan/ImageWriteException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 322
    :cond_b
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 323
    new-instance v2, Lorg/apache/sanselan/ImageWriteException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Unknown parameter: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lorg/apache/sanselan/ImageWriteException;-><init>(Ljava/lang/String;)V

    throw v2

    :array_0
    .array-data 4
        0x8
        0x8
        0x8
    .end array-data
.end method

.method protected writeImageFileHeader(Lorg/apache/sanselan/common/BinaryOutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/sanselan/ImageWriteException;
        }
    .end annotation

    const/16 v0, 0x8

    .line 540
    invoke-virtual {p0, p1, v0}, Lorg/apache/sanselan/formats/tiff/write/TiffImageWriterBase;->writeImageFileHeader(Lorg/apache/sanselan/common/BinaryOutputStream;I)V

    return-void
.end method

.method protected writeImageFileHeader(Lorg/apache/sanselan/common/BinaryOutputStream;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/sanselan/ImageWriteException;
        }
    .end annotation

    .line 546
    iget v0, p0, Lorg/apache/sanselan/formats/tiff/write/TiffImageWriterBase;->byteOrder:I

    invoke-virtual {p1, v0}, Lorg/apache/sanselan/common/BinaryOutputStream;->write(I)V

    .line 547
    iget v0, p0, Lorg/apache/sanselan/formats/tiff/write/TiffImageWriterBase;->byteOrder:I

    invoke-virtual {p1, v0}, Lorg/apache/sanselan/common/BinaryOutputStream;->write(I)V

    const/16 v0, 0x2a

    .line 549
    invoke-virtual {p1, v0}, Lorg/apache/sanselan/common/BinaryOutputStream;->write2Bytes(I)V

    .line 551
    invoke-virtual {p1, p2}, Lorg/apache/sanselan/common/BinaryOutputStream;->write4Bytes(I)V

    return-void
.end method
