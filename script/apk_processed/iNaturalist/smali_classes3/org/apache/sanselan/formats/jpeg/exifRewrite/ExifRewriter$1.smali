.class Lorg/apache/sanselan/formats/jpeg/exifRewrite/ExifRewriter$1;
.super Ljava/lang/Object;
.source "ExifRewriter.java"

# interfaces
.implements Lorg/apache/sanselan/formats/jpeg/JpegUtils$Visitor;


# instance fields
.field private final synthetic this$0:Lorg/apache/sanselan/formats/jpeg/exifRewrite/ExifRewriter;

.field private final synthetic val$exifPieces:Ljava/util/List;

.field private final synthetic val$pieces:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lorg/apache/sanselan/formats/jpeg/exifRewrite/ExifRewriter;Ljava/util/ArrayList;Ljava/util/List;)V
    .locals 0

    .line 152
    iput-object p1, p0, Lorg/apache/sanselan/formats/jpeg/exifRewrite/ExifRewriter$1;->this$0:Lorg/apache/sanselan/formats/jpeg/exifRewrite/ExifRewriter;

    iput-object p2, p0, Lorg/apache/sanselan/formats/jpeg/exifRewrite/ExifRewriter$1;->val$pieces:Ljava/util/ArrayList;

    iput-object p3, p0, Lorg/apache/sanselan/formats/jpeg/exifRewrite/ExifRewriter$1;->val$exifPieces:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public beginSOS()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public visitSOS(I[B[B)V
    .locals 1

    .line 162
    iget-object p1, p0, Lorg/apache/sanselan/formats/jpeg/exifRewrite/ExifRewriter$1;->val$pieces:Ljava/util/ArrayList;

    new-instance v0, Lorg/apache/sanselan/formats/jpeg/exifRewrite/ExifRewriter$JFIFPieceImageData;

    invoke-direct {v0, p2, p3}, Lorg/apache/sanselan/formats/jpeg/exifRewrite/ExifRewriter$JFIFPieceImageData;-><init>([B[B)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public visitSegment(I[BI[B[B)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    const p3, 0xffe1

    if-eq p1, p3, :cond_0

    .line 174
    iget-object p3, p0, Lorg/apache/sanselan/formats/jpeg/exifRewrite/ExifRewriter$1;->val$pieces:Ljava/util/ArrayList;

    new-instance v0, Lorg/apache/sanselan/formats/jpeg/exifRewrite/ExifRewriter$JFIFPieceSegment;

    invoke-direct {v0, p1, p2, p4, p5}, Lorg/apache/sanselan/formats/jpeg/exifRewrite/ExifRewriter$JFIFPieceSegment;-><init>(I[B[B[B)V

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 177
    :cond_0
    sget-object p3, Lorg/apache/sanselan/formats/jpeg/JpegConstants;->EXIF_IDENTIFIER_CODE:[B

    invoke-static {p5, p3}, Lorg/apache/sanselan/common/BinaryFileParser;->byteArrayHasPrefix([B[B)Z

    move-result p3

    if-nez p3, :cond_1

    .line 179
    iget-object p3, p0, Lorg/apache/sanselan/formats/jpeg/exifRewrite/ExifRewriter$1;->val$pieces:Ljava/util/ArrayList;

    new-instance v0, Lorg/apache/sanselan/formats/jpeg/exifRewrite/ExifRewriter$JFIFPieceSegment;

    invoke-direct {v0, p1, p2, p4, p5}, Lorg/apache/sanselan/formats/jpeg/exifRewrite/ExifRewriter$JFIFPieceSegment;-><init>(I[B[B[B)V

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 190
    :cond_1
    new-instance p3, Lorg/apache/sanselan/formats/jpeg/exifRewrite/ExifRewriter$JFIFPieceSegmentExif;

    invoke-direct {p3, p1, p2, p4, p5}, Lorg/apache/sanselan/formats/jpeg/exifRewrite/ExifRewriter$JFIFPieceSegmentExif;-><init>(I[B[B[B)V

    .line 192
    iget-object p1, p0, Lorg/apache/sanselan/formats/jpeg/exifRewrite/ExifRewriter$1;->val$pieces:Ljava/util/ArrayList;

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 193
    iget-object p1, p0, Lorg/apache/sanselan/formats/jpeg/exifRewrite/ExifRewriter$1;->val$exifPieces:Ljava/util/List;

    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    const/4 p1, 0x1

    return p1
.end method
