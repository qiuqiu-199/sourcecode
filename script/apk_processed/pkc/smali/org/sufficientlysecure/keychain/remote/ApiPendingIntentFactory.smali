.class public Lorg/sufficientlysecure/keychain/remote/ApiPendingIntentFactory;
.super Ljava/lang/Object;
.source "ApiPendingIntentFactory.java"


# instance fields
.field mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    .line 52
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/remote/ApiPendingIntentFactory;->mContext:Landroid/content/Context;

    return-void

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/remote/ApiPendingIntentFactory;---><init>(Landroid/content/Context;)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private createInternal(Landroid/content/Intent;Landroid/content/Intent;)Landroid/app/PendingIntent;
    .locals 5

    move-object/16 v2, p0

    move-object/16 v3, p1

    move-object/16 v4, p2

    if-eqz v3, :cond_0

    const-string v0, "data"

    .line 208
    invoke-virtual {v4, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 211
    :cond_0
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x17

    const/4 v1, 0x0

    if-lt v3, v0, :cond_1

    .line 213
    iget-object v3, v2, Lorg/sufficientlysecure/keychain/remote/ApiPendingIntentFactory;->mContext:Landroid/content/Context;

    const/high16 v0, 0x14000000

    invoke-static {v3, v1, v4, v0}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    return-object v3

    .line 217
    :cond_1
    iget-object v3, v2, Lorg/sufficientlysecure/keychain/remote/ApiPendingIntentFactory;->mContext:Landroid/content/Context;

    const/high16 v0, 0x10000000

    invoke-static {v3, v1, v4, v0}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    return-object v3

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/remote/ApiPendingIntentFactory;--->createInternal(Landroid/content/Intent;Landroid/content/Intent;)Landroid/app/PendingIntent;"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private createPassphrasePendingIntent(Landroid/content/Intent;Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;)Landroid/app/PendingIntent;
    .locals 6

    move-object/16 v3, p0

    move-object/16 v4, p1

    move-object/16 v5, p2

    move-object/16 p0, p3

    .line 87
    new-instance v0, Landroid/content/Intent;

    iget-object v1, v3, Lorg/sufficientlysecure/keychain/remote/ApiPendingIntentFactory;->mContext:Landroid/content/Context;

    const-class v2, Lorg/sufficientlysecure/keychain/remote/ui/RemotePassphraseDialogActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "required_input"

    .line 89
    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v5, "crypto_input"

    .line 90
    invoke-virtual {v0, v5, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 92
    invoke-direct {v3, v4, v0}, Lorg/sufficientlysecure/keychain/remote/ApiPendingIntentFactory;->createInternal(Landroid/content/Intent;Landroid/content/Intent;)Landroid/app/PendingIntent;

    move-result-object v4

    return-object v4

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/remote/ApiPendingIntentFactory;--->createPassphrasePendingIntent(Landroid/content/Intent;Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;)Landroid/app/PendingIntent;"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private createSecurityTokenOperationPendingIntent(Landroid/content/Intent;Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;)Landroid/app/PendingIntent;
    .locals 6

    move-object/16 v3, p0

    move-object/16 v4, p1

    move-object/16 v5, p2

    move-object/16 p0, p3

    .line 78
    new-instance v0, Landroid/content/Intent;

    iget-object v1, v3, Lorg/sufficientlysecure/keychain/remote/ApiPendingIntentFactory;->mContext:Landroid/content/Context;

    const-class v2, Lorg/sufficientlysecure/keychain/remote/ui/RemoteSecurityTokenOperationActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "required_input"

    .line 80
    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v5, "crypto_input"

    .line 81
    invoke-virtual {v0, v5, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 83
    invoke-direct {v3, v4, v0}, Lorg/sufficientlysecure/keychain/remote/ApiPendingIntentFactory;->createInternal(Landroid/content/Intent;Landroid/content/Intent;)Landroid/app/PendingIntent;

    move-result-object v4

    return-object v4

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/remote/ApiPendingIntentFactory;--->createSecurityTokenOperationPendingIntent(Landroid/content/Intent;Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;)Landroid/app/PendingIntent;"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method createBackupPendingIntent(Landroid/content/Intent;[JZ)Landroid/app/PendingIntent;
    .locals 6

    move-object/16 v3, p0

    move-object/16 v4, p1

    move-object/16 v5, p2

    move/16 p0, p3

    .line 168
    new-instance v0, Landroid/content/Intent;

    iget-object v1, v3, Lorg/sufficientlysecure/keychain/remote/ApiPendingIntentFactory;->mContext:Landroid/content/Context;

    const-class v2, Lorg/sufficientlysecure/keychain/remote/ui/RemoteBackupActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "master_key_ids"

    .line 169
    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[J)Landroid/content/Intent;

    const-string v5, "export_secret"

    .line 170
    invoke-virtual {v0, v5, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 172
    invoke-direct {v3, v4, v0}, Lorg/sufficientlysecure/keychain/remote/ApiPendingIntentFactory;->createInternal(Landroid/content/Intent;Landroid/content/Intent;)Landroid/app/PendingIntent;

    move-result-object v4

    return-object v4

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/remote/ApiPendingIntentFactory;--->createBackupPendingIntent(Landroid/content/Intent;[JZ)Landroid/app/PendingIntent;"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public createDeduplicatePendingIntent(Ljava/lang/String;Landroid/content/Intent;Ljava/util/ArrayList;)Landroid/app/PendingIntent;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/content/Intent;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/app/PendingIntent;"
        }
    .end annotation

    move-object/16 v3, p0

    move-object/16 v4, p1

    move-object/16 v5, p2

    move-object/16 p0, p3

    .line 108
    new-instance v0, Landroid/content/Intent;

    iget-object v1, v3, Lorg/sufficientlysecure/keychain/remote/ApiPendingIntentFactory;->mContext:Landroid/content/Context;

    const-class v2, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteDeduplicateActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "package_name"

    .line 110
    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "duplicate_emails"

    .line 111
    invoke-virtual {v0, v4, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 113
    invoke-direct {v3, v5, v0}, Lorg/sufficientlysecure/keychain/remote/ApiPendingIntentFactory;->createInternal(Landroid/content/Intent;Landroid/content/Intent;)Landroid/app/PendingIntent;

    move-result-object v4

    return-object v4

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/remote/ApiPendingIntentFactory;--->createDeduplicatePendingIntent(Ljava/lang/String;Landroid/content/Intent;Ljava/util/ArrayList;)Landroid/app/PendingIntent;"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public createDisplayTransferCodePendingIntent(Lorg/sufficientlysecure/keychain/util/Passphrase;)Landroid/app/PendingIntent;
    .locals 6

    move-object/16 v3, p0

    move-object/16 v4, p1

    .line 199
    new-instance v0, Landroid/content/Intent;

    iget-object v1, v3, Lorg/sufficientlysecure/keychain/remote/ApiPendingIntentFactory;->mContext:Landroid/content/Context;

    const-class v2, Lorg/sufficientlysecure/keychain/remote/ui/RemoteDisplayTransferCodeActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "transfer_code"

    .line 200
    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/4 v4, 0x0

    .line 202
    invoke-direct {v3, v4, v0}, Lorg/sufficientlysecure/keychain/remote/ApiPendingIntentFactory;->createInternal(Landroid/content/Intent;Landroid/content/Intent;)Landroid/app/PendingIntent;

    move-result-object v4

    return-object v4

    const-string v5, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/remote/ApiPendingIntentFactory;--->createDisplayTransferCodePendingIntent(Lorg/sufficientlysecure/keychain/util/Passphrase;)Landroid/app/PendingIntent;"

    invoke-static/range {v5 .. v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method createErrorPendingIntent(Landroid/content/Intent;Ljava/lang/String;)Landroid/app/PendingIntent;
    .locals 6

    move-object/16 v3, p0

    move-object/16 v4, p1

    move-object/16 v5, p2

    .line 176
    new-instance v0, Landroid/content/Intent;

    iget-object v1, v3, Lorg/sufficientlysecure/keychain/remote/ApiPendingIntentFactory;->mContext:Landroid/content/Context;

    const-class v2, Lorg/sufficientlysecure/keychain/remote/ui/RemoteErrorActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "error_message"

    .line 177
    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 179
    invoke-direct {v3, v4, v0}, Lorg/sufficientlysecure/keychain/remote/ApiPendingIntentFactory;->createInternal(Landroid/content/Intent;Landroid/content/Intent;)Landroid/app/PendingIntent;

    move-result-object v4

    return-object v4

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/remote/ApiPendingIntentFactory;--->createErrorPendingIntent(Landroid/content/Intent;Ljava/lang/String;)Landroid/app/PendingIntent;"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method createImportFromKeyserverPendingIntent(Landroid/content/Intent;J)Landroid/app/PendingIntent;
    .locals 6

    move-object/16 v3, p0

    move-object/16 v4, p1

    move-wide/16 v5, p2

    .line 118
    new-instance v0, Landroid/content/Intent;

    iget-object v1, v3, Lorg/sufficientlysecure/keychain/remote/ApiPendingIntentFactory;->mContext:Landroid/content/Context;

    const-class v2, Lorg/sufficientlysecure/keychain/remote/ui/RemoteImportKeysActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "org.sufficientlysecure.keychain.action.IMPORT_KEY_FROM_KEY_SERVER_AND_RETURN_RESULT"

    .line 119
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "org.sufficientlysecure.keychain.EXTRA_KEY_ID"

    .line 120
    invoke-virtual {v0, v1, v5, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 122
    invoke-direct {v3, v4, v0}, Lorg/sufficientlysecure/keychain/remote/ApiPendingIntentFactory;->createInternal(Landroid/content/Intent;Landroid/content/Intent;)Landroid/app/PendingIntent;

    move-result-object v4

    return-object v4

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/remote/ApiPendingIntentFactory;--->createImportFromKeyserverPendingIntent(Landroid/content/Intent;J)Landroid/app/PendingIntent;"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public createRegisterPendingIntent(Landroid/content/Intent;Ljava/lang/String;[B)Landroid/app/PendingIntent;
    .locals 6

    move-object/16 v3, p0

    move-object/16 v4, p1

    move-object/16 v5, p2

    move-object/16 p0, p3

    .line 224
    new-instance v0, Landroid/content/Intent;

    iget-object v1, v3, Lorg/sufficientlysecure/keychain/remote/ApiPendingIntentFactory;->mContext:Landroid/content/Context;

    const-class v2, Lorg/sufficientlysecure/keychain/remote/ui/RemoteRegisterActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "package_name"

    .line 225
    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v5, "package_signature"

    .line 226
    invoke-virtual {v0, v5, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    const-string v5, "data"

    .line 227
    invoke-virtual {v0, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 229
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v5, 0x0

    const/16 p0, 0x17

    if-lt v4, p0, :cond_0

    .line 231
    iget-object v4, v3, Lorg/sufficientlysecure/keychain/remote/ApiPendingIntentFactory;->mContext:Landroid/content/Context;

    const/high16 p0, 0x54000000

    invoke-static {v4, v5, v0, p0}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    return-object v4

    .line 236
    :cond_0
    iget-object v4, v3, Lorg/sufficientlysecure/keychain/remote/ApiPendingIntentFactory;->mContext:Landroid/content/Context;

    const/high16 p0, 0x50000000

    invoke-static {v4, v5, v0, p0}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    return-object v4

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/remote/ApiPendingIntentFactory;--->createRegisterPendingIntent(Landroid/content/Intent;Ljava/lang/String;[B)Landroid/app/PendingIntent;"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public varargs createRequestKeyPermissionPendingIntent(Landroid/content/Intent;Ljava/lang/String;[J)Landroid/app/PendingIntent;
    .locals 6

    move-object/16 v3, p0

    move-object/16 v4, p1

    move-object/16 v5, p2

    move-object/16 p0, p3

    .line 126
    new-instance v0, Landroid/content/Intent;

    iget-object v1, v3, Lorg/sufficientlysecure/keychain/remote/ApiPendingIntentFactory;->mContext:Landroid/content/Context;

    const-class v2, Lorg/sufficientlysecure/keychain/remote/ui/RequestKeyPermissionActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "package_name"

    .line 127
    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v5, "requested_key_ids"

    .line 128
    invoke-virtual {v0, v5, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[J)Landroid/content/Intent;

    .line 130
    invoke-direct {v3, v4, v0}, Lorg/sufficientlysecure/keychain/remote/ApiPendingIntentFactory;->createInternal(Landroid/content/Intent;Landroid/content/Intent;)Landroid/app/PendingIntent;

    move-result-object v4

    return-object v4

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/remote/ApiPendingIntentFactory;--->createRequestKeyPermissionPendingIntent(Landroid/content/Intent;Ljava/lang/String;[J)Landroid/app/PendingIntent;"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method createSecurityProblemIntent(Ljava/lang/String;Lorg/sufficientlysecure/keychain/pgp/DecryptVerifySecurityProblem;Z)Landroid/app/PendingIntent;
    .locals 6

    move-object/16 v3, p0

    move-object/16 v4, p1

    move-object/16 v5, p2

    move/16 p0, p3

    .line 184
    new-instance v0, Landroid/content/Intent;

    iget-object v1, v3, Lorg/sufficientlysecure/keychain/remote/ApiPendingIntentFactory;->mContext:Landroid/content/Context;

    const-class v2, Lorg/sufficientlysecure/keychain/remote/ui/RemoteSecurityProblemDialogActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "package_name"

    .line 185
    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "security_problem"

    .line 186
    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string v4, "support_override"

    .line 187
    invoke-virtual {v0, v4, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 189
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v5, 0x0

    const/16 p0, 0x17

    if-lt v4, p0, :cond_0

    .line 191
    iget-object v4, v3, Lorg/sufficientlysecure/keychain/remote/ApiPendingIntentFactory;->mContext:Landroid/content/Context;

    const/high16 p0, 0x14000000

    invoke-static {v4, v5, v0, p0}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    return-object v4

    .line 194
    :cond_0
    iget-object v4, v3, Lorg/sufficientlysecure/keychain/remote/ApiPendingIntentFactory;->mContext:Landroid/content/Context;

    const/high16 p0, 0x10000000

    invoke-static {v4, v5, v0, p0}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    return-object v4

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/remote/ApiPendingIntentFactory;--->createSecurityProblemIntent(Ljava/lang/String;Lorg/sufficientlysecure/keychain/pgp/DecryptVerifySecurityProblem;Z)Landroid/app/PendingIntent;"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public createSelectAuthenticationKeyIdPendingIntent(Landroid/content/Intent;Ljava/lang/String;)Landroid/app/PendingIntent;
    .locals 6

    move-object/16 v3, p0

    move-object/16 v4, p1

    move-object/16 v5, p2

    .line 161
    new-instance v0, Landroid/content/Intent;

    iget-object v1, v3, Lorg/sufficientlysecure/keychain/remote/ApiPendingIntentFactory;->mContext:Landroid/content/Context;

    const-class v2, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectAuthenticationKeyActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "package_name"

    .line 162
    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 164
    invoke-direct {v3, v4, v0}, Lorg/sufficientlysecure/keychain/remote/ApiPendingIntentFactory;->createInternal(Landroid/content/Intent;Landroid/content/Intent;)Landroid/app/PendingIntent;

    move-result-object v4

    return-object v4

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/remote/ApiPendingIntentFactory;--->createSelectAuthenticationKeyIdPendingIntent(Landroid/content/Intent;Ljava/lang/String;)Landroid/app/PendingIntent;"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public createSelectPublicKeyPendingIntent(Landroid/content/Intent;[JLjava/util/ArrayList;Ljava/util/ArrayList;Z)Landroid/app/PendingIntent;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "[J",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;Z)",
            "Landroid/app/PendingIntent;"
        }
    .end annotation

    move-object/16 v3, p0

    move-object/16 v4, p1

    move-object/16 v5, p2

    move-object/16 p0, p3

    move-object/16 p1, p4

    move/16 p2, p5

    .line 98
    new-instance v0, Landroid/content/Intent;

    iget-object v1, v3, Lorg/sufficientlysecure/keychain/remote/ApiPendingIntentFactory;->mContext:Landroid/content/Context;

    const-class v2, Lorg/sufficientlysecure/keychain/remote/ui/RemoteSelectPubKeyActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "master_key_ids"

    .line 99
    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[J)Landroid/content/Intent;

    const-string v5, "no_user_ids"

    .line 100
    invoke-virtual {v0, v5, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v5, "missing_emails"

    .line 101
    invoke-virtual {v0, v5, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string v5, "dublicate_emails"

    .line 102
    invoke-virtual {v0, v5, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 104
    invoke-direct {v3, v4, v0}, Lorg/sufficientlysecure/keychain/remote/ApiPendingIntentFactory;->createInternal(Landroid/content/Intent;Landroid/content/Intent;)Landroid/app/PendingIntent;

    move-result-object v4

    return-object v4

    const-string p3, "M_InsDal"

    const-string p4, "Lorg/sufficientlysecure/keychain/remote/ApiPendingIntentFactory;--->createSelectPublicKeyPendingIntent(Landroid/content/Intent;[JLjava/util/ArrayList;Ljava/util/ArrayList;Z)Landroid/app/PendingIntent;"

    invoke-static/range {p3 .. p4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public createSelectSignKeyIdLegacyPendingIntent(Landroid/content/Intent;Ljava/lang/String;[BLjava/lang/String;)Landroid/app/PendingIntent;
    .locals 6

    move-object/16 v3, p0

    move-object/16 v4, p1

    move-object/16 v5, p2

    move-object/16 p0, p3

    move-object/16 p1, p4

    .line 141
    new-instance v0, Landroid/content/Intent;

    iget-object v1, v3, Lorg/sufficientlysecure/keychain/remote/ApiPendingIntentFactory;->mContext:Landroid/content/Context;

    const-class v2, Lorg/sufficientlysecure/keychain/remote/ui/SelectSignKeyIdActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "package_name"

    .line 142
    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v5, "package_signature"

    .line 143
    invoke-virtual {v0, v5, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    const-string v5, "user_id"

    .line 144
    invoke-virtual {v0, v5, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 146
    invoke-direct {v3, v4, v0}, Lorg/sufficientlysecure/keychain/remote/ApiPendingIntentFactory;->createInternal(Landroid/content/Intent;Landroid/content/Intent;)Landroid/app/PendingIntent;

    move-result-object v4

    return-object v4

    const-string p2, "M_InsDal"

    const-string p3, "Lorg/sufficientlysecure/keychain/remote/ApiPendingIntentFactory;--->createSelectSignKeyIdLegacyPendingIntent(Landroid/content/Intent;Ljava/lang/String;[BLjava/lang/String;)Landroid/app/PendingIntent;"

    invoke-static/range {p2 .. p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public createSelectSignKeyIdPendingIntent(Landroid/content/Intent;Ljava/lang/String;[BLjava/lang/String;Z)Landroid/app/PendingIntent;
    .locals 6

    move-object/16 v3, p0

    move-object/16 v4, p1

    move-object/16 v5, p2

    move-object/16 p0, p3

    move-object/16 p1, p4

    move/16 p2, p5

    .line 151
    new-instance v0, Landroid/content/Intent;

    iget-object v1, v3, Lorg/sufficientlysecure/keychain/remote/ApiPendingIntentFactory;->mContext:Landroid/content/Context;

    const-class v2, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdKeyActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "package_name"

    .line 152
    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v5, "package_signature"

    .line 153
    invoke-virtual {v0, v5, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    const-string v5, "user_id"

    .line 154
    invoke-virtual {v0, v5, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v5, "show_autocrypt_hint"

    .line 155
    invoke-virtual {v0, v5, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 157
    invoke-direct {v3, v4, v0}, Lorg/sufficientlysecure/keychain/remote/ApiPendingIntentFactory;->createInternal(Landroid/content/Intent;Landroid/content/Intent;)Landroid/app/PendingIntent;

    move-result-object v4

    return-object v4

    const-string p3, "M_InsDal"

    const-string p4, "Lorg/sufficientlysecure/keychain/remote/ApiPendingIntentFactory;--->createSelectSignKeyIdPendingIntent(Landroid/content/Intent;Ljava/lang/String;[BLjava/lang/String;Z)Landroid/app/PendingIntent;"

    invoke-static/range {p3 .. p4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method createShowKeyPendingIntent(Landroid/content/Intent;J)Landroid/app/PendingIntent;
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    move-wide/16 v3, p2

    .line 134
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/remote/ApiPendingIntentFactory;->mContext:Landroid/content/Context;

    invoke-static {v0, v3, p0}, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity;->getViewKeyActivityIntent(Landroid/content/Context;J)Landroid/content/Intent;

    move-result-object v3

    .line 136
    invoke-direct {v1, v2, v3}, Lorg/sufficientlysecure/keychain/remote/ApiPendingIntentFactory;->createInternal(Landroid/content/Intent;Landroid/content/Intent;)Landroid/app/PendingIntent;

    move-result-object v2

    return-object v2

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/remote/ApiPendingIntentFactory;--->createShowKeyPendingIntent(Landroid/content/Intent;J)Landroid/app/PendingIntent;"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method requiredInputPi(Landroid/content/Intent;Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;)Landroid/app/PendingIntent;
    .locals 5

    move-object/16 v2, p0

    move-object/16 v3, p1

    move-object/16 v4, p2

    move-object/16 p0, p3

    .line 59
    sget-object v0, Lorg/sufficientlysecure/keychain/remote/ApiPendingIntentFactory$1;->$SwitchMap$org$sufficientlysecure$keychain$service$input$RequiredInputParcel$RequiredInputType:[I

    iget-object v1, v4, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;->mType:Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$RequiredInputType;

    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$RequiredInputType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 73
    new-instance v3, Ljava/lang/AssertionError;

    const-string v4, "Unhandled required input type!"

    invoke-direct {v3, v4}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3

    .line 69
    :pswitch_0
    invoke-direct {v2, v3, v4, p0}, Lorg/sufficientlysecure/keychain/remote/ApiPendingIntentFactory;->createPassphrasePendingIntent(Landroid/content/Intent;Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;)Landroid/app/PendingIntent;

    move-result-object v3

    return-object v3

    .line 64
    :pswitch_1
    invoke-direct {v2, v3, v4, p0}, Lorg/sufficientlysecure/keychain/remote/ApiPendingIntentFactory;->createSecurityTokenOperationPendingIntent(Landroid/content/Intent;Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;)Landroid/app/PendingIntent;

    move-result-object v3

    return-object v3

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/remote/ApiPendingIntentFactory;--->requiredInputPi(Landroid/content/Intent;Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;)Landroid/app/PendingIntent;"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
