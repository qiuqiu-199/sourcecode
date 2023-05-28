.class public Lorg/apache/sanselan/formats/jpeg/iptc/IPTCParser;
.super Lorg/apache/sanselan/common/BinaryFileParser;
.source "IPTCParser.java"

# interfaces
.implements Lorg/apache/sanselan/formats/jpeg/iptc/IPTCConstants;


# static fields
.field private static final APP13_BYTE_ORDER:I = 0x4d


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 42
    invoke-direct {p0}, Lorg/apache/sanselan/common/BinaryFileParser;-><init>()V

    const/16 v0, 0x4d

    .line 43
    invoke-virtual {p0, v0}, Lorg/apache/sanselan/formats/jpeg/iptc/IPTCParser;->setByteOrder(I)V

    return-void
.end method


# virtual methods
.method public isPhotoshopJpegSegment([B)Z
    .locals 8

    .line 48
    sget-object v3, Lorg/apache/sanselan/formats/jpeg/iptc/IPTCParser;->PHOTOSHOP_IDENTIFICATION_STRING:[B

    sget-object v0, Lorg/apache/sanselan/formats/jpeg/iptc/IPTCParser;->PHOTOSHOP_IDENTIFICATION_STRING:[B

    array-length v5, v0

    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lorg/apache/sanselan/formats/jpeg/iptc/IPTCParser;->compareByteArrays([BI[BII)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 52
    :cond_0
    sget-object v0, Lorg/apache/sanselan/formats/jpeg/iptc/IPTCParser;->PHOTOSHOP_IDENTIFICATION_STRING:[B

    array-length v4, v0

    .line 53
    sget-object v0, Lorg/apache/sanselan/formats/jpeg/iptc/IPTCParser;->CONST_8BIM:[B

    array-length v0, v0

    add-int/2addr v0, v4

    array-length v2, p1

    if-le v0, v2, :cond_1

    return v1

    .line 56
    :cond_1
    sget-object v5, Lorg/apache/sanselan/formats/jpeg/iptc/IPTCParser;->CONST_8BIM:[B

    const/4 v6, 0x0

    sget-object v0, Lorg/apache/sanselan/formats/jpeg/iptc/IPTCParser;->CONST_8BIM:[B

    array-length v7, v0

    move-object v2, p0

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Lorg/apache/sanselan/formats/jpeg/iptc/IPTCParser;->compareByteArrays([BI[BII)Z

    move-result p1

    if-nez p1, :cond_2

    return v1

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method protected parseAllBlocks([BZZ)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 262
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 264
    new-instance v1, Lorg/apache/sanselan/common/BinaryInputStream;

    const/16 v2, 0x4d

    invoke-direct {v1, p1, v2}, Lorg/apache/sanselan/common/BinaryInputStream;-><init>([BI)V

    .line 269
    sget-object p1, Lorg/apache/sanselan/formats/jpeg/iptc/IPTCParser;->PHOTOSHOP_IDENTIFICATION_STRING:[B

    array-length p1, p1

    const-string v2, "App13 Segment missing identification string"

    invoke-virtual {v1, p1, v2}, Lorg/apache/sanselan/common/BinaryInputStream;->readByteArray(ILjava/lang/String;)[B

    move-result-object p1

    .line 272
    sget-object v2, Lorg/apache/sanselan/formats/jpeg/iptc/IPTCParser;->PHOTOSHOP_IDENTIFICATION_STRING:[B

    invoke-virtual {p0, p1, v2}, Lorg/apache/sanselan/formats/jpeg/iptc/IPTCParser;->compareByteArrays([B[B)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 279
    :cond_0
    :goto_0
    sget-object p1, Lorg/apache/sanselan/formats/jpeg/iptc/IPTCParser;->CONST_8BIM:[B

    array-length p1, p1

    const-string v2, "App13 Segment missing identification string"

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v2, v3, v3}, Lorg/apache/sanselan/common/BinaryInputStream;->readByteArray(ILjava/lang/String;ZZ)[B

    move-result-object p1

    if-nez p1, :cond_1

    goto/16 :goto_2

    .line 285
    :cond_1
    sget-object v2, Lorg/apache/sanselan/formats/jpeg/iptc/IPTCParser;->CONST_8BIM:[B

    invoke-virtual {p0, p1, v2}, Lorg/apache/sanselan/formats/jpeg/iptc/IPTCParser;->compareByteArrays([B[B)Z

    move-result p1

    if-eqz p1, :cond_9

    const-string p1, "Image Resource Block missing type"

    .line 289
    invoke-virtual {v1, p1}, Lorg/apache/sanselan/common/BinaryInputStream;->read2ByteInteger(Ljava/lang/String;)I

    move-result p1

    if-eqz p2, :cond_2

    const-string v2, "blockType"

    .line 292
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v5, " (0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lorg/apache/sanselan/util/Debug;->debug(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    const-string v2, "Image Resource Block missing name length"

    .line 295
    invoke-virtual {v1, v2}, Lorg/apache/sanselan/common/BinaryInputStream;->read1ByteInteger(Ljava/lang/String;)I

    move-result v2

    if-eqz p2, :cond_3

    if-lez v2, :cond_3

    const-string v4, "blockNameLength"

    .line 298
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v6, " (0x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lorg/apache/sanselan/util/Debug;->debug(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    if-nez v2, :cond_4

    const-string v2, "Image Resource Block has invalid name"

    .line 303
    invoke-virtual {v1, v2}, Lorg/apache/sanselan/common/BinaryInputStream;->read1ByteInteger(Ljava/lang/String;)I

    .line 304
    new-array v2, v3, [B

    goto :goto_1

    :cond_4
    const-string v3, "Invalid Image Resource Block name"

    .line 307
    invoke-virtual {v1, v2, v3, p2, p3}, Lorg/apache/sanselan/common/BinaryInputStream;->readByteArray(ILjava/lang/String;ZZ)[B

    move-result-object v3

    if-nez v3, :cond_5

    goto :goto_2

    .line 312
    :cond_5
    rem-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_6

    const-string v2, "Image Resource Block missing padding byte"

    .line 313
    invoke-virtual {v1, v2}, Lorg/apache/sanselan/common/BinaryInputStream;->read1ByteInteger(Ljava/lang/String;)I

    :cond_6
    move-object v2, v3

    :goto_1
    const-string v3, "Image Resource Block missing size"

    .line 317
    invoke-virtual {v1, v3}, Lorg/apache/sanselan/common/BinaryInputStream;->read4ByteInteger(Ljava/lang/String;)I

    move-result v3

    if-eqz p2, :cond_7

    const-string v4, "blockSize"

    .line 320
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v6, " (0x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lorg/apache/sanselan/util/Debug;->debug(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    const-string v4, "Invalid Image Resource Block data"

    .line 323
    invoke-virtual {v1, v3, v4, p2, p3}, Lorg/apache/sanselan/common/BinaryInputStream;->readByteArray(ILjava/lang/String;ZZ)[B

    move-result-object v4

    if-nez v4, :cond_8

    :goto_2
    return-object v0

    .line 328
    :cond_8
    new-instance v5, Lorg/apache/sanselan/formats/jpeg/iptc/IPTCBlock;

    invoke-direct {v5, p1, v2, v4}, Lorg/apache/sanselan/formats/jpeg/iptc/IPTCBlock;-><init>(I[B[B)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 330
    rem-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_0

    const-string p1, "Image Resource Block missing padding byte"

    .line 331
    invoke-virtual {v1, p1}, Lorg/apache/sanselan/common/BinaryInputStream;->read1ByteInteger(Ljava/lang/String;)I

    goto/16 :goto_0

    .line 286
    :cond_9
    new-instance p1, Lorg/apache/sanselan/ImageReadException;

    const-string p2, "Invalid Image Resource Block Signature"

    invoke-direct {p1, p2}, Lorg/apache/sanselan/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 273
    :cond_a
    new-instance p1, Lorg/apache/sanselan/ImageReadException;

    const-string p2, "Not a Photoshop App13 Segment"

    invoke-direct {p1, p2}, Lorg/apache/sanselan/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected parseIPTCBlock([BZ)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 135
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    :cond_0
    :goto_0
    add-int/lit8 v3, v2, 0x1

    .line 139
    array-length v4, p1

    if-ge v3, v4, :cond_b

    .line 141
    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    if-eqz p2, :cond_1

    const-string v4, "tagMarker"

    .line 143
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v6, " (0x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lorg/apache/sanselan/util/Debug;->debug(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const/16 v4, 0x1c

    if-eq v2, v4, :cond_3

    if-eqz p2, :cond_2

    .line 149
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string p2, "Unexpected record tag marker in IPTC data."

    invoke-virtual {p1, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_2
    return-object v0

    :cond_3
    add-int/lit8 v2, v3, 0x1

    .line 154
    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    if-eqz p2, :cond_4

    const-string v4, "recordNumber"

    .line 156
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v6, " (0x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lorg/apache/sanselan/util/Debug;->debug(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    const/4 v4, 0x2

    if-eq v3, v4, :cond_5

    goto :goto_0

    .line 180
    :cond_5
    aget-byte v3, p1, v2

    and-int/lit16 v3, v3, 0xff

    if-eqz p2, :cond_6

    const-string v5, "recordType"

    .line 182
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v7, " (0x"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lorg/apache/sanselan/util/Debug;->debug(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    add-int/lit8 v2, v2, 0x1

    const-string v5, "recordSize"

    .line 186
    invoke-virtual {p0, v5, v2, p1}, Lorg/apache/sanselan/formats/jpeg/iptc/IPTCParser;->convertByteArrayToShort(Ljava/lang/String;I[B)I

    move-result v5

    add-int/2addr v2, v4

    const/16 v4, 0x7fff

    if-le v5, v4, :cond_7

    const/4 v4, 0x1

    goto :goto_1

    :cond_7
    const/4 v4, 0x0

    :goto_1
    and-int/lit16 v6, v5, 0x7fff

    if-eqz v4, :cond_8

    if-eqz p2, :cond_8

    .line 192
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    const-string v8, "extendedDataset. dataFieldCountLength: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/apache/sanselan/util/Debug;->debug(Ljava/lang/String;)V

    :cond_8
    if-eqz v4, :cond_9

    return-object v0

    :cond_9
    const-string v4, "recordData"

    .line 198
    invoke-virtual {p0, v4, p1, v2, v5}, Lorg/apache/sanselan/formats/jpeg/iptc/IPTCParser;->readBytearray(Ljava/lang/String;[BII)[B

    move-result-object v4

    add-int/2addr v2, v5

    if-nez v3, :cond_a

    if-eqz p2, :cond_0

    .line 208
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "ignore record version record! "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 237
    :cond_a
    new-instance v5, Ljava/lang/String;

    const-string v6, "ISO-8859-1"

    invoke-direct {v5, v4, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 239
    invoke-static {v3}, Lorg/apache/sanselan/formats/jpeg/iptc/IPTCTypeLookup;->getIptcType(I)Lorg/apache/sanselan/formats/jpeg/iptc/IPTCType;

    move-result-object v3

    .line 252
    new-instance v4, Lorg/apache/sanselan/formats/jpeg/iptc/IPTCRecord;

    invoke-direct {v4, v3, v5}, Lorg/apache/sanselan/formats/jpeg/iptc/IPTCRecord;-><init>(Lorg/apache/sanselan/formats/jpeg/iptc/IPTCType;Ljava/lang/String;)V

    .line 253
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_b
    return-object v0
.end method

.method public parsePhotoshopSegment([BLjava/util/Map;)Lorg/apache/sanselan/formats/jpeg/iptc/PhotoshopApp13Data;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "STRICT"

    const/4 v1, 0x0

    .line 102
    invoke-static {p2, v0, v1}, Lorg/apache/sanselan/util/ParamMap;->getParamBoolean(Ljava/util/Map;Ljava/lang/Object;Z)Z

    move-result v0

    const-string v2, "VERBOSE"

    .line 104
    invoke-static {p2, v2, v1}, Lorg/apache/sanselan/util/ParamMap;->getParamBoolean(Ljava/util/Map;Ljava/lang/Object;Z)Z

    move-result p2

    .line 107
    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/sanselan/formats/jpeg/iptc/IPTCParser;->parsePhotoshopSegment([BZZ)Lorg/apache/sanselan/formats/jpeg/iptc/PhotoshopApp13Data;

    move-result-object p1

    return-object p1
.end method

.method public parsePhotoshopSegment([BZZ)Lorg/apache/sanselan/formats/jpeg/iptc/PhotoshopApp13Data;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 114
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 116
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/sanselan/formats/jpeg/iptc/IPTCParser;->parseAllBlocks([BZZ)Ljava/util/List;

    move-result-object p1

    const/4 p3, 0x0

    .line 118
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p3, v1, :cond_1

    .line 120
    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/sanselan/formats/jpeg/iptc/IPTCBlock;

    .line 123
    invoke-virtual {v1}, Lorg/apache/sanselan/formats/jpeg/iptc/IPTCBlock;->isIPTCBlock()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 126
    :cond_0
    iget-object v1, v1, Lorg/apache/sanselan/formats/jpeg/iptc/IPTCBlock;->blockData:[B

    invoke-virtual {p0, v1, p2}, Lorg/apache/sanselan/formats/jpeg/iptc/IPTCParser;->parseIPTCBlock([BZ)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :goto_1
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    .line 129
    :cond_1
    new-instance p2, Lorg/apache/sanselan/formats/jpeg/iptc/PhotoshopApp13Data;

    invoke-direct {p2, v0, p1}, Lorg/apache/sanselan/formats/jpeg/iptc/PhotoshopApp13Data;-><init>(Ljava/util/List;Ljava/util/List;)V

    return-object p2
.end method

.method public writeIPTCBlock(Ljava/util/List;)[B
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageWriteException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 386
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 387
    new-instance v1, Lorg/apache/sanselan/common/BinaryOutputStream;

    invoke-virtual {p0}, Lorg/apache/sanselan/formats/jpeg/iptc/IPTCParser;->getByteOrder()I

    move-result v2

    invoke-direct {v1, v0, v2}, Lorg/apache/sanselan/common/BinaryOutputStream;-><init>(Ljava/io/OutputStream;I)V

    const/16 v2, 0x1c

    .line 391
    invoke-virtual {v1, v2}, Lorg/apache/sanselan/common/BinaryOutputStream;->write(I)V

    const/4 v3, 0x2

    .line 392
    invoke-virtual {v1, v3}, Lorg/apache/sanselan/common/BinaryOutputStream;->write(I)V

    .line 393
    sget-object v4, Lorg/apache/sanselan/formats/jpeg/iptc/IPTCParser;->IPTC_TYPE_RECORD_VERSION:Lorg/apache/sanselan/formats/jpeg/iptc/IPTCType;

    iget v4, v4, Lorg/apache/sanselan/formats/jpeg/iptc/IPTCType;->type:I

    invoke-virtual {v1, v4}, Lorg/apache/sanselan/common/BinaryOutputStream;->write(I)V

    .line 395
    invoke-virtual {v1, v3}, Lorg/apache/sanselan/common/BinaryOutputStream;->write2Bytes(I)V

    .line 396
    invoke-virtual {v1, v3}, Lorg/apache/sanselan/common/BinaryOutputStream;->write2Bytes(I)V

    .line 399
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 402
    new-instance p1, Lorg/apache/sanselan/formats/jpeg/iptc/IPTCParser$1;

    invoke-direct {p1, p0}, Lorg/apache/sanselan/formats/jpeg/iptc/IPTCParser$1;-><init>(Lorg/apache/sanselan/formats/jpeg/iptc/IPTCParser;)V

    .line 410
    invoke-static {v4, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const/4 p1, 0x0

    .line 414
    :goto_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-ge p1, v5, :cond_3

    .line 416
    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/sanselan/formats/jpeg/iptc/IPTCRecord;

    .line 418
    iget-object v6, v5, Lorg/apache/sanselan/formats/jpeg/iptc/IPTCRecord;->iptcType:Lorg/apache/sanselan/formats/jpeg/iptc/IPTCType;

    iget v6, v6, Lorg/apache/sanselan/formats/jpeg/iptc/IPTCType;->type:I

    sget-object v7, Lorg/apache/sanselan/formats/jpeg/iptc/IPTCParser;->IPTC_TYPE_RECORD_VERSION:Lorg/apache/sanselan/formats/jpeg/iptc/IPTCType;

    iget v7, v7, Lorg/apache/sanselan/formats/jpeg/iptc/IPTCType;->type:I

    if-ne v6, v7, :cond_0

    goto :goto_1

    .line 421
    :cond_0
    invoke-virtual {v1, v2}, Lorg/apache/sanselan/common/BinaryOutputStream;->write(I)V

    .line 422
    invoke-virtual {v1, v3}, Lorg/apache/sanselan/common/BinaryOutputStream;->write(I)V

    .line 423
    iget-object v6, v5, Lorg/apache/sanselan/formats/jpeg/iptc/IPTCRecord;->iptcType:Lorg/apache/sanselan/formats/jpeg/iptc/IPTCType;

    iget v6, v6, Lorg/apache/sanselan/formats/jpeg/iptc/IPTCType;->type:I

    if-ltz v6, :cond_2

    iget-object v6, v5, Lorg/apache/sanselan/formats/jpeg/iptc/IPTCRecord;->iptcType:Lorg/apache/sanselan/formats/jpeg/iptc/IPTCType;

    iget v6, v6, Lorg/apache/sanselan/formats/jpeg/iptc/IPTCType;->type:I

    const/16 v7, 0xff

    if-gt v6, v7, :cond_2

    .line 426
    iget-object v6, v5, Lorg/apache/sanselan/formats/jpeg/iptc/IPTCRecord;->iptcType:Lorg/apache/sanselan/formats/jpeg/iptc/IPTCType;

    iget v6, v6, Lorg/apache/sanselan/formats/jpeg/iptc/IPTCType;->type:I

    invoke-virtual {v1, v6}, Lorg/apache/sanselan/common/BinaryOutputStream;->write(I)V

    .line 428
    iget-object v6, v5, Lorg/apache/sanselan/formats/jpeg/iptc/IPTCRecord;->value:Ljava/lang/String;

    const-string v7, "ISO-8859-1"

    invoke-virtual {v6, v7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    .line 429
    new-instance v7, Ljava/lang/String;

    const-string v8, "ISO-8859-1"

    invoke-direct {v7, v6, v8}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    iget-object v5, v5, Lorg/apache/sanselan/formats/jpeg/iptc/IPTCRecord;->value:Ljava/lang/String;

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 433
    array-length v5, v6

    invoke-virtual {v1, v5}, Lorg/apache/sanselan/common/BinaryOutputStream;->write2Bytes(I)V

    .line 434
    invoke-virtual {v1, v6}, Lorg/apache/sanselan/common/BinaryOutputStream;->write([B)V

    :goto_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 430
    :cond_1
    new-instance p1, Lorg/apache/sanselan/ImageWriteException;

    const-string v0, "Invalid record value, not ISO-8859-1"

    invoke-direct {p1, v0}, Lorg/apache/sanselan/ImageWriteException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 424
    :cond_2
    new-instance p1, Lorg/apache/sanselan/ImageWriteException;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "Invalid record type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, v5, Lorg/apache/sanselan/formats/jpeg/iptc/IPTCRecord;->iptcType:Lorg/apache/sanselan/formats/jpeg/iptc/IPTCType;

    iget v1, v1, Lorg/apache/sanselan/formats/jpeg/iptc/IPTCType;->type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/apache/sanselan/ImageWriteException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 437
    :cond_3
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    return-object p1
.end method

.method public writePhotoshopApp13Segment(Lorg/apache/sanselan/formats/jpeg/iptc/PhotoshopApp13Data;)[B
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/sanselan/ImageWriteException;
        }
    .end annotation

    .line 343
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 344
    new-instance v1, Lorg/apache/sanselan/common/BinaryOutputStream;

    invoke-direct {v1, v0}, Lorg/apache/sanselan/common/BinaryOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 346
    sget-object v2, Lorg/apache/sanselan/formats/jpeg/iptc/IPTCParser;->PHOTOSHOP_IDENTIFICATION_STRING:[B

    invoke-virtual {v1, v2}, Lorg/apache/sanselan/common/BinaryOutputStream;->write([B)V

    .line 348
    invoke-virtual {p1}, Lorg/apache/sanselan/formats/jpeg/iptc/PhotoshopApp13Data;->getRawBlocks()Ljava/util/List;

    move-result-object p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 349
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_5

    .line 351
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/sanselan/formats/jpeg/iptc/IPTCBlock;

    .line 353
    sget-object v5, Lorg/apache/sanselan/formats/jpeg/iptc/IPTCParser;->CONST_8BIM:[B

    invoke-virtual {v1, v5}, Lorg/apache/sanselan/common/BinaryOutputStream;->write([B)V

    .line 355
    iget v5, v4, Lorg/apache/sanselan/formats/jpeg/iptc/IPTCBlock;->blockType:I

    if-ltz v5, :cond_4

    iget v5, v4, Lorg/apache/sanselan/formats/jpeg/iptc/IPTCBlock;->blockType:I

    const v6, 0xffff

    if-gt v5, v6, :cond_4

    .line 357
    iget v5, v4, Lorg/apache/sanselan/formats/jpeg/iptc/IPTCBlock;->blockType:I

    invoke-virtual {v1, v5}, Lorg/apache/sanselan/common/BinaryOutputStream;->write2ByteInteger(I)V

    .line 359
    iget-object v5, v4, Lorg/apache/sanselan/formats/jpeg/iptc/IPTCBlock;->blockNameBytes:[B

    array-length v5, v5

    const/16 v6, 0xff

    if-gt v5, v6, :cond_3

    .line 362
    iget-object v5, v4, Lorg/apache/sanselan/formats/jpeg/iptc/IPTCBlock;->blockNameBytes:[B

    array-length v5, v5

    invoke-virtual {v1, v5}, Lorg/apache/sanselan/common/BinaryOutputStream;->write(I)V

    .line 363
    iget-object v5, v4, Lorg/apache/sanselan/formats/jpeg/iptc/IPTCBlock;->blockNameBytes:[B

    invoke-virtual {v1, v5}, Lorg/apache/sanselan/common/BinaryOutputStream;->write([B)V

    .line 364
    iget-object v5, v4, Lorg/apache/sanselan/formats/jpeg/iptc/IPTCBlock;->blockNameBytes:[B

    array-length v5, v5

    rem-int/lit8 v5, v5, 0x2

    if-nez v5, :cond_0

    .line 365
    invoke-virtual {v1, v2}, Lorg/apache/sanselan/common/BinaryOutputStream;->write(I)V

    .line 367
    :cond_0
    iget-object v5, v4, Lorg/apache/sanselan/formats/jpeg/iptc/IPTCBlock;->blockData:[B

    array-length v5, v5

    const/16 v6, 0x7fff

    if-gt v5, v6, :cond_2

    .line 370
    iget-object v5, v4, Lorg/apache/sanselan/formats/jpeg/iptc/IPTCBlock;->blockData:[B

    array-length v5, v5

    invoke-virtual {v1, v5}, Lorg/apache/sanselan/common/BinaryOutputStream;->write4ByteInteger(I)V

    .line 371
    iget-object v5, v4, Lorg/apache/sanselan/formats/jpeg/iptc/IPTCBlock;->blockData:[B

    invoke-virtual {v1, v5}, Lorg/apache/sanselan/common/BinaryOutputStream;->write([B)V

    .line 372
    iget-object v4, v4, Lorg/apache/sanselan/formats/jpeg/iptc/IPTCBlock;->blockData:[B

    array-length v4, v4

    rem-int/lit8 v4, v4, 0x2

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    .line 373
    invoke-virtual {v1, v2}, Lorg/apache/sanselan/common/BinaryOutputStream;->write(I)V

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 368
    :cond_2
    new-instance p1, Lorg/apache/sanselan/ImageWriteException;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "IPTC block data is too long: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, v4, Lorg/apache/sanselan/formats/jpeg/iptc/IPTCBlock;->blockData:[B

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/apache/sanselan/ImageWriteException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 360
    :cond_3
    new-instance p1, Lorg/apache/sanselan/ImageWriteException;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "IPTC block name is too long: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, v4, Lorg/apache/sanselan/formats/jpeg/iptc/IPTCBlock;->blockNameBytes:[B

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/apache/sanselan/ImageWriteException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 356
    :cond_4
    new-instance p1, Lorg/apache/sanselan/ImageWriteException;

    const-string v0, "Invalid IPTC block type."

    invoke-direct {p1, v0}, Lorg/apache/sanselan/ImageWriteException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 377
    :cond_5
    invoke-virtual {v1}, Lorg/apache/sanselan/common/BinaryOutputStream;->flush()V

    .line 378
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    return-object p1
.end method
