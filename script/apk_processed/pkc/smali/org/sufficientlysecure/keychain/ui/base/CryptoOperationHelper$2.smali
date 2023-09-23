.class synthetic Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper$2;
.super Ljava/lang/Object;
.source "CryptoOperationHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$org$sufficientlysecure$keychain$service$input$RequiredInputParcel$RequiredInputType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 150
    invoke-static {}, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$RequiredInputType;->values()[Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$RequiredInputType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper$2;->$SwitchMap$org$sufficientlysecure$keychain$service$input$RequiredInputParcel$RequiredInputType:[I

    :try_start_0
    sget-object v0, Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper$2;->$SwitchMap$org$sufficientlysecure$keychain$service$input$RequiredInputParcel$RequiredInputType:[I

    sget-object v1, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$RequiredInputType;->SECURITY_TOKEN_MOVE_KEY_TO_CARD:Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$RequiredInputType;

    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$RequiredInputType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper$2;->$SwitchMap$org$sufficientlysecure$keychain$service$input$RequiredInputParcel$RequiredInputType:[I

    sget-object v1, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$RequiredInputType;->SECURITY_TOKEN_DECRYPT:Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$RequiredInputType;

    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$RequiredInputType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper$2;->$SwitchMap$org$sufficientlysecure$keychain$service$input$RequiredInputParcel$RequiredInputType:[I

    sget-object v1, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$RequiredInputType;->SECURITY_TOKEN_SIGN:Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$RequiredInputType;

    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$RequiredInputType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v0, Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper$2;->$SwitchMap$org$sufficientlysecure$keychain$service$input$RequiredInputParcel$RequiredInputType:[I

    sget-object v1, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$RequiredInputType;->PASSPHRASE:Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$RequiredInputType;

    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$RequiredInputType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :try_start_4
    sget-object v0, Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper$2;->$SwitchMap$org$sufficientlysecure$keychain$service$input$RequiredInputParcel$RequiredInputType:[I

    sget-object v1, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$RequiredInputType;->PASSPHRASE_SYMMETRIC:Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$RequiredInputType;

    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$RequiredInputType;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :try_start_5
    sget-object v0, Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper$2;->$SwitchMap$org$sufficientlysecure$keychain$service$input$RequiredInputParcel$RequiredInputType:[I

    sget-object v1, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$RequiredInputType;->BACKUP_CODE:Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$RequiredInputType;

    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$RequiredInputType;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    :try_start_6
    sget-object v0, Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper$2;->$SwitchMap$org$sufficientlysecure$keychain$service$input$RequiredInputParcel$RequiredInputType:[I

    sget-object v1, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$RequiredInputType;->NUMERIC_9X4:Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$RequiredInputType;

    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$RequiredInputType;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    :try_start_7
    sget-object v0, Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper$2;->$SwitchMap$org$sufficientlysecure$keychain$service$input$RequiredInputParcel$RequiredInputType:[I

    sget-object v1, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$RequiredInputType;->NUMERIC_9X4_AUTOCRYPT:Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$RequiredInputType;

    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$RequiredInputType;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    :catch_7
    :try_start_8
    sget-object v0, Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper$2;->$SwitchMap$org$sufficientlysecure$keychain$service$input$RequiredInputParcel$RequiredInputType:[I

    sget-object v1, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$RequiredInputType;->ENABLE_ORBOT:Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$RequiredInputType;

    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$RequiredInputType;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    :catch_8
    :try_start_9
    sget-object v0, Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper$2;->$SwitchMap$org$sufficientlysecure$keychain$service$input$RequiredInputParcel$RequiredInputType:[I

    sget-object v1, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$RequiredInputType;->UPLOAD_FAIL_RETRY:Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$RequiredInputType;

    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$RequiredInputType;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_9

    :catch_9
    return-void

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper$2;---><clinit>()V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
