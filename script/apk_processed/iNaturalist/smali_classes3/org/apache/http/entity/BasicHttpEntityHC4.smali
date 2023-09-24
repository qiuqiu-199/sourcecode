.class public Lorg/apache/http/entity/BasicHttpEntityHC4;
.super Lorg/apache/http/entity/AbstractHttpEntityHC4;
.source "BasicHttpEntityHC4.java"


# annotations
.annotation build Lorg/apache/http/annotation/NotThreadSafe;
.end annotation


# instance fields
.field private content:Ljava/io/InputStream;

.field private length:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 56
    invoke-direct {p0}, Lorg/apache/http/entity/AbstractHttpEntityHC4;-><init>()V

    const-wide/16 v0, -0x1

    .line 57
    iput-wide v0, p0, Lorg/apache/http/entity/BasicHttpEntityHC4;->length:J

    return-void
.end method


# virtual methods
.method public getContent()Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 74
    iget-object v0, p0, Lorg/apache/http/entity/BasicHttpEntityHC4;->content:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Content has not been provided"

    invoke-static {v0, v1}, Lorg/apache/http/util/Asserts;->check(ZLjava/lang/String;)V

    .line 75
    iget-object v0, p0, Lorg/apache/http/entity/BasicHttpEntityHC4;->content:Ljava/io/InputStream;

    return-object v0
.end method

.method public getContentLength()J
    .locals 2

    .line 61
    iget-wide v0, p0, Lorg/apache/http/entity/BasicHttpEntityHC4;->length:J

    return-wide v0
.end method

.method public isRepeatable()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isStreaming()Z
    .locals 1

    .line 122
    iget-object v0, p0, Lorg/apache/http/entity/BasicHttpEntityHC4;->content:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setContent(Ljava/io/InputStream;)V
    .locals 0

    .line 104
    iput-object p1, p0, Lorg/apache/http/entity/BasicHttpEntityHC4;->content:Ljava/io/InputStream;

    return-void
.end method

.method public setContentLength(J)V
    .locals 0

    .line 94
    iput-wide p1, p0, Lorg/apache/http/entity/BasicHttpEntityHC4;->length:J

    return-void
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "Output stream"

    .line 108
    invoke-static {p1, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 109
    invoke-virtual {p0}, Lorg/apache/http/entity/BasicHttpEntityHC4;->getContent()Ljava/io/InputStream;

    move-result-object v0

    const/16 v1, 0x1000

    .line 112
    :try_start_0
    new-array v1, v1, [B

    .line 113
    :goto_0
    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    const/4 v3, 0x0

    .line 114
    invoke-virtual {p1, v1, v3, v2}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 117
    :cond_0
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    throw p1
.end method
