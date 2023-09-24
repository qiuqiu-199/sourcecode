.class public Lorg/sufficientlysecure/keychain/ui/EncryptTextActivity;
.super Lorg/sufficientlysecure/keychain/ui/EncryptActivity;
.source "EncryptTextActivity.java"


# static fields
.field public static final ACTION_ENCRYPT_TEXT:Ljava/lang/String; = "org.sufficientlysecure.keychain.action.ENCRYPT_TEXT"

.field public static final EXTRA_TEXT:Ljava/lang/String; = "org.sufficientlysecure.keychain.EXTRA_TEXT"


# direct methods
.method public constructor <init>()V
    .locals 3

    move-object/16 v0, p0

    .line 40
    invoke-direct {v0}, Lorg/sufficientlysecure/keychain/ui/EncryptActivity;-><init>()V

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/ui/EncryptTextActivity;---><init>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method protected initLayout()V
    .locals 4

    move-object/16 v1, p0

    const v0, 0x7f0c0073

    .line 142
    invoke-virtual {v1, v0}, Lorg/sufficientlysecure/keychain/ui/EncryptTextActivity;->setContentView(I)V

    return-void

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/ui/EncryptTextActivity;--->initLayout()V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 13

    move-object/16 v10, p0

    move-object/16 v11, p1

    .line 50
    invoke-super {v10, v11}, Lorg/sufficientlysecure/keychain/ui/EncryptActivity;->onCreate(Landroid/os/Bundle;)V

    const-string v12, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/EncryptTextActivity;--->onCreate(Landroid/os/Bundle;)V"

    invoke-static/range {v12 .. v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    const/4 v1, -0x1

    .line 52
    invoke-virtual {v10, v1, v0}, Lorg/sufficientlysecure/keychain/ui/EncryptTextActivity;->setFullScreenDialogClose(IZ)V

    .line 54
    invoke-virtual {v10}, Lorg/sufficientlysecure/keychain/ui/EncryptTextActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 55
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 56
    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    .line 57
    invoke-virtual {v1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v1

    if-nez v3, :cond_0

    .line 60
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    :cond_0
    const-string v4, "org.sufficientlysecure.keychain.EXTRA_TEXT"

    .line 63
    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "android.intent.action.SEND"

    .line 67
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const v6, 0x7f110cbc

    const/4 v7, 0x0

    const v8, 0xc800

    const/4 v9, 0x1

    if-eqz v5, :cond_5

    if-eqz v1, :cond_5

    const-string v5, "text/plain"

    .line 69
    invoke-static {v5, v1}, Lorg/apache/james/mime4j/util/MimeUtil;->isSameMimeType(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    const v11, 0x7f110d02

    .line 70
    invoke-static {v10, v11, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    .line 71
    invoke-virtual {v10}, Lorg/sufficientlysecure/keychain/ui/EncryptTextActivity;->finish()V

    return-void

    :cond_1
    const-string v5, "android.intent.extra.TEXT"

    .line 76
    invoke-virtual {v3, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v5, "android.intent.extra.TEXT"

    .line 77
    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    :cond_2
    const-string v5, "android.intent.extra.STREAM"

    .line 78
    invoke-virtual {v3, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    :try_start_0
    const-string v5, "android.intent.extra.STREAM"

    .line 80
    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Landroid/net/Uri;

    invoke-static {v10, v5, v7}, Lorg/sufficientlysecure/keychain/util/FileHelper;->readTextFromUri(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    if-eqz v5, :cond_5

    .line 93
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v8, :cond_3

    .line 94
    invoke-virtual {v5, v0, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 95
    sget-object v5, Lorg/sufficientlysecure/keychain/ui/util/Notify$Style;->WARN:Lorg/sufficientlysecure/keychain/ui/util/Notify$Style;

    invoke-static {v10, v6, v5}, Lorg/sufficientlysecure/keychain/ui/util/Notify;->create(Landroid/app/Activity;ILorg/sufficientlysecure/keychain/ui/util/Notify$Style;)Lorg/sufficientlysecure/keychain/ui/util/Notify$Showable;

    move-result-object v5

    invoke-interface {v5}, Lorg/sufficientlysecure/keychain/ui/util/Notify$Showable;->show()V

    goto :goto_1

    :cond_3
    move-object v4, v5

    goto :goto_1

    :catch_0
    const v11, 0x7f11018f

    .line 82
    invoke-static {v10, v11, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    .line 83
    invoke-virtual {v10}, Lorg/sufficientlysecure/keychain/ui/EncryptTextActivity;->finish()V

    return-void

    :cond_4
    const v11, 0x7f110d01

    .line 87
    invoke-static {v10, v11, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    .line 88
    invoke-virtual {v10}, Lorg/sufficientlysecure/keychain/ui/EncryptTextActivity;->finish()V

    return-void

    :cond_5
    :goto_1
    const-string v5, "android.intent.action.PROCESS_TEXT"

    .line 105
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    if-eqz v1, :cond_9

    const-string v1, "android.intent.extra.PROCESS_TEXT"

    .line 108
    invoke-virtual {v3, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, "android.intent.extra.PROCESS_TEXT"

    .line 109
    invoke-virtual {v3, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_2

    :cond_6
    const-string v1, "android.intent.extra.PROCESS_TEXT_READONLY"

    .line 111
    invoke-virtual {v3, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v1, "android.intent.extra.PROCESS_TEXT_READONLY"

    .line 112
    invoke-virtual {v3, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    :cond_7
    const/4 v9, 0x0

    :goto_2
    if-eqz v7, :cond_a

    .line 116
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v8, :cond_8

    .line 117
    invoke-virtual {v7, v0, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 118
    sget-object v1, Lorg/sufficientlysecure/keychain/ui/util/Notify$Style;->WARN:Lorg/sufficientlysecure/keychain/ui/util/Notify$Style;

    invoke-static {v10, v6, v1}, Lorg/sufficientlysecure/keychain/ui/util/Notify;->create(Landroid/app/Activity;ILorg/sufficientlysecure/keychain/ui/util/Notify$Style;)Lorg/sufficientlysecure/keychain/ui/util/Notify$Showable;

    move-result-object v1

    invoke-interface {v1}, Lorg/sufficientlysecure/keychain/ui/util/Notify$Showable;->show()V

    move-object v4, v0

    goto :goto_3

    :cond_8
    move-object v4, v7

    goto :goto_3

    :cond_9
    const/4 v9, 0x0

    :cond_a
    :goto_3
    if-nez v4, :cond_b

    const-string v4, ""

    :cond_b
    if-nez v11, :cond_c

    .line 131
    invoke-virtual {v10}, Lorg/sufficientlysecure/keychain/ui/EncryptTextActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v11

    invoke-virtual {v11}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v11

    .line 133
    invoke-static {v4, v9}, Lorg/sufficientlysecure/keychain/ui/EncryptTextFragment;->newInstance(Ljava/lang/String;Z)Lorg/sufficientlysecure/keychain/ui/EncryptTextFragment;

    move-result-object v0

    const v1, 0x7f090156

    .line 134
    invoke-virtual {v11, v1, v0}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 135
    invoke-virtual {v11}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    :cond_c
    return-void
.end method
