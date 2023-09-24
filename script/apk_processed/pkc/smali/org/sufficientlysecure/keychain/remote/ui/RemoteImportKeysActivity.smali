.class public Lorg/sufficientlysecure/keychain/remote/ui/RemoteImportKeysActivity;
.super Lorg/sufficientlysecure/keychain/ui/ImportKeysActivity;
.source "RemoteImportKeysActivity.java"


# static fields
.field public static final EXTRA_DATA:Ljava/lang/String; = "data"


# instance fields
.field private mPendingIntentData:Landroid/content/Intent;


# direct methods
.method public constructor <init>()V
    .locals 3

    move-object/16 v0, p0

    .line 26
    invoke-direct {v0}, Lorg/sufficientlysecure/keychain/ui/ImportKeysActivity;-><init>()V

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/remote/ui/RemoteImportKeysActivity;---><init>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public handleResult(Lorg/sufficientlysecure/keychain/operations/results/ImportKeyResult;Ljava/lang/Integer;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    move-object/16 v2, p2

    .line 41
    iget-object v1, v0, Lorg/sufficientlysecure/keychain/remote/ui/RemoteImportKeysActivity;->mPendingIntentData:Landroid/content/Intent;

    const/4 v2, -0x1

    invoke-virtual {v0, v2, v1}, Lorg/sufficientlysecure/keychain/remote/ui/RemoteImportKeysActivity;->setResult(ILandroid/content/Intent;)V

    .line 42
    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/remote/ui/RemoteImportKeysActivity;->finish()V

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/remote/ui/RemoteImportKeysActivity;--->handleResult(Lorg/sufficientlysecure/keychain/operations/results/ImportKeyResult;Ljava/lang/Integer;)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    .line 34
    invoke-super {v1, v2}, Lorg/sufficientlysecure/keychain/ui/ImportKeysActivity;->onCreate(Landroid/os/Bundle;)V

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/remote/ui/RemoteImportKeysActivity;--->onCreate(Landroid/os/Bundle;)V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/remote/ui/RemoteImportKeysActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v0, "data"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    iput-object v2, v1, Lorg/sufficientlysecure/keychain/remote/ui/RemoteImportKeysActivity;->mPendingIntentData:Landroid/content/Intent;

    return-void
.end method
