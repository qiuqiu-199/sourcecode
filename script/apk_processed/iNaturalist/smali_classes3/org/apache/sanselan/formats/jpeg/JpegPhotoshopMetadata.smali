.class public Lorg/apache/sanselan/formats/jpeg/JpegPhotoshopMetadata;
.super Lorg/apache/sanselan/common/ImageMetadata;
.source "JpegPhotoshopMetadata.java"

# interfaces
.implements Lorg/apache/sanselan/formats/jpeg/iptc/IPTCConstants;


# instance fields
.field public final photoshopApp13Data:Lorg/apache/sanselan/formats/jpeg/iptc/PhotoshopApp13Data;


# direct methods
.method public constructor <init>(Lorg/apache/sanselan/formats/jpeg/iptc/PhotoshopApp13Data;)V
    .locals 4

    .line 35
    invoke-direct {p0}, Lorg/apache/sanselan/common/ImageMetadata;-><init>()V

    .line 36
    iput-object p1, p0, Lorg/apache/sanselan/formats/jpeg/JpegPhotoshopMetadata;->photoshopApp13Data:Lorg/apache/sanselan/formats/jpeg/iptc/PhotoshopApp13Data;

    .line 38
    invoke-virtual {p1}, Lorg/apache/sanselan/formats/jpeg/iptc/PhotoshopApp13Data;->getRecords()Ljava/util/List;

    move-result-object p1

    .line 39
    sget-object v0, Lorg/apache/sanselan/formats/jpeg/iptc/IPTCRecord;->COMPARATOR:Ljava/util/Comparator;

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const/4 v0, 0x0

    .line 40
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 42
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/sanselan/formats/jpeg/iptc/IPTCRecord;

    .line 43
    iget-object v2, v1, Lorg/apache/sanselan/formats/jpeg/iptc/IPTCRecord;->iptcType:Lorg/apache/sanselan/formats/jpeg/iptc/IPTCType;

    iget v2, v2, Lorg/apache/sanselan/formats/jpeg/iptc/IPTCType;->type:I

    sget-object v3, Lorg/apache/sanselan/formats/jpeg/JpegPhotoshopMetadata;->IPTC_TYPE_RECORD_VERSION:Lorg/apache/sanselan/formats/jpeg/iptc/IPTCType;

    iget v3, v3, Lorg/apache/sanselan/formats/jpeg/iptc/IPTCType;->type:I

    if-eq v2, v3, :cond_0

    .line 44
    invoke-virtual {v1}, Lorg/apache/sanselan/formats/jpeg/iptc/IPTCRecord;->getIptcTypeName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lorg/apache/sanselan/formats/jpeg/iptc/IPTCRecord;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v2, v1}, Lorg/apache/sanselan/formats/jpeg/JpegPhotoshopMetadata;->add(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public dump()V
    .locals 1

    .line 50
    invoke-virtual {p0}, Lorg/apache/sanselan/formats/jpeg/JpegPhotoshopMetadata;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/sanselan/util/Debug;->debug(Ljava/lang/String;)V

    return-void
.end method
