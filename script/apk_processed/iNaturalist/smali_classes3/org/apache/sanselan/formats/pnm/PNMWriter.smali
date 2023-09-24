.class public abstract Lorg/apache/sanselan/formats/pnm/PNMWriter;
.super Ljava/lang/Object;
.source "PNMWriter.java"


# instance fields
.field protected final RAWBITS:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-boolean p1, p0, Lorg/apache/sanselan/formats/pnm/PNMWriter;->RAWBITS:Z

    return-void
.end method


# virtual methods
.method public abstract writeImage(Ljava/awt/image/BufferedImage;Ljava/io/OutputStream;Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageWriteException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method
