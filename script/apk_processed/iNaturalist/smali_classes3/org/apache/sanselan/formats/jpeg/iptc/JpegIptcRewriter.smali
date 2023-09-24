.class public Lorg/apache/sanselan/formats/jpeg/iptc/JpegIptcRewriter;
.super Lorg/apache/sanselan/formats/jpeg/xmp/JpegRewriter;
.source "JpegIptcRewriter.java"

# interfaces
.implements Lorg/apache/sanselan/formats/jpeg/iptc/IPTCConstants;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Lorg/apache/sanselan/formats/jpeg/xmp/JpegRewriter;-><init>()V

    return-void
.end method


# virtual methods
.method public removeIPTC(Ljava/io/File;Ljava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;,
            Lorg/apache/sanselan/ImageWriteException;
        }
    .end annotation

    .line 65
    new-instance v0, Lorg/apache/sanselan/common/byteSources/ByteSourceFile;

    invoke-direct {v0, p1}, Lorg/apache/sanselan/common/byteSources/ByteSourceFile;-><init>(Ljava/io/File;)V

    .line 66
    invoke-virtual {p0, v0, p2}, Lorg/apache/sanselan/formats/jpeg/iptc/JpegIptcRewriter;->removeIPTC(Lorg/apache/sanselan/common/byteSources/ByteSource;Ljava/io/OutputStream;)V

    return-void
.end method

.method public removeIPTC(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;,
            Lorg/apache/sanselan/ImageWriteException;
        }
    .end annotation

    .line 101
    new-instance v0, Lorg/apache/sanselan/common/byteSources/ByteSourceInputStream;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lorg/apache/sanselan/common/byteSources/ByteSourceInputStream;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 102
    invoke-virtual {p0, v0, p2}, Lorg/apache/sanselan/formats/jpeg/iptc/JpegIptcRewriter;->removeIPTC(Lorg/apache/sanselan/common/byteSources/ByteSource;Ljava/io/OutputStream;)V

    return-void
.end method

.method public removeIPTC(Lorg/apache/sanselan/common/byteSources/ByteSource;Ljava/io/OutputStream;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;,
            Lorg/apache/sanselan/ImageWriteException;
        }
    .end annotation

    .line 119
    invoke-virtual {p0, p1}, Lorg/apache/sanselan/formats/jpeg/iptc/JpegIptcRewriter;->analyzeJFIF(Lorg/apache/sanselan/common/byteSources/ByteSource;)Lorg/apache/sanselan/formats/jpeg/xmp/JpegRewriter$JFIFPieces;

    move-result-object p1

    .line 120
    iget-object p1, p1, Lorg/apache/sanselan/formats/jpeg/xmp/JpegRewriter$JFIFPieces;->pieces:Ljava/util/List;

    .line 121
    invoke-virtual {p0, p1}, Lorg/apache/sanselan/formats/jpeg/iptc/JpegIptcRewriter;->findPhotoshopApp13Segments(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 123
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-gt v1, v2, :cond_1

    .line 126
    invoke-virtual {p0, p1}, Lorg/apache/sanselan/formats/jpeg/iptc/JpegIptcRewriter;->removePhotoshopApp13Segments(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 127
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ne v3, v2, :cond_0

    const/4 v2, 0x0

    .line 129
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/sanselan/formats/jpeg/xmp/JpegRewriter$JFIFPieceSegment;

    .line 131
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 132
    new-instance v3, Lorg/apache/sanselan/formats/jpeg/iptc/IPTCParser;

    invoke-direct {v3}, Lorg/apache/sanselan/formats/jpeg/iptc/IPTCParser;-><init>()V

    iget-object v4, v0, Lorg/apache/sanselan/formats/jpeg/xmp/JpegRewriter$JFIFPieceSegment;->segmentData:[B

    invoke-virtual {v3, v4, v2}, Lorg/apache/sanselan/formats/jpeg/iptc/IPTCParser;->parsePhotoshopSegment([BLjava/util/Map;)Lorg/apache/sanselan/formats/jpeg/iptc/PhotoshopApp13Data;

    move-result-object v2

    .line 134
    invoke-virtual {v2}, Lorg/apache/sanselan/formats/jpeg/iptc/PhotoshopApp13Data;->getNonIptcBlocks()Ljava/util/List;

    move-result-object v2

    .line 135
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 136
    new-instance v4, Lorg/apache/sanselan/formats/jpeg/iptc/PhotoshopApp13Data;

    invoke-direct {v4, v3, v2}, Lorg/apache/sanselan/formats/jpeg/iptc/PhotoshopApp13Data;-><init>(Ljava/util/List;Ljava/util/List;)V

    .line 138
    new-instance v2, Lorg/apache/sanselan/formats/jpeg/iptc/IPTCParser;

    invoke-direct {v2}, Lorg/apache/sanselan/formats/jpeg/iptc/IPTCParser;-><init>()V

    invoke-virtual {v2, v4}, Lorg/apache/sanselan/formats/jpeg/iptc/IPTCParser;->writePhotoshopApp13Segment(Lorg/apache/sanselan/formats/jpeg/iptc/PhotoshopApp13Data;)[B

    move-result-object v2

    .line 140
    new-instance v3, Lorg/apache/sanselan/formats/jpeg/xmp/JpegRewriter$JFIFPieceSegment;

    iget v4, v0, Lorg/apache/sanselan/formats/jpeg/xmp/JpegRewriter$JFIFPieceSegment;->marker:I

    invoke-direct {v3, v4, v2}, Lorg/apache/sanselan/formats/jpeg/xmp/JpegRewriter$JFIFPieceSegment;-><init>(I[B)V

    .line 142
    invoke-interface {p1, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    invoke-interface {v1, p1, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 144
    :cond_0
    invoke-virtual {p0, p2, v1}, Lorg/apache/sanselan/formats/jpeg/iptc/JpegIptcRewriter;->writeSegments(Ljava/io/OutputStream;Ljava/util/List;)V

    return-void

    .line 124
    :cond_1
    new-instance p1, Lorg/apache/sanselan/ImageReadException;

    const-string p2, "Image contains more than one Photoshop App13 segment."

    invoke-direct {p1, p2}, Lorg/apache/sanselan/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public removeIPTC([BLjava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;,
            Lorg/apache/sanselan/ImageWriteException;
        }
    .end annotation

    .line 83
    new-instance v0, Lorg/apache/sanselan/common/byteSources/ByteSourceArray;

    invoke-direct {v0, p1}, Lorg/apache/sanselan/common/byteSources/ByteSourceArray;-><init>([B)V

    .line 84
    invoke-virtual {p0, v0, p2}, Lorg/apache/sanselan/formats/jpeg/iptc/JpegIptcRewriter;->removeIPTC(Lorg/apache/sanselan/common/byteSources/ByteSource;Ljava/io/OutputStream;)V

    return-void
.end method

.method public writeIPTC(Ljava/io/File;Ljava/io/OutputStream;Lorg/apache/sanselan/formats/jpeg/iptc/PhotoshopApp13Data;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;,
            Lorg/apache/sanselan/ImageWriteException;
        }
    .end annotation

    .line 202
    new-instance v0, Lorg/apache/sanselan/common/byteSources/ByteSourceFile;

    invoke-direct {v0, p1}, Lorg/apache/sanselan/common/byteSources/ByteSourceFile;-><init>(Ljava/io/File;)V

    .line 203
    invoke-virtual {p0, v0, p2, p3}, Lorg/apache/sanselan/formats/jpeg/iptc/JpegIptcRewriter;->writeIPTC(Lorg/apache/sanselan/common/byteSources/ByteSource;Ljava/io/OutputStream;Lorg/apache/sanselan/formats/jpeg/iptc/PhotoshopApp13Data;)V

    return-void
.end method

.method public writeIPTC(Ljava/io/InputStream;Ljava/io/OutputStream;Lorg/apache/sanselan/formats/jpeg/iptc/PhotoshopApp13Data;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;,
            Lorg/apache/sanselan/ImageWriteException;
        }
    .end annotation

    .line 183
    new-instance v0, Lorg/apache/sanselan/common/byteSources/ByteSourceInputStream;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lorg/apache/sanselan/common/byteSources/ByteSourceInputStream;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 184
    invoke-virtual {p0, v0, p2, p3}, Lorg/apache/sanselan/formats/jpeg/iptc/JpegIptcRewriter;->writeIPTC(Lorg/apache/sanselan/common/byteSources/ByteSource;Ljava/io/OutputStream;Lorg/apache/sanselan/formats/jpeg/iptc/PhotoshopApp13Data;)V

    return-void
.end method

.method public writeIPTC(Lorg/apache/sanselan/common/byteSources/ByteSource;Ljava/io/OutputStream;Lorg/apache/sanselan/formats/jpeg/iptc/PhotoshopApp13Data;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;,
            Lorg/apache/sanselan/ImageWriteException;
        }
    .end annotation

    .line 222
    invoke-virtual {p0, p1}, Lorg/apache/sanselan/formats/jpeg/iptc/JpegIptcRewriter;->analyzeJFIF(Lorg/apache/sanselan/common/byteSources/ByteSource;)Lorg/apache/sanselan/formats/jpeg/xmp/JpegRewriter$JFIFPieces;

    move-result-object p1

    .line 223
    iget-object p1, p1, Lorg/apache/sanselan/formats/jpeg/xmp/JpegRewriter$JFIFPieces;->pieces:Ljava/util/List;

    .line 224
    invoke-virtual {p0, p1}, Lorg/apache/sanselan/formats/jpeg/iptc/JpegIptcRewriter;->findPhotoshopApp13Segments(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 226
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    .line 229
    invoke-virtual {p0, p1}, Lorg/apache/sanselan/formats/jpeg/iptc/JpegIptcRewriter;->removePhotoshopApp13Segments(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 233
    invoke-virtual {p3}, Lorg/apache/sanselan/formats/jpeg/iptc/PhotoshopApp13Data;->getNonIptcBlocks()Ljava/util/List;

    move-result-object v0

    .line 234
    new-instance v2, Lorg/apache/sanselan/formats/jpeg/iptc/IPTCParser;

    invoke-direct {v2}, Lorg/apache/sanselan/formats/jpeg/iptc/IPTCParser;-><init>()V

    invoke-virtual {p3}, Lorg/apache/sanselan/formats/jpeg/iptc/PhotoshopApp13Data;->getRecords()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/sanselan/formats/jpeg/iptc/IPTCParser;->writeIPTCBlock(Ljava/util/List;)[B

    move-result-object v2

    const/16 v3, 0x404

    const/4 v4, 0x0

    .line 238
    new-array v5, v4, [B

    .line 239
    new-instance v6, Lorg/apache/sanselan/formats/jpeg/iptc/IPTCBlock;

    invoke-direct {v6, v3, v5, v2}, Lorg/apache/sanselan/formats/jpeg/iptc/IPTCBlock;-><init>(I[B[B)V

    .line 241
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 243
    new-instance v2, Lorg/apache/sanselan/formats/jpeg/iptc/PhotoshopApp13Data;

    invoke-virtual {p3}, Lorg/apache/sanselan/formats/jpeg/iptc/PhotoshopApp13Data;->getRecords()Ljava/util/List;

    move-result-object p3

    invoke-direct {v2, p3, v0}, Lorg/apache/sanselan/formats/jpeg/iptc/PhotoshopApp13Data;-><init>(Ljava/util/List;Ljava/util/List;)V

    .line 245
    new-instance p3, Lorg/apache/sanselan/formats/jpeg/iptc/IPTCParser;

    invoke-direct {p3}, Lorg/apache/sanselan/formats/jpeg/iptc/IPTCParser;-><init>()V

    invoke-virtual {p3, v2}, Lorg/apache/sanselan/formats/jpeg/iptc/IPTCParser;->writePhotoshopApp13Segment(Lorg/apache/sanselan/formats/jpeg/iptc/PhotoshopApp13Data;)[B

    move-result-object p3

    .line 247
    new-instance v0, Lorg/apache/sanselan/formats/jpeg/xmp/JpegRewriter$JFIFPieceSegment;

    const v2, 0xffed

    invoke-direct {v0, v2, p3}, Lorg/apache/sanselan/formats/jpeg/xmp/JpegRewriter$JFIFPieceSegment;-><init>(I[B)V

    .line 250
    new-array p3, v1, [Lorg/apache/sanselan/formats/jpeg/xmp/JpegRewriter$JFIFPieceSegment;

    aput-object v0, p3, v4

    invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p3

    invoke-virtual {p0, p1, p3}, Lorg/apache/sanselan/formats/jpeg/iptc/JpegIptcRewriter;->insertAfterLastAppSegments(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 254
    invoke-virtual {p0, p2, p1}, Lorg/apache/sanselan/formats/jpeg/iptc/JpegIptcRewriter;->writeSegments(Ljava/io/OutputStream;Ljava/util/List;)V

    return-void

    .line 227
    :cond_0
    new-instance p1, Lorg/apache/sanselan/ImageReadException;

    const-string p2, "Image contains more than one Photoshop App13 segment."

    invoke-direct {p1, p2}, Lorg/apache/sanselan/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public writeIPTC([BLjava/io/OutputStream;Lorg/apache/sanselan/formats/jpeg/iptc/PhotoshopApp13Data;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;,
            Lorg/apache/sanselan/ImageWriteException;
        }
    .end annotation

    .line 163
    new-instance v0, Lorg/apache/sanselan/common/byteSources/ByteSourceArray;

    invoke-direct {v0, p1}, Lorg/apache/sanselan/common/byteSources/ByteSourceArray;-><init>([B)V

    .line 164
    invoke-virtual {p0, v0, p2, p3}, Lorg/apache/sanselan/formats/jpeg/iptc/JpegIptcRewriter;->writeIPTC(Lorg/apache/sanselan/common/byteSources/ByteSource;Ljava/io/OutputStream;Lorg/apache/sanselan/formats/jpeg/iptc/PhotoshopApp13Data;)V

    return-void
.end method
