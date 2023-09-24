.class public Lorg/sufficientlysecure/keychain/ui/ImportKeysFileFragment;
.super Landroid/support/v4/app/Fragment;
.source "ImportKeysFileFragment.java"


# static fields
.field private static final REQUEST_CODE_FILE:I = 0x7003


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mCallback:Lorg/sufficientlysecure/keychain/keyimport/processing/ImportKeysListener;

.field private mCurrentUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .locals 3

    move-object/16 v0, p0

    .line 49
    invoke-direct {v0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/ui/ImportKeysFileFragment;---><init>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private importFromClipboard()V
    .locals 7

    move-object/16 v4, p0

    .line 116
    invoke-virtual {v4}, Lorg/sufficientlysecure/keychain/ui/ImportKeysFileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lorg/sufficientlysecure/keychain/compatibility/ClipboardReflection;->getClipboardText(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 117
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 118
    iget-object v0, v4, Lorg/sufficientlysecure/keychain/ui/ImportKeysFileFragment;->mActivity:Landroid/app/Activity;

    const v1, 0x7f11016d

    sget-object v2, Lorg/sufficientlysecure/keychain/ui/util/Notify$Style;->ERROR:Lorg/sufficientlysecure/keychain/ui/util/Notify$Style;

    invoke-static {v0, v1, v2}, Lorg/sufficientlysecure/keychain/ui/util/Notify;->create(Landroid/app/Activity;ILorg/sufficientlysecure/keychain/ui/util/Notify$Style;)Lorg/sufficientlysecure/keychain/ui/util/Notify$Showable;

    move-result-object v0

    invoke-interface {v0}, Lorg/sufficientlysecure/keychain/ui/util/Notify$Showable;->show()V

    return-void

    .line 122
    :cond_0
    invoke-static {v0}, Lorg/sufficientlysecure/keychain/pgp/PgpHelper;->getPgpPublicKeyContent(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 124
    iget-object v0, v4, Lorg/sufficientlysecure/keychain/ui/ImportKeysFileFragment;->mActivity:Landroid/app/Activity;

    const v1, 0x7f11016b

    sget-object v2, Lorg/sufficientlysecure/keychain/ui/util/Notify$Style;->ERROR:Lorg/sufficientlysecure/keychain/ui/util/Notify$Style;

    invoke-static {v0, v1, v2}, Lorg/sufficientlysecure/keychain/ui/util/Notify;->create(Landroid/app/Activity;ILorg/sufficientlysecure/keychain/ui/util/Notify$Style;)Lorg/sufficientlysecure/keychain/ui/util/Notify$Showable;

    move-result-object v0

    invoke-interface {v0}, Lorg/sufficientlysecure/keychain/ui/util/Notify$Showable;->show()V

    return-void

    .line 128
    :cond_1
    iget-object v1, v4, Lorg/sufficientlysecure/keychain/ui/ImportKeysFileFragment;->mCallback:Lorg/sufficientlysecure/keychain/keyimport/processing/ImportKeysListener;

    new-instance v2, Lorg/sufficientlysecure/keychain/keyimport/processing/BytesLoaderState;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3}, Lorg/sufficientlysecure/keychain/keyimport/processing/BytesLoaderState;-><init>([BLandroid/net/Uri;)V

    invoke-interface {v1, v2}, Lorg/sufficientlysecure/keychain/keyimport/processing/ImportKeysListener;->loadKeys(Lorg/sufficientlysecure/keychain/keyimport/processing/LoaderState;)V

    return-void

    const-string v5, "M_InsDal"

    const-string v6, "Lorg/sufficientlysecure/keychain/ui/ImportKeysFileFragment;--->importFromClipboard()V"

    invoke-static/range {v5 .. v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static newInstance()Lorg/sufficientlysecure/keychain/ui/ImportKeysFileFragment;
    .locals 5

    .line 62
    new-instance v0, Lorg/sufficientlysecure/keychain/ui/ImportKeysFileFragment;

    invoke-direct {v0}, Lorg/sufficientlysecure/keychain/ui/ImportKeysFileFragment;-><init>()V

    .line 64
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 66
    invoke-virtual {v0, v1}, Lorg/sufficientlysecure/keychain/ui/ImportKeysFileFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/ui/ImportKeysFileFragment;--->newInstance()Lorg/sufficientlysecure/keychain/ui/ImportKeysFileFragment;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private startImportingKeys()V
    .locals 7

    move-object/16 v4, p0

    .line 152
    :try_start_0
    iget-object v0, v4, Lorg/sufficientlysecure/keychain/ui/ImportKeysFileFragment;->mActivity:Landroid/app/Activity;

    iget-object v1, v4, Lorg/sufficientlysecure/keychain/ui/ImportKeysFileFragment;->mCurrentUri:Landroid/net/Uri;

    invoke-static {v0, v1}, Lorg/sufficientlysecure/keychain/util/FileHelper;->isEncryptedFile(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_0

    .line 161
    new-instance v0, Landroid/content/Intent;

    iget-object v1, v4, Lorg/sufficientlysecure/keychain/ui/ImportKeysFileFragment;->mActivity:Landroid/app/Activity;

    const-class v2, Lorg/sufficientlysecure/keychain/ui/DecryptActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "android.intent.action.VIEW"

    .line 162
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 163
    iget-object v1, v4, Lorg/sufficientlysecure/keychain/ui/ImportKeysFileFragment;->mCurrentUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 164
    invoke-virtual {v4, v0}, Lorg/sufficientlysecure/keychain/ui/ImportKeysFileFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 166
    :cond_0
    iget-object v0, v4, Lorg/sufficientlysecure/keychain/ui/ImportKeysFileFragment;->mCallback:Lorg/sufficientlysecure/keychain/keyimport/processing/ImportKeysListener;

    new-instance v1, Lorg/sufficientlysecure/keychain/keyimport/processing/BytesLoaderState;

    const/4 v2, 0x0

    iget-object v3, v4, Lorg/sufficientlysecure/keychain/ui/ImportKeysFileFragment;->mCurrentUri:Landroid/net/Uri;

    invoke-direct {v1, v2, v3}, Lorg/sufficientlysecure/keychain/keyimport/processing/BytesLoaderState;-><init>([BLandroid/net/Uri;)V

    invoke-interface {v0, v1}, Lorg/sufficientlysecure/keychain/keyimport/processing/ImportKeysListener;->loadKeys(Lorg/sufficientlysecure/keychain/keyimport/processing/LoaderState;)V

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Error opening file"

    const/4 v2, 0x0

    .line 154
    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 156
    iget-object v0, v4, Lorg/sufficientlysecure/keychain/ui/ImportKeysFileFragment;->mActivity:Landroid/app/Activity;

    const v1, 0x7f110169

    sget-object v2, Lorg/sufficientlysecure/keychain/ui/util/Notify$Style;->ERROR:Lorg/sufficientlysecure/keychain/ui/util/Notify$Style;

    invoke-static {v0, v1, v2}, Lorg/sufficientlysecure/keychain/ui/util/Notify;->create(Landroid/app/Activity;ILorg/sufficientlysecure/keychain/ui/util/Notify$Style;)Lorg/sufficientlysecure/keychain/ui/util/Notify$Showable;

    move-result-object v0

    invoke-interface {v0}, Lorg/sufficientlysecure/keychain/ui/util/Notify$Showable;->show()V

    return-void

    const-string v5, "M_InsDal"

    const-string v6, "Lorg/sufficientlysecure/keychain/ui/ImportKeysFileFragment;--->startImportingKeys()V"

    invoke-static/range {v5 .. v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    move-object/16 v1, p0

    move/16 v2, p1

    move/16 v3, p2

    move-object/16 p0, p3

    const/16 v0, 0x7003

    if-eq v2, v0, :cond_0

    .line 145
    invoke-super {v1, v2, v3, p0}, Landroid/support/v4/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/ui/ImportKeysFileFragment;--->onActivityResult(IILandroid/content/Intent;)V"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const/4 v2, -0x1

    if-ne v3, v2, :cond_1

    if-eqz p0, :cond_1

    .line 135
    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 136
    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    iput-object v2, v1, Lorg/sufficientlysecure/keychain/ui/ImportKeysFileFragment;->mCurrentUri:Landroid/net/Uri;

    .line 138
    iget-object v2, v1, Lorg/sufficientlysecure/keychain/ui/ImportKeysFileFragment;->mCurrentUri:Landroid/net/Uri;

    invoke-static {v1, v2}, Lorg/sufficientlysecure/keychain/ui/util/PermissionsUtil;->checkAndRequestReadPermission(Landroid/support/v4/app/Fragment;Landroid/net/Uri;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 139
    invoke-direct {v1}, Lorg/sufficientlysecure/keychain/ui/ImportKeysFileFragment;->startImportingKeys()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 5

    move-object/16 v2, p0

    move-object/16 v3, p1

    .line 78
    invoke-super {v2, v3}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/content/Context;)V

    const-string v4, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/ImportKeysFileFragment;--->onAttach(Landroid/content/Context;)V"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    :try_start_0
    move-object v0, v3

    check-cast v0, Lorg/sufficientlysecure/keychain/keyimport/processing/ImportKeysListener;

    iput-object v0, v2, Lorg/sufficientlysecure/keychain/ui/ImportKeysFileFragment;->mCallback:Lorg/sufficientlysecure/keychain/keyimport/processing/ImportKeysListener;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    check-cast v3, Landroid/app/Activity;

    iput-object v3, v2, Lorg/sufficientlysecure/keychain/ui/ImportKeysFileFragment;->mActivity:Landroid/app/Activity;

    return-void

    .line 83
    :catch_0
    new-instance v0, Ljava/lang/ClassCastException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " must implement ImportKeysListener"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    move-object/16 v3, p2

    const v0, 0x7f0d000d

    .line 92
    invoke-virtual {v3, v0, v2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 94
    invoke-super {v1, v2, v3}, Landroid/support/v4/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/ui/ImportKeysFileFragment;--->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    move-object/16 v2, p2

    move-object/16 p0, p3

    const/4 v1, 0x1

    .line 72
    invoke-virtual {v0, v1}, Lorg/sufficientlysecure/keychain/ui/ImportKeysFileFragment;->setHasOptionsMenu(Z)V

    const/4 v1, 0x0

    return-object v1

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/ui/ImportKeysFileFragment;--->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 6

    move-object/16 v3, p0

    move-object/16 v4, p1

    .line 99
    invoke-interface {v4}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    .line 112
    invoke-super {v3, v4}, Landroid/support/v4/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v4

    return v4

    .line 108
    :pswitch_0
    invoke-direct {v3}, Lorg/sufficientlysecure/keychain/ui/ImportKeysFileFragment;->importFromClipboard()V

    return v1

    :pswitch_1
    const-string v4, "*/*"

    const/4 v0, 0x0

    const/16 v2, 0x7003

    .line 105
    invoke-static {v3, v4, v0, v2}, Lorg/sufficientlysecure/keychain/util/FileHelper;->openDocument(Landroid/support/v4/app/Fragment;Ljava/lang/String;ZI)V

    return v1

    :pswitch_data_0
    .packed-switch 0x7f09022a
        :pswitch_1
        :pswitch_0
    .end packed-switch

    const-string v5, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/ImportKeysFileFragment;--->onOptionsItemSelected(Landroid/view/MenuItem;)Z"

    invoke-static/range {v5 .. v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 3

    move-object/16 v0, p0

    move/16 v1, p1

    move-object/16 v2, p2

    move-object/16 p0, p3

    .line 176
    iget-object v2, v0, Lorg/sufficientlysecure/keychain/ui/ImportKeysFileFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v2, v1, p0}, Lorg/sufficientlysecure/keychain/ui/util/PermissionsUtil;->checkReadPermissionResult(Landroid/content/Context;I[I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 177
    invoke-direct {v0}, Lorg/sufficientlysecure/keychain/ui/ImportKeysFileFragment;->startImportingKeys()V

    goto :goto_0

    .line 179
    :cond_0
    iget-object v1, v0, Lorg/sufficientlysecure/keychain/ui/ImportKeysFileFragment;->mActivity:Landroid/app/Activity;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/Activity;->setResult(I)V

    .line 180
    iget-object v1, v0, Lorg/sufficientlysecure/keychain/ui/ImportKeysFileFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    :goto_0
    return-void

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/ui/ImportKeysFileFragment;--->onRequestPermissionsResult(I[Ljava/lang/String;[I)V"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
