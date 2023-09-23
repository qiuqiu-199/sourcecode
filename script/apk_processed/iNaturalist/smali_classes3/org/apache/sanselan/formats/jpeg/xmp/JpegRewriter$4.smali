.class final Lorg/apache/sanselan/formats/jpeg/xmp/JpegRewriter$4;
.super Ljava/lang/Object;
.source "JpegRewriter.java"

# interfaces
.implements Lorg/apache/sanselan/formats/jpeg/xmp/JpegRewriter$SegmentFilter;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 228
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public filter(Lorg/apache/sanselan/formats/jpeg/xmp/JpegRewriter$JFIFPieceSegment;)Z
    .locals 0

    .line 231
    invoke-virtual {p1}, Lorg/apache/sanselan/formats/jpeg/xmp/JpegRewriter$JFIFPieceSegment;->isPhotoshopApp13Segment()Z

    move-result p1

    return p1
.end method
