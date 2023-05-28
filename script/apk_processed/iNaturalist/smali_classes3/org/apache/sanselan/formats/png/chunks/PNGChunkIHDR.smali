.class public Lorg/apache/sanselan/formats/png/chunks/PNGChunkIHDR;
.super Lorg/apache/sanselan/formats/png/chunks/PNGChunk;
.source "PNGChunkIHDR.java"


# instance fields
.field public final bitDepth:I

.field public final colorType:I

.field public final compressionMethod:I

.field public final filterMethod:I

.field public final height:I

.field public final interlaceMethod:I

.field public final width:I


# direct methods
.method public constructor <init>(III[B)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 37
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/sanselan/formats/png/chunks/PNGChunk;-><init>(III[B)V

    .line 39
    new-instance p1, Ljava/io/ByteArrayInputStream;

    invoke-direct {p1, p4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const-string p2, "Width"

    const-string p3, "Not a Valid Png File: IHDR Corrupt"

    .line 40
    invoke-virtual {p0, p2, p1, p3}, Lorg/apache/sanselan/formats/png/chunks/PNGChunkIHDR;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Lorg/apache/sanselan/formats/png/chunks/PNGChunkIHDR;->width:I

    const-string p2, "Height"

    const-string p3, "Not a Valid Png File: IHDR Corrupt"

    .line 41
    invoke-virtual {p0, p2, p1, p3}, Lorg/apache/sanselan/formats/png/chunks/PNGChunkIHDR;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Lorg/apache/sanselan/formats/png/chunks/PNGChunkIHDR;->height:I

    const-string p2, "BitDepth"

    const-string p3, "Not a Valid Png File: IHDR Corrupt"

    .line 42
    invoke-virtual {p0, p2, p1, p3}, Lorg/apache/sanselan/formats/png/chunks/PNGChunkIHDR;->readByte(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)B

    move-result p2

    iput p2, p0, Lorg/apache/sanselan/formats/png/chunks/PNGChunkIHDR;->bitDepth:I

    const-string p2, "ColorType"

    const-string p3, "Not a Valid Png File: IHDR Corrupt"

    .line 44
    invoke-virtual {p0, p2, p1, p3}, Lorg/apache/sanselan/formats/png/chunks/PNGChunkIHDR;->readByte(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)B

    move-result p2

    iput p2, p0, Lorg/apache/sanselan/formats/png/chunks/PNGChunkIHDR;->colorType:I

    const-string p2, "CompressionMethod"

    const-string p3, "Not a Valid Png File: IHDR Corrupt"

    .line 46
    invoke-virtual {p0, p2, p1, p3}, Lorg/apache/sanselan/formats/png/chunks/PNGChunkIHDR;->readByte(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)B

    move-result p2

    iput p2, p0, Lorg/apache/sanselan/formats/png/chunks/PNGChunkIHDR;->compressionMethod:I

    const-string p2, "FilterMethod"

    const-string p3, "Not a Valid Png File: IHDR Corrupt"

    .line 48
    invoke-virtual {p0, p2, p1, p3}, Lorg/apache/sanselan/formats/png/chunks/PNGChunkIHDR;->readByte(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)B

    move-result p2

    iput p2, p0, Lorg/apache/sanselan/formats/png/chunks/PNGChunkIHDR;->filterMethod:I

    const-string p2, "InterlaceMethod"

    const-string p3, "Not a Valid Png File: IHDR Corrupt"

    .line 50
    invoke-virtual {p0, p2, p1, p3}, Lorg/apache/sanselan/formats/png/chunks/PNGChunkIHDR;->readByte(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)B

    move-result p1

    iput p1, p0, Lorg/apache/sanselan/formats/png/chunks/PNGChunkIHDR;->interlaceMethod:I

    return-void
.end method
