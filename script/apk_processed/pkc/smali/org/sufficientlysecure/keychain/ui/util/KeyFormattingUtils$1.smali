.class synthetic Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils$1;
.super Ljava/lang/Object;
.source "KeyFormattingUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$org$sufficientlysecure$keychain$service$SaveKeyringParcel$Algorithm:[I

.field static final synthetic $SwitchMap$org$sufficientlysecure$keychain$service$SaveKeyringParcel$Curve:[I

.field static final synthetic $SwitchMap$org$sufficientlysecure$keychain$ui$util$KeyFormattingUtils$State:[I


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 636
    invoke-static {}, Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils$State;->values()[Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils$State;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils$1;->$SwitchMap$org$sufficientlysecure$keychain$ui$util$KeyFormattingUtils$State:[I

    const/4 v0, 0x1

    :try_start_0
    sget-object v1, Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils$1;->$SwitchMap$org$sufficientlysecure$keychain$ui$util$KeyFormattingUtils$State:[I

    sget-object v2, Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils$State;->VERIFIED:Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils$State;

    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils$State;->ordinal()I

    move-result v2

    aput v0, v1, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v1, 0x2

    :try_start_1
    sget-object v2, Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils$1;->$SwitchMap$org$sufficientlysecure$keychain$ui$util$KeyFormattingUtils$State:[I

    sget-object v3, Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils$State;->ENCRYPTED:Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils$State;

    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils$State;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    const/4 v2, 0x3

    :try_start_2
    sget-object v3, Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils$1;->$SwitchMap$org$sufficientlysecure$keychain$ui$util$KeyFormattingUtils$State:[I

    sget-object v4, Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils$State;->UNVERIFIED:Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils$State;

    invoke-virtual {v4}, Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils$State;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    const/4 v3, 0x4

    :try_start_3
    sget-object v4, Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils$1;->$SwitchMap$org$sufficientlysecure$keychain$ui$util$KeyFormattingUtils$State:[I

    sget-object v5, Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils$State;->UNKNOWN_KEY:Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils$State;

    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils$State;->ordinal()I

    move-result v5

    aput v3, v4, v5
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    const/4 v4, 0x5

    :try_start_4
    sget-object v5, Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils$1;->$SwitchMap$org$sufficientlysecure$keychain$ui$util$KeyFormattingUtils$State:[I

    sget-object v6, Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils$State;->REVOKED:Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils$State;

    invoke-virtual {v6}, Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils$State;->ordinal()I

    move-result v6

    aput v4, v5, v6
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :try_start_5
    sget-object v5, Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils$1;->$SwitchMap$org$sufficientlysecure$keychain$ui$util$KeyFormattingUtils$State:[I

    sget-object v6, Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils$State;->EXPIRED:Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils$State;

    invoke-virtual {v6}, Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils$State;->ordinal()I

    move-result v6

    const/4 v7, 0x6

    aput v7, v5, v6
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    :try_start_6
    sget-object v5, Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils$1;->$SwitchMap$org$sufficientlysecure$keychain$ui$util$KeyFormattingUtils$State:[I

    sget-object v6, Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils$State;->INSECURE:Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils$State;

    invoke-virtual {v6}, Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils$State;->ordinal()I

    move-result v6

    const/4 v7, 0x7

    aput v7, v5, v6
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    :try_start_7
    sget-object v5, Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils$1;->$SwitchMap$org$sufficientlysecure$keychain$ui$util$KeyFormattingUtils$State:[I

    sget-object v6, Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils$State;->NOT_ENCRYPTED:Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils$State;

    invoke-virtual {v6}, Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils$State;->ordinal()I

    move-result v6

    const/16 v7, 0x8

    aput v7, v5, v6
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    :catch_7
    :try_start_8
    sget-object v5, Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils$1;->$SwitchMap$org$sufficientlysecure$keychain$ui$util$KeyFormattingUtils$State:[I

    sget-object v6, Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils$State;->NOT_SIGNED:Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils$State;

    invoke-virtual {v6}, Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils$State;->ordinal()I

    move-result v6

    const/16 v7, 0x9

    aput v7, v5, v6
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    :catch_8
    :try_start_9
    sget-object v5, Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils$1;->$SwitchMap$org$sufficientlysecure$keychain$ui$util$KeyFormattingUtils$State:[I

    sget-object v6, Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils$State;->INVALID:Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils$State;

    invoke-virtual {v6}, Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils$State;->ordinal()I

    move-result v6

    const/16 v7, 0xa

    aput v7, v5, v6
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_9

    :catch_9
    :try_start_a
    sget-object v5, Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils$1;->$SwitchMap$org$sufficientlysecure$keychain$ui$util$KeyFormattingUtils$State:[I

    sget-object v6, Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils$State;->UNAVAILABLE:Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils$State;

    invoke-virtual {v6}, Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils$State;->ordinal()I

    move-result v6

    const/16 v7, 0xb

    aput v7, v5, v6
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_a

    .line 180
    :catch_a
    invoke-static {}, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Curve;->values()[Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Curve;

    move-result-object v5

    array-length v5, v5

    new-array v5, v5, [I

    sput-object v5, Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils$1;->$SwitchMap$org$sufficientlysecure$keychain$service$SaveKeyringParcel$Curve:[I

    :try_start_b
    sget-object v5, Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils$1;->$SwitchMap$org$sufficientlysecure$keychain$service$SaveKeyringParcel$Curve:[I

    sget-object v6, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Curve;->NIST_P256:Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Curve;

    invoke-virtual {v6}, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Curve;->ordinal()I

    move-result v6

    aput v0, v5, v6
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_b

    :catch_b
    :try_start_c
    sget-object v5, Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils$1;->$SwitchMap$org$sufficientlysecure$keychain$service$SaveKeyringParcel$Curve:[I

    sget-object v6, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Curve;->NIST_P384:Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Curve;

    invoke-virtual {v6}, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Curve;->ordinal()I

    move-result v6

    aput v1, v5, v6
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_c

    :catch_c
    :try_start_d
    sget-object v5, Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils$1;->$SwitchMap$org$sufficientlysecure$keychain$service$SaveKeyringParcel$Curve:[I

    sget-object v6, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Curve;->NIST_P521:Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Curve;

    invoke-virtual {v6}, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Curve;->ordinal()I

    move-result v6

    aput v2, v5, v6
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_d

    .line 131
    :catch_d
    invoke-static {}, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Algorithm;->values()[Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Algorithm;

    move-result-object v5

    array-length v5, v5

    new-array v5, v5, [I

    sput-object v5, Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils$1;->$SwitchMap$org$sufficientlysecure$keychain$service$SaveKeyringParcel$Algorithm:[I

    :try_start_e
    sget-object v5, Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils$1;->$SwitchMap$org$sufficientlysecure$keychain$service$SaveKeyringParcel$Algorithm:[I

    sget-object v6, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Algorithm;->RSA:Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Algorithm;

    invoke-virtual {v6}, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Algorithm;->ordinal()I

    move-result v6

    aput v0, v5, v6
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_e

    :catch_e
    :try_start_f
    sget-object v0, Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils$1;->$SwitchMap$org$sufficientlysecure$keychain$service$SaveKeyringParcel$Algorithm:[I

    sget-object v5, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Algorithm;->DSA:Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Algorithm;

    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Algorithm;->ordinal()I

    move-result v5

    aput v1, v0, v5
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_f

    :catch_f
    :try_start_10
    sget-object v0, Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils$1;->$SwitchMap$org$sufficientlysecure$keychain$service$SaveKeyringParcel$Algorithm:[I

    sget-object v1, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Algorithm;->ELGAMAL:Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Algorithm;

    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Algorithm;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_10} :catch_10

    :catch_10
    :try_start_11
    sget-object v0, Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils$1;->$SwitchMap$org$sufficientlysecure$keychain$service$SaveKeyringParcel$Algorithm:[I

    sget-object v1, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Algorithm;->ECDSA:Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Algorithm;

    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Algorithm;->ordinal()I

    move-result v1

    aput v3, v0, v1
    :try_end_11
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11 .. :try_end_11} :catch_11

    :catch_11
    :try_start_12
    sget-object v0, Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils$1;->$SwitchMap$org$sufficientlysecure$keychain$service$SaveKeyringParcel$Algorithm:[I

    sget-object v1, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Algorithm;->ECDH:Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Algorithm;

    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Algorithm;->ordinal()I

    move-result v1

    aput v4, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_12} :catch_12

    :catch_12
    return-void

    const-string v8, "M_InsDal"

    const-string v9, "Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils$1;---><clinit>()V"

    invoke-static/range {v8 .. v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
