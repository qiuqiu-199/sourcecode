.class Lorg/apache/sanselan/formats/tiff/TiffReader$FirstDirectoryCollector;
.super Lorg/apache/sanselan/formats/tiff/TiffReader$Collector;
.source "TiffReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/sanselan/formats/tiff/TiffReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FirstDirectoryCollector"
.end annotation


# instance fields
.field private final readImageData:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    .line 369
    invoke-direct {p0}, Lorg/apache/sanselan/formats/tiff/TiffReader$Collector;-><init>()V

    .line 370
    iput-boolean p1, p0, Lorg/apache/sanselan/formats/tiff/TiffReader$FirstDirectoryCollector;->readImageData:Z

    return-void
.end method


# virtual methods
.method public addDirectory(Lorg/apache/sanselan/formats/tiff/TiffDirectory;)Z
    .locals 0

    .line 375
    invoke-super {p0, p1}, Lorg/apache/sanselan/formats/tiff/TiffReader$Collector;->addDirectory(Lorg/apache/sanselan/formats/tiff/TiffDirectory;)Z

    const/4 p1, 0x0

    return p1
.end method

.method public readImageData()Z
    .locals 1

    .line 381
    iget-boolean v0, p0, Lorg/apache/sanselan/formats/tiff/TiffReader$FirstDirectoryCollector;->readImageData:Z

    return v0
.end method