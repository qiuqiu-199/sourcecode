.class Lorg/apache/sanselan/formats/jpeg/iptc/IPTCParser$1;
.super Ljava/lang/Object;
.source "IPTCParser.java"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field private final synthetic this$0:Lorg/apache/sanselan/formats/jpeg/iptc/IPTCParser;


# direct methods
.method constructor <init>(Lorg/apache/sanselan/formats/jpeg/iptc/IPTCParser;)V
    .locals 0

    .line 402
    iput-object p1, p0, Lorg/apache/sanselan/formats/jpeg/iptc/IPTCParser$1;->this$0:Lorg/apache/sanselan/formats/jpeg/iptc/IPTCParser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 405
    check-cast p1, Lorg/apache/sanselan/formats/jpeg/iptc/IPTCRecord;

    .line 406
    check-cast p2, Lorg/apache/sanselan/formats/jpeg/iptc/IPTCRecord;

    .line 407
    iget-object p2, p2, Lorg/apache/sanselan/formats/jpeg/iptc/IPTCRecord;->iptcType:Lorg/apache/sanselan/formats/jpeg/iptc/IPTCType;

    iget p2, p2, Lorg/apache/sanselan/formats/jpeg/iptc/IPTCType;->type:I

    iget-object p1, p1, Lorg/apache/sanselan/formats/jpeg/iptc/IPTCRecord;->iptcType:Lorg/apache/sanselan/formats/jpeg/iptc/IPTCType;

    iget p1, p1, Lorg/apache/sanselan/formats/jpeg/iptc/IPTCType;->type:I

    sub-int/2addr p2, p1

    return p2
.end method
