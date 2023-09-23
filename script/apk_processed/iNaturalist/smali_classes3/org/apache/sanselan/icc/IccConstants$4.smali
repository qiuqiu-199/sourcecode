.class final Lorg/apache/sanselan/icc/IccConstants$4;
.super Lorg/apache/sanselan/icc/IccTagDataType;
.source "IccConstants.java"


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 86
    invoke-direct {p0, p1, p2}, Lorg/apache/sanselan/icc/IccTagDataType;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public dump(Ljava/lang/String;[B)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 90
    new-instance v0, Lorg/apache/sanselan/common/BinaryInputStream;

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const/16 p2, 0x4d

    invoke-direct {v0, v1, p2}, Lorg/apache/sanselan/common/BinaryInputStream;-><init>(Ljava/io/InputStream;I)V

    const-string p2, "type_signature"

    const-string v1, "ICC: corrupt tag data"

    .line 93
    invoke-virtual {v0, p2, v1}, Lorg/apache/sanselan/common/BinaryInputStream;->read4Bytes(Ljava/lang/String;Ljava/lang/String;)I

    const-string p2, "ignore"

    const-string v1, "ICC: corrupt tag data"

    .line 94
    invoke-virtual {v0, p2, v1}, Lorg/apache/sanselan/common/BinaryInputStream;->read4Bytes(Ljava/lang/String;Ljava/lang/String;)I

    const-string p2, "thesignature "

    const-string v1, "ICC: corrupt tag data"

    .line 95
    invoke-virtual {v0, p2, v1}, Lorg/apache/sanselan/common/BinaryInputStream;->read4Bytes(Ljava/lang/String;Ljava/lang/String;)I

    move-result p2

    .line 97
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p1, "thesignature: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p1, " ("

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance p1, Ljava/lang/String;

    const/4 v2, 0x4

    new-array v2, v2, [B

    shr-int/lit8 v3, p2, 0x18

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    const/4 v4, 0x0

    aput-byte v3, v2, v4

    shr-int/lit8 v3, p2, 0x10

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    const/4 v5, 0x1

    aput-byte v3, v2, v5

    shr-int/lit8 v3, p2, 0x8

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    const/4 v5, 0x2

    aput-byte v3, v2, v5

    shr-int/2addr p2, v4

    and-int/lit16 p2, p2, 0xff

    int-to-byte p2, p2

    const/4 v3, 0x3

    aput-byte p2, v2, v3

    invoke-direct {p1, v2}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p1, ")"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method
