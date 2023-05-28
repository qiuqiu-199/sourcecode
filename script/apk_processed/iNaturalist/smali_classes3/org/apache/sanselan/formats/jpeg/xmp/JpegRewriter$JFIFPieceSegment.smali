.class public Lorg/apache/sanselan/formats/jpeg/xmp/JpegRewriter$JFIFPieceSegment;
.super Lorg/apache/sanselan/formats/jpeg/xmp/JpegRewriter$JFIFPiece;
.source "JpegRewriter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/sanselan/formats/jpeg/xmp/JpegRewriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "JFIFPieceSegment"
.end annotation


# instance fields
.field public final marker:I

.field public final markerBytes:[B

.field public final segmentData:[B

.field public final segmentLengthBytes:[B


# direct methods
.method public constructor <init>(I[B)V
    .locals 3

    const/16 v0, 0x4d

    .line 85
    invoke-static {p1, v0}, Lorg/apache/sanselan/formats/jpeg/xmp/JpegRewriter;->access$000(II)[B

    move-result-object v1

    array-length v2, p2

    add-int/lit8 v2, v2, 0x2

    invoke-static {v2, v0}, Lorg/apache/sanselan/formats/jpeg/xmp/JpegRewriter;->access$100(II)[B

    move-result-object v0

    invoke-direct {p0, p1, v1, v0, p2}, Lorg/apache/sanselan/formats/jpeg/xmp/JpegRewriter$JFIFPieceSegment;-><init>(I[B[B[B)V

    return-void
.end method

.method public constructor <init>(I[B[B[B)V
    .locals 0

    .line 92
    invoke-direct {p0}, Lorg/apache/sanselan/formats/jpeg/xmp/JpegRewriter$JFIFPiece;-><init>()V

    .line 93
    iput p1, p0, Lorg/apache/sanselan/formats/jpeg/xmp/JpegRewriter$JFIFPieceSegment;->marker:I

    .line 94
    iput-object p2, p0, Lorg/apache/sanselan/formats/jpeg/xmp/JpegRewriter$JFIFPieceSegment;->markerBytes:[B

    .line 95
    iput-object p3, p0, Lorg/apache/sanselan/formats/jpeg/xmp/JpegRewriter$JFIFPieceSegment;->segmentLengthBytes:[B

    .line 96
    iput-object p4, p0, Lorg/apache/sanselan/formats/jpeg/xmp/JpegRewriter$JFIFPieceSegment;->segmentData:[B

    return-void
.end method


# virtual methods
.method public isApp1Segment()Z
    .locals 2

    .line 113
    iget v0, p0, Lorg/apache/sanselan/formats/jpeg/xmp/JpegRewriter$JFIFPieceSegment;->marker:I

    const v1, 0xffe1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isAppSegment()Z
    .locals 2

    .line 118
    iget v0, p0, Lorg/apache/sanselan/formats/jpeg/xmp/JpegRewriter$JFIFPieceSegment;->marker:I

    const v1, 0xffe0

    if-lt v0, v1, :cond_0

    iget v0, p0, Lorg/apache/sanselan/formats/jpeg/xmp/JpegRewriter$JFIFPieceSegment;->marker:I

    const v1, 0xffef

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isExifSegment()Z
    .locals 3

    .line 123
    iget v0, p0, Lorg/apache/sanselan/formats/jpeg/xmp/JpegRewriter$JFIFPieceSegment;->marker:I

    const/4 v1, 0x0

    const v2, 0xffe1

    if-eq v0, v2, :cond_0

    return v1

    .line 125
    :cond_0
    iget-object v0, p0, Lorg/apache/sanselan/formats/jpeg/xmp/JpegRewriter$JFIFPieceSegment;->segmentData:[B

    sget-object v2, Lorg/apache/sanselan/formats/jpeg/JpegConstants;->EXIF_IDENTIFIER_CODE:[B

    invoke-static {v0, v2}, Lorg/apache/sanselan/common/BinaryFileParser;->byteArrayHasPrefix([B[B)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public isPhotoshopApp13Segment()Z
    .locals 3

    .line 132
    iget v0, p0, Lorg/apache/sanselan/formats/jpeg/xmp/JpegRewriter$JFIFPieceSegment;->marker:I

    const/4 v1, 0x0

    const v2, 0xffed

    if-eq v0, v2, :cond_0

    return v1

    .line 134
    :cond_0
    new-instance v0, Lorg/apache/sanselan/formats/jpeg/iptc/IPTCParser;

    invoke-direct {v0}, Lorg/apache/sanselan/formats/jpeg/iptc/IPTCParser;-><init>()V

    iget-object v2, p0, Lorg/apache/sanselan/formats/jpeg/xmp/JpegRewriter$JFIFPieceSegment;->segmentData:[B

    invoke-virtual {v0, v2}, Lorg/apache/sanselan/formats/jpeg/iptc/IPTCParser;->isPhotoshopJpegSegment([B)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public isXmpSegment()Z
    .locals 3

    .line 141
    iget v0, p0, Lorg/apache/sanselan/formats/jpeg/xmp/JpegRewriter$JFIFPieceSegment;->marker:I

    const/4 v1, 0x0

    const v2, 0xffe1

    if-eq v0, v2, :cond_0

    return v1

    .line 143
    :cond_0
    iget-object v0, p0, Lorg/apache/sanselan/formats/jpeg/xmp/JpegRewriter$JFIFPieceSegment;->segmentData:[B

    sget-object v2, Lorg/apache/sanselan/formats/jpeg/JpegConstants;->XMP_IDENTIFIER:[B

    invoke-static {v0, v2}, Lorg/apache/sanselan/common/BinaryFileParser;->byteArrayHasPrefix([B[B)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 101
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, " (0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Lorg/apache/sanselan/formats/jpeg/xmp/JpegRewriter$JFIFPieceSegment;->marker:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, ")]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected write(Ljava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 106
    iget-object v0, p0, Lorg/apache/sanselan/formats/jpeg/xmp/JpegRewriter$JFIFPieceSegment;->markerBytes:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 107
    iget-object v0, p0, Lorg/apache/sanselan/formats/jpeg/xmp/JpegRewriter$JFIFPieceSegment;->segmentLengthBytes:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 108
    iget-object v0, p0, Lorg/apache/sanselan/formats/jpeg/xmp/JpegRewriter$JFIFPieceSegment;->segmentData:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method
