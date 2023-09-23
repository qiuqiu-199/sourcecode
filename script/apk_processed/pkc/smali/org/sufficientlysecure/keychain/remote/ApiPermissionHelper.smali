.class public Lorg/sufficientlysecure/keychain/remote/ApiPermissionHelper;
.super Ljava/lang/Object;
.source "ApiPermissionHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/sufficientlysecure/keychain/remote/ApiPermissionHelper$WrongPackageCertificateException;
    }
.end annotation


# instance fields
.field private final mApiAppDao:Lorg/sufficientlysecure/keychain/daos/ApiAppDao;

.field private final mContext:Landroid/content/Context;

.field private mPackageManager:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/sufficientlysecure/keychain/daos/ApiAppDao;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    move-object/16 v2, p2

    .line 51
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/remote/ApiPermissionHelper;->mContext:Landroid/content/Context;

    .line 53
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iput-object v1, v0, Lorg/sufficientlysecure/keychain/remote/ApiPermissionHelper;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 54
    iput-object v2, v0, Lorg/sufficientlysecure/keychain/remote/ApiPermissionHelper;->mApiAppDao:Lorg/sufficientlysecure/keychain/daos/ApiAppDao;

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/remote/ApiPermissionHelper;---><init>(Landroid/content/Context;Lorg/sufficientlysecure/keychain/daos/ApiAppDao;)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private getPackageCertificate(Ljava/lang/String;)[B
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    move-object/16 v4, p0

    move-object/16 v5, p1

    .line 137
    iget-object v0, v4, Lorg/sufficientlysecure/keychain/remote/ApiPermissionHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/16 v1, 0x40

    invoke-virtual {v0, v5, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v5

    .line 139
    iget-object v5, v5, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 140
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 141
    array-length v1, v5

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v5, v2

    .line 143
    :try_start_0
    invoke-virtual {v3}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 145
    :catch_0
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v0, "Should not happen! Writing ByteArrayOutputStream to concat certificates failed"

    invoke-direct {v5, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 152
    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    return-object v5

    const-string v6, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/remote/ApiPermissionHelper;--->getPackageCertificate(Ljava/lang/String;)[B"

    invoke-static/range {v6 .. v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private isCallerAllowed()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/sufficientlysecure/keychain/remote/ApiPermissionHelper$WrongPackageCertificateException;
        }
    .end annotation

    move-object/16 v1, p0

    .line 182
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-direct {v1, v0}, Lorg/sufficientlysecure/keychain/remote/ApiPermissionHelper;->isUidAllowed(I)Z

    move-result v0

    return v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/remote/ApiPermissionHelper;--->isCallerAllowed()Z"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private isUidAllowed(I)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/sufficientlysecure/keychain/remote/ApiPermissionHelper$WrongPackageCertificateException;
        }
    .end annotation

    move-object/16 v4, p0

    move/16 v5, p1

    .line 188
    iget-object v0, v4, Lorg/sufficientlysecure/keychain/remote/ApiPermissionHelper;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v5}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v5

    .line 191
    array-length v0, v5

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, v5, v2

    .line 192
    invoke-virtual {v4, v3}, Lorg/sufficientlysecure/keychain/remote/ApiPermissionHelper;->isPackageAllowed(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v5, 0x1

    return v5

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const-string v5, "Uid is NOT allowed!"

    .line 197
    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {v5, v0}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    const-string v6, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/remote/ApiPermissionHelper;--->isUidAllowed(I)Z"

    invoke-static/range {v6 .. v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method protected getCurrentCallingPackage()Ljava/lang/String;
    .locals 7

    move-object/16 v4, p0

    .line 162
    iget-object v0, v4, Lorg/sufficientlysecure/keychain/remote/ApiPermissionHelper;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 168
    aget-object v0, v0, v1

    .line 169
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "currentPkg: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v1}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0

    const-string v5, "M_InsDal"

    const-string v6, "Lorg/sufficientlysecure/keychain/remote/ApiPermissionHelper;--->getCurrentCallingPackage()Ljava/lang/String;"

    invoke-static/range {v5 .. v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method getPackageCertificateOrError(Ljava/lang/String;)[B
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    .line 129
    :try_start_0
    invoke-direct {v1, v2}, Lorg/sufficientlysecure/keychain/remote/ApiPermissionHelper;->getPackageCertificate(Ljava/lang/String;)[B

    move-result-object v2
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 131
    :catch_0
    new-instance v2, Ljava/lang/AssertionError;

    const-string v0, "Package signature must be retrievable"

    invoke-direct {v2, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/remote/ApiPermissionHelper;--->getPackageCertificateOrError(Ljava/lang/String;)[B"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public isAllowedIgnoreErrors()Z
    .locals 4

    move-object/16 v1, p0

    .line 70
    :try_start_0
    invoke-direct {v1}, Lorg/sufficientlysecure/keychain/remote/ApiPermissionHelper;->isCallerAllowed()Z

    move-result v0
    :try_end_0
    .catch Lorg/sufficientlysecure/keychain/remote/ApiPermissionHelper$WrongPackageCertificateException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    const/4 v0, 0x0

    return v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/remote/ApiPermissionHelper;--->isAllowedIgnoreErrors()Z"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method protected isAllowedOrReturnIntent(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 10

    move-object/16 v7, p0

    move-object/16 v8, p1

    .line 82
    new-instance v0, Lorg/sufficientlysecure/keychain/remote/ApiPendingIntentFactory;

    iget-object v1, v7, Lorg/sufficientlysecure/keychain/remote/ApiPermissionHelper;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lorg/sufficientlysecure/keychain/remote/ApiPendingIntentFactory;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x2

    const/4 v2, 0x0

    .line 84
    :try_start_0
    invoke-direct {v7}, Lorg/sufficientlysecure/keychain/remote/ApiPermissionHelper;->isCallerAllowed()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v8, 0x0

    return-object v8

    .line 87
    :cond_0
    invoke-virtual {v7}, Lorg/sufficientlysecure/keychain/remote/ApiPermissionHelper;->getCurrentCallingPackage()Ljava/lang/String;

    move-result-object v3

    .line 88
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isAllowed packageName: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/sufficientlysecure/keychain/remote/ApiPermissionHelper$WrongPackageCertificateException; {:try_start_0 .. :try_end_0} :catch_1

    .line 92
    :try_start_1
    invoke-direct {v7, v3}, Lorg/sufficientlysecure/keychain/remote/ApiPermissionHelper;->getPackageCertificate(Ljava/lang/String;)[B

    move-result-object v4
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/sufficientlysecure/keychain/remote/ApiPermissionHelper$WrongPackageCertificateException; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    const-string v5, "Not allowed to use service! return PendingIntent for registration!"

    .line 102
    new-array v6, v2, [Ljava/lang/Object;

    invoke-static {v5, v6}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 104
    invoke-virtual {v0, v8, v3, v4}, Lorg/sufficientlysecure/keychain/remote/ApiPendingIntentFactory;->createRegisterPendingIntent(Landroid/content/Intent;Ljava/lang/String;[B)Landroid/app/PendingIntent;

    move-result-object v3

    .line 107
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    const-string v5, "result_code"

    .line 108
    invoke-virtual {v4, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v5, "intent"

    .line 109
    invoke-virtual {v4, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    return-object v4

    :catch_0
    move-exception v3

    const-string v4, "Should not happen, returning!"

    .line 94
    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 96
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    const-string v5, "result_code"

    .line 97
    invoke-virtual {v4, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v5, "error"

    .line 98
    new-instance v6, Lorg/openintents/openpgp/OpenPgpError;

    .line 99
    invoke-virtual {v3}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v6, v2, v3}, Lorg/openintents/openpgp/OpenPgpError;-><init>(ILjava/lang/String;)V

    .line 98
    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;
    :try_end_2
    .catch Lorg/sufficientlysecure/keychain/remote/ApiPermissionHelper$WrongPackageCertificateException; {:try_start_2 .. :try_end_2} :catch_1

    return-object v4

    :catch_1
    move-exception v3

    const-string v4, "wrong signature!"

    .line 114
    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v3, v4, v2}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 116
    iget-object v2, v7, Lorg/sufficientlysecure/keychain/remote/ApiPermissionHelper;->mContext:Landroid/content/Context;

    const v3, 0x7f11002b

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v8, v2}, Lorg/sufficientlysecure/keychain/remote/ApiPendingIntentFactory;->createErrorPendingIntent(Landroid/content/Intent;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v8

    .line 119
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v2, "result_code"

    .line 120
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "intent"

    .line 121
    invoke-virtual {v0, v1, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    return-object v0

    const-string v9, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/remote/ApiPermissionHelper;--->isAllowedOrReturnIntent(Landroid/content/Intent;)Landroid/content/Intent;"

    invoke-static/range {v9 .. v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public isPackageAllowed(Ljava/lang/String;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/sufficientlysecure/keychain/remote/ApiPermissionHelper$WrongPackageCertificateException;
        }
    .end annotation

    move-object/16 v5, p0

    move-object/16 v6, p1

    .line 207
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isPackageAllowed packageName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 209
    iget-object v0, v5, Lorg/sufficientlysecure/keychain/remote/ApiPermissionHelper;->mApiAppDao:Lorg/sufficientlysecure/keychain/daos/ApiAppDao;

    invoke-virtual {v0, v6}, Lorg/sufficientlysecure/keychain/daos/ApiAppDao;->getApiAppCertificate(Ljava/lang/String;)[B

    move-result-object v0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-nez v3, :cond_1

    .line 213
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Package is NOT allowed! packageName: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {v6, v0}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    .line 216
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Package is allowed! packageName: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v3, v4}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 220
    :try_start_0
    invoke-direct {v5, v6}, Lorg/sufficientlysecure/keychain/remote/ApiPermissionHelper;->getPackageCertificate(Ljava/lang/String;)[B

    move-result-object v6
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 225
    invoke-static {v6, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v6

    if-eqz v6, :cond_2

    const-string v6, "Package certificate matches expected."

    .line 227
    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {v6, v0}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return v2

    .line 231
    :cond_2
    new-instance v6, Lorg/sufficientlysecure/keychain/remote/ApiPermissionHelper$WrongPackageCertificateException;

    const-string v0, "PACKAGE NOT ALLOWED DUE TO CERTIFICATE MISMATCH!"

    invoke-direct {v6, v0}, Lorg/sufficientlysecure/keychain/remote/ApiPermissionHelper$WrongPackageCertificateException;-><init>(Ljava/lang/String;)V

    throw v6

    :catch_0
    move-exception v6

    .line 222
    new-instance v0, Lorg/sufficientlysecure/keychain/remote/ApiPermissionHelper$WrongPackageCertificateException;

    invoke-virtual {v6}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v6}, Lorg/sufficientlysecure/keychain/remote/ApiPermissionHelper$WrongPackageCertificateException;-><init>(Ljava/lang/String;)V

    throw v0

    const-string v7, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/remote/ApiPermissionHelper;--->isPackageAllowed(Ljava/lang/String;)Z"

    invoke-static/range {v7 .. v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
