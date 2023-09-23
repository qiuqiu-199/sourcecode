.class public Lorg/apache/sanselan/icc/IccTagType;
.super Ljava/lang/Object;
.source "IccTagType.java"


# instance fields
.field public final name:Ljava/lang/String;

.field public final signature:I

.field public final type_description:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lorg/apache/sanselan/icc/IccTagType;->name:Ljava/lang/String;

    .line 28
    iput-object p2, p0, Lorg/apache/sanselan/icc/IccTagType;->type_description:Ljava/lang/String;

    .line 29
    iput p3, p0, Lorg/apache/sanselan/icc/IccTagType;->signature:I

    return-void
.end method
