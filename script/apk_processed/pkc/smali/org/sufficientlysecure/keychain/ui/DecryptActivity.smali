.class public Lorg/sufficientlysecure/keychain/ui/DecryptActivity;
.super Lorg/sufficientlysecure/keychain/ui/base/BaseActivity;
.source "DecryptActivity.java"


# static fields
.field public static final ACTION_DECRYPT_FROM_CLIPBOARD:Ljava/lang/String; = "DECRYPT_DATA_CLIPBOARD"

.field public static final APPLICATION_AUTOCRYPT_SETUP:Ljava/lang/String; = "application/autocrypt-setup"


# direct methods
.method public constructor <init>()V
    .locals 3

    move-object/16 v0, p0

    .line 44
    invoke-direct {v0}, Lorg/sufficientlysecure/keychain/ui/base/BaseActivity;-><init>()V

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/ui/DecryptActivity;---><init>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private handleActions(Landroid/os/Bundle;Landroid/content/Intent;)V
    .locals 9

    move-object/16 v6, p0

    move-object/16 v7, p1

    move-object/16 v8, p2

    if-eqz v7, :cond_0

    return-void

    .line 75
    :cond_0
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 77
    invoke-virtual {v8}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    const-string v7, "Error: No action specified!"

    .line 80
    invoke-static {v6, v7, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    .line 81
    invoke-virtual {v6, v1}, Lorg/sufficientlysecure/keychain/ui/DecryptActivity;->setResult(I)V

    .line 82
    invoke-virtual {v6}, Lorg/sufficientlysecure/keychain/ui/DecryptActivity;->finish()V

    return-void

    :cond_1
    const/4 v3, -0x1

    .line 92
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v4, "org.sufficientlysecure.keychain.action.DECRYPT_DATA"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x4

    goto :goto_1

    :sswitch_1
    const-string v4, "DECRYPT_DATA_CLIPBOARD"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_2
    const-string v4, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :sswitch_3
    const-string v4, "android.intent.action.VIEW"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    goto :goto_1

    :sswitch_4
    const-string v4, "android.intent.action.SEND"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    goto/16 :goto_6

    :pswitch_0
    const/4 v0, 0x1

    goto/16 :goto_6

    :pswitch_1
    const-string v8, "clipboard"

    .line 126
    invoke-virtual {v6, v8}, Lorg/sufficientlysecure/keychain/ui/DecryptActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/ClipboardManager;

    if-nez v8, :cond_3

    goto/16 :goto_5

    .line 131
    :cond_3
    invoke-virtual {v8}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object v8

    if-nez v8, :cond_4

    goto/16 :goto_5

    :cond_4
    const/4 v0, 0x0

    const/4 v3, 0x0

    .line 138
    :goto_2
    invoke-virtual {v8}, Landroid/content/ClipData;->getItemCount()I

    move-result v4

    if-ge v3, v4, :cond_6

    .line 139
    invoke-virtual {v8, v3}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v4

    .line 140
    invoke-virtual {v4}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v4

    if-eqz v4, :cond_5

    move-object v0, v4

    goto :goto_3

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_6
    :goto_3
    if-nez v0, :cond_7

    .line 149
    invoke-virtual {v8, v1}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v8

    invoke-virtual {v8, v6}, Landroid/content/ClipData$Item;->coerceToText(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    .line 150
    invoke-virtual {v6, v8}, Lorg/sufficientlysecure/keychain/ui/DecryptActivity;->readToTempFile(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    :cond_7
    if-eqz v0, :cond_b

    .line 153
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :pswitch_2
    const-string v0, "android.intent.extra.STREAM"

    .line 111
    invoke-virtual {v8, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v7, "android.intent.extra.STREAM"

    .line 112
    invoke-virtual {v8, v7}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v7

    goto :goto_5

    :cond_8
    const-string v0, "android.intent.extra.TEXT"

    .line 113
    invoke-virtual {v8, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, "android.intent.extra.TEXT"

    .line 114
    invoke-virtual {v8, v0}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_9
    :goto_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 115
    invoke-virtual {v6, v0}, Lorg/sufficientlysecure/keychain/ui/DecryptActivity;->readToTempFile(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 117
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :pswitch_3
    const-string v0, "android.intent.extra.STREAM"

    .line 97
    invoke-virtual {v8, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    const-string v0, "android.intent.extra.STREAM"

    .line 98
    invoke-virtual {v8, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_a
    const-string v0, "android.intent.extra.TEXT"

    .line 99
    invoke-virtual {v8, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, "android.intent.extra.TEXT"

    .line 100
    invoke-virtual {v8, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 101
    invoke-virtual {v6, v8}, Lorg/sufficientlysecure/keychain/ui/DecryptActivity;->readToTempFile(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    if-eqz v8, :cond_b

    .line 103
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_b
    :goto_5
    const/4 v8, 0x0

    const/4 v0, 0x0

    goto :goto_7

    .line 164
    :goto_6
    invoke-virtual {v8}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    const-string v4, "application/autocrypt-setup"

    .line 166
    invoke-virtual {v8}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v3, :cond_d

    const-string v4, "com.android.email.attachmentprovider"

    .line 170
    invoke-virtual {v3}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    const v7, 0x7f110192

    .line 171
    invoke-static {v6, v7, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    .line 172
    invoke-virtual {v6}, Lorg/sufficientlysecure/keychain/ui/DecryptActivity;->finish()V

    return-void

    .line 176
    :cond_c
    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 188
    :cond_d
    :goto_7
    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_e

    const-string v7, "No data to decrypt!"

    .line 189
    invoke-static {v6, v7, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    .line 190
    invoke-virtual {v6, v1}, Lorg/sufficientlysecure/keychain/ui/DecryptActivity;->setResult(I)V

    .line 191
    invoke-virtual {v6}, Lorg/sufficientlysecure/keychain/ui/DecryptActivity;->finish()V

    return-void

    .line 195
    :cond_e
    invoke-virtual {v6, v7, v0, v8}, Lorg/sufficientlysecure/keychain/ui/DecryptActivity;->displayListFragment(Ljava/util/ArrayList;ZZ)V

    return-void

    :catch_0
    const v7, 0x7f110194

    .line 182
    invoke-static {v6, v7, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    .line 183
    invoke-virtual {v6}, Lorg/sufficientlysecure/keychain/ui/DecryptActivity;->finish()V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x45ee9a33 -> :sswitch_4
        -0x45ed2f16 -> :sswitch_3
        -0x37c67be -> :sswitch_2
        0x59432433 -> :sswitch_1
        0x7469dcca -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/ui/DecryptActivity;--->handleActions(Landroid/os/Bundle;Landroid/content/Intent;)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public displayListFragment(Ljava/util/ArrayList;ZZ)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/net/Uri;",
            ">;ZZ)V"
        }
    .end annotation

    move-object/16 v1, p0

    move-object/16 v2, p1

    move/16 v3, p2

    move/16 p0, p3

    .line 221
    invoke-static {v2, v3, p0}, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment;->newInstance(Ljava/util/ArrayList;ZZ)Lorg/sufficientlysecure/keychain/ui/DecryptListFragment;

    move-result-object v2

    .line 223
    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/ui/DecryptActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    .line 225
    invoke-virtual {v3}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object p0

    const v0, 0x7f090118

    .line 226
    invoke-virtual {p0, v0, v2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 229
    invoke-virtual {v3}, Landroid/support/v4/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "list"

    .line 230
    invoke-virtual {p0, v2}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 233
    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    return-void

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/ui/DecryptActivity;--->displayListFragment(Ljava/util/ArrayList;ZZ)V"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method protected initLayout()V
    .locals 4

    move-object/16 v1, p0

    const v0, 0x7f0c004b

    .line 62
    invoke-virtual {v1, v0}, Lorg/sufficientlysecure/keychain/ui/DecryptActivity;->setContentView(I)V

    return-void

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/ui/DecryptActivity;--->initLayout()V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    .line 52
    invoke-super {v1, v2}, Lorg/sufficientlysecure/keychain/ui/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/DecryptActivity;--->onCreate(Landroid/os/Bundle;)V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 54
    invoke-virtual {v1, v0, v0}, Lorg/sufficientlysecure/keychain/ui/DecryptActivity;->setFullScreenDialogClose(IZ)V

    .line 57
    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/ui/DecryptActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lorg/sufficientlysecure/keychain/ui/DecryptActivity;->handleActions(Landroid/os/Bundle;Landroid/content/Intent;)V

    return-void
.end method

.method public readToTempFile(Ljava/lang/String;)Landroid/net/Uri;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/16 v3, p0

    move-object/16 v4, p1

    .line 201
    invoke-static {v3}, Lorg/sufficientlysecure/keychain/provider/TemporaryFileProvider;->createFile(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v0

    .line 202
    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/ui/DecryptActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    .line 208
    :cond_0
    invoke-static {v4}, Lorg/sufficientlysecure/keychain/pgp/PgpHelper;->getPgpMessageContent(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_1

    return-object v2

    .line 214
    :cond_1
    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/OutputStream;->write([B)V

    .line 215
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    return-object v0

    const-string v5, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/DecryptActivity;--->readToTempFile(Ljava/lang/String;)Landroid/net/Uri;"

    invoke-static/range {v5 .. v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
