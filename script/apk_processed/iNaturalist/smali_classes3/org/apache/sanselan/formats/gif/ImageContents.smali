.class Lorg/apache/sanselan/formats/gif/ImageContents;
.super Ljava/lang/Object;
.source "ImageContents.java"


# instance fields
.field public final blocks:Ljava/util/ArrayList;

.field public final gifHeaderInfo:Lorg/apache/sanselan/formats/gif/GIFHeaderInfo;

.field public final globalColorTable:[B


# direct methods
.method public constructor <init>(Lorg/apache/sanselan/formats/gif/GIFHeaderInfo;[BLjava/util/ArrayList;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lorg/apache/sanselan/formats/gif/ImageContents;->gifHeaderInfo:Lorg/apache/sanselan/formats/gif/GIFHeaderInfo;

    .line 32
    iput-object p2, p0, Lorg/apache/sanselan/formats/gif/ImageContents;->globalColorTable:[B

    .line 33
    iput-object p3, p0, Lorg/apache/sanselan/formats/gif/ImageContents;->blocks:Ljava/util/ArrayList;

    return-void
.end method
