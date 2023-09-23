.class public Lorg/sufficientlysecure/keychain/ui/DisplayTextActivity;
.super Lorg/sufficientlysecure/keychain/ui/base/BaseActivity;
.source "DisplayTextActivity.java"


# static fields
.field public static final EXTRA_METADATA:Ljava/lang/String; = "metadata"

.field public static final EXTRA_RESULT:Ljava/lang/String; = "result"


# direct methods
.method public constructor <init>()V
    .locals 3

    move-object/16 v0, p0

    .line 38
    invoke-direct {v0}, Lorg/sufficientlysecure/keychain/ui/base/BaseActivity;-><init>()V

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/ui/DisplayTextActivity;---><init>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private handleActions(Landroid/os/Bundle;Landroid/content/Intent;)V
    .locals 5

    move-object/16 v2, p0

    move-object/16 v3, p1

    move-object/16 v4, p2

    if-eqz v3, :cond_0

    return-void

    :cond_0
    const-string v3, "result"

    .line 66
    invoke-virtual {v4, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lorg/sufficientlysecure/keychain/operations/results/DecryptVerifyResult;

    const-string v0, "metadata"

    .line 67
    invoke-virtual {v4, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lorg/openintents/openpgp/OpenPgpMetadata;

    const/4 v1, 0x1

    .line 71
    :try_start_0
    invoke-virtual {v4}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v0}, Lorg/openintents/openpgp/OpenPgpMetadata;->getCharset()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v4, v0}, Lorg/sufficientlysecure/keychain/util/FileHelper;->readTextFromUri(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v4, :cond_2

    .line 78
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v0

    const v1, 0xc800

    if-le v0, v1, :cond_1

    const/4 v0, 0x0

    .line 79
    invoke-virtual {v4, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const v0, 0x7f110cbd

    .line 80
    sget-object v1, Lorg/sufficientlysecure/keychain/ui/util/Notify$Style;->WARN:Lorg/sufficientlysecure/keychain/ui/util/Notify$Style;

    invoke-static {v2, v0, v1}, Lorg/sufficientlysecure/keychain/ui/util/Notify;->create(Landroid/app/Activity;ILorg/sufficientlysecure/keychain/ui/util/Notify$Style;)Lorg/sufficientlysecure/keychain/ui/util/Notify$Showable;

    move-result-object v0

    invoke-interface {v0}, Lorg/sufficientlysecure/keychain/ui/util/Notify$Showable;->show()V

    .line 83
    :cond_1
    invoke-direct {v2, v4, v3}, Lorg/sufficientlysecure/keychain/ui/DisplayTextActivity;->loadFragment(Ljava/lang/String;Lorg/sufficientlysecure/keychain/operations/results/DecryptVerifyResult;)V

    goto :goto_0

    :cond_2
    const v3, 0x7f11017b

    .line 85
    invoke-static {v2, v3, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 86
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/ui/DisplayTextActivity;->finish()V

    :goto_0
    return-void

    :catch_0
    const v3, 0x7f11018f

    .line 73
    invoke-static {v2, v3, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/ui/DisplayTextActivity;--->handleActions(Landroid/os/Bundle;Landroid/content/Intent;)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private loadFragment(Ljava/lang/String;Lorg/sufficientlysecure/keychain/operations/results/DecryptVerifyResult;)V
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    move-object/16 v3, p2

    .line 92
    invoke-static {v2, v3}, Lorg/sufficientlysecure/keychain/ui/DisplayTextFragment;->newInstance(Ljava/lang/String;Lorg/sufficientlysecure/keychain/operations/results/DecryptVerifyResult;)Lorg/sufficientlysecure/keychain/ui/DisplayTextFragment;

    move-result-object v2

    .line 96
    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/ui/DisplayTextActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v3

    const v0, 0x7f09011d

    .line 97
    invoke-virtual {v3, v0, v2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    .line 98
    invoke-virtual {v2}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 100
    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/ui/DisplayTextActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManager;->executePendingTransactions()Z

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/ui/DisplayTextActivity;--->loadFragment(Ljava/lang/String;Lorg/sufficientlysecure/keychain/operations/results/DecryptVerifyResult;)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method protected initLayout()V
    .locals 4

    move-object/16 v1, p0

    const v0, 0x7f0c0050

    .line 55
    invoke-virtual {v1, v0}, Lorg/sufficientlysecure/keychain/ui/DisplayTextActivity;->setContentView(I)V

    return-void

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/ui/DisplayTextActivity;--->initLayout()V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    .line 45
    invoke-super {v1, v2}, Lorg/sufficientlysecure/keychain/ui/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/DisplayTextActivity;--->onCreate(Landroid/os/Bundle;)V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 47
    invoke-virtual {v1, v0, v0}, Lorg/sufficientlysecure/keychain/ui/DisplayTextActivity;->setFullScreenDialogClose(IZ)V

    .line 50
    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/ui/DisplayTextActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lorg/sufficientlysecure/keychain/ui/DisplayTextActivity;->handleActions(Landroid/os/Bundle;Landroid/content/Intent;)V

    return-void
.end method
