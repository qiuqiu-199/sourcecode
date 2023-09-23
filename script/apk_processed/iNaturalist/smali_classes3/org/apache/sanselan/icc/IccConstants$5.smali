.class final Lorg/apache/sanselan/icc/IccConstants$5;
.super Lorg/apache/sanselan/icc/IccTagDataType;
.source "IccConstants.java"


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 113
    invoke-direct {p0, p1, p2}, Lorg/apache/sanselan/icc/IccTagDataType;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public dump(Ljava/lang/String;[B)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 117
    new-instance v0, Lorg/apache/sanselan/common/BinaryInputStream;

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const/16 v2, 0x4d

    invoke-direct {v0, v1, v2}, Lorg/apache/sanselan/common/BinaryInputStream;-><init>(Ljava/io/InputStream;I)V

    const-string v1, "type_signature"

    const-string v2, "ICC: corrupt tag data"

    .line 120
    invoke-virtual {v0, v1, v2}, Lorg/apache/sanselan/common/BinaryInputStream;->read4Bytes(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "ignore"

    const-string v2, "ICC: corrupt tag data"

    .line 121
    invoke-virtual {v0, v1, v2}, Lorg/apache/sanselan/common/BinaryInputStream;->read4Bytes(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    new-instance v0, Ljava/lang/String;

    array-length v1, p2

    const/16 v2, 0x8

    sub-int/2addr v1, v2

    invoke-direct {v0, p2, v2, v1}, Ljava/lang/String;-><init>([BII)V

    .line 123
    sget-object p2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p1, "s: \'"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p1, "\'"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method
