.class final Lorg/apache/sanselan/icc/IccConstants$3;
.super Lorg/apache/sanselan/icc/IccTagDataType;
.source "IccConstants.java"


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 72
    invoke-direct {p0, p1, p2}, Lorg/apache/sanselan/icc/IccTagDataType;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public dump(Ljava/lang/String;[B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 76
    new-instance p1, Lorg/apache/sanselan/common/BinaryInputStream;

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const/16 p2, 0x4d

    invoke-direct {p1, v0, p2}, Lorg/apache/sanselan/common/BinaryInputStream;-><init>(Ljava/io/InputStream;I)V

    const-string p2, "type_signature"

    const-string v0, "ICC: corrupt tag data"

    .line 79
    invoke-virtual {p1, p2, v0}, Lorg/apache/sanselan/common/BinaryInputStream;->read4Bytes(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
