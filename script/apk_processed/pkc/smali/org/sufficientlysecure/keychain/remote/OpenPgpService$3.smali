.class synthetic Lorg/sufficientlysecure/keychain/remote/OpenPgpService$3;
.super Ljava/lang/Object;
.source "OpenPgpService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/sufficientlysecure/keychain/remote/OpenPgpService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$org$sufficientlysecure$keychain$remote$OpenPgpServiceKeyIdExtractor$KeyIdResultStatus:[I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 327
    invoke-static {}, Lorg/sufficientlysecure/keychain/remote/OpenPgpServiceKeyIdExtractor$KeyIdResultStatus;->values()[Lorg/sufficientlysecure/keychain/remote/OpenPgpServiceKeyIdExtractor$KeyIdResultStatus;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lorg/sufficientlysecure/keychain/remote/OpenPgpService$3;->$SwitchMap$org$sufficientlysecure$keychain$remote$OpenPgpServiceKeyIdExtractor$KeyIdResultStatus:[I

    :try_start_0
    sget-object v0, Lorg/sufficientlysecure/keychain/remote/OpenPgpService$3;->$SwitchMap$org$sufficientlysecure$keychain$remote$OpenPgpServiceKeyIdExtractor$KeyIdResultStatus:[I

    sget-object v1, Lorg/sufficientlysecure/keychain/remote/OpenPgpServiceKeyIdExtractor$KeyIdResultStatus;->NO_KEYS:Lorg/sufficientlysecure/keychain/remote/OpenPgpServiceKeyIdExtractor$KeyIdResultStatus;

    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/remote/OpenPgpServiceKeyIdExtractor$KeyIdResultStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lorg/sufficientlysecure/keychain/remote/OpenPgpService$3;->$SwitchMap$org$sufficientlysecure$keychain$remote$OpenPgpServiceKeyIdExtractor$KeyIdResultStatus:[I

    sget-object v1, Lorg/sufficientlysecure/keychain/remote/OpenPgpServiceKeyIdExtractor$KeyIdResultStatus;->NO_KEYS_ERROR:Lorg/sufficientlysecure/keychain/remote/OpenPgpServiceKeyIdExtractor$KeyIdResultStatus;

    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/remote/OpenPgpServiceKeyIdExtractor$KeyIdResultStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lorg/sufficientlysecure/keychain/remote/OpenPgpService$3;->$SwitchMap$org$sufficientlysecure$keychain$remote$OpenPgpServiceKeyIdExtractor$KeyIdResultStatus:[I

    sget-object v1, Lorg/sufficientlysecure/keychain/remote/OpenPgpServiceKeyIdExtractor$KeyIdResultStatus;->MISSING:Lorg/sufficientlysecure/keychain/remote/OpenPgpServiceKeyIdExtractor$KeyIdResultStatus;

    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/remote/OpenPgpServiceKeyIdExtractor$KeyIdResultStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v0, Lorg/sufficientlysecure/keychain/remote/OpenPgpService$3;->$SwitchMap$org$sufficientlysecure$keychain$remote$OpenPgpServiceKeyIdExtractor$KeyIdResultStatus:[I

    sget-object v1, Lorg/sufficientlysecure/keychain/remote/OpenPgpServiceKeyIdExtractor$KeyIdResultStatus;->DUPLICATE:Lorg/sufficientlysecure/keychain/remote/OpenPgpServiceKeyIdExtractor$KeyIdResultStatus;

    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/remote/OpenPgpServiceKeyIdExtractor$KeyIdResultStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :try_start_4
    sget-object v0, Lorg/sufficientlysecure/keychain/remote/OpenPgpService$3;->$SwitchMap$org$sufficientlysecure$keychain$remote$OpenPgpServiceKeyIdExtractor$KeyIdResultStatus:[I

    sget-object v1, Lorg/sufficientlysecure/keychain/remote/OpenPgpServiceKeyIdExtractor$KeyIdResultStatus;->OK:Lorg/sufficientlysecure/keychain/remote/OpenPgpServiceKeyIdExtractor$KeyIdResultStatus;

    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/remote/OpenPgpServiceKeyIdExtractor$KeyIdResultStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    return-void

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/remote/OpenPgpService$3;---><clinit>()V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method