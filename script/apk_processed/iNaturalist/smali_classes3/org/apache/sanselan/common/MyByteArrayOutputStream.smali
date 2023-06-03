.class public Lorg/apache/sanselan/common/MyByteArrayOutputStream;
.super Ljava/io/OutputStream;
.source "MyByteArrayOutputStream.java"


# instance fields
.field private final bytes:[B

.field private count:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 28
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    const/4 v0, 0x0

    .line 32
    iput v0, p0, Lorg/apache/sanselan/common/MyByteArrayOutputStream;->count:I

    .line 29
    new-array p1, p1, [B

    iput-object p1, p0, Lorg/apache/sanselan/common/MyByteArrayOutputStream;->bytes:[B

    return-void
.end method


# virtual methods
.method public getBytesWritten()I
    .locals 1

    .line 57
    iget v0, p0, Lorg/apache/sanselan/common/MyByteArrayOutputStream;->count:I

    return v0
.end method

.method public toByteArray()[B
    .locals 4

    .line 46
    iget v0, p0, Lorg/apache/sanselan/common/MyByteArrayOutputStream;->count:I

    iget-object v1, p0, Lorg/apache/sanselan/common/MyByteArrayOutputStream;->bytes:[B

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 48
    iget v0, p0, Lorg/apache/sanselan/common/MyByteArrayOutputStream;->count:I

    new-array v0, v0, [B

    .line 49
    iget-object v1, p0, Lorg/apache/sanselan/common/MyByteArrayOutputStream;->bytes:[B

    iget v2, p0, Lorg/apache/sanselan/common/MyByteArrayOutputStream;->count:I

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0

    .line 52
    :cond_0
    iget-object v0, p0, Lorg/apache/sanselan/common/MyByteArrayOutputStream;->bytes:[B

    return-object v0
.end method

.method public write(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 36
    iget v0, p0, Lorg/apache/sanselan/common/MyByteArrayOutputStream;->count:I

    iget-object v1, p0, Lorg/apache/sanselan/common/MyByteArrayOutputStream;->bytes:[B

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 40
    iget-object v0, p0, Lorg/apache/sanselan/common/MyByteArrayOutputStream;->bytes:[B

    iget v1, p0, Lorg/apache/sanselan/common/MyByteArrayOutputStream;->count:I

    int-to-byte p1, p1

    aput-byte p1, v0, v1

    .line 41
    iget p1, p0, Lorg/apache/sanselan/common/MyByteArrayOutputStream;->count:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/apache/sanselan/common/MyByteArrayOutputStream;->count:I

    return-void

    .line 37
    :cond_0
    new-instance p1, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "Write exceeded expected length ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Lorg/apache/sanselan/common/MyByteArrayOutputStream;->count:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/apache/sanselan/common/MyByteArrayOutputStream;->bytes:[B

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
