.class public final Lorg/sufficientlysecure/keychain/util/CountingOutputStream;
.super Ljava/io/FilterOutputStream;
.source "CountingOutputStream.java"


# instance fields
.field private count:J


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    .line 36
    invoke-direct {v0, v1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    return-void

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/util/CountingOutputStream;---><init>(Ljava/io/OutputStream;)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public close()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/16 v1, p0

    .line 63
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/util/CountingOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    return-void

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/util/CountingOutputStream;--->close()V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getCount()J
    .locals 5

    move-object/16 v2, p0

    .line 43
    iget-wide v0, v2, Lorg/sufficientlysecure/keychain/util/CountingOutputStream;->count:J

    return-wide v0

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/util/CountingOutputStream;--->getCount()J"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public write(I)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/16 v6, p0

    move/16 v7, p1

    .line 54
    iget-object v0, v6, Lorg/sufficientlysecure/keychain/util/CountingOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, v7}, Ljava/io/OutputStream;->write(I)V

    .line 55
    iget-wide v0, v6, Lorg/sufficientlysecure/keychain/util/CountingOutputStream;->count:J

    const-wide/16 v2, 0x1

    add-long v4, v0, v2

    iput-wide v4, v6, Lorg/sufficientlysecure/keychain/util/CountingOutputStream;->count:J

    return-void

    const-string v8, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/util/CountingOutputStream;--->write(I)V"

    invoke-static/range {v8 .. v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public write([BII)V
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

    .line 48
    iget-object v0, v4, Lorg/sufficientlysecure/keychain/util/CountingOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, v5, v6, p0}, Ljava/io/OutputStream;->write([BII)V

    .line 49
    iget-wide v5, v4, Lorg/sufficientlysecure/keychain/util/CountingOutputStream;->count:J

    int-to-long v0, p0

    add-long v2, v5, v0

    iput-wide v2, v4, Lorg/sufficientlysecure/keychain/util/CountingOutputStream;->count:J

    return-void

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/util/CountingOutputStream;--->write([BII)V"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
