.class public Lorg/apache/sanselan/formats/png/PngCrc;
.super Ljava/lang/Object;
.source "PngCrc.java"


# instance fields
.field private final crc_table:[J

.field private crc_table_computed:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x100

    .line 23
    new-array v0, v0, [J

    iput-object v0, p0, Lorg/apache/sanselan/formats/png/PngCrc;->crc_table:[J

    const/4 v0, 0x0

    .line 26
    iput-boolean v0, p0, Lorg/apache/sanselan/formats/png/PngCrc;->crc_table_computed:Z

    return-void
.end method

.method private make_crc_table()V
    .locals 11

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x100

    const/4 v3, 0x1

    if-ge v1, v2, :cond_2

    int-to-long v4, v1

    const/4 v2, 0x0

    :goto_1
    const/16 v6, 0x8

    if-ge v2, v6, :cond_1

    const-wide/16 v6, 0x1

    and-long/2addr v6, v4

    const-wide/16 v8, 0x0

    cmp-long v10, v6, v8

    if-eqz v10, :cond_0

    const-wide v6, 0xedb88320L

    shr-long/2addr v4, v3

    xor-long/2addr v4, v6

    goto :goto_2

    :cond_0
    shr-long/2addr v4, v3

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 45
    :cond_1
    iget-object v2, p0, Lorg/apache/sanselan/formats/png/PngCrc;->crc_table:[J

    aput-wide v4, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 47
    :cond_2
    iput-boolean v3, p0, Lorg/apache/sanselan/formats/png/PngCrc;->crc_table_computed:Z

    return-void
.end method

.method private final update_crc(J[B)J
    .locals 6

    .line 60
    iget-boolean v0, p0, Lorg/apache/sanselan/formats/png/PngCrc;->crc_table_computed:Z

    if-nez v0, :cond_0

    .line 61
    invoke-direct {p0}, Lorg/apache/sanselan/formats/png/PngCrc;->make_crc_table()V

    :cond_0
    const/4 v0, 0x0

    .line 62
    :goto_0
    array-length v1, p3

    if-ge v0, v1, :cond_1

    .line 66
    iget-object v1, p0, Lorg/apache/sanselan/formats/png/PngCrc;->crc_table:[J

    aget-byte v2, p3, v0

    int-to-long v2, v2

    xor-long/2addr v2, p1

    const-wide/16 v4, 0xff

    and-long/2addr v2, v4

    long-to-int v2, v2

    aget-wide v2, v1, v2

    const/16 v1, 0x8

    shr-long/2addr p1, v1

    xor-long/2addr p1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-wide p1
.end method


# virtual methods
.method public final continue_partial_crc(J[BI)J
    .locals 0

    .line 84
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/sanselan/formats/png/PngCrc;->update_crc(J[B)J

    move-result-wide p1

    return-wide p1
.end method

.method public final crc([BI)I
    .locals 2

    const-wide v0, 0xffffffffL

    .line 74
    invoke-direct {p0, v0, v1, p1}, Lorg/apache/sanselan/formats/png/PngCrc;->update_crc(J[B)J

    move-result-wide p1

    xor-long/2addr p1, v0

    long-to-int p1, p1

    return p1
.end method

.method public final finish_partial_crc(J)J
    .locals 2

    const-wide v0, 0xffffffffL

    xor-long/2addr p1, v0

    return-wide p1
.end method

.method public final start_partial_crc([BI)J
    .locals 2

    const-wide v0, 0xffffffffL

    .line 79
    invoke-direct {p0, v0, v1, p1}, Lorg/apache/sanselan/formats/png/PngCrc;->update_crc(J[B)J

    move-result-wide p1

    return-wide p1
.end method
