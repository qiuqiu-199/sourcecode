.class public Lorg/sufficientlysecure/keychain/remote/ui/RemotePassphraseDialogActivity;
.super Lorg/sufficientlysecure/keychain/ui/PassphraseDialogActivity;
.source "RemotePassphraseDialogActivity.java"


# static fields
.field public static final EXTRA_DATA:Ljava/lang/String; = "data"


# instance fields
.field private mPendingIntentData:Landroid/content/Intent;


# direct methods
.method public constructor <init>()V
    .locals 3

    move-object/16 v0, p0

    .line 27
    invoke-direct {v0}, Lorg/sufficientlysecure/keychain/ui/PassphraseDialogActivity;-><init>()V

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/remote/ui/RemotePassphraseDialogActivity;---><init>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method protected handleResult(Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;)V
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    .line 42
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/remote/ui/RemotePassphraseDialogActivity;->mPendingIntentData:Landroid/content/Intent;

    invoke-static {v1, v0, v2}, Lorg/sufficientlysecure/keychain/remote/CryptoInputParcelCacheService;->addCryptoInputParcel(Landroid/content/Context;Landroid/content/Intent;Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;)V

    .line 43
    iget-object v2, v1, Lorg/sufficientlysecure/keychain/remote/ui/RemotePassphraseDialogActivity;->mPendingIntentData:Landroid/content/Intent;

    const/4 v0, -0x1

    invoke-virtual {v1, v0, v2}, Lorg/sufficientlysecure/keychain/remote/ui/RemotePassphraseDialogActivity;->setResult(ILandroid/content/Intent;)V

    return-void

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/remote/ui/RemotePassphraseDialogActivity;--->handleResult(Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;)V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    .line 35
    invoke-super {v1, v2}, Lorg/sufficientlysecure/keychain/ui/PassphraseDialogActivity;->onCreate(Landroid/os/Bundle;)V

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/remote/ui/RemotePassphraseDialogActivity;--->onCreate(Landroid/os/Bundle;)V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/remote/ui/RemotePassphraseDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v0, "data"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    iput-object v2, v1, Lorg/sufficientlysecure/keychain/remote/ui/RemotePassphraseDialogActivity;->mPendingIntentData:Landroid/content/Intent;

    return-void
.end method
