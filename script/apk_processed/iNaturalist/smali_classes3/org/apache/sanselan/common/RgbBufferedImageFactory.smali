.class public Lorg/apache/sanselan/common/RgbBufferedImageFactory;
.super Ljava/lang/Object;
.source "RgbBufferedImageFactory.java"

# interfaces
.implements Lorg/apache/sanselan/common/IBufferedImageFactory;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getColorBufferedImage(IIZ)Ljava/awt/image/BufferedImage;
    .locals 1

    if-eqz p3, :cond_0

    .line 28
    new-instance p3, Ljava/awt/image/BufferedImage;

    const/4 v0, 0x2

    invoke-direct {p3, p1, p2, v0}, Ljava/awt/image/BufferedImage;-><init>(III)V

    return-object p3

    .line 29
    :cond_0
    new-instance p3, Ljava/awt/image/BufferedImage;

    const/4 v0, 0x1

    invoke-direct {p3, p1, p2, v0}, Ljava/awt/image/BufferedImage;-><init>(III)V

    return-object p3
.end method

.method public getGrayscaleBufferedImage(IIZ)Ljava/awt/image/BufferedImage;
    .locals 0

    .line 36
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/sanselan/common/RgbBufferedImageFactory;->getColorBufferedImage(IIZ)Ljava/awt/image/BufferedImage;

    move-result-object p1

    return-object p1
.end method
