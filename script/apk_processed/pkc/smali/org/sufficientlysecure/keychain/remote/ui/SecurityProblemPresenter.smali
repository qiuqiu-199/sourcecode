.class Lorg/sufficientlysecure/keychain/remote/ui/SecurityProblemPresenter;
.super Ljava/lang/Object;
.source "SecurityProblemPresenter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/sufficientlysecure/keychain/remote/ui/SecurityProblemPresenter$RemoteSecurityProblemView;
    }
.end annotation


# static fields
.field private static final OVERRIDE_REQUIRED_COUNT:I = 0x3


# instance fields
.field private final context:Landroid/content/Context;

.field private final overriddenWarningsDao:Lorg/sufficientlysecure/keychain/daos/OverriddenWarningsDao;

.field private overrideCounter:I

.field private final packageManager:Landroid/content/pm/PackageManager;

.field private packageName:Ljava/lang/String;

.field private securityProblem:Ljava/io/Serializable;

.field private securityProblemIdentifier:Ljava/lang/String;

.field private supportOverride:Z

.field private view:Lorg/sufficientlysecure/keychain/remote/ui/SecurityProblemPresenter$RemoteSecurityProblemView;

.field private viewKeyMasterKeyId:Ljava/lang/Long;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    .line 62
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object v2, v1, Lorg/sufficientlysecure/keychain/remote/ui/SecurityProblemPresenter;->context:Landroid/content/Context;

    .line 64
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, v1, Lorg/sufficientlysecure/keychain/remote/ui/SecurityProblemPresenter;->packageManager:Landroid/content/pm/PackageManager;

    .line 65
    invoke-static {v2}, Lorg/sufficientlysecure/keychain/daos/OverriddenWarningsDao;->create(Landroid/content/Context;)Lorg/sufficientlysecure/keychain/daos/OverriddenWarningsDao;

    move-result-object v2

    iput-object v2, v1, Lorg/sufficientlysecure/keychain/remote/ui/SecurityProblemPresenter;->overriddenWarningsDao:Lorg/sufficientlysecure/keychain/daos/OverriddenWarningsDao;

    return-void

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/remote/ui/SecurityProblemPresenter;---><init>(Landroid/content/Context;)V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private incrementOverrideAndDisplayOrTrigger()V
    .locals 5

    move-object/16 v2, p0

    .line 189
    iget v0, v2, Lorg/sufficientlysecure/keychain/remote/ui/SecurityProblemPresenter;->overrideCounter:I

    rsub-int/lit8 v0, v0, 0x3

    if-lez v0, :cond_0

    .line 191
    iget v1, v2, Lorg/sufficientlysecure/keychain/remote/ui/SecurityProblemPresenter;->overrideCounter:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v2, Lorg/sufficientlysecure/keychain/remote/ui/SecurityProblemPresenter;->overrideCounter:I

    .line 192
    iget-object v1, v2, Lorg/sufficientlysecure/keychain/remote/ui/SecurityProblemPresenter;->view:Lorg/sufficientlysecure/keychain/remote/ui/SecurityProblemPresenter$RemoteSecurityProblemView;

    invoke-interface {v1, v0}, Lorg/sufficientlysecure/keychain/remote/ui/SecurityProblemPresenter$RemoteSecurityProblemView;->showOverrideMessage(I)V

    goto :goto_0

    .line 194
    :cond_0
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/remote/ui/SecurityProblemPresenter;->overriddenWarningsDao:Lorg/sufficientlysecure/keychain/daos/OverriddenWarningsDao;

    iget-object v1, v2, Lorg/sufficientlysecure/keychain/remote/ui/SecurityProblemPresenter;->securityProblemIdentifier:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/sufficientlysecure/keychain/daos/OverriddenWarningsDao;->putOverride(Ljava/lang/String;)V

    .line 195
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/remote/ui/SecurityProblemPresenter;->view:Lorg/sufficientlysecure/keychain/remote/ui/SecurityProblemPresenter$RemoteSecurityProblemView;

    invoke-interface {v0}, Lorg/sufficientlysecure/keychain/remote/ui/SecurityProblemPresenter$RemoteSecurityProblemView;->finishAsSuppressed()V

    :goto_0
    return-void

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/remote/ui/SecurityProblemPresenter;--->incrementOverrideAndDisplayOrTrigger()V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private refreshOverrideStatusView()V
    .locals 5

    move-object/16 v2, p0

    .line 162
    iget-boolean v0, v2, Lorg/sufficientlysecure/keychain/remote/ui/SecurityProblemPresenter;->supportOverride:Z

    if-eqz v0, :cond_1

    .line 163
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/remote/ui/SecurityProblemPresenter;->overriddenWarningsDao:Lorg/sufficientlysecure/keychain/daos/OverriddenWarningsDao;

    iget-object v1, v2, Lorg/sufficientlysecure/keychain/remote/ui/SecurityProblemPresenter;->securityProblemIdentifier:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/sufficientlysecure/keychain/daos/OverriddenWarningsDao;->isWarningOverridden(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/remote/ui/SecurityProblemPresenter;->view:Lorg/sufficientlysecure/keychain/remote/ui/SecurityProblemPresenter$RemoteSecurityProblemView;

    invoke-interface {v0}, Lorg/sufficientlysecure/keychain/remote/ui/SecurityProblemPresenter$RemoteSecurityProblemView;->showOverrideUndoButton()V

    goto :goto_0

    .line 166
    :cond_0
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/remote/ui/SecurityProblemPresenter;->view:Lorg/sufficientlysecure/keychain/remote/ui/SecurityProblemPresenter$RemoteSecurityProblemView;

    invoke-interface {v0}, Lorg/sufficientlysecure/keychain/remote/ui/SecurityProblemPresenter$RemoteSecurityProblemView;->showOverrideButton()V

    :cond_1
    :goto_0
    return-void

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/remote/ui/SecurityProblemPresenter;--->refreshOverrideStatusView()V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private refreshPackageInfo()V
    .locals 6

    move-object/16 v3, p0

    .line 178
    :try_start_0
    iget-object v0, v3, Lorg/sufficientlysecure/keychain/remote/ui/SecurityProblemPresenter;->packageManager:Landroid/content/pm/PackageManager;

    iget-object v1, v3, Lorg/sufficientlysecure/keychain/remote/ui/SecurityProblemPresenter;->packageName:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 182
    iget-object v1, v3, Lorg/sufficientlysecure/keychain/remote/ui/SecurityProblemPresenter;->packageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 185
    iget-object v1, v3, Lorg/sufficientlysecure/keychain/remote/ui/SecurityProblemPresenter;->view:Lorg/sufficientlysecure/keychain/remote/ui/SecurityProblemPresenter$RemoteSecurityProblemView;

    invoke-interface {v1, v0}, Lorg/sufficientlysecure/keychain/remote/ui/SecurityProblemPresenter$RemoteSecurityProblemView;->setTitleClientIcon(Landroid/graphics/drawable/Drawable;)V

    return-void

    .line 180
    :catch_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Could not retrieve package info!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    const-string v4, "M_InsDal"

    const-string v5, "Lorg/sufficientlysecure/keychain/remote/ui/SecurityProblemPresenter;--->refreshPackageInfo()V"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private refreshSecurityProblemDisplay()V
    .locals 5

    move-object/16 v2, p0

    .line 82
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/remote/ui/SecurityProblemPresenter;->securityProblem:Ljava/io/Serializable;

    instance-of v0, v0, Lorg/sufficientlysecure/keychain/pgp/DecryptVerifySecurityProblem;

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/remote/ui/SecurityProblemPresenter;->securityProblem:Ljava/io/Serializable;

    check-cast v0, Lorg/sufficientlysecure/keychain/pgp/DecryptVerifySecurityProblem;

    invoke-direct {v2, v0}, Lorg/sufficientlysecure/keychain/remote/ui/SecurityProblemPresenter;->setupFromDecryptVerifySecurityProblem(Lorg/sufficientlysecure/keychain/pgp/DecryptVerifySecurityProblem;)V

    return-void

    .line 85
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unhandled security problem type!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/remote/ui/SecurityProblemPresenter;--->refreshSecurityProblemDisplay()V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private resetOverrideStatus()V
    .locals 5

    move-object/16 v2, p0

    const/4 v0, 0x0

    .line 200
    iput v0, v2, Lorg/sufficientlysecure/keychain/remote/ui/SecurityProblemPresenter;->overrideCounter:I

    .line 201
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/remote/ui/SecurityProblemPresenter;->overriddenWarningsDao:Lorg/sufficientlysecure/keychain/daos/OverriddenWarningsDao;

    iget-object v1, v2, Lorg/sufficientlysecure/keychain/remote/ui/SecurityProblemPresenter;->securityProblemIdentifier:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/sufficientlysecure/keychain/daos/OverriddenWarningsDao;->deleteOverride(Ljava/lang/String;)V

    return-void

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/remote/ui/SecurityProblemPresenter;--->resetOverrideStatus()V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private setupFromDecryptVerifySecurityProblem(Lorg/sufficientlysecure/keychain/pgp/DecryptVerifySecurityProblem;)V
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    .line 90
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/pgp/DecryptVerifySecurityProblem;->encryptionKeySecurityProblem:Lorg/sufficientlysecure/keychain/pgp/SecurityProblem$KeySecurityProblem;

    if-eqz v0, :cond_0

    .line 91
    iget-object v2, v2, Lorg/sufficientlysecure/keychain/pgp/DecryptVerifySecurityProblem;->encryptionKeySecurityProblem:Lorg/sufficientlysecure/keychain/pgp/SecurityProblem$KeySecurityProblem;

    invoke-direct {v1, v2}, Lorg/sufficientlysecure/keychain/remote/ui/SecurityProblemPresenter;->setupFromEncryptionKeySecurityProblem(Lorg/sufficientlysecure/keychain/pgp/SecurityProblem$KeySecurityProblem;)V

    goto :goto_0

    .line 92
    :cond_0
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/pgp/DecryptVerifySecurityProblem;->signingKeySecurityProblem:Lorg/sufficientlysecure/keychain/pgp/SecurityProblem$KeySecurityProblem;

    if-eqz v0, :cond_1

    .line 93
    iget-object v2, v2, Lorg/sufficientlysecure/keychain/pgp/DecryptVerifySecurityProblem;->signingKeySecurityProblem:Lorg/sufficientlysecure/keychain/pgp/SecurityProblem$KeySecurityProblem;

    invoke-direct {v1, v2}, Lorg/sufficientlysecure/keychain/remote/ui/SecurityProblemPresenter;->setupFromSigningKeySecurityProblem(Lorg/sufficientlysecure/keychain/pgp/SecurityProblem$KeySecurityProblem;)V

    goto :goto_0

    .line 94
    :cond_1
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/pgp/DecryptVerifySecurityProblem;->symmetricSecurityProblem:Lorg/sufficientlysecure/keychain/pgp/SecurityProblem$EncryptionAlgorithmProblem;

    if-eqz v0, :cond_2

    .line 95
    iget-object v2, v2, Lorg/sufficientlysecure/keychain/pgp/DecryptVerifySecurityProblem;->symmetricSecurityProblem:Lorg/sufficientlysecure/keychain/pgp/SecurityProblem$EncryptionAlgorithmProblem;

    invoke-direct {v1, v2}, Lorg/sufficientlysecure/keychain/remote/ui/SecurityProblemPresenter;->setupFromEncryptionAlgorithmSecurityProblem(Lorg/sufficientlysecure/keychain/pgp/SecurityProblem$EncryptionAlgorithmProblem;)V

    goto :goto_0

    .line 96
    :cond_2
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/pgp/DecryptVerifySecurityProblem;->signatureSecurityProblem:Lorg/sufficientlysecure/keychain/pgp/SecurityProblem$InsecureSigningAlgorithm;

    if-eqz v0, :cond_3

    .line 97
    iget-object v2, v2, Lorg/sufficientlysecure/keychain/pgp/DecryptVerifySecurityProblem;->signatureSecurityProblem:Lorg/sufficientlysecure/keychain/pgp/SecurityProblem$InsecureSigningAlgorithm;

    invoke-direct {v1, v2}, Lorg/sufficientlysecure/keychain/remote/ui/SecurityProblemPresenter;->setupFromSignatureSecurityProblem(Lorg/sufficientlysecure/keychain/pgp/SecurityProblem$InsecureSigningAlgorithm;)V

    :cond_3
    :goto_0
    return-void

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/remote/ui/SecurityProblemPresenter;--->setupFromDecryptVerifySecurityProblem(Lorg/sufficientlysecure/keychain/pgp/DecryptVerifySecurityProblem;)V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private setupFromEncryptionAlgorithmSecurityProblem(Lorg/sufficientlysecure/keychain/pgp/SecurityProblem$EncryptionAlgorithmProblem;)V
    .locals 5

    move-object/16 v2, p0

    move-object/16 v3, p1

    .line 146
    instance-of v0, v3, Lorg/sufficientlysecure/keychain/pgp/SecurityProblem$MissingMdc;

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/remote/ui/SecurityProblemPresenter;->view:Lorg/sufficientlysecure/keychain/remote/ui/SecurityProblemPresenter$RemoteSecurityProblemView;

    invoke-interface {v0}, Lorg/sufficientlysecure/keychain/remote/ui/SecurityProblemPresenter$RemoteSecurityProblemView;->showLayoutMissingMdc()V

    goto :goto_0

    .line 148
    :cond_0
    instance-of v0, v3, Lorg/sufficientlysecure/keychain/pgp/SecurityProblem$InsecureEncryptionAlgorithm;

    if-eqz v0, :cond_2

    .line 149
    move-object v0, v3

    check-cast v0, Lorg/sufficientlysecure/keychain/pgp/SecurityProblem$InsecureEncryptionAlgorithm;

    .line 150
    iget-object v1, v2, Lorg/sufficientlysecure/keychain/remote/ui/SecurityProblemPresenter;->view:Lorg/sufficientlysecure/keychain/remote/ui/SecurityProblemPresenter$RemoteSecurityProblemView;

    iget v0, v0, Lorg/sufficientlysecure/keychain/pgp/SecurityProblem$InsecureEncryptionAlgorithm;->symmetricAlgorithm:I

    invoke-interface {v1, v0}, Lorg/sufficientlysecure/keychain/remote/ui/SecurityProblemPresenter$RemoteSecurityProblemView;->showLayoutInsecureSymmetric(I)V

    .line 155
    :goto_0
    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/pgp/SecurityProblem$EncryptionAlgorithmProblem;->isIdentifiable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 156
    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/pgp/SecurityProblem$EncryptionAlgorithmProblem;->getIdentifier()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lorg/sufficientlysecure/keychain/remote/ui/SecurityProblemPresenter;->securityProblemIdentifier:Ljava/lang/String;

    .line 157
    invoke-direct {v2}, Lorg/sufficientlysecure/keychain/remote/ui/SecurityProblemPresenter;->refreshOverrideStatusView()V

    :cond_1
    return-void

    .line 152
    :cond_2
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v0, "Unhandled symmetric algorithm problem type!"

    invoke-direct {v3, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    const-string v4, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/remote/ui/SecurityProblemPresenter;--->setupFromEncryptionAlgorithmSecurityProblem(Lorg/sufficientlysecure/keychain/pgp/SecurityProblem$EncryptionAlgorithmProblem;)V"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private setupFromEncryptionKeySecurityProblem(Lorg/sufficientlysecure/keychain/pgp/SecurityProblem$KeySecurityProblem;)V
    .locals 6

    move-object/16 v3, p0

    move-object/16 v4, p1

    .line 102
    iget-wide v0, v4, Lorg/sufficientlysecure/keychain/pgp/SecurityProblem$KeySecurityProblem;->masterKeyId:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v3, Lorg/sufficientlysecure/keychain/remote/ui/SecurityProblemPresenter;->viewKeyMasterKeyId:Ljava/lang/Long;

    .line 103
    iget-object v0, v3, Lorg/sufficientlysecure/keychain/remote/ui/SecurityProblemPresenter;->view:Lorg/sufficientlysecure/keychain/remote/ui/SecurityProblemPresenter$RemoteSecurityProblemView;

    invoke-interface {v0}, Lorg/sufficientlysecure/keychain/remote/ui/SecurityProblemPresenter$RemoteSecurityProblemView;->showViewKeyButton()V

    .line 105
    instance-of v0, v4, Lorg/sufficientlysecure/keychain/pgp/SecurityProblem$InsecureBitStrength;

    if-eqz v0, :cond_0

    .line 106
    move-object v0, v4

    check-cast v0, Lorg/sufficientlysecure/keychain/pgp/SecurityProblem$InsecureBitStrength;

    .line 107
    iget-object v1, v3, Lorg/sufficientlysecure/keychain/remote/ui/SecurityProblemPresenter;->view:Lorg/sufficientlysecure/keychain/remote/ui/SecurityProblemPresenter$RemoteSecurityProblemView;

    iget v2, v0, Lorg/sufficientlysecure/keychain/pgp/SecurityProblem$InsecureBitStrength;->algorithm:I

    iget v0, v0, Lorg/sufficientlysecure/keychain/pgp/SecurityProblem$InsecureBitStrength;->bitStrength:I

    invoke-interface {v1, v2, v0}, Lorg/sufficientlysecure/keychain/remote/ui/SecurityProblemPresenter$RemoteSecurityProblemView;->showLayoutEncryptInsecureBitsize(II)V

    goto :goto_0

    .line 108
    :cond_0
    instance-of v0, v4, Lorg/sufficientlysecure/keychain/pgp/SecurityProblem$NotWhitelistedCurve;

    if-eqz v0, :cond_1

    .line 109
    move-object v0, v4

    check-cast v0, Lorg/sufficientlysecure/keychain/pgp/SecurityProblem$NotWhitelistedCurve;

    .line 110
    iget-object v1, v3, Lorg/sufficientlysecure/keychain/remote/ui/SecurityProblemPresenter;->view:Lorg/sufficientlysecure/keychain/remote/ui/SecurityProblemPresenter$RemoteSecurityProblemView;

    iget-object v0, v0, Lorg/sufficientlysecure/keychain/pgp/SecurityProblem$NotWhitelistedCurve;->curveOid:Ljava/lang/String;

    invoke-interface {v1, v0}, Lorg/sufficientlysecure/keychain/remote/ui/SecurityProblemPresenter$RemoteSecurityProblemView;->showLayoutEncryptNotWhitelistedCurve(Ljava/lang/String;)V

    goto :goto_0

    .line 111
    :cond_1
    instance-of v0, v4, Lorg/sufficientlysecure/keychain/pgp/SecurityProblem$UnidentifiedKeyProblem;

    if-eqz v0, :cond_3

    .line 112
    iget-object v0, v3, Lorg/sufficientlysecure/keychain/remote/ui/SecurityProblemPresenter;->view:Lorg/sufficientlysecure/keychain/remote/ui/SecurityProblemPresenter$RemoteSecurityProblemView;

    invoke-interface {v0}, Lorg/sufficientlysecure/keychain/remote/ui/SecurityProblemPresenter$RemoteSecurityProblemView;->showLayoutEncryptUnidentifiedKeyProblem()V

    .line 117
    :goto_0
    invoke-virtual {v4}, Lorg/sufficientlysecure/keychain/pgp/SecurityProblem$KeySecurityProblem;->isIdentifiable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 118
    invoke-virtual {v4}, Lorg/sufficientlysecure/keychain/pgp/SecurityProblem$KeySecurityProblem;->getIdentifier()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lorg/sufficientlysecure/keychain/remote/ui/SecurityProblemPresenter;->securityProblemIdentifier:Ljava/lang/String;

    .line 119
    invoke-direct {v3}, Lorg/sufficientlysecure/keychain/remote/ui/SecurityProblemPresenter;->refreshOverrideStatusView()V

    :cond_2
    return-void

    .line 114
    :cond_3
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v0, "Unhandled key security problem type!"

    invoke-direct {v4, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    const-string v5, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/remote/ui/SecurityProblemPresenter;--->setupFromEncryptionKeySecurityProblem(Lorg/sufficientlysecure/keychain/pgp/SecurityProblem$KeySecurityProblem;)V"

    invoke-static/range {v5 .. v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private setupFromSignatureSecurityProblem(Lorg/sufficientlysecure/keychain/pgp/SecurityProblem$InsecureSigningAlgorithm;)V
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    .line 172
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/remote/ui/SecurityProblemPresenter;->view:Lorg/sufficientlysecure/keychain/remote/ui/SecurityProblemPresenter$RemoteSecurityProblemView;

    iget v2, v2, Lorg/sufficientlysecure/keychain/pgp/SecurityProblem$InsecureSigningAlgorithm;->hashAlgorithm:I

    invoke-interface {v0, v2}, Lorg/sufficientlysecure/keychain/remote/ui/SecurityProblemPresenter$RemoteSecurityProblemView;->showLayoutInsecureHashAlgorithm(I)V

    return-void

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/remote/ui/SecurityProblemPresenter;--->setupFromSignatureSecurityProblem(Lorg/sufficientlysecure/keychain/pgp/SecurityProblem$InsecureSigningAlgorithm;)V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private setupFromSigningKeySecurityProblem(Lorg/sufficientlysecure/keychain/pgp/SecurityProblem$KeySecurityProblem;)V
    .locals 6

    move-object/16 v3, p0

    move-object/16 v4, p1

    .line 124
    iget-wide v0, v4, Lorg/sufficientlysecure/keychain/pgp/SecurityProblem$KeySecurityProblem;->masterKeyId:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v3, Lorg/sufficientlysecure/keychain/remote/ui/SecurityProblemPresenter;->viewKeyMasterKeyId:Ljava/lang/Long;

    .line 125
    iget-object v0, v3, Lorg/sufficientlysecure/keychain/remote/ui/SecurityProblemPresenter;->view:Lorg/sufficientlysecure/keychain/remote/ui/SecurityProblemPresenter$RemoteSecurityProblemView;

    invoke-interface {v0}, Lorg/sufficientlysecure/keychain/remote/ui/SecurityProblemPresenter$RemoteSecurityProblemView;->showViewKeyButton()V

    .line 127
    instance-of v0, v4, Lorg/sufficientlysecure/keychain/pgp/SecurityProblem$InsecureBitStrength;

    if-eqz v0, :cond_0

    .line 128
    move-object v0, v4

    check-cast v0, Lorg/sufficientlysecure/keychain/pgp/SecurityProblem$InsecureBitStrength;

    .line 129
    iget-object v1, v3, Lorg/sufficientlysecure/keychain/remote/ui/SecurityProblemPresenter;->view:Lorg/sufficientlysecure/keychain/remote/ui/SecurityProblemPresenter$RemoteSecurityProblemView;

    iget v2, v0, Lorg/sufficientlysecure/keychain/pgp/SecurityProblem$InsecureBitStrength;->algorithm:I

    iget v0, v0, Lorg/sufficientlysecure/keychain/pgp/SecurityProblem$InsecureBitStrength;->bitStrength:I

    invoke-interface {v1, v2, v0}, Lorg/sufficientlysecure/keychain/remote/ui/SecurityProblemPresenter$RemoteSecurityProblemView;->showLayoutSignInsecureBitsize(II)V

    goto :goto_0

    .line 130
    :cond_0
    instance-of v0, v4, Lorg/sufficientlysecure/keychain/pgp/SecurityProblem$NotWhitelistedCurve;

    if-eqz v0, :cond_1

    .line 131
    move-object v0, v4

    check-cast v0, Lorg/sufficientlysecure/keychain/pgp/SecurityProblem$NotWhitelistedCurve;

    .line 132
    iget-object v1, v3, Lorg/sufficientlysecure/keychain/remote/ui/SecurityProblemPresenter;->view:Lorg/sufficientlysecure/keychain/remote/ui/SecurityProblemPresenter$RemoteSecurityProblemView;

    iget-object v0, v0, Lorg/sufficientlysecure/keychain/pgp/SecurityProblem$NotWhitelistedCurve;->curveOid:Ljava/lang/String;

    invoke-interface {v1, v0}, Lorg/sufficientlysecure/keychain/remote/ui/SecurityProblemPresenter$RemoteSecurityProblemView;->showLayoutSignNotWhitelistedCurve(Ljava/lang/String;)V

    goto :goto_0

    .line 133
    :cond_1
    instance-of v0, v4, Lorg/sufficientlysecure/keychain/pgp/SecurityProblem$UnidentifiedKeyProblem;

    if-eqz v0, :cond_3

    .line 134
    iget-object v0, v3, Lorg/sufficientlysecure/keychain/remote/ui/SecurityProblemPresenter;->view:Lorg/sufficientlysecure/keychain/remote/ui/SecurityProblemPresenter$RemoteSecurityProblemView;

    invoke-interface {v0}, Lorg/sufficientlysecure/keychain/remote/ui/SecurityProblemPresenter$RemoteSecurityProblemView;->showLayoutSignUnidentifiedKeyProblem()V

    .line 139
    :goto_0
    invoke-virtual {v4}, Lorg/sufficientlysecure/keychain/pgp/SecurityProblem$KeySecurityProblem;->isIdentifiable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 140
    invoke-virtual {v4}, Lorg/sufficientlysecure/keychain/pgp/SecurityProblem$KeySecurityProblem;->getIdentifier()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lorg/sufficientlysecure/keychain/remote/ui/SecurityProblemPresenter;->securityProblemIdentifier:Ljava/lang/String;

    .line 141
    invoke-direct {v3}, Lorg/sufficientlysecure/keychain/remote/ui/SecurityProblemPresenter;->refreshOverrideStatusView()V

    :cond_2
    return-void

    .line 136
    :cond_3
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v0, "Unhandled key security problem type!"

    invoke-direct {v4, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    const-string v5, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/remote/ui/SecurityProblemPresenter;--->setupFromSigningKeySecurityProblem(Lorg/sufficientlysecure/keychain/pgp/SecurityProblem$KeySecurityProblem;)V"

    invoke-static/range {v5 .. v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method onCancel()V
    .locals 4

    move-object/16 v1, p0

    .line 233
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/remote/ui/SecurityProblemPresenter;->view:Lorg/sufficientlysecure/keychain/remote/ui/SecurityProblemPresenter$RemoteSecurityProblemView;

    invoke-interface {v0}, Lorg/sufficientlysecure/keychain/remote/ui/SecurityProblemPresenter$RemoteSecurityProblemView;->finishAsCancelled()V

    return-void

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/remote/ui/SecurityProblemPresenter;--->onCancel()V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method onClickGotIt()V
    .locals 4

    move-object/16 v1, p0

    .line 205
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/remote/ui/SecurityProblemPresenter;->view:Lorg/sufficientlysecure/keychain/remote/ui/SecurityProblemPresenter$RemoteSecurityProblemView;

    invoke-interface {v0}, Lorg/sufficientlysecure/keychain/remote/ui/SecurityProblemPresenter$RemoteSecurityProblemView;->finishAsCancelled()V

    return-void

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/remote/ui/SecurityProblemPresenter;--->onClickGotIt()V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method onClickOverride()V
    .locals 3

    move-object/16 v0, p0

    .line 215
    invoke-direct {v0}, Lorg/sufficientlysecure/keychain/remote/ui/SecurityProblemPresenter;->incrementOverrideAndDisplayOrTrigger()V

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/remote/ui/SecurityProblemPresenter;--->onClickOverride()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method onClickOverrideBack()V
    .locals 3

    move-object/16 v0, p0

    .line 224
    invoke-direct {v0}, Lorg/sufficientlysecure/keychain/remote/ui/SecurityProblemPresenter;->resetOverrideStatus()V

    .line 225
    invoke-direct {v0}, Lorg/sufficientlysecure/keychain/remote/ui/SecurityProblemPresenter;->refreshSecurityProblemDisplay()V

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/remote/ui/SecurityProblemPresenter;--->onClickOverrideBack()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method onClickOverrideConfirm()V
    .locals 3

    move-object/16 v0, p0

    .line 229
    invoke-direct {v0}, Lorg/sufficientlysecure/keychain/remote/ui/SecurityProblemPresenter;->incrementOverrideAndDisplayOrTrigger()V

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/remote/ui/SecurityProblemPresenter;--->onClickOverrideConfirm()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method onClickOverrideUndo()V
    .locals 3

    move-object/16 v0, p0

    .line 219
    invoke-direct {v0}, Lorg/sufficientlysecure/keychain/remote/ui/SecurityProblemPresenter;->resetOverrideStatus()V

    .line 220
    invoke-direct {v0}, Lorg/sufficientlysecure/keychain/remote/ui/SecurityProblemPresenter;->refreshSecurityProblemDisplay()V

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/remote/ui/SecurityProblemPresenter;--->onClickOverrideUndo()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method onClickViewKey()V
    .locals 6

    move-object/16 v3, p0

    .line 209
    new-instance v0, Landroid/content/Intent;

    iget-object v1, v3, Lorg/sufficientlysecure/keychain/remote/ui/SecurityProblemPresenter;->context:Landroid/content/Context;

    const-class v2, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "master_key_id"

    .line 210
    iget-object v2, v3, Lorg/sufficientlysecure/keychain/remote/ui/SecurityProblemPresenter;->viewKeyMasterKeyId:Ljava/lang/Long;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 211
    iget-object v1, v3, Lorg/sufficientlysecure/keychain/remote/ui/SecurityProblemPresenter;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void

    const-string v4, "M_InsDal"

    const-string v5, "Lorg/sufficientlysecure/keychain/remote/ui/SecurityProblemPresenter;--->onClickViewKey()V"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public setView(Lorg/sufficientlysecure/keychain/remote/ui/SecurityProblemPresenter$RemoteSecurityProblemView;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    .line 69
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/remote/ui/SecurityProblemPresenter;->view:Lorg/sufficientlysecure/keychain/remote/ui/SecurityProblemPresenter$RemoteSecurityProblemView;

    return-void

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/remote/ui/SecurityProblemPresenter;--->setView(Lorg/sufficientlysecure/keychain/remote/ui/SecurityProblemPresenter$RemoteSecurityProblemView;)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method setupFromIntentData(Ljava/lang/String;Ljava/io/Serializable;Z)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    move-object/16 v2, p2

    move/16 p0, p3

    .line 73
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/remote/ui/SecurityProblemPresenter;->packageName:Ljava/lang/String;

    .line 74
    iput-object v2, v0, Lorg/sufficientlysecure/keychain/remote/ui/SecurityProblemPresenter;->securityProblem:Ljava/io/Serializable;

    .line 75
    iput-boolean p0, v0, Lorg/sufficientlysecure/keychain/remote/ui/SecurityProblemPresenter;->supportOverride:Z

    .line 77
    invoke-direct {v0}, Lorg/sufficientlysecure/keychain/remote/ui/SecurityProblemPresenter;->refreshSecurityProblemDisplay()V

    .line 78
    invoke-direct {v0}, Lorg/sufficientlysecure/keychain/remote/ui/SecurityProblemPresenter;->refreshPackageInfo()V

    return-void

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/remote/ui/SecurityProblemPresenter;--->setupFromIntentData(Ljava/lang/String;Ljava/io/Serializable;Z)V"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
