.class public Lorg/sufficientlysecure/keychain/livedata/PgpKeyGenerationLiveData;
.super Lorg/sufficientlysecure/keychain/ui/keyview/loader/AsyncTaskLiveData;
.source "PgpKeyGenerationLiveData.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/sufficientlysecure/keychain/ui/keyview/loader/AsyncTaskLiveData<",
        "Lorg/sufficientlysecure/keychain/operations/results/PgpEditKeyResult;",
        ">;"
    }
.end annotation


# instance fields
.field private saveKeyringParcel:Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    const/4 v0, 0x0

    .line 17
    invoke-direct {v1, v2, v0}, Lorg/sufficientlysecure/keychain/ui/keyview/loader/AsyncTaskLiveData;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    return-void

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/livedata/PgpKeyGenerationLiveData;---><init>(Landroid/content/Context;)V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method protected bridge synthetic asyncLoadData()Ljava/lang/Object;
    .locals 1

    .line 13
    invoke-virtual {p0}, Lorg/sufficientlysecure/keychain/livedata/PgpKeyGenerationLiveData;->asyncLoadData()Lorg/sufficientlysecure/keychain/operations/results/PgpEditKeyResult;

    move-result-object v0

    return-object v0
.end method

.method protected asyncLoadData()Lorg/sufficientlysecure/keychain/operations/results/PgpEditKeyResult;
    .locals 5

    move-object/16 v2, p0

    .line 31
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/livedata/PgpKeyGenerationLiveData;->saveKeyringParcel:Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 35
    :cond_0
    new-instance v0, Lorg/sufficientlysecure/keychain/pgp/PgpKeyOperation;

    new-instance v1, Lorg/sufficientlysecure/keychain/util/ProgressScaler;

    invoke-direct {v1}, Lorg/sufficientlysecure/keychain/util/ProgressScaler;-><init>()V

    invoke-direct {v0, v1}, Lorg/sufficientlysecure/keychain/pgp/PgpKeyOperation;-><init>(Lorg/sufficientlysecure/keychain/pgp/Progressable;)V

    .line 36
    iget-object v1, v2, Lorg/sufficientlysecure/keychain/livedata/PgpKeyGenerationLiveData;->saveKeyringParcel:Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel;

    invoke-virtual {v0, v1}, Lorg/sufficientlysecure/keychain/pgp/PgpKeyOperation;->createSecretKeyRing(Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel;)Lorg/sufficientlysecure/keychain/operations/results/PgpEditKeyResult;

    move-result-object v0

    return-object v0

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/livedata/PgpKeyGenerationLiveData;--->asyncLoadData()Lorg/sufficientlysecure/keychain/operations/results/PgpEditKeyResult;"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public setSaveKeyringParcel(Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel;)V
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    .line 21
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/livedata/PgpKeyGenerationLiveData;->saveKeyringParcel:Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel;

    if-ne v0, v2, :cond_0

    return-void

    .line 24
    :cond_0
    iput-object v2, v1, Lorg/sufficientlysecure/keychain/livedata/PgpKeyGenerationLiveData;->saveKeyringParcel:Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel;

    .line 26
    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/livedata/PgpKeyGenerationLiveData;->updateDataInBackground()V

    return-void

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/livedata/PgpKeyGenerationLiveData;--->setSaveKeyringParcel(Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel;)V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
