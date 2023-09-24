.class Lorg/apache/sanselan/formats/jpeg/JpegImageParser$5;
.super Ljava/lang/Object;
.source "JpegImageParser.java"

# interfaces
.implements Lorg/apache/sanselan/formats/jpeg/JpegUtils$Visitor;


# instance fields
.field private final synthetic this$0:Lorg/apache/sanselan/formats/jpeg/JpegImageParser;

.field private final synthetic val$result:Ljava/util/List;


# direct methods
.method constructor <init>(Lorg/apache/sanselan/formats/jpeg/JpegImageParser;Ljava/util/List;)V
    .locals 0

    .line 549
    iput-object p1, p0, Lorg/apache/sanselan/formats/jpeg/JpegImageParser$5;->this$0:Lorg/apache/sanselan/formats/jpeg/JpegImageParser;

    iput-object p2, p0, Lorg/apache/sanselan/formats/jpeg/JpegImageParser$5;->val$result:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public beginSOS()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public visitSOS(I[B[B)V
    .locals 0

    return-void
.end method

.method public visitSegment(I[BI[B[B)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 p2, 0x0

    const p3, 0xffd9

    if-ne p1, p3, :cond_0

    return p2

    :cond_0
    const p3, 0xffe1

    if-ne p1, p3, :cond_1

    .line 571
    new-instance p1, Lorg/apache/sanselan/formats/jpeg/xmp/JpegXmpParser;

    invoke-direct {p1}, Lorg/apache/sanselan/formats/jpeg/xmp/JpegXmpParser;-><init>()V

    invoke-virtual {p1, p5}, Lorg/apache/sanselan/formats/jpeg/xmp/JpegXmpParser;->isXmpJpegSegment([B)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 573
    iget-object p1, p0, Lorg/apache/sanselan/formats/jpeg/JpegImageParser$5;->val$result:Ljava/util/List;

    new-instance p3, Lorg/apache/sanselan/formats/jpeg/xmp/JpegXmpParser;

    invoke-direct {p3}, Lorg/apache/sanselan/formats/jpeg/xmp/JpegXmpParser;-><init>()V

    invoke-virtual {p3, p5}, Lorg/apache/sanselan/formats/jpeg/xmp/JpegXmpParser;->parseXmpJpegSegment([B)Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return p2

    :cond_1
    const/4 p1, 0x1

    return p1
.end method
