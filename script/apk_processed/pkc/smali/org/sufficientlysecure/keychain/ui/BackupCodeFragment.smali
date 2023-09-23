.class public Lorg/sufficientlysecure/keychain/ui/BackupCodeFragment;
.super Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationFragment;
.source "BackupCodeFragment.java"


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
.field public static final ARG_BACKUP_CODE:Ljava/lang/String; = "backup_code"

.field public static final ARG_EXECUTE_BACKUP_OPERATION:Ljava/lang/String; = "execute_backup_operation"

.field public static final ARG_EXPORT_SECRET:Ljava/lang/String; = "export_secret"

.field public static final ARG_MASTER_KEY_IDS:Ljava/lang/String; = "master_key_ids"

.field public static final REQUEST_SAVE:I = 0x1


# instance fields
.field private buttonExport:Landroid/view/View;

.field private buttonSave:Landroid/view/View;

.field private buttonShare:Landroid/view/View;

.field mBackupCode:Lorg/sufficientlysecure/keychain/util/Passphrase;

.field private mCachedBackupUri:Landroid/net/Uri;

.field private mExecuteBackupOperation:Z

.field private mExportSecret:Z

.field private mMasterKeyIds:[J

.field private mShareNotSave:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    move-object/16 v0, p0

    .line 55
    invoke-direct {v0}, Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationFragment;-><init>()V

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/ui/BackupCodeFragment;---><init>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private getTransferCodeTextViews(Landroid/view/View;I)[Landroid/widget/TextView;
    .locals 5

    move-object/16 v2, p0

    move-object/16 v3, p1

    move/16 v4, p2

    .line 150
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    const/16 v4, 0x9

    .line 151
    new-array v4, v4, [Landroid/widget/TextView;

    const v0, 0x7f090330

    .line 152
    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v1, 0x0

    aput-object v0, v4, v1

    const v0, 0x7f090331

    .line 153
    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v1, 0x1

    aput-object v0, v4, v1

    const v0, 0x7f090332

    .line 154
    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v1, 0x2

    aput-object v0, v4, v1

    const v0, 0x7f090333

    .line 155
    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v1, 0x3

    aput-object v0, v4, v1

    const v0, 0x7f090334

    .line 156
    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v1, 0x4

    aput-object v0, v4, v1

    const v0, 0x7f090335

    .line 157
    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v1, 0x5

    aput-object v0, v4, v1

    const v0, 0x7f090336

    .line 158
    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v1, 0x6

    aput-object v0, v4, v1

    const v0, 0x7f090337

    .line 159
    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v1, 0x7

    aput-object v0, v4, v1

    const v0, 0x7f090338

    .line 160
    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const/16 v0, 0x8

    aput-object v3, v4, v0

    return-object v4

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/ui/BackupCodeFragment;--->getTransferCodeTextViews(Landroid/view/View;I)[Landroid/widget/TextView;"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static newInstance([JZZ)Lorg/sufficientlysecure/keychain/ui/BackupCodeFragment;
    .locals 7

    move-object/16 v4, p0

    move/16 v5, p1

    move/16 v6, p2

    .line 77
    new-instance v0, Lorg/sufficientlysecure/keychain/ui/BackupCodeFragment;

    invoke-direct {v0}, Lorg/sufficientlysecure/keychain/ui/BackupCodeFragment;-><init>()V

    .line 79
    invoke-static {}, Lorg/sufficientlysecure/keychain/util/Numeric9x4PassphraseUtil;->generateNumeric9x4Passphrase()Lorg/sufficientlysecure/keychain/util/Passphrase;

    move-result-object v1

    .line 81
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "backup_code"

    .line 82
    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v1, "master_key_ids"

    .line 83
    invoke-virtual {v2, v1, v4}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    const-string v4, "export_secret"

    .line 84
    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v4, "execute_backup_operation"

    .line 85
    invoke-virtual {v2, v4, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 86
    invoke-virtual {v0, v2}, Lorg/sufficientlysecure/keychain/ui/BackupCodeFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/ui/BackupCodeFragment;--->newInstance([JZZ)Lorg/sufficientlysecure/keychain/ui/BackupCodeFragment;"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private saveFile(Ljava/lang/String;Z)V
    .locals 7

    move-object/16 v4, p0

    move-object/16 v5, p1

    move/16 v6, p2

    .line 206
    invoke-virtual {v4}, Lorg/sufficientlysecure/keychain/ui/BackupCodeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 212
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_1

    const-string v6, "application/pgp-message"

    const/4 v0, 0x1

    .line 213
    invoke-static {v4, v5, v6, v0}, Lorg/sufficientlysecure/keychain/util/FileHelper;->saveDocument(Landroid/support/v4/app/Fragment;Ljava/lang/String;Ljava/lang/String;I)V

    return-void

    .line 217
    :cond_1
    sget-object v1, Lorg/sufficientlysecure/keychain/Constants$Path;->APP_DIR:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v1

    const v2, 0x7f110ca9

    if-nez v1, :cond_2

    .line 218
    sget-object v5, Lorg/sufficientlysecure/keychain/ui/util/Notify$Style;->ERROR:Lorg/sufficientlysecure/keychain/ui/util/Notify$Style;

    invoke-static {v0, v2, v5}, Lorg/sufficientlysecure/keychain/ui/util/Notify;->create(Landroid/app/Activity;ILorg/sufficientlysecure/keychain/ui/util/Notify$Style;)Lorg/sufficientlysecure/keychain/ui/util/Notify$Showable;

    move-result-object v5

    invoke-interface {v5}, Lorg/sufficientlysecure/keychain/ui/util/Notify$Showable;->show()V

    return-void

    .line 222
    :cond_2
    new-instance v1, Ljava/io/File;

    sget-object v3, Lorg/sufficientlysecure/keychain/Constants$Path;->APP_DIR:Ljava/io/File;

    invoke-direct {v1, v3, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    if-nez v6, :cond_3

    .line 224
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_3

    const v6, 0x7f110caa

    .line 225
    sget-object v1, Lorg/sufficientlysecure/keychain/ui/util/Notify$Style;->WARN:Lorg/sufficientlysecure/keychain/ui/util/Notify$Style;

    new-instance v2, Lorg/sufficientlysecure/keychain/ui/BackupCodeFragment$$Lambda$5;

    invoke-direct {v2, v4, v5}, Lorg/sufficientlysecure/keychain/ui/BackupCodeFragment$$Lambda$5;-><init>(Lorg/sufficientlysecure/keychain/ui/BackupCodeFragment;Ljava/lang/String;)V

    const v5, 0x7f110cad

    invoke-static {v0, v6, v1, v2, v5}, Lorg/sufficientlysecure/keychain/ui/util/Notify;->create(Landroid/app/Activity;ILorg/sufficientlysecure/keychain/ui/util/Notify$Style;Lorg/sufficientlysecure/keychain/ui/util/Notify$ActionListener;I)Lorg/sufficientlysecure/keychain/ui/util/Notify$Showable;

    move-result-object v5

    invoke-interface {v5}, Lorg/sufficientlysecure/keychain/ui/util/Notify$Showable;->show()V

    return-void

    .line 230
    :cond_3
    :try_start_0
    iget-object v5, v4, Lorg/sufficientlysecure/keychain/ui/BackupCodeFragment;->mCachedBackupUri:Landroid/net/Uri;

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v6

    invoke-static {v0, v5, v6}, Lorg/sufficientlysecure/keychain/util/FileHelper;->copyUriData(Landroid/content/Context;Landroid/net/Uri;Landroid/net/Uri;)V

    const v5, 0x7f110cac

    .line 231
    sget-object v6, Lorg/sufficientlysecure/keychain/ui/util/Notify$Style;->OK:Lorg/sufficientlysecure/keychain/ui/util/Notify$Style;

    invoke-static {v0, v5, v6}, Lorg/sufficientlysecure/keychain/ui/util/Notify;->create(Landroid/app/Activity;ILorg/sufficientlysecure/keychain/ui/util/Notify$Style;)Lorg/sufficientlysecure/keychain/ui/util/Notify$Showable;

    move-result-object v5

    invoke-interface {v5}, Lorg/sufficientlysecure/keychain/ui/util/Notify$Showable;->show()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 233
    :catch_0
    sget-object v5, Lorg/sufficientlysecure/keychain/ui/util/Notify$Style;->ERROR:Lorg/sufficientlysecure/keychain/ui/util/Notify$Style;

    invoke-static {v0, v2, v5}, Lorg/sufficientlysecure/keychain/ui/util/Notify;->create(Landroid/app/Activity;ILorg/sufficientlysecure/keychain/ui/util/Notify$Style;)Lorg/sufficientlysecure/keychain/ui/util/Notify$Showable;

    move-result-object v5

    invoke-interface {v5}, Lorg/sufficientlysecure/keychain/ui/util/Notify$Showable;->show()V

    :goto_0
    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/ui/BackupCodeFragment;--->saveFile(Ljava/lang/String;Z)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private showFaq()V
    .locals 5

    move-object/16 v2, p0

    .line 165
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/ui/BackupCodeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lorg/sufficientlysecure/keychain/ui/HelpActivity;->startHelpActivity(Landroid/content/Context;I)V

    return-void

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/ui/BackupCodeFragment;--->showFaq()V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private startBackup()V
    .locals 7

    move-object/16 v4, p0

    .line 169
    invoke-virtual {v4}, Lorg/sufficientlysecure/keychain/ui/BackupCodeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 174
    :cond_0
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 175
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "backup_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, v4, Lorg/sufficientlysecure/keychain/ui/BackupCodeFragment;->mExportSecret:Z

    if-eqz v1, :cond_1

    const-string v1, ".sec.pgp"

    goto :goto_0

    :cond_1
    const-string v1, ".pub.pgp"

    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 180
    iget-boolean v2, v4, Lorg/sufficientlysecure/keychain/ui/BackupCodeFragment;->mExecuteBackupOperation:Z

    if-nez v2, :cond_2

    .line 181
    invoke-virtual {v4}, Lorg/sufficientlysecure/keychain/ui/BackupCodeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lorg/sufficientlysecure/keychain/ui/BackupActivity;

    iget-object v1, v4, Lorg/sufficientlysecure/keychain/ui/BackupCodeFragment;->mBackupCode:Lorg/sufficientlysecure/keychain/util/Passphrase;

    .line 182
    invoke-static {v1}, Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;->createCryptoInputParcel(Lorg/sufficientlysecure/keychain/util/Passphrase;)Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;

    move-result-object v1

    .line 181
    invoke-virtual {v0, v1}, Lorg/sufficientlysecure/keychain/ui/BackupActivity;->handleBackupOperation(Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;)V

    return-void

    .line 186
    :cond_2
    iget-object v2, v4, Lorg/sufficientlysecure/keychain/ui/BackupCodeFragment;->mCachedBackupUri:Landroid/net/Uri;

    if-nez v2, :cond_3

    const-string v2, "application/pgp-message"

    .line 187
    invoke-static {v0, v1, v2}, Lorg/sufficientlysecure/keychain/provider/TemporaryFileProvider;->createFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, v4, Lorg/sufficientlysecure/keychain/ui/BackupCodeFragment;->mCachedBackupUri:Landroid/net/Uri;

    .line 190
    iget-object v0, v4, Lorg/sufficientlysecure/keychain/ui/BackupCodeFragment;->mBackupCode:Lorg/sufficientlysecure/keychain/util/Passphrase;

    invoke-static {v0}, Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;->createCryptoInputParcel(Lorg/sufficientlysecure/keychain/util/Passphrase;)Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;

    move-result-object v0

    invoke-virtual {v4, v0}, Lorg/sufficientlysecure/keychain/ui/BackupCodeFragment;->cryptoOperation(Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;)V

    return-void

    .line 194
    :cond_3
    iget-boolean v0, v4, Lorg/sufficientlysecure/keychain/ui/BackupCodeFragment;->mShareNotSave:Z

    if-eqz v0, :cond_4

    .line 195
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "application/pgp-message"

    .line 196
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.extra.STREAM"

    .line 197
    iget-object v2, v4, Lorg/sufficientlysecure/keychain/ui/BackupCodeFragment;->mCachedBackupUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 198
    invoke-virtual {v4, v0}, Lorg/sufficientlysecure/keychain/ui/BackupCodeFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    .line 200
    invoke-direct {v4, v1, v0}, Lorg/sufficientlysecure/keychain/ui/BackupCodeFragment;->saveFile(Ljava/lang/String;Z)V

    :goto_1
    return-void

    const-string v5, "M_InsDal"

    const-string v6, "Lorg/sufficientlysecure/keychain/ui/BackupCodeFragment;--->startBackup()V"

    invoke-static/range {v5 .. v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public bridge synthetic createOperationInput()Landroid/os/Parcelable;
    .locals 1

    .line 55
    invoke-virtual {p0}, Lorg/sufficientlysecure/keychain/ui/BackupCodeFragment;->createOperationInput()Lorg/sufficientlysecure/keychain/service/BackupKeyringParcel;

    move-result-object v0

    return-object v0
.end method

.method public createOperationInput()Lorg/sufficientlysecure/keychain/service/BackupKeyringParcel;
    .locals 7

    move-object/16 v4, p0

    .line 264
    iget-object v0, v4, Lorg/sufficientlysecure/keychain/ui/BackupCodeFragment;->mMasterKeyIds:[J

    iget-boolean v1, v4, Lorg/sufficientlysecure/keychain/ui/BackupCodeFragment;->mExportSecret:Z

    iget-object v2, v4, Lorg/sufficientlysecure/keychain/ui/BackupCodeFragment;->mCachedBackupUri:Landroid/net/Uri;

    const/4 v3, 0x1

    .line 265
    invoke-static {v0, v1, v3, v3, v2}, Lorg/sufficientlysecure/keychain/service/BackupKeyringParcel;->create([JZZZLandroid/net/Uri;)Lorg/sufficientlysecure/keychain/service/BackupKeyringParcel;

    move-result-object v0

    return-object v0

    const-string v5, "M_InsDal"

    const-string v6, "Lorg/sufficientlysecure/keychain/ui/BackupCodeFragment;--->createOperationInput()Lorg/sufficientlysecure/keychain/service/BackupKeyringParcel;"

    invoke-static/range {v5 .. v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method final synthetic lambda$onCreateView$0$BackupCodeFragment(Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x0

    .line 123
    iput-boolean p1, p0, Lorg/sufficientlysecure/keychain/ui/BackupCodeFragment;->mShareNotSave:Z

    .line 124
    invoke-direct {p0}, Lorg/sufficientlysecure/keychain/ui/BackupCodeFragment;->startBackup()V

    return-void
.end method

.method final synthetic lambda$onCreateView$1$BackupCodeFragment(Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x1

    .line 128
    iput-boolean p1, p0, Lorg/sufficientlysecure/keychain/ui/BackupCodeFragment;->mShareNotSave:Z

    .line 129
    invoke-direct {p0}, Lorg/sufficientlysecure/keychain/ui/BackupCodeFragment;->startBackup()V

    return-void
.end method

.method final synthetic lambda$onCreateView$2$BackupCodeFragment(Landroid/view/View;)V
    .locals 0

    .line 134
    invoke-direct {p0}, Lorg/sufficientlysecure/keychain/ui/BackupCodeFragment;->startBackup()V

    return-void
.end method

.method final synthetic lambda$onCreateView$3$BackupCodeFragment(Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 139
    iget-object p1, p0, Lorg/sufficientlysecure/keychain/ui/BackupCodeFragment;->buttonSave:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/View;->setEnabled(Z)V

    .line 140
    iget-object p1, p0, Lorg/sufficientlysecure/keychain/ui/BackupCodeFragment;->buttonShare:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/View;->setEnabled(Z)V

    .line 141
    iget-object p1, p0, Lorg/sufficientlysecure/keychain/ui/BackupCodeFragment;->buttonExport:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method

.method final synthetic lambda$onCreateView$4$BackupCodeFragment(Landroid/view/View;)V
    .locals 0

    .line 144
    invoke-direct {p0}, Lorg/sufficientlysecure/keychain/ui/BackupCodeFragment;->showFaq()V

    return-void
.end method

.method final synthetic lambda$saveFile$5$BackupCodeFragment(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    .line 225
    invoke-direct {p0, p1, v0}, Lorg/sufficientlysecure/keychain/ui/BackupCodeFragment;->saveFile(Ljava/lang/String;Z)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    move-object/16 v1, p0

    move/16 v2, p1

    move/16 v3, p2

    move-object/16 p0, p3

    const/4 v0, 0x1

    if-eq v2, v0, :cond_0

    .line 240
    invoke-super {v1, v2, v3, p0}, Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationFragment;->onActivityResult(IILandroid/content/Intent;)V

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/ui/BackupCodeFragment;--->onActivityResult(IILandroid/content/Intent;)V"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v2, -0x1

    if-eq v3, v2, :cond_1

    return-void

    .line 248
    :cond_1
    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/ui/BackupCodeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    if-nez v2, :cond_2

    return-void

    .line 253
    :cond_2
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    .line 254
    iget-object p0, v1, Lorg/sufficientlysecure/keychain/ui/BackupCodeFragment;->mCachedBackupUri:Landroid/net/Uri;

    invoke-static {v2, p0, v3}, Lorg/sufficientlysecure/keychain/util/FileHelper;->copyUriData(Landroid/content/Context;Landroid/net/Uri;Landroid/net/Uri;)V

    const v3, 0x7f110cab

    .line 255
    sget-object p0, Lorg/sufficientlysecure/keychain/ui/util/Notify$Style;->OK:Lorg/sufficientlysecure/keychain/ui/util/Notify$Style;

    invoke-static {v2, v3, p0}, Lorg/sufficientlysecure/keychain/ui/util/Notify;->create(Landroid/app/Activity;ILorg/sufficientlysecure/keychain/ui/util/Notify$Style;)Lorg/sufficientlysecure/keychain/ui/util/Notify$Showable;

    move-result-object v3

    invoke-interface {v3}, Lorg/sufficientlysecure/keychain/ui/util/Notify$Showable;->show()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const v3, 0x7f110ca9

    .line 257
    sget-object p0, Lorg/sufficientlysecure/keychain/ui/util/Notify$Style;->ERROR:Lorg/sufficientlysecure/keychain/ui/util/Notify$Style;

    invoke-static {v2, v3, p0}, Lorg/sufficientlysecure/keychain/ui/util/Notify;->create(Landroid/app/Activity;ILorg/sufficientlysecure/keychain/ui/util/Notify$Style;)Lorg/sufficientlysecure/keychain/ui/util/Notify$Showable;

    move-result-object v2

    invoke-interface {v2}, Lorg/sufficientlysecure/keychain/ui/util/Notify$Showable;->show()V

    :goto_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 8

    move-object/16 v5, p0

    move-object/16 v6, p1

    move-object/16 v7, p2

    move-object/16 p0, p3

    const/4 p0, 0x0

    const v0, 0x7f0c002f

    .line 93
    invoke-virtual {v6, v0, v7, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    .line 95
    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/ui/BackupCodeFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v7

    const-string v0, "backup_code"

    .line 96
    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lorg/sufficientlysecure/keychain/util/Passphrase;

    iput-object v0, v5, Lorg/sufficientlysecure/keychain/ui/BackupCodeFragment;->mBackupCode:Lorg/sufficientlysecure/keychain/util/Passphrase;

    const-string v0, "master_key_ids"

    .line 97
    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v0

    iput-object v0, v5, Lorg/sufficientlysecure/keychain/ui/BackupCodeFragment;->mMasterKeyIds:[J

    const-string v0, "export_secret"

    .line 98
    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, v5, Lorg/sufficientlysecure/keychain/ui/BackupCodeFragment;->mExportSecret:Z

    const-string v0, "execute_backup_operation"

    const/4 v1, 0x1

    .line 99
    invoke-virtual {v7, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, v5, Lorg/sufficientlysecure/keychain/ui/BackupCodeFragment;->mExecuteBackupOperation:Z

    const v7, 0x7f090339

    .line 102
    invoke-direct {v5, v6, v7}, Lorg/sufficientlysecure/keychain/ui/BackupCodeFragment;->getTransferCodeTextViews(Landroid/view/View;I)[Landroid/widget/TextView;

    move-result-object v7

    .line 105
    iget-object v0, v5, Lorg/sufficientlysecure/keychain/ui/BackupCodeFragment;->mBackupCode:Lorg/sufficientlysecure/keychain/util/Passphrase;

    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/util/Passphrase;->getCharArray()[C

    move-result-object v0

    const/4 v1, 0x0

    .line 106
    :goto_0
    array-length v2, v7

    if-ge v1, v2, :cond_0

    .line 107
    aget-object v2, v7, v1

    mul-int/lit8 v3, v1, 0x5

    const/4 v4, 0x4

    invoke-virtual {v2, v0, v3, v4}, Landroid/widget/TextView;->setText([CII)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 111
    :cond_0
    array-length v0, v7

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_1

    aget-object v2, v7, v1

    const/4 v3, 0x0

    .line 113
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    const v7, 0x7f090079

    .line 117
    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, v5, Lorg/sufficientlysecure/keychain/ui/BackupCodeFragment;->buttonSave:Landroid/view/View;

    const v7, 0x7f09007a

    .line 118
    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, v5, Lorg/sufficientlysecure/keychain/ui/BackupCodeFragment;->buttonShare:Landroid/view/View;

    const v7, 0x7f090078

    .line 119
    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, v5, Lorg/sufficientlysecure/keychain/ui/BackupCodeFragment;->buttonExport:Landroid/view/View;

    .line 121
    iget-boolean v7, v5, Lorg/sufficientlysecure/keychain/ui/BackupCodeFragment;->mExecuteBackupOperation:Z

    if-eqz v7, :cond_2

    .line 122
    iget-object v7, v5, Lorg/sufficientlysecure/keychain/ui/BackupCodeFragment;->buttonSave:Landroid/view/View;

    new-instance p0, Lorg/sufficientlysecure/keychain/ui/BackupCodeFragment$$Lambda$0;

    invoke-direct {p0, v5}, Lorg/sufficientlysecure/keychain/ui/BackupCodeFragment$$Lambda$0;-><init>(Lorg/sufficientlysecure/keychain/ui/BackupCodeFragment;)V

    invoke-virtual {v7, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 127
    iget-object v7, v5, Lorg/sufficientlysecure/keychain/ui/BackupCodeFragment;->buttonShare:Landroid/view/View;

    new-instance p0, Lorg/sufficientlysecure/keychain/ui/BackupCodeFragment$$Lambda$1;

    invoke-direct {p0, v5}, Lorg/sufficientlysecure/keychain/ui/BackupCodeFragment$$Lambda$1;-><init>(Lorg/sufficientlysecure/keychain/ui/BackupCodeFragment;)V

    invoke-virtual {v7, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2

    :cond_2
    const v7, 0x7f09007b

    .line 132
    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    const/16 v0, 0x8

    invoke-virtual {v7, v0}, Landroid/view/View;->setVisibility(I)V

    .line 133
    iget-object v7, v5, Lorg/sufficientlysecure/keychain/ui/BackupCodeFragment;->buttonExport:Landroid/view/View;

    invoke-virtual {v7, p0}, Landroid/view/View;->setVisibility(I)V

    .line 134
    iget-object v7, v5, Lorg/sufficientlysecure/keychain/ui/BackupCodeFragment;->buttonExport:Landroid/view/View;

    new-instance p0, Lorg/sufficientlysecure/keychain/ui/BackupCodeFragment$$Lambda$2;

    invoke-direct {p0, v5}, Lorg/sufficientlysecure/keychain/ui/BackupCodeFragment$$Lambda$2;-><init>(Lorg/sufficientlysecure/keychain/ui/BackupCodeFragment;)V

    invoke-virtual {v7, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_2
    const v7, 0x7f0900d5

    .line 137
    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/CheckBox;

    new-instance p0, Lorg/sufficientlysecure/keychain/ui/BackupCodeFragment$$Lambda$3;

    invoke-direct {p0, v5}, Lorg/sufficientlysecure/keychain/ui/BackupCodeFragment$$Lambda$3;-><init>(Lorg/sufficientlysecure/keychain/ui/BackupCodeFragment;)V

    invoke-virtual {v7, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    const v7, 0x7f090082

    .line 144
    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    new-instance p0, Lorg/sufficientlysecure/keychain/ui/BackupCodeFragment$$Lambda$4;

    invoke-direct {p0, v5}, Lorg/sufficientlysecure/keychain/ui/BackupCodeFragment$$Lambda$4;-><init>(Lorg/sufficientlysecure/keychain/ui/BackupCodeFragment;)V

    invoke-virtual {v7, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v6

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/ui/BackupCodeFragment;--->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public onCryptoOperationCancelled()V
    .locals 4

    move-object/16 v1, p0

    const/4 v0, 0x0

    .line 281
    iput-object v0, v1, Lorg/sufficientlysecure/keychain/ui/BackupCodeFragment;->mCachedBackupUri:Landroid/net/Uri;

    return-void

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/ui/BackupCodeFragment;--->onCryptoOperationCancelled()V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public onCryptoOperationError(Lorg/sufficientlysecure/keychain/operations/results/ExportResult;)V
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    .line 275
    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/ui/BackupCodeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/sufficientlysecure/keychain/operations/results/ExportResult;->createNotify(Landroid/app/Activity;)Lorg/sufficientlysecure/keychain/ui/util/Notify$Showable;

    move-result-object v2

    invoke-interface {v2}, Lorg/sufficientlysecure/keychain/ui/util/Notify$Showable;->show()V

    const/4 v2, 0x0

    .line 276
    iput-object v2, v1, Lorg/sufficientlysecure/keychain/ui/BackupCodeFragment;->mCachedBackupUri:Landroid/net/Uri;

    return-void

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/BackupCodeFragment;--->onCryptoOperationError(Lorg/sufficientlysecure/keychain/operations/results/ExportResult;)V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public bridge synthetic onCryptoOperationError(Lorg/sufficientlysecure/keychain/operations/results/OperationResult;)V
    .locals 0

    .line 55
    check-cast p1, Lorg/sufficientlysecure/keychain/operations/results/ExportResult;

    invoke-virtual {p0, p1}, Lorg/sufficientlysecure/keychain/ui/BackupCodeFragment;->onCryptoOperationError(Lorg/sufficientlysecure/keychain/operations/results/ExportResult;)V

    return-void
.end method

.method public onCryptoOperationSuccess(Lorg/sufficientlysecure/keychain/operations/results/ExportResult;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    .line 270
    invoke-direct {v0}, Lorg/sufficientlysecure/keychain/ui/BackupCodeFragment;->startBackup()V

    return-void

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/BackupCodeFragment;--->onCryptoOperationSuccess(Lorg/sufficientlysecure/keychain/operations/results/ExportResult;)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public bridge synthetic onCryptoOperationSuccess(Lorg/sufficientlysecure/keychain/operations/results/OperationResult;)V
    .locals 0

    .line 55
    check-cast p1, Lorg/sufficientlysecure/keychain/operations/results/ExportResult;

    invoke-virtual {p0, p1}, Lorg/sufficientlysecure/keychain/ui/BackupCodeFragment;->onCryptoOperationSuccess(Lorg/sufficientlysecure/keychain/operations/results/ExportResult;)V

    return-void
.end method
