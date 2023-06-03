.class public Lorg/apache/sanselan/formats/psd/ImageResourceType;
.super Ljava/lang/Object;
.source "ImageResourceType.java"


# instance fields
.field public final Description:Ljava/lang/String;

.field public final ID:I


# direct methods
.method public constructor <init>(IILjava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 37
    invoke-direct {p0, p1, p3}, Lorg/apache/sanselan/formats/psd/ImageResourceType;-><init>(ILjava/lang/String;)V

    if-ne p1, p2, :cond_0

    return-void

    .line 39
    :cond_0
    new-instance p3, Lorg/apache/sanselan/ImageReadException;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "Mismatch ID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string p1, " ID2: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Lorg/apache/sanselan/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p3
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput p1, p0, Lorg/apache/sanselan/formats/psd/ImageResourceType;->ID:I

    .line 31
    iput-object p2, p0, Lorg/apache/sanselan/formats/psd/ImageResourceType;->Description:Ljava/lang/String;

    return-void
.end method
