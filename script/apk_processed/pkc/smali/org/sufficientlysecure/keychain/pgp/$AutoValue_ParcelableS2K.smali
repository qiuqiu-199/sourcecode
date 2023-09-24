.class abstract Lorg/sufficientlysecure/keychain/pgp/$AutoValue_ParcelableS2K;
.super Lorg/sufficientlysecure/keychain/pgp/$$AutoValue_ParcelableS2K;
.source "$AutoValue_ParcelableS2K.java"


# instance fields
.field private volatile hashCode:I

.field private volatile hashCode$Memoized:Z


# direct methods
.method constructor <init>(IIIJ[B)V
    .locals 3

    move-object/16 v0, p0

    move/16 v1, p1

    move/16 v2, p2

    move/16 p0, p3

    move-wide/16 p1, p4

    move-object/16 p3, p6

    .line 14
    invoke-direct/range {v0 .. v6}, Lorg/sufficientlysecure/keychain/pgp/$$AutoValue_ParcelableS2K;-><init>(IIIJ[B)V

    return-void

    const-string p4, "M_InsDal"

    const-string p5, "Lorg/sufficientlysecure/keychain/pgp/$AutoValue_ParcelableS2K;---><init>(IIIJ[B)V"

    invoke-static/range {p4 .. p5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public hashCode()I
    .locals 4

    move-object/16 v1, p0

    .line 19
    iget-boolean v0, v1, Lorg/sufficientlysecure/keychain/pgp/$AutoValue_ParcelableS2K;->hashCode$Memoized:Z

    if-nez v0, :cond_1

    .line 20
    monitor-enter v1

    .line 21
    :try_start_0
    iget-boolean v0, v1, Lorg/sufficientlysecure/keychain/pgp/$AutoValue_ParcelableS2K;->hashCode$Memoized:Z

    if-nez v0, :cond_0

    .line 22
    invoke-super {v1}, Lorg/sufficientlysecure/keychain/pgp/$$AutoValue_ParcelableS2K;->hashCode()I

    move-result v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/pgp/$AutoValue_ParcelableS2K;--->hashCode()I"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput v0, v1, Lorg/sufficientlysecure/keychain/pgp/$AutoValue_ParcelableS2K;->hashCode:I

    const/4 v0, 0x1

    .line 23
    iput-boolean v0, v1, Lorg/sufficientlysecure/keychain/pgp/$AutoValue_ParcelableS2K;->hashCode$Memoized:Z

    .line 25
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 27
    :cond_1
    :goto_0
    iget v0, v1, Lorg/sufficientlysecure/keychain/pgp/$AutoValue_ParcelableS2K;->hashCode:I

    return v0
.end method
