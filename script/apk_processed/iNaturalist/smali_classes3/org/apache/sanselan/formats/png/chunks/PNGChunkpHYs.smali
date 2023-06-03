.class public Lorg/apache/sanselan/formats/png/chunks/PNGChunkpHYs;
.super Lorg/apache/sanselan/formats/png/chunks/PNGChunk;
.source "PNGChunkpHYs.java"


# instance fields
.field public final PixelsPerUnitXAxis:I

.field public final PixelsPerUnitYAxis:I

.field public final UnitSpecifier:I


# direct methods
.method public constructor <init>(III[B)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 33
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/sanselan/formats/png/chunks/PNGChunk;-><init>(III[B)V

    .line 35
    new-instance p1, Ljava/io/ByteArrayInputStream;

    invoke-direct {p1, p4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const-string p2, "PixelsPerUnitXAxis"

    const-string p3, "Not a Valid Png File: pHYs Corrupt"

    .line 37
    invoke-virtual {p0, p2, p1, p3}, Lorg/apache/sanselan/formats/png/chunks/PNGChunkpHYs;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Lorg/apache/sanselan/formats/png/chunks/PNGChunkpHYs;->PixelsPerUnitXAxis:I

    const-string p2, "PixelsPerUnitYAxis"

    const-string p3, "Not a Valid Png File: pHYs Corrupt"

    .line 39
    invoke-virtual {p0, p2, p1, p3}, Lorg/apache/sanselan/formats/png/chunks/PNGChunkpHYs;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Lorg/apache/sanselan/formats/png/chunks/PNGChunkpHYs;->PixelsPerUnitYAxis:I

    const-string p2, "Unit specifier"

    const-string p3, "Not a Valid Png File: pHYs Corrupt"

    .line 41
    invoke-virtual {p0, p2, p1, p3}, Lorg/apache/sanselan/formats/png/chunks/PNGChunkpHYs;->readByte(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)B

    move-result p1

    iput p1, p0, Lorg/apache/sanselan/formats/png/chunks/PNGChunkpHYs;->UnitSpecifier:I

    return-void
.end method
