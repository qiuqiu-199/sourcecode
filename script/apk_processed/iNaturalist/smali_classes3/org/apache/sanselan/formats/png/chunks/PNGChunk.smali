.class public Lorg/apache/sanselan/formats/png/chunks/PNGChunk;
.super Lorg/apache/sanselan/common/BinaryFileParser;
.source "PNGChunk.java"


# instance fields
.field public final ancillary:Z

.field public final bytes:[B

.field public final chunkType:I

.field public final crc:I

.field public final isPrivate:Z

.field public final length:I

.field public final propertyBits:[Z

.field public final reserved:Z

.field public final safeToCopy:Z


# direct methods
.method public constructor <init>(III[B)V
    .locals 4

    .line 34
    invoke-direct {p0}, Lorg/apache/sanselan/common/BinaryFileParser;-><init>()V

    .line 35
    iput p1, p0, Lorg/apache/sanselan/formats/png/chunks/PNGChunk;->length:I

    .line 36
    iput p2, p0, Lorg/apache/sanselan/formats/png/chunks/PNGChunk;->chunkType:I

    .line 37
    iput p3, p0, Lorg/apache/sanselan/formats/png/chunks/PNGChunk;->crc:I

    .line 38
    iput-object p4, p0, Lorg/apache/sanselan/formats/png/chunks/PNGChunk;->bytes:[B

    const/4 p1, 0x4

    .line 40
    new-array p3, p1, [Z

    iput-object p3, p0, Lorg/apache/sanselan/formats/png/chunks/PNGChunk;->propertyBits:[Z

    const/4 p3, 0x0

    const/16 p4, 0x18

    const/4 p4, 0x0

    const/16 v0, 0x18

    :goto_0
    const/4 v1, 0x1

    if-ge p4, p1, :cond_1

    shr-int v2, p2, v0

    and-int/lit16 v2, v2, 0xff

    add-int/lit8 v0, v0, -0x8

    .line 47
    iget-object v3, p0, Lorg/apache/sanselan/formats/png/chunks/PNGChunk;->propertyBits:[Z

    and-int/lit8 v2, v2, 0x20

    if-lez v2, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    :goto_1
    aput-boolean v1, v3, p4

    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    .line 50
    :cond_1
    iget-object p1, p0, Lorg/apache/sanselan/formats/png/chunks/PNGChunk;->propertyBits:[Z

    aget-boolean p1, p1, p3

    iput-boolean p1, p0, Lorg/apache/sanselan/formats/png/chunks/PNGChunk;->ancillary:Z

    .line 51
    iget-object p1, p0, Lorg/apache/sanselan/formats/png/chunks/PNGChunk;->propertyBits:[Z

    aget-boolean p1, p1, v1

    iput-boolean p1, p0, Lorg/apache/sanselan/formats/png/chunks/PNGChunk;->isPrivate:Z

    .line 52
    iget-object p1, p0, Lorg/apache/sanselan/formats/png/chunks/PNGChunk;->propertyBits:[Z

    const/4 p2, 0x2

    aget-boolean p1, p1, p2

    iput-boolean p1, p0, Lorg/apache/sanselan/formats/png/chunks/PNGChunk;->reserved:Z

    .line 53
    iget-object p1, p0, Lorg/apache/sanselan/formats/png/chunks/PNGChunk;->propertyBits:[Z

    const/4 p2, 0x3

    aget-boolean p1, p1, p2

    iput-boolean p1, p0, Lorg/apache/sanselan/formats/png/chunks/PNGChunk;->safeToCopy:Z

    return-void
.end method


# virtual methods
.method protected getDataStream()Ljava/io/ByteArrayInputStream;
    .locals 2

    .line 58
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lorg/apache/sanselan/formats/png/chunks/PNGChunk;->bytes:[B

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object v0
.end method
