.class Lorg/apache/sanselan/formats/jpeg/xmp/JpegRewriter$1;
.super Ljava/lang/Object;
.source "JpegRewriter.java"

# interfaces
.implements Lorg/apache/sanselan/formats/jpeg/JpegUtils$Visitor;


# instance fields
.field private final synthetic this$0:Lorg/apache/sanselan/formats/jpeg/xmp/JpegRewriter;

.field private final synthetic val$pieces:Ljava/util/ArrayList;

.field private final synthetic val$segmentPieces:Ljava/util/List;


# direct methods
.method constructor <init>(Lorg/apache/sanselan/formats/jpeg/xmp/JpegRewriter;Ljava/util/ArrayList;Ljava/util/List;)V
    .locals 0

    .line 177
    iput-object p1, p0, Lorg/apache/sanselan/formats/jpeg/xmp/JpegRewriter$1;->this$0:Lorg/apache/sanselan/formats/jpeg/xmp/JpegRewriter;

    iput-object p2, p0, Lorg/apache/sanselan/formats/jpeg/xmp/JpegRewriter$1;->val$pieces:Ljava/util/ArrayList;

    iput-object p3, p0, Lorg/apache/sanselan/formats/jpeg/xmp/JpegRewriter$1;->val$segmentPieces:Ljava/util/List;

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

    .line 187
    iget-object p1, p0, Lorg/apache/sanselan/formats/jpeg/xmp/JpegRewriter$1;->val$pieces:Ljava/util/ArrayList;

    new-instance v0, Lorg/apache/sanselan/formats/jpeg/xmp/JpegRewriter$JFIFPieceImageData;

    invoke-direct {v0, p2, p3}, Lorg/apache/sanselan/formats/jpeg/xmp/JpegRewriter$JFIFPieceImageData;-><init>([B[B)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

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

    .line 195
    new-instance p3, Lorg/apache/sanselan/formats/jpeg/xmp/JpegRewriter$JFIFPieceSegment;

    invoke-direct {p3, p1, p2, p4, p5}, Lorg/apache/sanselan/formats/jpeg/xmp/JpegRewriter$JFIFPieceSegment;-><init>(I[B[B[B)V

    .line 197
    iget-object p1, p0, Lorg/apache/sanselan/formats/jpeg/xmp/JpegRewriter$1;->val$pieces:Ljava/util/ArrayList;

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 198
    iget-object p1, p0, Lorg/apache/sanselan/formats/jpeg/xmp/JpegRewriter$1;->val$segmentPieces:Ljava/util/List;

    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    return p1
.end method
