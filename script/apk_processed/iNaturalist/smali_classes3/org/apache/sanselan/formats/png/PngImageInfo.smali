.class public Lorg/apache/sanselan/formats/png/PngImageInfo;
.super Lorg/apache/sanselan/ImageInfo;
.source "PngImageInfo.java"


# instance fields
.field private final textChunks:Ljava/util/List;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/util/ArrayList;Lorg/apache/sanselan/ImageFormat;Ljava/lang/String;ILjava/lang/String;IIFIFIZZZILjava/lang/String;Ljava/util/List;)V
    .locals 2

    .line 37
    invoke-direct/range {p0 .. p18}, Lorg/apache/sanselan/ImageInfo;-><init>(Ljava/lang/String;ILjava/util/ArrayList;Lorg/apache/sanselan/ImageFormat;Ljava/lang/String;ILjava/lang/String;IIFIFIZZZILjava/lang/String;)V

    move-object v0, p0

    move-object/from16 v1, p19

    .line 43
    iput-object v1, v0, Lorg/apache/sanselan/formats/png/PngImageInfo;->textChunks:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getTextChunks()Ljava/util/List;
    .locals 2

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/apache/sanselan/formats/png/PngImageInfo;->textChunks:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method
