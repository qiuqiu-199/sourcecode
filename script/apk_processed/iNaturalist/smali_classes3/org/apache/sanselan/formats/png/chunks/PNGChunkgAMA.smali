.class public Lorg/apache/sanselan/formats/png/chunks/PNGChunkgAMA;
.super Lorg/apache/sanselan/formats/png/chunks/PNGChunk;
.source "PNGChunkgAMA.java"


# instance fields
.field public final Gamma:I


# direct methods
.method public constructor <init>(III[B)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 31
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/sanselan/formats/png/chunks/PNGChunk;-><init>(III[B)V

    .line 33
    new-instance p1, Ljava/io/ByteArrayInputStream;

    invoke-direct {p1, p4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const-string p2, "Gamma"

    const-string p3, "Not a Valid Png File: gAMA Corrupt"

    .line 34
    invoke-virtual {p0, p2, p1, p3}, Lorg/apache/sanselan/formats/png/chunks/PNGChunkgAMA;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lorg/apache/sanselan/formats/png/chunks/PNGChunkgAMA;->Gamma:I

    return-void
.end method


# virtual methods
.method public getGamma()D
    .locals 4

    .line 39
    iget v0, p0, Lorg/apache/sanselan/formats/png/chunks/PNGChunkgAMA;->Gamma:I

    int-to-double v0, v0

    const-wide v2, 0x40f86a0000000000L    # 100000.0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v0, v2

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    div-double/2addr v2, v0

    return-wide v2
.end method
