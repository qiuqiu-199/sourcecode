.class synthetic Lorg/sufficientlysecure/keychain/ui/dialog/AddSubkeyDialogFragment$5;
.super Ljava/lang/Object;
.source "AddSubkeyDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/sufficientlysecure/keychain/ui/dialog/AddSubkeyDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$org$sufficientlysecure$keychain$ui$dialog$AddSubkeyDialogFragment$SupportedKeyType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 244
    invoke-static {}, Lorg/sufficientlysecure/keychain/ui/dialog/AddSubkeyDialogFragment$SupportedKeyType;->values()[Lorg/sufficientlysecure/keychain/ui/dialog/AddSubkeyDialogFragment$SupportedKeyType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lorg/sufficientlysecure/keychain/ui/dialog/AddSubkeyDialogFragment$5;->$SwitchMap$org$sufficientlysecure$keychain$ui$dialog$AddSubkeyDialogFragment$SupportedKeyType:[I

    :try_start_0
    sget-object v0, Lorg/sufficientlysecure/keychain/ui/dialog/AddSubkeyDialogFragment$5;->$SwitchMap$org$sufficientlysecure$keychain$ui$dialog$AddSubkeyDialogFragment$SupportedKeyType:[I

    sget-object v1, Lorg/sufficientlysecure/keychain/ui/dialog/AddSubkeyDialogFragment$SupportedKeyType;->RSA_2048:Lorg/sufficientlysecure/keychain/ui/dialog/AddSubkeyDialogFragment$SupportedKeyType;

    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/ui/dialog/AddSubkeyDialogFragment$SupportedKeyType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lorg/sufficientlysecure/keychain/ui/dialog/AddSubkeyDialogFragment$5;->$SwitchMap$org$sufficientlysecure$keychain$ui$dialog$AddSubkeyDialogFragment$SupportedKeyType:[I

    sget-object v1, Lorg/sufficientlysecure/keychain/ui/dialog/AddSubkeyDialogFragment$SupportedKeyType;->RSA_3072:Lorg/sufficientlysecure/keychain/ui/dialog/AddSubkeyDialogFragment$SupportedKeyType;

    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/ui/dialog/AddSubkeyDialogFragment$SupportedKeyType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lorg/sufficientlysecure/keychain/ui/dialog/AddSubkeyDialogFragment$5;->$SwitchMap$org$sufficientlysecure$keychain$ui$dialog$AddSubkeyDialogFragment$SupportedKeyType:[I

    sget-object v1, Lorg/sufficientlysecure/keychain/ui/dialog/AddSubkeyDialogFragment$SupportedKeyType;->RSA_4096:Lorg/sufficientlysecure/keychain/ui/dialog/AddSubkeyDialogFragment$SupportedKeyType;

    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/ui/dialog/AddSubkeyDialogFragment$SupportedKeyType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v0, Lorg/sufficientlysecure/keychain/ui/dialog/AddSubkeyDialogFragment$5;->$SwitchMap$org$sufficientlysecure$keychain$ui$dialog$AddSubkeyDialogFragment$SupportedKeyType:[I

    sget-object v1, Lorg/sufficientlysecure/keychain/ui/dialog/AddSubkeyDialogFragment$SupportedKeyType;->ECC_P256:Lorg/sufficientlysecure/keychain/ui/dialog/AddSubkeyDialogFragment$SupportedKeyType;

    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/ui/dialog/AddSubkeyDialogFragment$SupportedKeyType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :try_start_4
    sget-object v0, Lorg/sufficientlysecure/keychain/ui/dialog/AddSubkeyDialogFragment$5;->$SwitchMap$org$sufficientlysecure$keychain$ui$dialog$AddSubkeyDialogFragment$SupportedKeyType:[I

    sget-object v1, Lorg/sufficientlysecure/keychain/ui/dialog/AddSubkeyDialogFragment$SupportedKeyType;->ECC_P521:Lorg/sufficientlysecure/keychain/ui/dialog/AddSubkeyDialogFragment$SupportedKeyType;

    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/ui/dialog/AddSubkeyDialogFragment$SupportedKeyType;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :try_start_5
    sget-object v0, Lorg/sufficientlysecure/keychain/ui/dialog/AddSubkeyDialogFragment$5;->$SwitchMap$org$sufficientlysecure$keychain$ui$dialog$AddSubkeyDialogFragment$SupportedKeyType:[I

    sget-object v1, Lorg/sufficientlysecure/keychain/ui/dialog/AddSubkeyDialogFragment$SupportedKeyType;->EDDSA:Lorg/sufficientlysecure/keychain/ui/dialog/AddSubkeyDialogFragment$SupportedKeyType;

    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/ui/dialog/AddSubkeyDialogFragment$SupportedKeyType;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    return-void

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/ui/dialog/AddSubkeyDialogFragment$5;---><clinit>()V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
