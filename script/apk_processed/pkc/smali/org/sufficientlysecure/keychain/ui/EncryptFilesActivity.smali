.class public Lorg/sufficientlysecure/keychain/ui/EncryptFilesActivity;
.super Lorg/sufficientlysecure/keychain/ui/EncryptActivity;
.source "EncryptFilesActivity.java"


# static fields
.field public static final ACTION_ENCRYPT_DATA:Ljava/lang/String; = "org.sufficientlysecure.keychain.action.ENCRYPT_DATA"

.field public static final EXTRA_ASCII_ARMOR:Ljava/lang/String; = "org.sufficientlysecure.keychain.EXTRA_ASCII_ARMOR"


# direct methods
.method public constructor <init>()V
    .locals 3

    move-object/16 v0, p0

    .line 31
    invoke-direct {v0}, Lorg/sufficientlysecure/keychain/ui/EncryptActivity;-><init>()V

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/ui/EncryptFilesActivity;---><init>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method protected initLayout()V
    .locals 4

    move-object/16 v1, p0

    const v0, 0x7f0c0070

    .line 77
    invoke-virtual {v1, v0}, Lorg/sufficientlysecure/keychain/ui/EncryptFilesActivity;->setContentView(I)V

    return-void

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/ui/EncryptFilesActivity;--->initLayout()V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8

    move-object/16 v5, p0

    move-object/16 v6, p1

    .line 41
    invoke-super {v5, v6}, Lorg/sufficientlysecure/keychain/ui/EncryptActivity;->onCreate(Landroid/os/Bundle;)V

    const-string v7, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/EncryptFilesActivity;--->onCreate(Landroid/os/Bundle;)V"

    invoke-static/range {v7 .. v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 43
    invoke-virtual {v5, v0, v1}, Lorg/sufficientlysecure/keychain/ui/EncryptFilesActivity;->setFullScreenDialogClose(IZ)V

    .line 45
    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/ui/EncryptFilesActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 46
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 47
    invoke-virtual {v0}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v2

    .line 48
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 50
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 51
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    const-string v4, "android.intent.action.SEND"

    .line 55
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    if-eqz v2, :cond_1

    .line 57
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    const-string v4, "android.intent.extra.STREAM"

    .line 58
    invoke-virtual {v0, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    const-string v4, "android.intent.action.SEND_MULTIPLE"

    .line 61
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz v2, :cond_2

    const-string v1, "android.intent.extra.STREAM"

    .line 62
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    :cond_2
    if-nez v6, :cond_3

    .line 66
    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/ui/EncryptFilesActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v6

    .line 68
    invoke-static {v3}, Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment;->newInstance(Ljava/util/ArrayList;)Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment;

    move-result-object v0

    const v1, 0x7f09014f

    .line 69
    invoke-virtual {v6, v1, v0}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 70
    invoke-virtual {v6}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    :cond_3
    return-void
.end method
