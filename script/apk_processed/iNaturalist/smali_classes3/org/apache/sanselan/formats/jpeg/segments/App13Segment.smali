.class public Lorg/apache/sanselan/formats/jpeg/segments/App13Segment;
.super Lorg/apache/sanselan/formats/jpeg/segments/APPNSegment;
.source "App13Segment.java"


# instance fields
.field protected final parser:Lorg/apache/sanselan/formats/jpeg/JpegImageParser;


# direct methods
.method public constructor <init>(Lorg/apache/sanselan/formats/jpeg/JpegImageParser;IILjava/io/InputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 46
    invoke-direct {p0, p2, p3, p4}, Lorg/apache/sanselan/formats/jpeg/segments/APPNSegment;-><init>(IILjava/io/InputStream;)V

    .line 47
    iput-object p1, p0, Lorg/apache/sanselan/formats/jpeg/segments/App13Segment;->parser:Lorg/apache/sanselan/formats/jpeg/JpegImageParser;

    return-void
.end method

.method public constructor <init>(Lorg/apache/sanselan/formats/jpeg/JpegImageParser;I[B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 39
    array-length v0, p3

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/apache/sanselan/formats/jpeg/segments/App13Segment;-><init>(Lorg/apache/sanselan/formats/jpeg/JpegImageParser;IILjava/io/InputStream;)V

    return-void
.end method


# virtual methods
.method public isPhotoshopJpegSegment()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 66
    new-instance v0, Lorg/apache/sanselan/formats/jpeg/iptc/IPTCParser;

    invoke-direct {v0}, Lorg/apache/sanselan/formats/jpeg/iptc/IPTCParser;-><init>()V

    iget-object v1, p0, Lorg/apache/sanselan/formats/jpeg/segments/App13Segment;->bytes:[B

    invoke-virtual {v0, v1}, Lorg/apache/sanselan/formats/jpeg/iptc/IPTCParser;->isPhotoshopJpegSegment([B)Z

    move-result v0

    return v0
.end method

.method public parsePhotoshopSegment(Ljava/util/Map;)Lorg/apache/sanselan/formats/jpeg/iptc/PhotoshopApp13Data;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 77
    new-instance v0, Lorg/apache/sanselan/formats/jpeg/iptc/IPTCParser;

    invoke-direct {v0}, Lorg/apache/sanselan/formats/jpeg/iptc/IPTCParser;-><init>()V

    iget-object v1, p0, Lorg/apache/sanselan/formats/jpeg/segments/App13Segment;->bytes:[B

    invoke-virtual {v0, v1}, Lorg/apache/sanselan/formats/jpeg/iptc/IPTCParser;->isPhotoshopJpegSegment([B)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 80
    :cond_0
    new-instance v0, Lorg/apache/sanselan/formats/jpeg/iptc/IPTCParser;

    invoke-direct {v0}, Lorg/apache/sanselan/formats/jpeg/iptc/IPTCParser;-><init>()V

    iget-object v1, p0, Lorg/apache/sanselan/formats/jpeg/segments/App13Segment;->bytes:[B

    invoke-virtual {v0, v1, p1}, Lorg/apache/sanselan/formats/jpeg/iptc/IPTCParser;->parsePhotoshopSegment([BLjava/util/Map;)Lorg/apache/sanselan/formats/jpeg/iptc/PhotoshopApp13Data;

    move-result-object p1

    return-object p1
.end method
