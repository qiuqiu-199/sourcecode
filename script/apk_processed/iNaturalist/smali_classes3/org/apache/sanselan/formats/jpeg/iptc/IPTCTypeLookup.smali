.class public abstract Lorg/apache/sanselan/formats/jpeg/iptc/IPTCTypeLookup;
.super Ljava/lang/Object;
.source "IPTCTypeLookup.java"

# interfaces
.implements Lorg/apache/sanselan/formats/jpeg/iptc/IPTCConstants;


# static fields
.field private static final IPTC_TYPE_MAP:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 25
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/apache/sanselan/formats/jpeg/iptc/IPTCTypeLookup;->IPTC_TYPE_MAP:Ljava/util/Map;

    const/4 v0, 0x0

    .line 28
    :goto_0
    sget-object v1, Lorg/apache/sanselan/formats/jpeg/iptc/IPTCTypeLookup;->IPTC_TYPES:[Lorg/apache/sanselan/formats/jpeg/iptc/IPTCType;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 30
    sget-object v1, Lorg/apache/sanselan/formats/jpeg/iptc/IPTCTypeLookup;->IPTC_TYPES:[Lorg/apache/sanselan/formats/jpeg/iptc/IPTCType;

    aget-object v1, v1, v0

    .line 31
    new-instance v2, Ljava/lang/Integer;

    iget v3, v1, Lorg/apache/sanselan/formats/jpeg/iptc/IPTCType;->type:I

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    .line 32
    sget-object v3, Lorg/apache/sanselan/formats/jpeg/iptc/IPTCTypeLookup;->IPTC_TYPE_MAP:Ljava/util/Map;

    invoke-interface {v3, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getIptcType(I)Lorg/apache/sanselan/formats/jpeg/iptc/IPTCType;
    .locals 2

    .line 38
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p0}, Ljava/lang/Integer;-><init>(I)V

    .line 39
    sget-object v1, Lorg/apache/sanselan/formats/jpeg/iptc/IPTCTypeLookup;->IPTC_TYPE_MAP:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 40
    invoke-static {p0}, Lorg/apache/sanselan/formats/jpeg/iptc/IPTCType;->getUnknown(I)Lorg/apache/sanselan/formats/jpeg/iptc/IPTCType;

    move-result-object p0

    return-object p0

    .line 41
    :cond_0
    sget-object p0, Lorg/apache/sanselan/formats/jpeg/iptc/IPTCTypeLookup;->IPTC_TYPE_MAP:Ljava/util/Map;

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/sanselan/formats/jpeg/iptc/IPTCType;

    return-object p0
.end method
