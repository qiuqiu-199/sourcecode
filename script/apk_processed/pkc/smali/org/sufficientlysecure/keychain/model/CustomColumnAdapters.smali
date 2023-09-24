.class public final Lorg/sufficientlysecure/keychain/model/CustomColumnAdapters;
.super Ljava/lang/Object;
.source "CustomColumnAdapters.java"


# static fields
.field static final DATE_ADAPTER:Lcom/squareup/sqldelight/ColumnAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/squareup/sqldelight/ColumnAdapter<",
            "Ljava/util/Date;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field static final GOSSIP_ORIGIN_ADAPTER:Lcom/squareup/sqldelight/ColumnAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/squareup/sqldelight/ColumnAdapter<",
            "Lorg/sufficientlysecure/keychain/model/AutocryptPeer$GossipOrigin;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public static final SECRET_KEY_TYPE_ADAPTER:Lcom/squareup/sqldelight/ColumnAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/squareup/sqldelight/ColumnAdapter<",
            "Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey$SecretKeyType;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public static final VERIFICATON_STATUS_ADAPTER:Lcom/squareup/sqldelight/ColumnAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/squareup/sqldelight/ColumnAdapter<",
            "Lorg/sufficientlysecure/keychain/pgp/CanonicalizedKeyRing$VerificationStatus;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 18
    new-instance v0, Lorg/sufficientlysecure/keychain/model/CustomColumnAdapters$1;

    invoke-direct {v0}, Lorg/sufficientlysecure/keychain/model/CustomColumnAdapters$1;-><init>()V

    sput-object v0, Lorg/sufficientlysecure/keychain/model/CustomColumnAdapters;->DATE_ADAPTER:Lcom/squareup/sqldelight/ColumnAdapter;

    .line 32
    new-instance v0, Lorg/sufficientlysecure/keychain/model/CustomColumnAdapters$2;

    invoke-direct {v0}, Lorg/sufficientlysecure/keychain/model/CustomColumnAdapters$2;-><init>()V

    sput-object v0, Lorg/sufficientlysecure/keychain/model/CustomColumnAdapters;->GOSSIP_ORIGIN_ADAPTER:Lcom/squareup/sqldelight/ColumnAdapter;

    .line 55
    new-instance v0, Lorg/sufficientlysecure/keychain/model/CustomColumnAdapters$3;

    invoke-direct {v0}, Lorg/sufficientlysecure/keychain/model/CustomColumnAdapters$3;-><init>()V

    sput-object v0, Lorg/sufficientlysecure/keychain/model/CustomColumnAdapters;->SECRET_KEY_TYPE_ADAPTER:Lcom/squareup/sqldelight/ColumnAdapter;

    .line 68
    new-instance v0, Lorg/sufficientlysecure/keychain/model/CustomColumnAdapters$4;

    invoke-direct {v0}, Lorg/sufficientlysecure/keychain/model/CustomColumnAdapters$4;-><init>()V

    sput-object v0, Lorg/sufficientlysecure/keychain/model/CustomColumnAdapters;->VERIFICATON_STATUS_ADAPTER:Lcom/squareup/sqldelight/ColumnAdapter;

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/model/CustomColumnAdapters;---><clinit>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private constructor <init>()V
    .locals 3

    move-object/16 v0, p0

    .line 16
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/model/CustomColumnAdapters;---><init>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
