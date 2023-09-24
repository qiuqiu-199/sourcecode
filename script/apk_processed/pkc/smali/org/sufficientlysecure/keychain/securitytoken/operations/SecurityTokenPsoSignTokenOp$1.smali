.class synthetic Lorg/sufficientlysecure/keychain/securitytoken/operations/SecurityTokenPsoSignTokenOp$1;
.super Ljava/lang/Object;
.source "SecurityTokenPsoSignTokenOp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/sufficientlysecure/keychain/securitytoken/operations/SecurityTokenPsoSignTokenOp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$org$sufficientlysecure$keychain$securitytoken$KeyFormat$KeyFormatType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 106
    invoke-static {}, Lorg/sufficientlysecure/keychain/securitytoken/KeyFormat$KeyFormatType;->values()[Lorg/sufficientlysecure/keychain/securitytoken/KeyFormat$KeyFormatType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lorg/sufficientlysecure/keychain/securitytoken/operations/SecurityTokenPsoSignTokenOp$1;->$SwitchMap$org$sufficientlysecure$keychain$securitytoken$KeyFormat$KeyFormatType:[I

    :try_start_0
    sget-object v0, Lorg/sufficientlysecure/keychain/securitytoken/operations/SecurityTokenPsoSignTokenOp$1;->$SwitchMap$org$sufficientlysecure$keychain$securitytoken$KeyFormat$KeyFormatType:[I

    sget-object v1, Lorg/sufficientlysecure/keychain/securitytoken/KeyFormat$KeyFormatType;->RSAKeyFormatType:Lorg/sufficientlysecure/keychain/securitytoken/KeyFormat$KeyFormatType;

    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/securitytoken/KeyFormat$KeyFormatType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lorg/sufficientlysecure/keychain/securitytoken/operations/SecurityTokenPsoSignTokenOp$1;->$SwitchMap$org$sufficientlysecure$keychain$securitytoken$KeyFormat$KeyFormatType:[I

    sget-object v1, Lorg/sufficientlysecure/keychain/securitytoken/KeyFormat$KeyFormatType;->ECKeyFormatType:Lorg/sufficientlysecure/keychain/securitytoken/KeyFormat$KeyFormatType;

    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/securitytoken/KeyFormat$KeyFormatType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lorg/sufficientlysecure/keychain/securitytoken/operations/SecurityTokenPsoSignTokenOp$1;->$SwitchMap$org$sufficientlysecure$keychain$securitytoken$KeyFormat$KeyFormatType:[I

    sget-object v1, Lorg/sufficientlysecure/keychain/securitytoken/KeyFormat$KeyFormatType;->EdDSAKeyFormatType:Lorg/sufficientlysecure/keychain/securitytoken/KeyFormat$KeyFormatType;

    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/securitytoken/KeyFormat$KeyFormatType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    return-void

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/securitytoken/operations/SecurityTokenPsoSignTokenOp$1;---><clinit>()V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
