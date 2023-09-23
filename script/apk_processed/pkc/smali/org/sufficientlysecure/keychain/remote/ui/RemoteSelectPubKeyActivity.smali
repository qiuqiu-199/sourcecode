.class public Lorg/sufficientlysecure/keychain/remote/ui/RemoteSelectPubKeyActivity;
.super Lorg/sufficientlysecure/keychain/ui/base/BaseActivity;
.source "RemoteSelectPubKeyActivity.java"


# static fields
.field public static final EXTRA_DATA:Ljava/lang/String; = "data"

.field public static final EXTRA_DUPLICATE_EMAILS:Ljava/lang/String; = "dublicate_emails"

.field public static final EXTRA_MISSING_EMAILS:Ljava/lang/String; = "missing_emails"

.field public static final EXTRA_NO_USER_IDS_CHECK:Ljava/lang/String; = "no_user_ids"

.field public static final EXTRA_SELECTED_MASTER_KEY_IDS:Ljava/lang/String; = "master_key_ids"


# instance fields
.field private mSelectFragment:Lorg/sufficientlysecure/keychain/remote/ui/SelectPublicKeyFragment;


# direct methods
.method public constructor <init>()V
    .locals 3

    move-object/16 v0, p0

    .line 38
    invoke-direct {v0}, Lorg/sufficientlysecure/keychain/ui/base/BaseActivity;-><init>()V

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/remote/ui/RemoteSelectPubKeyActivity;---><init>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method static synthetic access$000(Lorg/sufficientlysecure/keychain/remote/ui/RemoteSelectPubKeyActivity;)Lorg/sufficientlysecure/keychain/remote/ui/SelectPublicKeyFragment;
    .locals 0

    .line 38
    iget-object p0, p0, Lorg/sufficientlysecure/keychain/remote/ui/RemoteSelectPubKeyActivity;->mSelectFragment:Lorg/sufficientlysecure/keychain/remote/ui/SelectPublicKeyFragment;

    return-object p0
.end method


# virtual methods
.method protected initLayout()V
    .locals 4

    move-object/16 v1, p0

    const v0, 0x7f0c002a

    .line 52
    invoke-virtual {v1, v0}, Lorg/sufficientlysecure/keychain/remote/ui/RemoteSelectPubKeyActivity;->setContentView(I)V

    return-void

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/remote/ui/RemoteSelectPubKeyActivity;--->initLayout()V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 15

    move-object/16 v12, p0

    move-object/16 v13, p1

    .line 57
    invoke-super {v12, v13}, Lorg/sufficientlysecure/keychain/ui/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const-string v14, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/remote/ui/RemoteSelectPubKeyActivity;--->onCreate(Landroid/os/Bundle;)V"

    invoke-static/range {v14 .. v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    invoke-virtual {v12}, Lorg/sufficientlysecure/keychain/remote/ui/RemoteSelectPubKeyActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 61
    invoke-virtual {v12}, Lorg/sufficientlysecure/keychain/remote/ui/RemoteSelectPubKeyActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "master_key_ids"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getLongArrayExtra(Ljava/lang/String;)[J

    move-result-object v1

    .line 62
    invoke-virtual {v12}, Lorg/sufficientlysecure/keychain/remote/ui/RemoteSelectPubKeyActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "no_user_ids"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 63
    invoke-virtual {v12}, Lorg/sufficientlysecure/keychain/remote/ui/RemoteSelectPubKeyActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v5, "missing_emails"

    .line 64
    invoke-virtual {v3, v5}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 65
    invoke-virtual {v12}, Lorg/sufficientlysecure/keychain/remote/ui/RemoteSelectPubKeyActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "dublicate_emails"

    .line 66
    invoke-virtual {v5, v6}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    .line 68
    new-instance v6, Landroid/text/SpannableStringBuilder;

    invoke-direct {v6}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 69
    new-instance v7, Landroid/text/SpannableString;

    if-eqz v2, :cond_0

    const v2, 0x7f110035

    .line 70
    invoke-virtual {v12, v2}, Lorg/sufficientlysecure/keychain/remote/ui/RemoteSelectPubKeyActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    const v2, 0x7f110034

    .line 71
    invoke-virtual {v12, v2}, Lorg/sufficientlysecure/keychain/remote/ui/RemoteSelectPubKeyActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-direct {v7, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 73
    new-instance v2, Landroid/text/style/StyleSpan;

    invoke-direct {v2, v4}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {v7}, Landroid/text/SpannableString;->length()I

    move-result v4

    const/16 v8, 0x21

    const/4 v9, 0x0

    invoke-virtual {v7, v2, v9, v4, v8}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 74
    invoke-virtual {v6, v7}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    const/high16 v2, -0x1000000

    const/16 v4, 0xf

    if-eqz v3, :cond_1

    .line 76
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_1

    const-string v7, "\n\n"

    .line 77
    invoke-virtual {v6, v7}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    const v7, 0x7f110033

    .line 78
    invoke-virtual {v12, v7}, Lorg/sufficientlysecure/keychain/remote/ui/RemoteSelectPubKeyActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    const-string v7, "\n"

    .line 79
    invoke-virtual {v6, v7}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 80
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 81
    new-instance v10, Landroid/text/SpannableString;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\n"

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v10, v7}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 82
    new-instance v7, Landroid/text/style/BulletSpan;

    invoke-direct {v7, v4, v2}, Landroid/text/style/BulletSpan;-><init>(II)V

    invoke-virtual {v10}, Landroid/text/SpannableString;->length()I

    move-result v11

    invoke-virtual {v10, v7, v9, v11, v8}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 84
    invoke-virtual {v6, v10}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_1

    :cond_1
    if-eqz v5, :cond_2

    .line 87
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_2

    const-string v3, "\n\n"

    .line 88
    invoke-virtual {v6, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    const v3, 0x7f110032

    .line 89
    invoke-virtual {v12, v3}, Lorg/sufficientlysecure/keychain/remote/ui/RemoteSelectPubKeyActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    const-string v3, "\n"

    .line 90
    invoke-virtual {v6, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 91
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 92
    new-instance v7, Landroid/text/SpannableString;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\n"

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v7, v5}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 93
    new-instance v5, Landroid/text/style/BulletSpan;

    invoke-direct {v5, v4, v2}, Landroid/text/style/BulletSpan;-><init>(II)V

    invoke-virtual {v7}, Landroid/text/SpannableString;->length()I

    move-result v10

    invoke-virtual {v7, v5, v9, v10, v8}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 95
    invoke-virtual {v6, v7}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_2

    :cond_2
    const v2, 0x7f110076

    .line 100
    new-instance v3, Lorg/sufficientlysecure/keychain/remote/ui/RemoteSelectPubKeyActivity$1;

    invoke-direct {v3, v12, v0}, Lorg/sufficientlysecure/keychain/remote/ui/RemoteSelectPubKeyActivity$1;-><init>(Lorg/sufficientlysecure/keychain/remote/ui/RemoteSelectPubKeyActivity;Landroid/os/Bundle;)V

    new-instance v0, Lorg/sufficientlysecure/keychain/remote/ui/RemoteSelectPubKeyActivity$2;

    invoke-direct {v0, v12}, Lorg/sufficientlysecure/keychain/remote/ui/RemoteSelectPubKeyActivity$2;-><init>(Lorg/sufficientlysecure/keychain/remote/ui/RemoteSelectPubKeyActivity;)V

    invoke-virtual {v12, v2, v3, v0}, Lorg/sufficientlysecure/keychain/remote/ui/RemoteSelectPubKeyActivity;->setFullScreenDialogDoneClose(ILandroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090054

    .line 123
    invoke-virtual {v12, v0}, Lorg/sufficientlysecure/keychain/remote/ui/RemoteSelectPubKeyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 124
    sget-object v2, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v0, v6, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    const v0, 0x7f090053

    .line 129
    invoke-virtual {v12, v0}, Lorg/sufficientlysecure/keychain/remote/ui/RemoteSelectPubKeyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_4

    if-eqz v13, :cond_3

    return-void

    .line 139
    :cond_3
    invoke-static {v1}, Lorg/sufficientlysecure/keychain/remote/ui/SelectPublicKeyFragment;->newInstance([J)Lorg/sufficientlysecure/keychain/remote/ui/SelectPublicKeyFragment;

    move-result-object v13

    iput-object v13, v12, Lorg/sufficientlysecure/keychain/remote/ui/RemoteSelectPubKeyActivity;->mSelectFragment:Lorg/sufficientlysecure/keychain/remote/ui/SelectPublicKeyFragment;

    .line 142
    invoke-virtual {v12}, Lorg/sufficientlysecure/keychain/remote/ui/RemoteSelectPubKeyActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v13

    invoke-virtual {v13}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v13

    iget-object v1, v12, Lorg/sufficientlysecure/keychain/remote/ui/RemoteSelectPubKeyActivity;->mSelectFragment:Lorg/sufficientlysecure/keychain/remote/ui/SelectPublicKeyFragment;

    .line 143
    invoke-virtual {v13, v0, v1}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v13

    invoke-virtual {v13}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    :cond_4
    return-void
.end method
