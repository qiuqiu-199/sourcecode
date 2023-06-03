.class Lorg/apache/sanselan/formats/gif/GenericGIFBlock;
.super Lorg/apache/sanselan/formats/gif/GIFBlock;
.source "GenericGIFBlock.java"


# instance fields
.field public final subblocks:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(ILjava/util/ArrayList;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Lorg/apache/sanselan/formats/gif/GIFBlock;-><init>(I)V

    .line 31
    iput-object p2, p0, Lorg/apache/sanselan/formats/gif/GenericGIFBlock;->subblocks:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public appendSubBlocks()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 37
    invoke-virtual {p0, v0}, Lorg/apache/sanselan/formats/gif/GenericGIFBlock;->appendSubBlocks(Z)[B

    move-result-object v0

    return-object v0
.end method

.method public appendSubBlocks(Z)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 42
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/4 v1, 0x0

    .line 44
    :goto_0
    iget-object v2, p0, Lorg/apache/sanselan/formats/gif/GenericGIFBlock;->subblocks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 46
    iget-object v2, p0, Lorg/apache/sanselan/formats/gif/GenericGIFBlock;->subblocks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    if-eqz p1, :cond_0

    if-lez v1, :cond_0

    .line 48
    array-length v3, v2

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 49
    :cond_0
    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 52
    :cond_1
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    return-object p1
.end method
