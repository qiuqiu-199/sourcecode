.class Lorg/sufficientlysecure/keychain/remote/ui/RequestKeyPermissionPresenter;
.super Ljava/lang/Object;
.source "RequestKeyPermissionPresenter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/sufficientlysecure/keychain/remote/ui/RequestKeyPermissionPresenter$RequestKeyPermissionMvpView;
    }
.end annotation


# instance fields
.field private final apiAppDao:Lorg/sufficientlysecure/keychain/daos/ApiAppDao;

.field private final apiPermissionHelper:Lorg/sufficientlysecure/keychain/remote/ApiPermissionHelper;

.field private final context:Landroid/content/Context;

.field private keyRepository:Lorg/sufficientlysecure/keychain/daos/KeyRepository;

.field private masterKeyId:J

.field private final packageManager:Landroid/content/pm/PackageManager;

.field private packageName:Ljava/lang/String;

.field private view:Lorg/sufficientlysecure/keychain/remote/ui/RequestKeyPermissionPresenter$RequestKeyPermissionMvpView;


# direct methods
.method private constructor <init>(Landroid/content/Context;Lorg/sufficientlysecure/keychain/daos/ApiAppDao;Lorg/sufficientlysecure/keychain/remote/ApiPermissionHelper;Landroid/content/pm/PackageManager;Lorg/sufficientlysecure/keychain/daos/KeyRepository;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    move-object/16 v2, p2

    move-object/16 p0, p3

    move-object/16 p1, p4

    move-object/16 p2, p5

    .line 66
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/remote/ui/RequestKeyPermissionPresenter;->context:Landroid/content/Context;

    .line 68
    iput-object v2, v0, Lorg/sufficientlysecure/keychain/remote/ui/RequestKeyPermissionPresenter;->apiAppDao:Lorg/sufficientlysecure/keychain/daos/ApiAppDao;

    .line 69
    iput-object p0, v0, Lorg/sufficientlysecure/keychain/remote/ui/RequestKeyPermissionPresenter;->apiPermissionHelper:Lorg/sufficientlysecure/keychain/remote/ApiPermissionHelper;

    .line 70
    iput-object p1, v0, Lorg/sufficientlysecure/keychain/remote/ui/RequestKeyPermissionPresenter;->packageManager:Landroid/content/pm/PackageManager;

    .line 71
    iput-object p2, v0, Lorg/sufficientlysecure/keychain/remote/ui/RequestKeyPermissionPresenter;->keyRepository:Lorg/sufficientlysecure/keychain/daos/KeyRepository;

    return-void

    const-string p3, "M_InsDal"

    const-string p4, "Lorg/sufficientlysecure/keychain/remote/ui/RequestKeyPermissionPresenter;---><init>(Landroid/content/Context;Lorg/sufficientlysecure/keychain/daos/ApiAppDao;Lorg/sufficientlysecure/keychain/remote/ApiPermissionHelper;Landroid/content/pm/PackageManager;Lorg/sufficientlysecure/keychain/daos/KeyRepository;)V"

    invoke-static/range {p3 .. p4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private checkPackageAllowed(Ljava/lang/String;)V
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    .line 154
    :try_start_0
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/remote/ui/RequestKeyPermissionPresenter;->apiPermissionHelper:Lorg/sufficientlysecure/keychain/remote/ApiPermissionHelper;

    invoke-virtual {v0, v2}, Lorg/sufficientlysecure/keychain/remote/ApiPermissionHelper;->isPackageAllowed(Ljava/lang/String;)Z

    move-result v2
    :try_end_0
    .catch Lorg/sufficientlysecure/keychain/remote/ApiPermissionHelper$WrongPackageCertificateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v2, 0x0

    :goto_0
    if-nez v2, :cond_0

    .line 159
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v0, "Pending intent launched by unknown app!"

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    return-void

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/remote/ui/RequestKeyPermissionPresenter;--->checkPackageAllowed(Ljava/lang/String;)V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method static createRequestKeyPermissionPresenter(Landroid/content/Context;)Lorg/sufficientlysecure/keychain/remote/ui/RequestKeyPermissionPresenter;
    .locals 10

    move-object/16 v7, p0

    .line 55
    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 56
    invoke-static {v7}, Lorg/sufficientlysecure/keychain/daos/ApiAppDao;->getInstance(Landroid/content/Context;)Lorg/sufficientlysecure/keychain/daos/ApiAppDao;

    move-result-object v2

    .line 57
    new-instance v3, Lorg/sufficientlysecure/keychain/remote/ApiPermissionHelper;

    invoke-direct {v3, v7, v2}, Lorg/sufficientlysecure/keychain/remote/ApiPermissionHelper;-><init>(Landroid/content/Context;Lorg/sufficientlysecure/keychain/daos/ApiAppDao;)V

    .line 59
    invoke-static {v7}, Lorg/sufficientlysecure/keychain/daos/KeyRepository;->create(Landroid/content/Context;)Lorg/sufficientlysecure/keychain/daos/KeyRepository;

    move-result-object v5

    .line 61
    new-instance v6, Lorg/sufficientlysecure/keychain/remote/ui/RequestKeyPermissionPresenter;

    move-object v0, v6

    move-object v1, v7

    invoke-direct/range {v0 .. v5}, Lorg/sufficientlysecure/keychain/remote/ui/RequestKeyPermissionPresenter;-><init>(Landroid/content/Context;Lorg/sufficientlysecure/keychain/daos/ApiAppDao;Lorg/sufficientlysecure/keychain/remote/ApiPermissionHelper;Landroid/content/pm/PackageManager;Lorg/sufficientlysecure/keychain/daos/KeyRepository;)V

    return-object v6

    const-string v8, "M_InsDal"

    const-string v9, "Lorg/sufficientlysecure/keychain/remote/ui/RequestKeyPermissionPresenter;--->createRequestKeyPermissionPresenter(Landroid/content/Context;)Lorg/sufficientlysecure/keychain/remote/ui/RequestKeyPermissionPresenter;"

    invoke-static/range {v8 .. v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private findSecretKeyRingOrPublicFallback([J)Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;
    .locals 12

    move-object/16 v9, p0

    move-object/16 v10, p1

    .line 118
    array-length v0, v10

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    aget-wide v3, v10, v2

    .line 120
    :try_start_0
    iget-object v5, v9, Lorg/sufficientlysecure/keychain/remote/ui/RequestKeyPermissionPresenter;->keyRepository:Lorg/sufficientlysecure/keychain/daos/KeyRepository;

    invoke-virtual {v5, v3, v4}, Lorg/sufficientlysecure/keychain/daos/KeyRepository;->getMasterKeyIdBySubkeyId(J)Ljava/lang/Long;

    move-result-object v5

    if-nez v5, :cond_0

    goto :goto_1

    .line 124
    :cond_0
    iget-object v6, v9, Lorg/sufficientlysecure/keychain/remote/ui/RequestKeyPermissionPresenter;->keyRepository:Lorg/sufficientlysecure/keychain/daos/KeyRepository;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Lorg/sufficientlysecure/keychain/daos/KeyRepository;->getUnifiedKeyInfo(J)Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;

    move-result-object v5

    .line 126
    iget-object v6, v9, Lorg/sufficientlysecure/keychain/remote/ui/RequestKeyPermissionPresenter;->keyRepository:Lorg/sufficientlysecure/keychain/daos/KeyRepository;

    invoke-virtual {v6, v3, v4}, Lorg/sufficientlysecure/keychain/daos/KeyRepository;->getSecretKeyType(J)Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey$SecretKeyType;

    move-result-object v3

    .line 127
    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey$SecretKeyType;->isUsable()Z

    move-result v3
    :try_end_0
    .catch Lorg/sufficientlysecure/keychain/daos/KeyRepository$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v3, :cond_1

    return-object v5

    :cond_1
    if-nez v1, :cond_2

    move-object v1, v5

    :catch_0
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-object v1

    const-string v11, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/remote/ui/RequestKeyPermissionPresenter;--->findSecretKeyRingOrPublicFallback([J)Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;"

    invoke-static/range {v11 .. v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private setPackageInfo(Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    move-object/16 v4, p0

    move-object/16 v5, p1

    .line 141
    iput-object v5, v4, Lorg/sufficientlysecure/keychain/remote/ui/RequestKeyPermissionPresenter;->packageName:Ljava/lang/String;

    .line 143
    iget-object v0, v4, Lorg/sufficientlysecure/keychain/remote/ui/RequestKeyPermissionPresenter;->packageManager:Landroid/content/pm/PackageManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v5, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    .line 144
    iget-object v0, v4, Lorg/sufficientlysecure/keychain/remote/ui/RequestKeyPermissionPresenter;->packageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v5}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 145
    iget-object v2, v4, Lorg/sufficientlysecure/keychain/remote/ui/RequestKeyPermissionPresenter;->packageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, v5}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v5

    .line 147
    iget-object v2, v4, Lorg/sufficientlysecure/keychain/remote/ui/RequestKeyPermissionPresenter;->view:Lorg/sufficientlysecure/keychain/remote/ui/RequestKeyPermissionPresenter$RequestKeyPermissionMvpView;

    invoke-interface {v2, v0}, Lorg/sufficientlysecure/keychain/remote/ui/RequestKeyPermissionPresenter$RequestKeyPermissionMvpView;->setTitleClientIcon(Landroid/graphics/drawable/Drawable;)V

    .line 148
    iget-object v0, v4, Lorg/sufficientlysecure/keychain/remote/ui/RequestKeyPermissionPresenter;->view:Lorg/sufficientlysecure/keychain/remote/ui/RequestKeyPermissionPresenter$RequestKeyPermissionMvpView;

    iget-object v2, v4, Lorg/sufficientlysecure/keychain/remote/ui/RequestKeyPermissionPresenter;->context:Landroid/content/Context;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v5, v3, v1

    const v5, 0x7f110c3f

    invoke-virtual {v2, v5, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Lorg/sufficientlysecure/keychain/remote/ui/RequestKeyPermissionPresenter$RequestKeyPermissionMvpView;->setTitleText(Ljava/lang/String;)V

    return-void

    const-string v6, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/remote/ui/RequestKeyPermissionPresenter;--->setPackageInfo(Ljava/lang/String;)V"

    invoke-static/range {v6 .. v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private setRequestedMasterKeyId([J)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/sufficientlysecure/keychain/pgp/exception/PgpKeyNotFoundException;
        }
    .end annotation

    move-object/16 v2, p0

    move-object/16 v3, p1

    .line 97
    invoke-direct {v2, v3}, Lorg/sufficientlysecure/keychain/remote/ui/RequestKeyPermissionPresenter;->findSecretKeyRingOrPublicFallback([J)Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;

    move-result-object v3

    if-nez v3, :cond_0

    .line 100
    new-instance v3, Lorg/sufficientlysecure/keychain/pgp/exception/PgpKeyNotFoundException;

    const-string v0, "No key found among requested!"

    invoke-direct {v3, v0}, Lorg/sufficientlysecure/keychain/pgp/exception/PgpKeyNotFoundException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 103
    :cond_0
    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;->master_key_id()J

    move-result-wide v0

    iput-wide v0, v2, Lorg/sufficientlysecure/keychain/remote/ui/RequestKeyPermissionPresenter;->masterKeyId:J

    .line 104
    new-instance v0, Lorg/sufficientlysecure/keychain/ui/util/KeyInfoFormatter;

    iget-object v1, v2, Lorg/sufficientlysecure/keychain/remote/ui/RequestKeyPermissionPresenter;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lorg/sufficientlysecure/keychain/ui/util/KeyInfoFormatter;-><init>(Landroid/content/Context;)V

    .line 105
    invoke-virtual {v0, v3}, Lorg/sufficientlysecure/keychain/ui/util/KeyInfoFormatter;->setKeyInfo(Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;)V

    .line 106
    iget-object v1, v2, Lorg/sufficientlysecure/keychain/remote/ui/RequestKeyPermissionPresenter;->view:Lorg/sufficientlysecure/keychain/remote/ui/RequestKeyPermissionPresenter$RequestKeyPermissionMvpView;

    invoke-interface {v1, v0}, Lorg/sufficientlysecure/keychain/remote/ui/RequestKeyPermissionPresenter$RequestKeyPermissionMvpView;->displayKeyInfo(Lorg/sufficientlysecure/keychain/ui/util/KeyInfoFormatter;)V

    .line 108
    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;->has_any_secret()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 109
    iget-object v3, v2, Lorg/sufficientlysecure/keychain/remote/ui/RequestKeyPermissionPresenter;->view:Lorg/sufficientlysecure/keychain/remote/ui/RequestKeyPermissionPresenter$RequestKeyPermissionMvpView;

    invoke-interface {v3}, Lorg/sufficientlysecure/keychain/remote/ui/RequestKeyPermissionPresenter$RequestKeyPermissionMvpView;->switchToLayoutRequestKeyChoice()V

    goto :goto_0

    .line 111
    :cond_1
    iget-object v3, v2, Lorg/sufficientlysecure/keychain/remote/ui/RequestKeyPermissionPresenter;->view:Lorg/sufficientlysecure/keychain/remote/ui/RequestKeyPermissionPresenter$RequestKeyPermissionMvpView;

    invoke-interface {v3}, Lorg/sufficientlysecure/keychain/remote/ui/RequestKeyPermissionPresenter$RequestKeyPermissionMvpView;->switchToLayoutNoSecret()V

    :goto_0
    return-void

    const-string v4, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/remote/ui/RequestKeyPermissionPresenter;--->setRequestedMasterKeyId([J)V"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method onCancel()V
    .locals 4

    move-object/16 v1, p0

    .line 173
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/remote/ui/RequestKeyPermissionPresenter;->view:Lorg/sufficientlysecure/keychain/remote/ui/RequestKeyPermissionPresenter$RequestKeyPermissionMvpView;

    invoke-interface {v0}, Lorg/sufficientlysecure/keychain/remote/ui/RequestKeyPermissionPresenter$RequestKeyPermissionMvpView;->finishAsCancelled()V

    return-void

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/remote/ui/RequestKeyPermissionPresenter;--->onCancel()V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method onClickAllow()V
    .locals 7

    move-object/16 v4, p0

    .line 164
    iget-object v0, v4, Lorg/sufficientlysecure/keychain/remote/ui/RequestKeyPermissionPresenter;->apiAppDao:Lorg/sufficientlysecure/keychain/daos/ApiAppDao;

    iget-object v1, v4, Lorg/sufficientlysecure/keychain/remote/ui/RequestKeyPermissionPresenter;->packageName:Ljava/lang/String;

    iget-wide v2, v4, Lorg/sufficientlysecure/keychain/remote/ui/RequestKeyPermissionPresenter;->masterKeyId:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/sufficientlysecure/keychain/daos/ApiAppDao;->addAllowedKeyIdForApp(Ljava/lang/String;J)V

    .line 165
    iget-object v0, v4, Lorg/sufficientlysecure/keychain/remote/ui/RequestKeyPermissionPresenter;->view:Lorg/sufficientlysecure/keychain/remote/ui/RequestKeyPermissionPresenter$RequestKeyPermissionMvpView;

    invoke-interface {v0}, Lorg/sufficientlysecure/keychain/remote/ui/RequestKeyPermissionPresenter$RequestKeyPermissionMvpView;->finish()V

    return-void

    const-string v5, "M_InsDal"

    const-string v6, "Lorg/sufficientlysecure/keychain/remote/ui/RequestKeyPermissionPresenter;--->onClickAllow()V"

    invoke-static/range {v5 .. v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method onClickCancel()V
    .locals 4

    move-object/16 v1, p0

    .line 169
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/remote/ui/RequestKeyPermissionPresenter;->view:Lorg/sufficientlysecure/keychain/remote/ui/RequestKeyPermissionPresenter$RequestKeyPermissionMvpView;

    invoke-interface {v0}, Lorg/sufficientlysecure/keychain/remote/ui/RequestKeyPermissionPresenter$RequestKeyPermissionMvpView;->finishAsCancelled()V

    return-void

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/remote/ui/RequestKeyPermissionPresenter;--->onClickCancel()V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method setView(Lorg/sufficientlysecure/keychain/remote/ui/RequestKeyPermissionPresenter$RequestKeyPermissionMvpView;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    .line 75
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/remote/ui/RequestKeyPermissionPresenter;->view:Lorg/sufficientlysecure/keychain/remote/ui/RequestKeyPermissionPresenter$RequestKeyPermissionMvpView;

    return-void

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/remote/ui/RequestKeyPermissionPresenter;--->setView(Lorg/sufficientlysecure/keychain/remote/ui/RequestKeyPermissionPresenter$RequestKeyPermissionMvpView;)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method setupFromIntentData(Ljava/lang/String;[J)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    move-object/16 v2, p2

    .line 79
    invoke-direct {v0, v1}, Lorg/sufficientlysecure/keychain/remote/ui/RequestKeyPermissionPresenter;->checkPackageAllowed(Ljava/lang/String;)V

    .line 82
    :try_start_0
    invoke-direct {v0, v1}, Lorg/sufficientlysecure/keychain/remote/ui/RequestKeyPermissionPresenter;->setPackageInfo(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 90
    :try_start_1
    invoke-direct {v0, v2}, Lorg/sufficientlysecure/keychain/remote/ui/RequestKeyPermissionPresenter;->setRequestedMasterKeyId([J)V
    :try_end_1
    .catch Lorg/sufficientlysecure/keychain/pgp/exception/PgpKeyNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 92
    :catch_0
    iget-object v1, v0, Lorg/sufficientlysecure/keychain/remote/ui/RequestKeyPermissionPresenter;->view:Lorg/sufficientlysecure/keychain/remote/ui/RequestKeyPermissionPresenter$RequestKeyPermissionMvpView;

    invoke-interface {v1}, Lorg/sufficientlysecure/keychain/remote/ui/RequestKeyPermissionPresenter$RequestKeyPermissionMvpView;->finishAsCancelled()V

    :goto_0
    return-void

    :catch_1
    const-string v1, "Unable to find info of calling app!"

    const/4 v2, 0x0

    .line 84
    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 85
    iget-object v1, v0, Lorg/sufficientlysecure/keychain/remote/ui/RequestKeyPermissionPresenter;->view:Lorg/sufficientlysecure/keychain/remote/ui/RequestKeyPermissionPresenter$RequestKeyPermissionMvpView;

    invoke-interface {v1}, Lorg/sufficientlysecure/keychain/remote/ui/RequestKeyPermissionPresenter$RequestKeyPermissionMvpView;->finishAsCancelled()V

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/remote/ui/RequestKeyPermissionPresenter;--->setupFromIntentData(Ljava/lang/String;[J)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
