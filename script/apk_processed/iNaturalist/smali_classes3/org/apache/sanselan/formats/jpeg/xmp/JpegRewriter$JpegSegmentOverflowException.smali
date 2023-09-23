.class public Lorg/apache/sanselan/formats/jpeg/xmp/JpegRewriter$JpegSegmentOverflowException;
.super Lorg/apache/sanselan/ImageWriteException;
.source "JpegRewriter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/sanselan/formats/jpeg/xmp/JpegRewriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "JpegSegmentOverflowException"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 381
    invoke-direct {p0, p1}, Lorg/apache/sanselan/ImageWriteException;-><init>(Ljava/lang/String;)V

    return-void
.end method
