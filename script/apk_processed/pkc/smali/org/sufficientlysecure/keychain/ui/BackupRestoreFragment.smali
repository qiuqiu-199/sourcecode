.class public Lorg/sufficientlysecure/keychain/ui/BackupRestoreFragment;
.super Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationFragment;
.source "BackupRestoreFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationFragment<",
        "Lorg/sufficientlysecure/keychain/service/BackupKeyringParcel;",
        "Lorg/sufficientlysecure/keychain/operations/results/ExportResult;",
        ">;"
    }
.end annotation


# static fields
.field private static final REQUEST_CODE_INPUT:I = 0x7003

.field private static final REQUEST_REPEAT_PASSPHRASE:I = 0x7002

.field public static final REQUEST_SAVE_FILE:I = 0x1


# instance fields
.field private backupPublicKeys:Landroid/view/View;

.field private cachedBackupUri:Landroid/net/Uri;

.field private mIdsForRepeatAskPassphrase:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Landroid/util/Pair<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation
.end field

.field private shareNotSave:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    move-object/16 v0, p0

    .line 61
    invoke-direct {v0}, Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationFragment;-><init>()V

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/ui/BackupRestoreFragment;---><init>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method static synthetic access$000(Lorg/sufficientlysecure/keychain/ui/BackupRestoreFragment;)Ljava/util/Iterator;
    .locals 0

    .line 61
    iget-object p0, p0, Lorg/sufficientlysecure/keychain/ui/BackupRestoreFragment;->mIdsForRepeatAskPassphrase:Ljava/util/Iterator;

    return-object p0
.end method

.method static synthetic access$002(Lorg/sufficientlysecure/keychain/ui/BackupRestoreFragment;Ljava/util/Iterator;)Ljava/util/Iterator;
    .locals 0

    .line 61
    iput-object p1, p0, Lorg/sufficientlysecure/keychain/ui/BackupRestoreFragment;->mIdsForRepeatAskPassphrase:Ljava/util/Iterator;

    return-object p1
.end method

.method static synthetic access$100(Lorg/sufficientlysecure/keychain/ui/BackupRestoreFragment;)V
    .locals 0

    .line 61
    invoke-direct {p0}, Lorg/sufficientlysecure/keychain/ui/BackupRestoreFragment;->startPassphraseActivity()V

    return-void
.end method

.method static synthetic access$200(Lorg/sufficientlysecure/keychain/ui/BackupRestoreFragment;Z)V
    .locals 0

    .line 61
    invoke-direct {p0, p1}, Lorg/sufficientlysecure/keychain/ui/BackupRestoreFragment;->startBackup(Z)V

    return-void
.end method

.method private backupAllKeys()V
    .locals 5

    move-object/16 v2, p0

    .line 89
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/ui/BackupRestoreFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 94
    :cond_0
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/ui/BackupRestoreFragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/sufficientlysecure/keychain/daos/KeyRepository;->create(Landroid/content/Context;)Lorg/sufficientlysecure/keychain/daos/KeyRepository;

    move-result-object v0

    .line 99
    new-instance v1, Lorg/sufficientlysecure/keychain/ui/BackupRestoreFragment$1;

    invoke-direct {v1, v2, v0}, Lorg/sufficientlysecure/keychain/ui/BackupRestoreFragment$1;-><init>(Lorg/sufficientlysecure/keychain/ui/BackupRestoreFragment;Lorg/sufficientlysecure/keychain/daos/KeyRepository;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    .line 168
    invoke-virtual {v1, v0}, Lorg/sufficientlysecure/keychain/ui/BackupRestoreFragment$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/ui/BackupRestoreFragment;--->backupAllKeys()V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private exportContactKeys()V
    .locals 6

    move-object/16 v3, p0

    .line 172
    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/ui/BackupRestoreFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 177
    :cond_0
    new-instance v0, Landroid/widget/PopupMenu;

    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/ui/BackupRestoreFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, v3, Lorg/sufficientlysecure/keychain/ui/BackupRestoreFragment;->backupPublicKeys:Landroid/view/View;

    invoke-direct {v0, v1, v2}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    const v1, 0x7f0d000a

    .line 178
    invoke-virtual {v0, v1}, Landroid/widget/PopupMenu;->inflate(I)V

    .line 179
    new-instance v1, Lorg/sufficientlysecure/keychain/ui/BackupRestoreFragment$$Lambda$3;

    invoke-direct {v1, v3}, Lorg/sufficientlysecure/keychain/ui/BackupRestoreFragment$$Lambda$3;-><init>(Lorg/sufficientlysecure/keychain/ui/BackupRestoreFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 192
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->show()V

    return-void

    const-string v4, "M_InsDal"

    const-string v5, "Lorg/sufficientlysecure/keychain/ui/BackupRestoreFragment;--->exportContactKeys()V"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private exportContactKeysToFileOrShare()V
    .locals 6

    move-object/16 v3, p0

    .line 196
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 197
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "backup_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".pub.pgp"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 200
    iget-object v1, v3, Lorg/sufficientlysecure/keychain/ui/BackupRestoreFragment;->cachedBackupUri:Landroid/net/Uri;

    if-nez v1, :cond_0

    .line 201
    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/ui/BackupRestoreFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "application/pgp-message"

    invoke-static {v1, v0, v2}, Lorg/sufficientlysecure/keychain/provider/TemporaryFileProvider;->createFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, v3, Lorg/sufficientlysecure/keychain/ui/BackupRestoreFragment;->cachedBackupUri:Landroid/net/Uri;

    .line 204
    invoke-static {}, Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;->createCryptoInputParcel()Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;

    move-result-object v0

    invoke-virtual {v3, v0}, Lorg/sufficientlysecure/keychain/ui/BackupRestoreFragment;->cryptoOperation(Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;)V

    return-void

    .line 208
    :cond_0
    iget-boolean v1, v3, Lorg/sufficientlysecure/keychain/ui/BackupRestoreFragment;->shareNotSave:Z

    if-eqz v1, :cond_1

    .line 209
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "application/pgp-keys"

    .line 210
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.extra.STREAM"

    .line 211
    iget-object v2, v3, Lorg/sufficientlysecure/keychain/ui/BackupRestoreFragment;->cachedBackupUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 212
    invoke-virtual {v3, v0}, Lorg/sufficientlysecure/keychain/ui/BackupRestoreFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 214
    invoke-direct {v3, v0, v1}, Lorg/sufficientlysecure/keychain/ui/BackupRestoreFragment;->saveFile(Ljava/lang/String;Z)V

    :goto_0
    return-void

    const-string v4, "M_InsDal"

    const-string v5, "Lorg/sufficientlysecure/keychain/ui/BackupRestoreFragment;--->exportContactKeysToFileOrShare()V"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private restore()V
    .locals 6

    move-object/16 v3, p0

    const-string v0, "*/*"

    const/4 v1, 0x0

    const/16 v2, 0x7003

    .line 347
    invoke-static {v3, v0, v1, v2}, Lorg/sufficientlysecure/keychain/util/FileHelper;->openDocument(Landroid/support/v4/app/Fragment;Ljava/lang/String;ZI)V

    return-void

    const-string v4, "M_InsDal"

    const-string v5, "Lorg/sufficientlysecure/keychain/ui/BackupRestoreFragment;--->restore()V"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private saveFile(Ljava/lang/String;Z)V
    .locals 7

    move-object/16 v4, p0

    move-object/16 v5, p1

    move/16 v6, p2

    .line 219
    invoke-virtual {v4}, Lorg/sufficientlysecure/keychain/ui/BackupRestoreFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 225
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_1

    const-string v6, "application/pgp-message"

    const/4 v0, 0x1

    .line 226
    invoke-static {v4, v5, v6, v0}, Lorg/sufficientlysecure/keychain/util/FileHelper;->saveDocument(Landroid/support/v4/app/Fragment;Ljava/lang/String;Ljava/lang/String;I)V

    return-void

    .line 230
    :cond_1
    sget-object v1, Lorg/sufficientlysecure/keychain/Constants$Path;->APP_DIR:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v1

    const v2, 0x7f110ca9

    if-nez v1, :cond_2

    .line 231
    sget-object v5, Lorg/sufficientlysecure/keychain/ui/util/Notify$Style;->ERROR:Lorg/sufficientlysecure/keychain/ui/util/Notify$Style;

    invoke-static {v0, v2, v5}, Lorg/sufficientlysecure/keychain/ui/util/Notify;->create(Landroid/app/Activity;ILorg/sufficientlysecure/keychain/ui/util/Notify$Style;)Lorg/sufficientlysecure/keychain/ui/util/Notify$Showable;

    move-result-object v5

    invoke-interface {v5}, Lorg/sufficientlysecure/keychain/ui/util/Notify$Showable;->show()V

    return-void

    .line 235
    :cond_2
    new-instance v1, Ljava/io/File;

    sget-object v3, Lorg/sufficientlysecure/keychain/Constants$Path;->APP_DIR:Ljava/io/File;

    invoke-direct {v1, v3, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    if-nez v6, :cond_3

    .line 237
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_3

    const v6, 0x7f110caa

    .line 238
    sget-object v1, Lorg/sufficientlysecure/keychain/ui/util/Notify$Style;->WARN:Lorg/sufficientlysecure/keychain/ui/util/Notify$Style;

    new-instance v2, Lorg/sufficientlysecure/keychain/ui/BackupRestoreFragment$$Lambda$4;

    invoke-direct {v2, v4, v5}, Lorg/sufficientlysecure/keychain/ui/BackupRestoreFragment$$Lambda$4;-><init>(Lorg/sufficientlysecure/keychain/ui/BackupRestoreFragment;Ljava/lang/String;)V

    const v5, 0x7f110cad

    invoke-static {v0, v6, v1, v2, v5}, Lorg/sufficientlysecure/keychain/ui/util/Notify;->create(Landroid/app/Activity;ILorg/sufficientlysecure/keychain/ui/util/Notify$Style;Lorg/sufficientlysecure/keychain/ui/util/Notify$ActionListener;I)Lorg/sufficientlysecure/keychain/ui/util/Notify$Showable;

    move-result-object v5

    invoke-interface {v5}, Lorg/sufficientlysecure/keychain/ui/util/Notify$Showable;->show()V

    return-void

    .line 243
    :cond_3
    :try_start_0
    iget-object v5, v4, Lorg/sufficientlysecure/keychain/ui/BackupRestoreFragment;->cachedBackupUri:Landroid/net/Uri;

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v6

    invoke-static {v0, v5, v6}, Lorg/sufficientlysecure/keychain/util/FileHelper;->copyUriData(Landroid/content/Context;Landroid/net/Uri;Landroid/net/Uri;)V

    const v5, 0x7f110cac

    .line 244
    sget-object v6, Lorg/sufficientlysecure/keychain/ui/util/Notify$Style;->OK:Lorg/sufficientlysecure/keychain/ui/util/Notify$Style;

    invoke-static {v0, v5, v6}, Lorg/sufficientlysecure/keychain/ui/util/Notify;->create(Landroid/app/Activity;ILorg/sufficientlysecure/keychain/ui/util/Notify$Style;)Lorg/sufficientlysecure/keychain/ui/util/Notify$Showable;

    move-result-object v5

    invoke-interface {v5}, Lorg/sufficientlysecure/keychain/ui/util/Notify$Showable;->show()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 246
    :catch_0
    sget-object v5, Lorg/sufficientlysecure/keychain/ui/util/Notify$Style;->ERROR:Lorg/sufficientlysecure/keychain/ui/util/Notify$Style;

    invoke-static {v0, v2, v5}, Lorg/sufficientlysecure/keychain/ui/util/Notify;->create(Landroid/app/Activity;ILorg/sufficientlysecure/keychain/ui/util/Notify$Style;)Lorg/sufficientlysecure/keychain/ui/util/Notify$Showable;

    move-result-object v5

    invoke-interface {v5}, Lorg/sufficientlysecure/keychain/ui/util/Notify$Showable;->show()V

    :goto_0
    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/ui/BackupRestoreFragment;--->saveFile(Ljava/lang/String;Z)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private startBackup(Z)V
    .locals 6

    move-object/16 v3, p0

    move/16 v4, p1

    .line 341
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/ui/BackupRestoreFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lorg/sufficientlysecure/keychain/ui/BackupActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "export_secret"

    .line 342
    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 343
    invoke-virtual {v3, v0}, Lorg/sufficientlysecure/keychain/ui/BackupRestoreFragment;->startActivity(Landroid/content/Intent;)V

    return-void

    const-string v5, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/BackupRestoreFragment;--->startBackup(Z)V"

    invoke-static/range {v5 .. v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private startPassphraseActivity()V
    .locals 9

    move-object/16 v6, p0

    .line 251
    invoke-virtual {v6}, Lorg/sufficientlysecure/keychain/ui/BackupRestoreFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 256
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lorg/sufficientlysecure/keychain/ui/PassphraseDialogActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 257
    iget-object v0, v6, Lorg/sufficientlysecure/keychain/ui/BackupRestoreFragment;->mIdsForRepeatAskPassphrase:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 258
    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 259
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 261
    invoke-static {v2, v3, v4, v5}, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;->createRequiredDecryptPassphrase(JJ)Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;

    move-result-object v0

    const/4 v2, 0x1

    .line 262
    iput-boolean v2, v0, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;->mSkipCaching:Z

    const-string v2, "required_input"

    .line 263
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/16 v0, 0x7002

    .line 264
    invoke-virtual {v6, v1, v0}, Lorg/sufficientlysecure/keychain/ui/BackupRestoreFragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void

    const-string v7, "M_InsDal"

    const-string v8, "Lorg/sufficientlysecure/keychain/ui/BackupRestoreFragment;--->startPassphraseActivity()V"

    invoke-static/range {v7 .. v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public bridge synthetic createOperationInput()Landroid/os/Parcelable;
    .locals 1

    .line 61
    invoke-virtual {p0}, Lorg/sufficientlysecure/keychain/ui/BackupRestoreFragment;->createOperationInput()Lorg/sufficientlysecure/keychain/service/BackupKeyringParcel;

    move-result-object v0

    return-object v0
.end method

.method public createOperationInput()Lorg/sufficientlysecure/keychain/service/BackupKeyringParcel;
    .locals 7

    move-object/16 v4, p0

    .line 325
    iget-object v0, v4, Lorg/sufficientlysecure/keychain/ui/BackupRestoreFragment;->cachedBackupUri:Landroid/net/Uri;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 326
    invoke-static {v2, v1, v1, v3, v0}, Lorg/sufficientlysecure/keychain/service/BackupKeyringParcel;->create([JZZZLandroid/net/Uri;)Lorg/sufficientlysecure/keychain/service/BackupKeyringParcel;

    move-result-object v0

    return-object v0

    const-string v5, "M_InsDal"

    const-string v6, "Lorg/sufficientlysecure/keychain/ui/BackupRestoreFragment;--->createOperationInput()Lorg/sufficientlysecure/keychain/service/BackupKeyringParcel;"

    invoke-static/range {v5 .. v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method final synthetic lambda$exportContactKeys$3$BackupRestoreFragment(Landroid/view/MenuItem;)Z
    .locals 1

    .line 180
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/4 p1, 0x1

    .line 186
    iput-boolean p1, p0, Lorg/sufficientlysecure/keychain/ui/BackupRestoreFragment;->shareNotSave:Z

    .line 187
    invoke-direct {p0}, Lorg/sufficientlysecure/keychain/ui/BackupRestoreFragment;->exportContactKeysToFileOrShare()V

    goto :goto_0

    .line 182
    :pswitch_1
    iput-boolean v0, p0, Lorg/sufficientlysecure/keychain/ui/BackupRestoreFragment;->shareNotSave:Z

    .line 183
    invoke-direct {p0}, Lorg/sufficientlysecure/keychain/ui/BackupRestoreFragment;->exportContactKeysToFileOrShare()V

    :goto_0
    return v0

    :pswitch_data_0
    .packed-switch 0x7f090226
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method final synthetic lambda$onCreateView$0$BackupRestoreFragment(Landroid/view/View;)V
    .locals 0

    .line 81
    invoke-direct {p0}, Lorg/sufficientlysecure/keychain/ui/BackupRestoreFragment;->backupAllKeys()V

    return-void
.end method

.method final synthetic lambda$onCreateView$1$BackupRestoreFragment(Landroid/view/View;)V
    .locals 0

    .line 82
    invoke-direct {p0}, Lorg/sufficientlysecure/keychain/ui/BackupRestoreFragment;->exportContactKeys()V

    return-void
.end method

.method final synthetic lambda$onCreateView$2$BackupRestoreFragment(Landroid/view/View;)V
    .locals 0

    .line 83
    invoke-direct {p0}, Lorg/sufficientlysecure/keychain/ui/BackupRestoreFragment;->restore()V

    return-void
.end method

.method final synthetic lambda$saveFile$4$BackupRestoreFragment(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    .line 238
    invoke-direct {p0, p1, v0}, Lorg/sufficientlysecure/keychain/ui/BackupRestoreFragment;->saveFile(Ljava/lang/String;Z)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 6

    move-object/16 v3, p0

    move/16 v4, p1

    move/16 v5, p2

    move-object/16 p0, p3

    const/4 v0, 0x1

    const/4 v1, -0x1

    if-eq v4, v0, :cond_5

    packed-switch v4, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    if-ne v5, v1, :cond_2

    if-nez p0, :cond_0

    goto :goto_0

    .line 289
    :cond_0
    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    if-nez v4, :cond_1

    .line 291
    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/ui/BackupRestoreFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    const v5, 0x7f110ba6

    sget-object p0, Lorg/sufficientlysecure/keychain/ui/util/Notify$Style;->ERROR:Lorg/sufficientlysecure/keychain/ui/util/Notify$Style;

    invoke-static {v4, v5, p0}, Lorg/sufficientlysecure/keychain/ui/util/Notify;->create(Landroid/app/Activity;ILorg/sufficientlysecure/keychain/ui/util/Notify$Style;)Lorg/sufficientlysecure/keychain/ui/util/Notify$Showable;

    move-result-object v4

    invoke-interface {v4}, Lorg/sufficientlysecure/keychain/ui/util/Notify$Showable;->show()V

    return-void

    .line 295
    :cond_1
    new-instance v5, Landroid/content/Intent;

    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/ui/BackupRestoreFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p0

    const-class v0, Lorg/sufficientlysecure/keychain/ui/DecryptActivity;

    invoke-direct {v5, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p0, "android.intent.action.VIEW"

    .line 296
    invoke-virtual {v5, p0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 297
    invoke-virtual {v5, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 298
    invoke-virtual {v3, v5}, Lorg/sufficientlysecure/keychain/ui/BackupRestoreFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_2

    :cond_2
    :goto_0
    return-void

    :pswitch_1
    if-eq v5, v1, :cond_3

    return-void

    .line 274
    :cond_3
    iget-object v4, v3, Lorg/sufficientlysecure/keychain/ui/BackupRestoreFragment;->mIdsForRepeatAskPassphrase:Ljava/util/Iterator;

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 275
    invoke-direct {v3}, Lorg/sufficientlysecure/keychain/ui/BackupRestoreFragment;->startPassphraseActivity()V

    return-void

    .line 279
    :cond_4
    invoke-direct {v3, v0}, Lorg/sufficientlysecure/keychain/ui/BackupRestoreFragment;->startBackup(Z)V

    goto :goto_2

    .line 303
    :cond_5
    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/ui/BackupRestoreFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-ne v5, v1, :cond_7

    if-eqz v0, :cond_7

    if-nez p0, :cond_6

    goto :goto_3

    .line 308
    :cond_6
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 309
    iget-object v2, v3, Lorg/sufficientlysecure/keychain/ui/BackupRestoreFragment;->cachedBackupUri:Landroid/net/Uri;

    invoke-static {v0, v2, v1}, Lorg/sufficientlysecure/keychain/util/FileHelper;->copyUriData(Landroid/content/Context;Landroid/net/Uri;Landroid/net/Uri;)V

    const v1, 0x7f110cab

    .line 310
    sget-object v2, Lorg/sufficientlysecure/keychain/ui/util/Notify$Style;->OK:Lorg/sufficientlysecure/keychain/ui/util/Notify$Style;

    invoke-static {v0, v1, v2}, Lorg/sufficientlysecure/keychain/ui/util/Notify;->create(Landroid/app/Activity;ILorg/sufficientlysecure/keychain/ui/util/Notify$Style;)Lorg/sufficientlysecure/keychain/ui/util/Notify$Showable;

    move-result-object v1

    invoke-interface {v1}, Lorg/sufficientlysecure/keychain/ui/util/Notify$Showable;->show()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const v1, 0x7f110ca9

    .line 312
    sget-object v2, Lorg/sufficientlysecure/keychain/ui/util/Notify$Style;->ERROR:Lorg/sufficientlysecure/keychain/ui/util/Notify$Style;

    invoke-static {v0, v1, v2}, Lorg/sufficientlysecure/keychain/ui/util/Notify;->create(Landroid/app/Activity;ILorg/sufficientlysecure/keychain/ui/util/Notify$Style;)Lorg/sufficientlysecure/keychain/ui/util/Notify$Showable;

    move-result-object v0

    invoke-interface {v0}, Lorg/sufficientlysecure/keychain/ui/util/Notify$Showable;->show()V

    .line 317
    :goto_1
    invoke-super {v3, v4, v5, p0}, Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationFragment;->onActivityResult(IILandroid/content/Intent;)V

    :goto_2
    return-void

    :cond_7
    :goto_3
    return-void

    :pswitch_data_0
    .packed-switch 0x7002
        :pswitch_1
        :pswitch_0
    .end packed-switch

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/ui/BackupRestoreFragment;--->onActivityResult(IILandroid/content/Intent;)V"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    move-object/16 v3, p2

    move-object/16 p0, p3

    const p0, 0x7f0c0030

    const/4 v0, 0x0

    .line 75
    invoke-virtual {v2, p0, v3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f09005f

    .line 77
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const p0, 0x7f090066

    .line 78
    invoke-virtual {v2, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    iput-object p0, v1, Lorg/sufficientlysecure/keychain/ui/BackupRestoreFragment;->backupPublicKeys:Landroid/view/View;

    const p0, 0x7f090281

    .line 79
    invoke-virtual {v2, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .line 81
    new-instance v0, Lorg/sufficientlysecure/keychain/ui/BackupRestoreFragment$$Lambda$0;

    invoke-direct {v0, v1}, Lorg/sufficientlysecure/keychain/ui/BackupRestoreFragment$$Lambda$0;-><init>(Lorg/sufficientlysecure/keychain/ui/BackupRestoreFragment;)V

    invoke-virtual {v3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    iget-object v3, v1, Lorg/sufficientlysecure/keychain/ui/BackupRestoreFragment;->backupPublicKeys:Landroid/view/View;

    new-instance v0, Lorg/sufficientlysecure/keychain/ui/BackupRestoreFragment$$Lambda$1;

    invoke-direct {v0, v1}, Lorg/sufficientlysecure/keychain/ui/BackupRestoreFragment$$Lambda$1;-><init>(Lorg/sufficientlysecure/keychain/ui/BackupRestoreFragment;)V

    invoke-virtual {v3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    new-instance v3, Lorg/sufficientlysecure/keychain/ui/BackupRestoreFragment$$Lambda$2;

    invoke-direct {v3, v1}, Lorg/sufficientlysecure/keychain/ui/BackupRestoreFragment$$Lambda$2;-><init>(Lorg/sufficientlysecure/keychain/ui/BackupRestoreFragment;)V

    invoke-virtual {p0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v2

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/ui/BackupRestoreFragment;--->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public onCryptoOperationError(Lorg/sufficientlysecure/keychain/operations/results/ExportResult;)V
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    .line 336
    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/ui/BackupRestoreFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/sufficientlysecure/keychain/operations/results/ExportResult;->createNotify(Landroid/app/Activity;)Lorg/sufficientlysecure/keychain/ui/util/Notify$Showable;

    move-result-object v2

    invoke-interface {v2}, Lorg/sufficientlysecure/keychain/ui/util/Notify$Showable;->show()V

    const/4 v2, 0x0

    .line 337
    iput-object v2, v1, Lorg/sufficientlysecure/keychain/ui/BackupRestoreFragment;->cachedBackupUri:Landroid/net/Uri;

    return-void

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/BackupRestoreFragment;--->onCryptoOperationError(Lorg/sufficientlysecure/keychain/operations/results/ExportResult;)V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public bridge synthetic onCryptoOperationError(Lorg/sufficientlysecure/keychain/operations/results/OperationResult;)V
    .locals 0

    .line 61
    check-cast p1, Lorg/sufficientlysecure/keychain/operations/results/ExportResult;

    invoke-virtual {p0, p1}, Lorg/sufficientlysecure/keychain/ui/BackupRestoreFragment;->onCryptoOperationError(Lorg/sufficientlysecure/keychain/operations/results/ExportResult;)V

    return-void
.end method

.method public onCryptoOperationSuccess(Lorg/sufficientlysecure/keychain/operations/results/ExportResult;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    .line 331
    invoke-direct {v0}, Lorg/sufficientlysecure/keychain/ui/BackupRestoreFragment;->exportContactKeysToFileOrShare()V

    return-void

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/BackupRestoreFragment;--->onCryptoOperationSuccess(Lorg/sufficientlysecure/keychain/operations/results/ExportResult;)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public bridge synthetic onCryptoOperationSuccess(Lorg/sufficientlysecure/keychain/operations/results/OperationResult;)V
    .locals 0

    .line 61
    check-cast p1, Lorg/sufficientlysecure/keychain/operations/results/ExportResult;

    invoke-virtual {p0, p1}, Lorg/sufficientlysecure/keychain/ui/BackupRestoreFragment;->onCryptoOperationSuccess(Lorg/sufficientlysecure/keychain/operations/results/ExportResult;)V

    return-void
.end method
