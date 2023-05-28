.class public Lorg/apache/sanselan/icc/IccTag;
.super Ljava/lang/Object;
.source "IccTag.java"

# interfaces
.implements Lorg/apache/sanselan/common/BinaryConstants;
.implements Lorg/apache/sanselan/icc/IccConstants;


# instance fields
.field public data:[B

.field private data_type_signature:I

.field public final fIccTagType:Lorg/apache/sanselan/icc/IccTagType;

.field private itdt:Lorg/apache/sanselan/icc/IccTagDataType;

.field public final length:I

.field public final offset:I

.field public final signature:I


# direct methods
.method public constructor <init>(IIILorg/apache/sanselan/icc/IccTagType;)V
    .locals 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 44
    iput-object v0, p0, Lorg/apache/sanselan/icc/IccTag;->data:[B

    .line 45
    iput-object v0, p0, Lorg/apache/sanselan/icc/IccTag;->itdt:Lorg/apache/sanselan/icc/IccTagDataType;

    .line 38
    iput p1, p0, Lorg/apache/sanselan/icc/IccTag;->signature:I

    .line 39
    iput p2, p0, Lorg/apache/sanselan/icc/IccTag;->offset:I

    .line 40
    iput p3, p0, Lorg/apache/sanselan/icc/IccTag;->length:I

    .line 41
    iput-object p4, p0, Lorg/apache/sanselan/icc/IccTag;->fIccTagType:Lorg/apache/sanselan/icc/IccTagType;

    return-void
.end method

.method private getIccTagDataType(I)Lorg/apache/sanselan/icc/IccTagDataType;
    .locals 2

    const/4 v0, 0x0

    .line 67
    :goto_0
    sget-object v1, Lorg/apache/sanselan/icc/IccTag;->IccTagDataTypes:[Lorg/apache/sanselan/icc/IccTagDataType;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 68
    sget-object v1, Lorg/apache/sanselan/icc/IccTag;->IccTagDataTypes:[Lorg/apache/sanselan/icc/IccTagDataType;

    aget-object v1, v1, v0

    iget v1, v1, Lorg/apache/sanselan/icc/IccTagDataType;->signature:I

    if-ne v1, p1, :cond_0

    .line 69
    sget-object p1, Lorg/apache/sanselan/icc/IccTag;->IccTagDataTypes:[Lorg/apache/sanselan/icc/IccTagDataType;

    aget-object p1, p1, v0

    return-object p1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 86
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "tag signature: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Lorg/apache/sanselan/icc/IccTag;->signature:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/String;

    const/4 v2, 0x4

    new-array v3, v2, [B

    iget v4, p0, Lorg/apache/sanselan/icc/IccTag;->signature:I

    shr-int/lit8 v4, v4, 0x18

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    const/4 v5, 0x0

    aput-byte v4, v3, v5

    iget v4, p0, Lorg/apache/sanselan/icc/IccTag;->signature:I

    shr-int/lit8 v4, v4, 0x10

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    const/4 v6, 0x1

    aput-byte v4, v3, v6

    iget v4, p0, Lorg/apache/sanselan/icc/IccTag;->signature:I

    shr-int/lit8 v4, v4, 0x8

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    const/4 v7, 0x2

    aput-byte v4, v3, v7

    iget v4, p0, Lorg/apache/sanselan/icc/IccTag;->signature:I

    shr-int/2addr v4, v5

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    const/4 v8, 0x3

    aput-byte v4, v3, v8

    invoke-direct {v1, v3}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 97
    iget-object v0, p0, Lorg/apache/sanselan/icc/IccTag;->data:[B

    if-nez v0, :cond_0

    .line 98
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p2, "data: "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p2, p0, Lorg/apache/sanselan/icc/IccTag;->data:[B

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 101
    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "data: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/apache/sanselan/icc/IccTag;->data:[B

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 103
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "data type signature: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Lorg/apache/sanselan/icc/IccTag;->data_type_signature:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/String;

    new-array v2, v2, [B

    iget v3, p0, Lorg/apache/sanselan/icc/IccTag;->data_type_signature:I

    shr-int/lit8 v3, v3, 0x18

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v2, v5

    iget v3, p0, Lorg/apache/sanselan/icc/IccTag;->data_type_signature:I

    shr-int/lit8 v3, v3, 0x10

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v2, v6

    iget v3, p0, Lorg/apache/sanselan/icc/IccTag;->data_type_signature:I

    shr-int/lit8 v3, v3, 0x8

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v2, v7

    iget v3, p0, Lorg/apache/sanselan/icc/IccTag;->data_type_signature:I

    shr-int/2addr v3, v5

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v2, v8

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 114
    iget-object v0, p0, Lorg/apache/sanselan/icc/IccTag;->itdt:Lorg/apache/sanselan/icc/IccTagDataType;

    if-nez v0, :cond_1

    .line 115
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p2, "IccTagType : "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p2, "unknown"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 118
    :cond_1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "IccTagType : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/apache/sanselan/icc/IccTag;->itdt:Lorg/apache/sanselan/icc/IccTagDataType;

    iget-object v1, v1, Lorg/apache/sanselan/icc/IccTagDataType;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 119
    iget-object v0, p0, Lorg/apache/sanselan/icc/IccTag;->itdt:Lorg/apache/sanselan/icc/IccTagDataType;

    iget-object v1, p0, Lorg/apache/sanselan/icc/IccTag;->data:[B

    invoke-virtual {v0, p2, v1}, Lorg/apache/sanselan/icc/IccTagDataType;->dump(Ljava/lang/String;[B)V

    :goto_0
    const-string p2, ""

    .line 124
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 125
    invoke-virtual {p1}, Ljava/io/PrintWriter;->flush()V

    return-void
.end method

.method public dump(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 76
    new-instance v0, Ljava/io/PrintWriter;

    new-instance v1, Ljava/io/OutputStreamWriter;

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-direct {v1, v2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v0, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 78
    invoke-virtual {p0, v0, p1}, Lorg/apache/sanselan/icc/IccTag;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 80
    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    return-void
.end method

.method public setData([B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sanselan/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 50
    iput-object p1, p0, Lorg/apache/sanselan/icc/IccTag;->data:[B

    .line 52
    new-instance v0, Lorg/apache/sanselan/common/BinaryInputStream;

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const/16 p1, 0x4d

    invoke-direct {v0, v1, p1}, Lorg/apache/sanselan/common/BinaryInputStream;-><init>(Ljava/io/InputStream;I)V

    const-string p1, "data type signature"

    const-string v1, "ICC: corrupt tag data"

    .line 54
    invoke-virtual {v0, p1, v1}, Lorg/apache/sanselan/common/BinaryInputStream;->read4Bytes(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lorg/apache/sanselan/icc/IccTag;->data_type_signature:I

    .line 57
    iget p1, p0, Lorg/apache/sanselan/icc/IccTag;->data_type_signature:I

    invoke-direct {p0, p1}, Lorg/apache/sanselan/icc/IccTag;->getIccTagDataType(I)Lorg/apache/sanselan/icc/IccTagDataType;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/sanselan/icc/IccTag;->itdt:Lorg/apache/sanselan/icc/IccTagDataType;

    return-void
.end method
