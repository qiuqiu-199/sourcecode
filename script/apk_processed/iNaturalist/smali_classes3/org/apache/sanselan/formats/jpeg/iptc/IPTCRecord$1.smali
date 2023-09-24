.class final Lorg/apache/sanselan/formats/jpeg/iptc/IPTCRecord$1;
.super Ljava/lang/Object;
.source "IPTCRecord.java"

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 48
    check-cast p1, Lorg/apache/sanselan/formats/jpeg/iptc/IPTCRecord;

    .line 49
    check-cast p2, Lorg/apache/sanselan/formats/jpeg/iptc/IPTCRecord;

    .line 50
    iget-object p1, p1, Lorg/apache/sanselan/formats/jpeg/iptc/IPTCRecord;->iptcType:Lorg/apache/sanselan/formats/jpeg/iptc/IPTCType;

    iget p1, p1, Lorg/apache/sanselan/formats/jpeg/iptc/IPTCType;->type:I

    iget-object p2, p2, Lorg/apache/sanselan/formats/jpeg/iptc/IPTCRecord;->iptcType:Lorg/apache/sanselan/formats/jpeg/iptc/IPTCType;

    iget p2, p2, Lorg/apache/sanselan/formats/jpeg/iptc/IPTCType;->type:I

    sub-int/2addr p1, p2

    return p1
.end method
