.class public Lorg/apache/sanselan/formats/tiff/TiffImageData$Strips;
.super Lorg/apache/sanselan/formats/tiff/TiffImageData;
.source "TiffImageData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/sanselan/formats/tiff/TiffImageData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Strips"
.end annotation


# instance fields
.field public final rowsPerStrip:I

.field public final strips:[Lorg/apache/sanselan/formats/tiff/TiffElement$DataElement;


# direct methods
.method public constructor <init>([Lorg/apache/sanselan/formats/tiff/TiffElement$DataElement;I)V
    .locals 0

    .line 81
    invoke-direct {p0}, Lorg/apache/sanselan/formats/tiff/TiffImageData;-><init>()V

    .line 82
    iput-object p1, p0, Lorg/apache/sanselan/formats/tiff/TiffImageData$Strips;->strips:[Lorg/apache/sanselan/formats/tiff/TiffElement$DataElement;

    .line 83
    iput p2, p0, Lorg/apache/sanselan/formats/tiff/TiffImageData$Strips;->rowsPerStrip:I

    return-void
.end method


# virtual methods
.method public getDataReader(Ljava/util/ArrayList;Lorg/apache/sanselan/formats/tiff/photometricinterpreters/PhotometricInterpreter;I[IIIIII)Lorg/apache/sanselan/formats/tiff/datareaders/DataReader;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/sanselan/ImageReadException;
        }
    .end annotation

    .line 102
    new-instance v11, Lorg/apache/sanselan/formats/tiff/datareaders/DataReaderStrips;

    move-object v12, p0

    iget v9, v12, Lorg/apache/sanselan/formats/tiff/TiffImageData$Strips;->rowsPerStrip:I

    move-object v0, v11

    move-object v1, p2

    move/from16 v2, p3

    move-object/from16 v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    move/from16 v8, p9

    move-object v10, p0

    invoke-direct/range {v0 .. v10}, Lorg/apache/sanselan/formats/tiff/datareaders/DataReaderStrips;-><init>(Lorg/apache/sanselan/formats/tiff/photometricinterpreters/PhotometricInterpreter;I[IIIIIIILorg/apache/sanselan/formats/tiff/TiffImageData$Strips;)V

    return-object v11
.end method

.method public getImageData()[Lorg/apache/sanselan/formats/tiff/TiffElement$DataElement;
    .locals 1

    .line 88
    iget-object v0, p0, Lorg/apache/sanselan/formats/tiff/TiffImageData$Strips;->strips:[Lorg/apache/sanselan/formats/tiff/TiffElement$DataElement;

    return-object v0
.end method

.method public stripsNotTiles()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
