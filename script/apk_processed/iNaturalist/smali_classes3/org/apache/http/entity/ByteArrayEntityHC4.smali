.class public Lorg/apache/http/entity/ByteArrayEntityHC4;
.super Lorg/apache/http/entity/AbstractHttpEntityHC4;
.source "ByteArrayEntityHC4.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation build Lorg/apache/http/annotation/NotThreadSafe;
.end annotation


# instance fields
.field private final b:[B

.field protected final content:[B
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private final len:I

.field private final off:I


# direct methods
.method public constructor <init>([B)V
    .locals 1

    const/4 v0, 0x0

    .line 91
    invoke-direct {p0, p1, v0}, Lorg/apache/http/entity/ByteArrayEntityHC4;-><init>([BLorg/apache/http/entity/ContentType;)V

    return-void
.end method

.method public constructor <init>([BII)V
    .locals 1

    const/4 v0, 0x0

    .line 95
    invoke-direct {p0, p1, p2, p3, v0}, Lorg/apache/http/entity/ByteArrayEntityHC4;-><init>([BIILorg/apache/http/entity/ContentType;)V

    return-void
.end method

.method public constructor <init>([BIILorg/apache/http/entity/ContentType;)V
    .locals 2

    .line 75
    invoke-direct {p0}, Lorg/apache/http/entity/AbstractHttpEntityHC4;-><init>()V

    const-string v0, "Source byte array"

    .line 76
    invoke-static {p1, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    if-ltz p2, :cond_1

    .line 77
    array-length v0, p1

    if-gt p2, v0, :cond_1

    if-ltz p3, :cond_1

    add-int v0, p2, p3

    if-ltz v0, :cond_1

    array-length v1, p1

    if-gt v0, v1, :cond_1

    .line 81
    iput-object p1, p0, Lorg/apache/http/entity/ByteArrayEntityHC4;->content:[B

    .line 82
    iput-object p1, p0, Lorg/apache/http/entity/ByteArrayEntityHC4;->b:[B

    .line 83
    iput p2, p0, Lorg/apache/http/entity/ByteArrayEntityHC4;->off:I

    .line 84
    iput p3, p0, Lorg/apache/http/entity/ByteArrayEntityHC4;->len:I

    if-eqz p4, :cond_0

    .line 86
    invoke-virtual {p4}, Lorg/apache/http/entity/ContentType;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/http/entity/ByteArrayEntityHC4;->setContentType(Ljava/lang/String;)V

    :cond_0
    return-void

    .line 79
    :cond_1
    new-instance p4, Ljava/lang/IndexOutOfBoundsException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "off: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " len: "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " b.length: "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p1, p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p4, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p4
.end method

.method public constructor <init>([BLorg/apache/http/entity/ContentType;)V
    .locals 1

    .line 59
    invoke-direct {p0}, Lorg/apache/http/entity/AbstractHttpEntityHC4;-><init>()V

    const-string v0, "Source byte array"

    .line 60
    invoke-static {p1, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 61
    iput-object p1, p0, Lorg/apache/http/entity/ByteArrayEntityHC4;->content:[B

    .line 62
    iput-object p1, p0, Lorg/apache/http/entity/ByteArrayEntityHC4;->b:[B

    const/4 p1, 0x0

    .line 63
    iput p1, p0, Lorg/apache/http/entity/ByteArrayEntityHC4;->off:I

    .line 64
    iget-object p1, p0, Lorg/apache/http/entity/ByteArrayEntityHC4;->b:[B

    array-length p1, p1

    iput p1, p0, Lorg/apache/http/entity/ByteArrayEntityHC4;->len:I

    if-eqz p2, :cond_0

    .line 66
    invoke-virtual {p2}, Lorg/apache/http/entity/ContentType;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/http/entity/ByteArrayEntityHC4;->setContentType(Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 128
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getContent()Ljava/io/InputStream;
    .locals 4

    .line 107
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lorg/apache/http/entity/ByteArrayEntityHC4;->b:[B

    iget v2, p0, Lorg/apache/http/entity/ByteArrayEntityHC4;->off:I

    iget v3, p0, Lorg/apache/http/entity/ByteArrayEntityHC4;->len:I

    invoke-direct {v0, v1, v2, v3}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    return-object v0
.end method

.method public getContentLength()J
    .locals 2

    .line 103
    iget v0, p0, Lorg/apache/http/entity/ByteArrayEntityHC4;->len:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public isRepeatable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isStreaming()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "Output stream"

    .line 111
    invoke-static {p1, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 112
    iget-object v0, p0, Lorg/apache/http/entity/ByteArrayEntityHC4;->b:[B

    iget v1, p0, Lorg/apache/http/entity/ByteArrayEntityHC4;->off:I

    iget v2, p0, Lorg/apache/http/entity/ByteArrayEntityHC4;->len:I

    invoke-virtual {p1, v0, v1, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 113
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    return-void
.end method
