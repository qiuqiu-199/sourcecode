.class public Lorg/sufficientlysecure/keychain/ui/keyview/loader/SubkeyStatusDao;
.super Ljava/lang/Object;
.source "SubkeyStatusDao.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/sufficientlysecure/keychain/ui/keyview/loader/SubkeyStatusDao$SubKeyItem;,
        Lorg/sufficientlysecure/keychain/ui/keyview/loader/SubkeyStatusDao$KeySubkeyStatus;,
        Lorg/sufficientlysecure/keychain/ui/keyview/loader/SubkeyStatusDao$KeyHealthStatus;
    }
.end annotation


# static fields
.field private static final SUBKEY_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lorg/sufficientlysecure/keychain/ui/keyview/loader/SubkeyStatusDao$SubKeyItem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final keyRepository:Lorg/sufficientlysecure/keychain/daos/KeyRepository;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 217
    sget-object v0, Lorg/sufficientlysecure/keychain/ui/keyview/loader/SubkeyStatusDao$$Lambda$0;->$instance:Ljava/util/Comparator;

    sput-object v0, Lorg/sufficientlysecure/keychain/ui/keyview/loader/SubkeyStatusDao;->SUBKEY_COMPARATOR:Ljava/util/Comparator;

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/ui/keyview/loader/SubkeyStatusDao;---><clinit>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private constructor <init>(Lorg/sufficientlysecure/keychain/daos/KeyRepository;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    .line 46
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/ui/keyview/loader/SubkeyStatusDao;->keyRepository:Lorg/sufficientlysecure/keychain/daos/KeyRepository;

    return-void

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/keyview/loader/SubkeyStatusDao;---><init>(Lorg/sufficientlysecure/keychain/daos/KeyRepository;)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private determineKeyHealthStatus(Lorg/sufficientlysecure/keychain/ui/keyview/loader/SubkeyStatusDao$SubKeyItem;Ljava/util/ArrayList;Ljava/util/ArrayList;)Lorg/sufficientlysecure/keychain/ui/keyview/loader/SubkeyStatusDao$KeyHealthStatus;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/sufficientlysecure/keychain/ui/keyview/loader/SubkeyStatusDao$SubKeyItem;",
            "Ljava/util/ArrayList<",
            "Lorg/sufficientlysecure/keychain/ui/keyview/loader/SubkeyStatusDao$SubKeyItem;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lorg/sufficientlysecure/keychain/ui/keyview/loader/SubkeyStatusDao$SubKeyItem;",
            ">;)",
            "Lorg/sufficientlysecure/keychain/ui/keyview/loader/SubkeyStatusDao$KeyHealthStatus;"
        }
    .end annotation

    move-object/16 v4, p0

    move-object/16 v5, p1

    move-object/16 v6, p2

    move-object/16 p0, p3

    .line 87
    iget-boolean v0, v5, Lorg/sufficientlysecure/keychain/ui/keyview/loader/SubkeyStatusDao$SubKeyItem;->mIsRevoked:Z

    if-eqz v0, :cond_0

    .line 88
    sget-object v5, Lorg/sufficientlysecure/keychain/ui/keyview/loader/SubkeyStatusDao$KeyHealthStatus;->REVOKED:Lorg/sufficientlysecure/keychain/ui/keyview/loader/SubkeyStatusDao$KeyHealthStatus;

    return-object v5

    .line 91
    :cond_0
    iget-boolean v0, v5, Lorg/sufficientlysecure/keychain/ui/keyview/loader/SubkeyStatusDao$SubKeyItem;->mIsExpired:Z

    if-eqz v0, :cond_1

    .line 92
    sget-object v5, Lorg/sufficientlysecure/keychain/ui/keyview/loader/SubkeyStatusDao$KeyHealthStatus;->EXPIRED:Lorg/sufficientlysecure/keychain/ui/keyview/loader/SubkeyStatusDao$KeyHealthStatus;

    return-object v5

    .line 95
    :cond_1
    iget-object v0, v5, Lorg/sufficientlysecure/keychain/ui/keyview/loader/SubkeyStatusDao$SubKeyItem;->mSecurityProblem:Lorg/sufficientlysecure/keychain/pgp/SecurityProblem$KeySecurityProblem;

    if-eqz v0, :cond_2

    .line 96
    sget-object v5, Lorg/sufficientlysecure/keychain/ui/keyview/loader/SubkeyStatusDao$KeyHealthStatus;->INSECURE:Lorg/sufficientlysecure/keychain/ui/keyview/loader/SubkeyStatusDao$KeyHealthStatus;

    return-object v5

    .line 99
    :cond_2
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_5

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 100
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/sufficientlysecure/keychain/ui/keyview/loader/SubkeyStatusDao$SubKeyItem;

    .line 101
    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/ui/keyview/loader/SubkeyStatusDao$SubKeyItem;->isValid()Z

    move-result v6

    if-nez v6, :cond_3

    .line 102
    sget-object v5, Lorg/sufficientlysecure/keychain/ui/keyview/loader/SubkeyStatusDao$KeyHealthStatus;->BROKEN:Lorg/sufficientlysecure/keychain/ui/keyview/loader/SubkeyStatusDao$KeyHealthStatus;

    return-object v5

    .line 105
    :cond_3
    iget-object v5, v5, Lorg/sufficientlysecure/keychain/ui/keyview/loader/SubkeyStatusDao$SubKeyItem;->mSecurityProblem:Lorg/sufficientlysecure/keychain/pgp/SecurityProblem$KeySecurityProblem;

    if-eqz v5, :cond_4

    .line 106
    sget-object v5, Lorg/sufficientlysecure/keychain/ui/keyview/loader/SubkeyStatusDao$KeyHealthStatus;->INSECURE:Lorg/sufficientlysecure/keychain/ui/keyview/loader/SubkeyStatusDao$KeyHealthStatus;

    return-object v5

    .line 109
    :cond_4
    sget-object v5, Lorg/sufficientlysecure/keychain/ui/keyview/loader/SubkeyStatusDao$KeyHealthStatus;->SIGN_ONLY:Lorg/sufficientlysecure/keychain/ui/keyview/loader/SubkeyStatusDao$KeyHealthStatus;

    return-object v5

    .line 112
    :cond_5
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_14

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    goto/16 :goto_3

    .line 116
    :cond_6
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/sufficientlysecure/keychain/ui/keyview/loader/SubkeyStatusDao$SubKeyItem;

    .line 117
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/sufficientlysecure/keychain/ui/keyview/loader/SubkeyStatusDao$SubKeyItem;

    .line 119
    iget-object v0, v6, Lorg/sufficientlysecure/keychain/ui/keyview/loader/SubkeyStatusDao$SubKeyItem;->mSecurityProblem:Lorg/sufficientlysecure/keychain/pgp/SecurityProblem$KeySecurityProblem;

    if-eqz v0, :cond_7

    invoke-virtual {v6}, Lorg/sufficientlysecure/keychain/ui/keyview/loader/SubkeyStatusDao$SubKeyItem;->isValid()Z

    move-result v0

    if-nez v0, :cond_8

    :cond_7
    iget-object v0, p0, Lorg/sufficientlysecure/keychain/ui/keyview/loader/SubkeyStatusDao$SubKeyItem;->mSecurityProblem:Lorg/sufficientlysecure/keychain/pgp/SecurityProblem$KeySecurityProblem;

    if-eqz v0, :cond_9

    .line 120
    invoke-virtual {p0}, Lorg/sufficientlysecure/keychain/ui/keyview/loader/SubkeyStatusDao$SubKeyItem;->isValid()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 121
    :cond_8
    sget-object v5, Lorg/sufficientlysecure/keychain/ui/keyview/loader/SubkeyStatusDao$KeyHealthStatus;->INSECURE:Lorg/sufficientlysecure/keychain/ui/keyview/loader/SubkeyStatusDao$KeyHealthStatus;

    return-object v5

    .line 124
    :cond_9
    invoke-virtual {v6}, Lorg/sufficientlysecure/keychain/ui/keyview/loader/SubkeyStatusDao$SubKeyItem;->isValid()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-virtual {p0}, Lorg/sufficientlysecure/keychain/ui/keyview/loader/SubkeyStatusDao$SubKeyItem;->isValid()Z

    move-result v0

    if-nez v0, :cond_a

    goto :goto_2

    .line 128
    :cond_a
    iget-object v0, v5, Lorg/sufficientlysecure/keychain/ui/keyview/loader/SubkeyStatusDao$SubKeyItem;->mSecretKeyType:Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey$SecretKeyType;

    sget-object v2, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey$SecretKeyType;->GNU_DUMMY:Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey$SecretKeyType;

    if-ne v0, v2, :cond_b

    iget-object v0, v6, Lorg/sufficientlysecure/keychain/ui/keyview/loader/SubkeyStatusDao$SubKeyItem;->mSecretKeyType:Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey$SecretKeyType;

    sget-object v2, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey$SecretKeyType;->GNU_DUMMY:Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey$SecretKeyType;

    if-ne v0, v2, :cond_b

    iget-object v0, p0, Lorg/sufficientlysecure/keychain/ui/keyview/loader/SubkeyStatusDao$SubKeyItem;->mSecretKeyType:Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey$SecretKeyType;

    sget-object v2, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey$SecretKeyType;->GNU_DUMMY:Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey$SecretKeyType;

    if-ne v0, v2, :cond_b

    .line 131
    sget-object v5, Lorg/sufficientlysecure/keychain/ui/keyview/loader/SubkeyStatusDao$KeyHealthStatus;->STRIPPED:Lorg/sufficientlysecure/keychain/ui/keyview/loader/SubkeyStatusDao$KeyHealthStatus;

    return-object v5

    .line 134
    :cond_b
    iget-object v0, v5, Lorg/sufficientlysecure/keychain/ui/keyview/loader/SubkeyStatusDao$SubKeyItem;->mSecretKeyType:Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey$SecretKeyType;

    sget-object v2, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey$SecretKeyType;->DIVERT_TO_CARD:Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey$SecretKeyType;

    if-ne v0, v2, :cond_c

    iget-object v0, v6, Lorg/sufficientlysecure/keychain/ui/keyview/loader/SubkeyStatusDao$SubKeyItem;->mSecretKeyType:Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey$SecretKeyType;

    sget-object v2, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey$SecretKeyType;->DIVERT_TO_CARD:Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey$SecretKeyType;

    if-ne v0, v2, :cond_c

    iget-object v0, p0, Lorg/sufficientlysecure/keychain/ui/keyview/loader/SubkeyStatusDao$SubKeyItem;->mSecretKeyType:Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey$SecretKeyType;

    sget-object v2, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey$SecretKeyType;->DIVERT_TO_CARD:Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey$SecretKeyType;

    if-ne v0, v2, :cond_c

    .line 137
    sget-object v5, Lorg/sufficientlysecure/keychain/ui/keyview/loader/SubkeyStatusDao$KeyHealthStatus;->DIVERT:Lorg/sufficientlysecure/keychain/ui/keyview/loader/SubkeyStatusDao$KeyHealthStatus;

    return-object v5

    .line 140
    :cond_c
    iget-object v0, v5, Lorg/sufficientlysecure/keychain/ui/keyview/loader/SubkeyStatusDao$SubKeyItem;->mSecretKeyType:Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey$SecretKeyType;

    sget-object v2, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey$SecretKeyType;->DIVERT_TO_CARD:Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey$SecretKeyType;

    const/4 v3, 0x1

    if-eq v0, v2, :cond_e

    iget-object v0, v6, Lorg/sufficientlysecure/keychain/ui/keyview/loader/SubkeyStatusDao$SubKeyItem;->mSecretKeyType:Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey$SecretKeyType;

    sget-object v2, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey$SecretKeyType;->DIVERT_TO_CARD:Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey$SecretKeyType;

    if-eq v0, v2, :cond_e

    iget-object v0, p0, Lorg/sufficientlysecure/keychain/ui/keyview/loader/SubkeyStatusDao$SubKeyItem;->mSecretKeyType:Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey$SecretKeyType;

    sget-object v2, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey$SecretKeyType;->DIVERT_TO_CARD:Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey$SecretKeyType;

    if-ne v0, v2, :cond_d

    goto :goto_0

    :cond_d
    const/4 v0, 0x0

    goto :goto_1

    :cond_e
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_f

    .line 144
    sget-object v5, Lorg/sufficientlysecure/keychain/ui/keyview/loader/SubkeyStatusDao$KeyHealthStatus;->DIVERT_PARTIAL:Lorg/sufficientlysecure/keychain/ui/keyview/loader/SubkeyStatusDao$KeyHealthStatus;

    return-object v5

    .line 147
    :cond_f
    iget-object v5, v5, Lorg/sufficientlysecure/keychain/ui/keyview/loader/SubkeyStatusDao$SubKeyItem;->mSecretKeyType:Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey$SecretKeyType;

    sget-object v0, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey$SecretKeyType;->GNU_DUMMY:Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey$SecretKeyType;

    if-eq v5, v0, :cond_10

    iget-object v5, v6, Lorg/sufficientlysecure/keychain/ui/keyview/loader/SubkeyStatusDao$SubKeyItem;->mSecretKeyType:Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey$SecretKeyType;

    sget-object v6, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey$SecretKeyType;->GNU_DUMMY:Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey$SecretKeyType;

    if-eq v5, v6, :cond_10

    iget-object v5, p0, Lorg/sufficientlysecure/keychain/ui/keyview/loader/SubkeyStatusDao$SubKeyItem;->mSecretKeyType:Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey$SecretKeyType;

    sget-object v6, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey$SecretKeyType;->GNU_DUMMY:Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey$SecretKeyType;

    if-ne v5, v6, :cond_11

    :cond_10
    const/4 v1, 0x1

    :cond_11
    if-eqz v1, :cond_12

    .line 151
    sget-object v5, Lorg/sufficientlysecure/keychain/ui/keyview/loader/SubkeyStatusDao$KeyHealthStatus;->PARTIAL_STRIPPED:Lorg/sufficientlysecure/keychain/ui/keyview/loader/SubkeyStatusDao$KeyHealthStatus;

    return-object v5

    .line 154
    :cond_12
    sget-object v5, Lorg/sufficientlysecure/keychain/ui/keyview/loader/SubkeyStatusDao$KeyHealthStatus;->OK:Lorg/sufficientlysecure/keychain/ui/keyview/loader/SubkeyStatusDao$KeyHealthStatus;

    return-object v5

    .line 125
    :cond_13
    :goto_2
    sget-object v5, Lorg/sufficientlysecure/keychain/ui/keyview/loader/SubkeyStatusDao$KeyHealthStatus;->BROKEN:Lorg/sufficientlysecure/keychain/ui/keyview/loader/SubkeyStatusDao$KeyHealthStatus;

    return-object v5

    .line 113
    :cond_14
    :goto_3
    sget-object v5, Lorg/sufficientlysecure/keychain/ui/keyview/loader/SubkeyStatusDao$KeyHealthStatus;->BROKEN:Lorg/sufficientlysecure/keychain/ui/keyview/loader/SubkeyStatusDao$KeyHealthStatus;

    return-object v5

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/ui/keyview/loader/SubkeyStatusDao;--->determineKeyHealthStatus(Lorg/sufficientlysecure/keychain/ui/keyview/loader/SubkeyStatusDao$SubKeyItem;Ljava/util/ArrayList;Ljava/util/ArrayList;)Lorg/sufficientlysecure/keychain/ui/keyview/loader/SubkeyStatusDao$KeyHealthStatus;"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static getInstance(Landroid/content/Context;)Lorg/sufficientlysecure/keychain/ui/keyview/loader/SubkeyStatusDao;
    .locals 4

    move-object/16 v1, p0

    .line 42
    invoke-static {v1}, Lorg/sufficientlysecure/keychain/daos/KeyRepository;->create(Landroid/content/Context;)Lorg/sufficientlysecure/keychain/daos/KeyRepository;

    move-result-object v1

    .line 43
    new-instance v0, Lorg/sufficientlysecure/keychain/ui/keyview/loader/SubkeyStatusDao;

    invoke-direct {v0, v1}, Lorg/sufficientlysecure/keychain/ui/keyview/loader/SubkeyStatusDao;-><init>(Lorg/sufficientlysecure/keychain/daos/KeyRepository;)V

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/ui/keyview/loader/SubkeyStatusDao;--->getInstance(Landroid/content/Context;)Lorg/sufficientlysecure/keychain/ui/keyview/loader/SubkeyStatusDao;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method static final synthetic lambda$static$0$SubkeyStatusDao(Lorg/sufficientlysecure/keychain/ui/keyview/loader/SubkeyStatusDao$SubKeyItem;Lorg/sufficientlysecure/keychain/ui/keyview/loader/SubkeyStatusDao$SubKeyItem;)I
    .locals 5

    const/4 v0, 0x0

    if-ne p0, p1, :cond_0

    return v0

    .line 222
    :cond_0
    invoke-virtual {p0}, Lorg/sufficientlysecure/keychain/ui/keyview/loader/SubkeyStatusDao$SubKeyItem;->isValid()Z

    move-result v1

    invoke-virtual {p1}, Lorg/sufficientlysecure/keychain/ui/keyview/loader/SubkeyStatusDao$SubKeyItem;->isValid()Z

    move-result v2

    xor-int/2addr v1, v2

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    .line 223
    invoke-virtual {p0}, Lorg/sufficientlysecure/keychain/ui/keyview/loader/SubkeyStatusDao$SubKeyItem;->isValid()Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    :goto_0
    return v2

    .line 226
    :cond_2
    iget-object v1, p0, Lorg/sufficientlysecure/keychain/ui/keyview/loader/SubkeyStatusDao$SubKeyItem;->mSecretKeyType:Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey$SecretKeyType;

    iget-object v4, p1, Lorg/sufficientlysecure/keychain/ui/keyview/loader/SubkeyStatusDao$SubKeyItem;->mSecretKeyType:Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey$SecretKeyType;

    invoke-virtual {v1, v4}, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey$SecretKeyType;->compareUsability(Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey$SecretKeyType;)I

    move-result v1

    if-eqz v1, :cond_3

    return v1

    .line 230
    :cond_3
    iget-object v1, p0, Lorg/sufficientlysecure/keychain/ui/keyview/loader/SubkeyStatusDao$SubKeyItem;->mSecurityProblem:Lorg/sufficientlysecure/keychain/pgp/SecurityProblem$KeySecurityProblem;

    if-nez v1, :cond_4

    const/4 v1, 0x1

    goto :goto_1

    :cond_4
    const/4 v1, 0x0

    :goto_1
    iget-object v4, p1, Lorg/sufficientlysecure/keychain/ui/keyview/loader/SubkeyStatusDao$SubKeyItem;->mSecurityProblem:Lorg/sufficientlysecure/keychain/pgp/SecurityProblem$KeySecurityProblem;

    if-nez v4, :cond_5

    const/4 v0, 0x1

    :cond_5
    xor-int/2addr v0, v1

    if-eqz v0, :cond_7

    .line 231
    iget-object p0, p0, Lorg/sufficientlysecure/keychain/ui/keyview/loader/SubkeyStatusDao$SubKeyItem;->mSecurityProblem:Lorg/sufficientlysecure/keychain/pgp/SecurityProblem$KeySecurityProblem;

    if-nez p0, :cond_6

    goto :goto_2

    :cond_6
    const/4 v2, 0x1

    :goto_2
    return v2

    .line 234
    :cond_7
    invoke-virtual {p0, p1}, Lorg/sufficientlysecure/keychain/ui/keyview/loader/SubkeyStatusDao$SubKeyItem;->newerThan(Lorg/sufficientlysecure/keychain/ui/keyview/loader/SubkeyStatusDao$SubKeyItem;)Z

    move-result p0

    if-eqz p0, :cond_8

    goto :goto_3

    :cond_8
    const/4 v2, 0x1

    :goto_3
    return v2
.end method


# virtual methods
.method public getSubkeyStatus(J)Lorg/sufficientlysecure/keychain/ui/keyview/loader/SubkeyStatusDao$KeySubkeyStatus;
    .locals 12

    move-object/16 v9, p0

    move-wide/16 v10, p1

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 53
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 54
    iget-object v2, v9, Lorg/sufficientlysecure/keychain/ui/keyview/loader/SubkeyStatusDao;->keyRepository:Lorg/sufficientlysecure/keychain/daos/KeyRepository;

    invoke-virtual {v2, v10, v11}, Lorg/sufficientlysecure/keychain/daos/KeyRepository;->getSubKeysByMasterKeyId(J)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    move-object v4, v3

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/sufficientlysecure/keychain/model/SubKey;

    .line 55
    new-instance v6, Lorg/sufficientlysecure/keychain/ui/keyview/loader/SubkeyStatusDao$SubKeyItem;

    invoke-direct {v6, v10, v11, v5}, Lorg/sufficientlysecure/keychain/ui/keyview/loader/SubkeyStatusDao$SubKeyItem;-><init>(JLorg/sufficientlysecure/keychain/model/SubKey;)V

    .line 57
    iget-wide v7, v6, Lorg/sufficientlysecure/keychain/ui/keyview/loader/SubkeyStatusDao$SubKeyItem;->mKeyId:J

    cmp-long v5, v7, v10

    if-nez v5, :cond_1

    move-object v4, v6

    .line 61
    :cond_1
    iget-boolean v5, v6, Lorg/sufficientlysecure/keychain/ui/keyview/loader/SubkeyStatusDao$SubKeyItem;->mCanSign:Z

    if-eqz v5, :cond_2

    .line 62
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    :cond_2
    iget-boolean v5, v6, Lorg/sufficientlysecure/keychain/ui/keyview/loader/SubkeyStatusDao$SubKeyItem;->mCanEncrypt:Z

    if-eqz v5, :cond_0

    .line 65
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    if-nez v4, :cond_6

    .line 70
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_4

    goto :goto_1

    :cond_4
    return-object v3

    .line 71
    :cond_5
    :goto_1
    new-instance v10, Ljava/lang/IllegalStateException;

    const-string v11, "Certification key can\'t be missing for a key that hasn\'t been deleted!"

    invoke-direct {v10, v11}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 76
    :cond_6
    sget-object v10, Lorg/sufficientlysecure/keychain/ui/keyview/loader/SubkeyStatusDao;->SUBKEY_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v0, v10}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 77
    sget-object v10, Lorg/sufficientlysecure/keychain/ui/keyview/loader/SubkeyStatusDao;->SUBKEY_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v1, v10}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 79
    invoke-direct {v9, v4, v0, v1}, Lorg/sufficientlysecure/keychain/ui/keyview/loader/SubkeyStatusDao;->determineKeyHealthStatus(Lorg/sufficientlysecure/keychain/ui/keyview/loader/SubkeyStatusDao$SubKeyItem;Ljava/util/ArrayList;Ljava/util/ArrayList;)Lorg/sufficientlysecure/keychain/ui/keyview/loader/SubkeyStatusDao$KeyHealthStatus;

    move-result-object v10

    .line 81
    new-instance v11, Lorg/sufficientlysecure/keychain/ui/keyview/loader/SubkeyStatusDao$KeySubkeyStatus;

    invoke-direct {v11, v4, v0, v1, v10}, Lorg/sufficientlysecure/keychain/ui/keyview/loader/SubkeyStatusDao$KeySubkeyStatus;-><init>(Lorg/sufficientlysecure/keychain/ui/keyview/loader/SubkeyStatusDao$SubKeyItem;Ljava/util/List;Ljava/util/List;Lorg/sufficientlysecure/keychain/ui/keyview/loader/SubkeyStatusDao$KeyHealthStatus;)V

    return-object v11

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/ui/keyview/loader/SubkeyStatusDao;--->getSubkeyStatus(J)Lorg/sufficientlysecure/keychain/ui/keyview/loader/SubkeyStatusDao$KeySubkeyStatus;"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
