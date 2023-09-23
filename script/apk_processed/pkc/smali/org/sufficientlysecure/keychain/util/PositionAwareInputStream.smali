.class public Lorg/sufficientlysecure/keychain/util/PositionAwareInputStream;
.super Ljava/io/InputStream;
.source "PositionAwareInputStream.java"


# instance fields
.field private mPosition:J

.field private mStream:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 5

    move-object/16 v2, p0

    move-object/16 v3, p1

    .line 27
    invoke-direct {v2}, Ljava/io/InputStream;-><init>()V

    .line 28
    iput-object v3, v2, Lorg/sufficientlysecure/keychain/util/PositionAwareInputStream;->mStream:Ljava/io/InputStream;

    const-wide/16 v0, 0x0

    .line 29
    iput-wide v0, v2, Lorg/sufficientlysecure/keychain/util/PositionAwareInputStream;->mPosition:J

    return-void

    const-string v4, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/util/PositionAwareInputStream;---><init>(Ljava/io/InputStream;)V"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public available()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/16 v1, p0

    .line 41
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/util/PositionAwareInputStream;->mStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    return v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/util/PositionAwareInputStream;--->available()I"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public close()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/16 v1, p0

    .line 46
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/util/PositionAwareInputStream;->mStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-void

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/util/PositionAwareInputStream;--->close()V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public markSupported()Z
    .locals 4

    move-object/16 v1, p0

    const/4 v0, 0x0

    return v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/util/PositionAwareInputStream;--->markSupported()Z"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public position()J
    .locals 5

    move-object/16 v2, p0

    .line 82
    iget-wide v0, v2, Lorg/sufficientlysecure/keychain/util/PositionAwareInputStream;->mPosition:J

    return-wide v0

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/util/PositionAwareInputStream;--->position()J"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public read()I
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/16 v7, p0

    .line 34
    iget-object v0, v7, Lorg/sufficientlysecure/keychain/util/PositionAwareInputStream;->mStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 35
    iget-wide v1, v7, Lorg/sufficientlysecure/keychain/util/PositionAwareInputStream;->mPosition:J

    const-wide/16 v3, 0x1

    add-long v5, v1, v3

    iput-wide v5, v7, Lorg/sufficientlysecure/keychain/util/PositionAwareInputStream;->mPosition:J

    return v0

    const-string v8, "M_InsDal"

    const-string v9, "Lorg/sufficientlysecure/keychain/util/PositionAwareInputStream;--->read()I"

    invoke-static/range {v8 .. v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public read([B)I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/16 v6, p0

    move-object/16 v7, p1

    .line 56
    iget-object v0, v6, Lorg/sufficientlysecure/keychain/util/PositionAwareInputStream;->mStream:Ljava/io/InputStream;

    invoke-virtual {v0, v7}, Ljava/io/InputStream;->read([B)I

    move-result v7

    .line 57
    iget-wide v0, v6, Lorg/sufficientlysecure/keychain/util/PositionAwareInputStream;->mPosition:J

    int-to-long v2, v7

    add-long v4, v0, v2

    iput-wide v4, v6, Lorg/sufficientlysecure/keychain/util/PositionAwareInputStream;->mPosition:J

    return v7

    const-string v8, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/util/PositionAwareInputStream;--->read([B)I"

    invoke-static/range {v8 .. v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public read([BII)I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/16 v4, p0

    move-object/16 v5, p1

    move/16 v6, p2

    move/16 p0, p3

    .line 63
    iget-object v0, v4, Lorg/sufficientlysecure/keychain/util/PositionAwareInputStream;->mStream:Ljava/io/InputStream;

    invoke-virtual {v0, v5, v6, p0}, Ljava/io/InputStream;->read([BII)I

    move-result v5

    .line 64
    iget-wide v6, v4, Lorg/sufficientlysecure/keychain/util/PositionAwareInputStream;->mPosition:J

    int-to-long v0, v5

    add-long v2, v6, v0

    iput-wide v2, v4, Lorg/sufficientlysecure/keychain/util/PositionAwareInputStream;->mPosition:J

    return v5

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/util/PositionAwareInputStream;--->read([BII)I"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public declared-synchronized reset()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/16 v2, p0

    monitor-enter v2

    .line 70
    :try_start_0
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/util/PositionAwareInputStream;->mStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V

    const-wide/16 v0, 0x0

    .line 71
    iput-wide v0, v2, Lorg/sufficientlysecure/keychain/util/PositionAwareInputStream;->mPosition:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    monitor-exit v2

    return-void

    :catchall_0
    move-exception v0

    .line 69
    monitor-exit v2

    throw v0

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/util/PositionAwareInputStream;--->reset()V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public skip(J)J
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/16 v4, p0

    move-wide/16 v5, p1

    .line 76
    iget-object v0, v4, Lorg/sufficientlysecure/keychain/util/PositionAwareInputStream;->mStream:Ljava/io/InputStream;

    invoke-virtual {v0, v5, v6}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v5

    .line 77
    iget-wide v0, v4, Lorg/sufficientlysecure/keychain/util/PositionAwareInputStream;->mPosition:J

    add-long v2, v0, v5

    iput-wide v2, v4, Lorg/sufficientlysecure/keychain/util/PositionAwareInputStream;->mPosition:J

    return-wide v5

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/util/PositionAwareInputStream;--->skip(J)J"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
